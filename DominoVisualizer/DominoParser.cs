using DominoVisualizer.CustomControls;
using Gibbed.Dunia2.FileFormats;
using Gibbed.IO;
using Microsoft.Win32;
using Petzold.Media2D;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.IO.Compression;
using System.Linq;
using System.Reflection;
using System.Security.Cryptography.Xml;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Xml;
using System.Xml.Linq;
using UnluacNET;
using WpfPanAndZoom.CustomControls;
using static WpfPanAndZoom.CustomControls.PanAndZoomCanvas;

namespace DominoVisualizer
{
	internal class DominoParser
	{
		/* TODO
		 * -param lua file open							ok / maybe
		 * -all delete ask dialog						ok
		 * -styles comboboxes							ok
		 * -unique box ID - no matter self en			ok
		 * -add array bug - adds to all items			ok
		 * -toggle box local global						ok
		 * -two exec boxes to same box -> check if exist -> add same params automatically, same with edit		ok
		 * -connections - subconnetion name				ok
		 * -create box - empty combobox err				ok
		 * -remove box - remove from registerbox		ok
		 * -comments									ok
		 *		-maybe colors							ok
		 * -boxes - with dashed border - own color - under all items		ok
		 * -save, export dialogs						ok
		 * -z indexes									ok
		 * -box with custom resources -> bnk			ok
		 * -add connector -> option with add new		ok
		 * -move bulk (border?)							ok
		 * -unsaved note								ok
		 * -border lock moving childs					ok
		 * -rename connector							ok
		 * -export fc5									ok
		 * -save alone box warn							ok
		 * -border childs make duplicate
		 * -adding exec box, editing exec box - check AnchorDynType			ok
		 * -new, saved - wnd title upd
		 * -change close unsaved behav					canc
		 * -settings - line style, bezier curve			?
		 * -edit exec box - add row resets data
		 * -box - return data list - variable
		 * -swap box - vars rename
		 * -future - custom boxes
		 * -auto add dynint - check numbering - 1
		 * -add box - order list
		 * -swap error - lines not move, can't save
		 */

		Dictionary<string, DominoBox> dominoBoxes = new();
		Dictionary<string, DominoConnector> dominoConnectors = new();
		Dictionary<string, DominoBoxMetadata> regBoxes = new();
		Dictionary<string, DominoBoxMetadata> regBoxesAll = new();
        Dictionary<ulong, string> regBoxesCRC64 = new();
		List<DominoDict> globalVariables = new();
		Dictionary<string, string> lastBoxesAssign = new();
		List<DominoDict> dominoResources = new();
		List<DominoComment> dominoComments = new();
		List<DominoBorder> dominoBorders = new();

        DominoBoxMetadata thisMetadata = new();

		byte[] fileBytes = null;

		string runPath = "";

		string game = "";
		string file = "";
		MemoryStream luaFile = null;
		StreamReader reader = null;
		PanAndZoomCanvas canvas;

		DominoBox tempBox = null;
		List<string> processedBoxes = new();
		string errFiles = "Can't find / open these files:" + Environment.NewLine + Environment.NewLine;
		bool errFilesB = false;
		bool wasEdited = false;

        public DominoParser(PanAndZoomCanvas canvas, string game)
        {
            this.canvas = canvas;
            this.game = game;

            runPath = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location);

            ParseAllBoxes();
        }

        public DominoParser(string dominoPath, PanAndZoomCanvas canvas)
		{
			file = dominoPath;
			this.canvas = canvas;
			
			runPath = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location);
        }

		public DominoParser(string dominoPath, PanAndZoomCanvas canvas, string game)
		{
			file = dominoPath;
			this.canvas = canvas;
			this.game = game;

			luaFile = new MemoryStream(File.ReadAllBytes(file));
			
			runPath = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location);

            ParseAllBoxes();
        }

		public DominoParser(string dominoPath, string dominoSearchFolder, PanAndZoomCanvas canvas, string game)
		{
			file = dominoSearchFolder;
			this.canvas = canvas;
			this.game = game;

            luaFile = new MemoryStream(File.ReadAllBytes(dominoPath));

			File.Delete(dominoPath);
			
			runPath = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location);

			ParseAllBoxes();
        }

		public void Create()
		{



			Draw();
		}

		public string Parse()
		{
			uint luaType = luaFile.ReadValueU32();
			if (luaType != 0x4341554C)
			{
				return "Unknown LUA version. Can't open the file.";
			}

			uint luaLen = luaFile.ReadValueU32();
			byte[] luaBytesLuaq = luaFile.ReadBytes((int)luaLen);
			//byte[] luaBytesLuac = luaFile.ReadBytes((int)(luaFile.Length - luaLen - (sizeof(int) * 2)));

			// read xml and get input connectors
			string dmla = ImportDominoMetadata();
			if (dmla != "")
				return dmla;

			luaFile.Close();

            var stream = new MemoryStream();

            MemoryStream luaMS = new(luaBytesLuaq);
			luaMS.ReadByte();
            uint luaqKey = luaMS.ReadValueU32();
			if (luaqKey == 0x5161754C)
            {
				luaMS.Seek(0, SeekOrigin.Begin);

                var header = new BHeader(luaMS);
                LFunction lMain = header.Function.Parse(luaMS, header);

                var d = new Decompiler(lMain);
                d.Decompile();

                var writer = new StreamWriter(stream);
                d.Print(new Output(writer));
                writer.Flush();

                fileBytes = stream.ToArray();
            }
			else
            {
                luaMS.Seek(0, SeekOrigin.Begin);

                fileBytes = luaMS.ToArray();

				stream = new MemoryStream(fileBytes);
            }

			//File.WriteAllBytes("a.lua", fileBytes);return;

			stream.Seek(0, SeekOrigin.Begin);

			reader = new StreamReader(stream, System.Text.Encoding.UTF8);

			string l;
			bool allowNewBoxes = false;
			bool externalBoxDef = false;
			bool isRealBox = false;
			bool isExtFuncs = false;
			string func = "";
			while ((l = reader.ReadLine()) != null)
			{
				l = l.Trim();

				if (l.StartsWith("cboxRes:RegisterBox("))
				{
					LoadReqBoxes(l);
				}

				if (l.StartsWith("cboxRes:LoadResource("))
				{
					string[] pp = l.Replace("cboxRes:LoadResource(", "").Replace(")", "").Replace("\"", "").Split(',');

					string file = pp[0].Trim();
					string type = pp[1].Trim();

                    dominoResources.Add(new() { Name = file, Value = type });
				}

				/*if (l.Contains("l0:GetDataOutValue(") && !l.StartsWith("[") && externalBoxDef)
                {
                }
                else*/
				if (l.StartsWith("self.") && !externalBoxDef && !l.Contains("l0:GetDataOutValue(") && !isExtFuncs)
				{
					DominoDict rgv()
					{
						string[] var = l.Replace("self.", "").TrimEnd(',').Split("=");

						if (l.EndsWith("= {"))
						{
							List<DominoDict> vals = new();
							while ((l = reader.ReadLine().Trim()) != "}")
							{
								vals.Add(rgv());
							}
							return new() { Name = var[0].Trim(), ValueArray = vals };
						}
						else
						{
							return new() { Name = var[0].Trim(), Value = var[1].Trim() };
						}
					}

					globalVariables.Add(rgv());

					/*
					string[] var = l.Replace("self.", "").Split("=");

					if (l.EndsWith("= {"))
					{
						List<DominoDict> vals = new();
						while ((l = reader.ReadLine().Trim()) != "}")
						{
							var aa = l.TrimEnd(',').Split('=');
							vals.Add(new() { Name = aa[0].Trim(), Value = aa[1].Trim() });
						}
						globalVariables.Add(new() { Name = var[0].Trim(), ValueArray = vals });
					}
					else
					{
						globalVariables.Add(new() { Name = var[0].Trim(), Value = var[1].Trim() });
					}*/
				}

				if (l.StartsWith("self[") && (l.Contains("cbox:CreateBox(") || l.Contains("cbox:CreateBox_PathID(")))
				{
					if (tempBox != null)
					{
						dominoBoxes.Add(tempBox.ID, tempBox);
					}

					Regex regex = new Regex(@"self\[(.*?)\]");
					var v = regex.Match(l);
					string tempBoxID = "self[" + v.Groups[1].ToString() + "]";

					regex = new Regex(@"(cbox:CreateBox\(|cbox:CreateBox_PathID\()""(.*?)""\)");
					v = regex.Match(l);
					string tempBoxName = v.Groups[2].ToString();

					if (l.Contains("cbox:CreateBox_PathID(") && regBoxesCRC64.ContainsKey(ulong.Parse(tempBoxName)))
					{
						tempBoxName = regBoxesCRC64[ulong.Parse(tempBoxName)];
					}

					tempBox = new();
					tempBox.ID = tempBoxID;
					tempBox.Name = tempBoxName;
				}

				if (l == "end" && tempBox != null)
				{
					dominoBoxes.Add(tempBox.ID, tempBox);
					tempBox = null;
				}

				if (tempBox != null)
				{
					if (l.StartsWith("l0:SetConnections(") && !l.EndsWith(")"))
					{
						while ((l = reader.ReadLine().Trim()) != "})")
						{
							ParseConnectionsArray(l, null);
						}
					}
				}

				if (l.StartsWith("function export:en_"))
				{
					func = l.Replace("function export:", "").Replace("()", "");
					string[] funcParts = func.Split("_");
					func = funcParts[0] + "_" + funcParts[1];
					allowNewBoxes = true;
				}

				if (l.StartsWith("function export:ex_"))
				{
					allowNewBoxes = false;
					isExtFuncs = true;
                }

				if ((l.StartsWith("l0 = Boxes[GetPathID(") || l.StartsWith("l0 = Boxes[")) && allowNewBoxes)
				{
					string[] funcParts = func.Split("_");
					func = funcParts[0] + "_" + funcParts[1];

					if (dominoBoxes.ContainsKey(func))
					{
						externalBoxDef = true;
					}
					else
					{
						var regex = new Regex(@"Boxes\[(.*?)\]");
						var v = regex.Match(l);
						string tempBoxName = v.Groups[1].ToString();
						tempBoxName = tempBoxName.Replace("\"", "");

						if (!l.Contains("GetPathID(") && regBoxesCRC64.ContainsKey(ulong.Parse(tempBoxName)))
						{
							tempBoxName = regBoxesCRC64[ulong.Parse(tempBoxName)];
						}
						else
							tempBoxName = tempBoxName.Replace("GetPathID(", "").Replace(")", "");

						tempBox = new();
						tempBox.ID = func; //newBoxID.ToString();
						tempBox.Name = tempBoxName;
					}
				}
				else if (l.StartsWith("l0 = self[") && allowNewBoxes)
				{
					if (dominoBoxes.ContainsKey(l.Replace("l0 = ", "")))
					{
						func = l.Replace("l0 = ", "");
						externalBoxDef = true;
					}
				}

				if (l.Contains(":SetParentGraph(self._cbox)") && tempBox != null && allowNewBoxes)
				{
					isRealBox = true;
                }

				if (l.StartsWith("params = {") && tempBox != null && allowNewBoxes)
				{
					if (isRealBox)
						dominoBoxes.Add(tempBox.ID, tempBox);

					tempBox = null;
					func = "";
					isRealBox = false;
                }
			}

			reader.Close();
			stream.Dispose();

			foreach (DominoConnector inCtrl in dominoConnectors.Values)
			{
				if (thisMetadata.ControlsIn.Where(a => a.Name == inCtrl.ID).Any())
				{
					ProcessExecBoxes(inCtrl.ID);
				}
			}

			regBoxesCRC64.Clear();

			Draw();

			if (errFilesB)
				return errFiles;

			return "";

			/*stream.Position = 0;
			reader.DiscardBufferedData();

			//Dictionary<string, string> externalCalls = new();

			while ((l = reader.ReadLine()) != null)
			{
				l = l.Trim();

				string connName = l.Replace("function export:", "").Replace("()", "");

				if (dominoConnectors.ContainsKey(connName))
				{
					DominoConnector conn = dominoConnectors[connName];

					Dictionary<int, string> tempParams = null;
					string boxID = "";
					string paramsFunc = "";

					while ((l = reader.ReadLine().Trim()) != "end")
					{
						if (l.StartsWith("self:"))
						{
							paramsFunc = l.Replace("self:", "").Replace("()", "");

							if (paramsFunc.StartsWith('_')) paramsFunc = paramsFunc[1..];

							if (outFuncs.Contains(paramsFunc))
							{
								conn.OutFuncName.Add(paramsFunc);
							}

							paramsFunc = "";
						}

						if (l.StartsWith("self:ex_"))
						{
							paramsFunc = l.Replace("self:", "").Replace("()", "");

							//externalCalls.Add(paramsFunc, connName);
							GetExternalFuncData(paramsFunc, connName);
						}

						if (l.StartsWith("params = self:"))
						{
							paramsFunc = l.Replace("params = self:", "").Replace("()", "");

							tempParams = GetParamsFuncData(paramsFunc);
						}

						if (l.StartsWith("l0 = "))
						{
							string boxCall = l.Replace("l0 = ", "");

							if (boxCall.StartsWith("Boxes"))
							{
								boxID = paramsFunc; //newBoxIDAssigned[paramsFunc].ToString();
							}

							if (boxCall.StartsWith("self["))
							{
								boxID = boxCall; //.Replace("self[", "").Replace("]", "");
							}
						}

						if (l.StartsWith("l0:Exec(") || l.StartsWith("l0:ExecDynInt("))
						{
							string[] execParams = l.Replace("l0:Exec(", "").Replace("l0:ExecDynInt(", "").Replace(")", "").Split(",");

							ExecBox execBox = new();
							execBox.Exec = int.Parse(execParams[0]);
							execBox.Params = tempParams;
							execBox.Box = dominoBoxes[boxID];

							if (l.Contains(":Exec(")) execBox.Type = ExecType.Exec;
							if (l.Contains(":ExecDynInt("))
							{
								execBox.Type = ExecType.ExecDynInt;
								execBox.DynIntExec = int.Parse(execParams[2]);
							}

							conn.ExecBoxes.Add(execBox);

							tempParams = null;
							boxID = "";
							paramsFunc = "";
						}
					}
				}
			}*/

			/*stream.Position = 0;
			reader.DiscardBufferedData();

			while ((l = reader.ReadLine()) != null && false)
			{
				l = l.Trim();

				string funcOrig = "";
				if (l.StartsWith("function export:ex_"))
				{
					func = l.Replace("function export:", "").Replace("()", "");
					funcOrig = func;
					string[] funcParts = func.Split("_");
					func = funcParts[0] + "_" + funcParts[1];

					Dictionary<string, string> assigns = new();
					//Dictionary<string, string> vars = new();
					while ((l = reader.ReadLine().Trim()) != "end")
					{
						if (l.StartsWith('l') && l.Contains('=') && !l.Contains(':') && !l.Contains("GetDataOutValue"))
						{
							string[] sp = l.Split('=');
							string vn = sp[0].Trim();

							if (assigns.ContainsKey(vn))
								assigns[vn] = sp[1].Trim();
							else
								assigns.Add(vn, sp[1].Trim());
						}

						if (l.Contains("GetDataOutValue"))
						{
							string[] sp = l.Split('=');

							string box = sp[1].Trim().Split(':')[0];
							string boxName = assigns[box];
							if (boxName.StartsWith("Boxes["))
								boxName = func.Replace("ex_", "en_");

							string var = sp[0].Trim();
							string varAssign = sp[1].Trim();

							foreach (var kvAssigns in assigns)
							{
								string t = kvAssigns.Value;

								if (kvAssigns.Value.StartsWith("Boxes["))
									t = func.Replace("ex_", "en_");

								var = var.Replace(kvAssigns.Key, t);
								varAssign = varAssign.Replace(kvAssigns.Key, t);
							}

							//dominoBoxes[boxName].SetVariables.Add(var, varAssign);
							dominoConnectors[externalCalls[funcOrig]].SetVariables.Add(var, varAssign);

							/*if (!vars.ContainsKey(sp[0].Trim()))
								vars.Add(sp[0].Trim(), sp[1].Trim());*

							// remove vars? - direct process - maybe fix twice l1 var assign
							// dict<box ID, last func> assigning in params l0
						}

						/*if (l.StartsWith("l0 = self["))
                            if (dominoBoxes.ContainsKey(l.Replace("l0 = ", "")))
                                func = l.Replace("l0 = ", "");

                        if (func != "")
                        {
                            string[] v = l.Replace("self.", "").Split("=");
                            string k = v[0].Trim();
                            if (!dominoBoxes[func].SetVariables.ContainsKey(k))
                                dominoBoxes[func].SetVariables.Add(k, v[1].Trim());
                        }*
					}

					/*foreach (var kv in vars)
					{
						string box = kv.Value.Split(':')[0];
						string boxName = assigns[box];
						if (boxName.StartsWith("Boxes["))
                            boxName = func.Replace("ex_", "en_");

						string var = kv.Key;
						string varAssign = kv.Value;

						foreach (var kvAssigns in assigns)
                        {
							string t = kvAssigns.Value;

                            if (kvAssigns.Value.StartsWith("Boxes["))
                                t = func.Replace("ex_", "en_");

                            var = var.Replace(kvAssigns.Key, t);
                            varAssign = varAssign.Replace(kvAssigns.Key, t);
                        }

						//dominoBoxes[boxName].SetVariables.Add(var, varAssign);
						dominoConnectors[externalCalls[funcOrig]].SetVariables.Add(var, varAssign);
                    }*
				}
			}*/
		}

		private void LoadReqBoxes(string line)
		{
			string f = line.Replace("cboxRes:RegisterBox(", "").Replace(")", "").Replace("\"", "");
			regBoxesCRC64.Add(CRC64.Hash(f.ToLower().Replace("/", "\\")), f);

			// parse nebo conv - ziskat xml
			//string ff = runPath + "\\lib" + f.ToLower().Replace("domino", "").Replace("/", "\\");
			string ff2 = file.Split("domino\\")[0] + f.ToLower().Replace("/", "\\");
			string ff3 = file.Replace(Path.GetFileName(file), "") + Path.GetFileName(f);

			Stream fs = new MemoryStream();

			if (!File.Exists(ff2) && !File.Exists(ff3))
			{
				string zipFileStr = "";
				if (game == "fc5") zipFileStr = "FC5";
				if (game == "fcnd") zipFileStr = "FCND";
				if (game == "fc6") zipFileStr = "FC6";

				ZipArchive zip = ZipFile.OpenRead(runPath + "\\DominoLib" + zipFileStr + ".zip");
				ZipArchiveEntry zipFile = zip.Entries.Where(a => a.FullName.Equals(f.ToLower())).FirstOrDefault();
				if (zipFile != null)
				{
					Stream tmpStream = zipFile.Open();
					tmpStream.CopyTo(fs);
				}
			}
			else if (File.Exists(ff2)) fs = File.Open(ff2, FileMode.Open, FileAccess.Read, FileShare.Read);
			else if (File.Exists(ff3)) fs = File.Open(ff3, FileMode.Open, FileAccess.Read, FileShare.Read);

			if (fs.Length > 0)
			{
				var m = ParseLuaBoxFile(fs);

				regBoxes.Add(f, m);
			}
			else
			{
				errFiles += f + Environment.NewLine;
				errFilesB = true;
			}
		}

		private void ParseAllBoxes()
		{
            string zipFileStr = "";
            if (game == "fc5") zipFileStr = "FC5";
            if (game == "fcnd") zipFileStr = "FCND";
            if (game == "fc6") zipFileStr = "FC6";

            ZipArchive zip = ZipFile.OpenRead(runPath + "\\DominoLib" + zipFileStr + ".zip");

            foreach (var l in zip.Entries)
            {
				if (l.FullName.EndsWith(".lua"))
                {
                    MemoryStream fs = new MemoryStream();

                    Stream tmpStream = l.Open();
                    tmpStream.CopyTo(fs);

					byte[] byteBuffer = fs.ToArray();
                    string byteBufferAsString = System.Text.Encoding.UTF8.GetString(byteBuffer);
                    int offset = byteBufferAsString.IndexOf("DominoMetadata");

					if (offset > 0)
                    {
                        var m = ParseLuaBoxFile(fs);
                        regBoxesAll.Add(l.FullName, m);
                    }
                }
            }
        }

        private DominoBoxMetadata ParseLuaBoxFile(Stream fs)
        {
            fs.Seek(0, SeekOrigin.Begin);

            DominoBoxMetadata m = new();
            m.LuaBytes = fs.ReadBytes((int)fs.Length);

            fs.Seek(0, SeekOrigin.Begin);

            fs.ReadValueU32();
            uint len = fs.ReadValueU32();
            fs.ReadBytes((int)len);
            //byte[] xml = fs.ReadBytes((int)(fs.Length - fs.Position));
            //MemoryStream ms = new(xml);

            XDocument meta = XDocument.Load(fs);

            m.IsStateless = meta.Element("DominoMetadata").Attribute("IsStateless").Value == "1";
            m.IsSystem = meta.Element("DominoMetadata").Attribute("IsSystem").Value == "1";

            var a = meta.Descendants("ControlIn");
            foreach (var b in a)
                m.ControlsIn.Add(new(b.Attribute("Name").Value, int.Parse(b.Attribute("AnchorDynType").Value), b.Attribute("HostExecFunc").Value));

            a = meta.Descendants("ControlOut");
            foreach (var b in a)
                m.ControlsOut.Add(new(b.Attribute("Name").Value, int.Parse(b.Attribute("AnchorDynType").Value), b.Attribute("IsDelayed").Value == "1"));

            a = meta.Descendants("DataIn");
            foreach (var b in a)
                m.DatasIn.Add(new(b.Attribute("Name").Value, int.Parse(b.Attribute("AnchorDynType").Value), b.Attribute("DataTypeID").Value));

            a = meta.Descendants("DataOut");
            foreach (var b in a)
                m.DatasOut.Add(new(b.Attribute("Name").Value, int.Parse(b.Attribute("AnchorDynType").Value), b.Attribute("DataTypeID").Value));

            fs.Close();

			return m;
        }

		private XElement ExportDominoMetadata()
		{
			XElement rci = new("ControlsIn");
			XElement rco = new("ControlsOut");
			XElement rdi = new("DatasIn");
			XElement rdo = new("DatasOut");

			foreach (var a in thisMetadata.ControlsIn)
				rci.Add(new XElement("ControlIn", new XAttribute("Name", a.Name), new XAttribute("AnchorDynType", a.AnchorDynType), new XAttribute("HostExecFunc", a.HostExecFunc)));

			foreach (var a in thisMetadata.ControlsOut)
				rco.Add(new XElement("ControlOut", new XAttribute("Name", a.Name), new XAttribute("AnchorDynType", a.AnchorDynType), new XAttribute("IsDelayed", a.IsDelayed ? "1" : "0")));

			foreach (var a in thisMetadata.DatasIn)
				rdi.Add(new XElement("DataIn", new XAttribute("Name", a.Name), new XAttribute("AnchorDynType", a.AnchorDynType), new XAttribute("DataTypeID", a.DataTypeID)));

			foreach (var a in thisMetadata.DatasOut)
				rdo.Add(new XElement("DataIn", new XAttribute("Name", a.Name), new XAttribute("AnchorDynType", a.AnchorDynType), new XAttribute("DataTypeID", a.DataTypeID)));

			XElement root = new("DominoMetadata", new XAttribute("IsStateless", thisMetadata.IsStateless ? "1" : "0"), new XAttribute("IsSystem", thisMetadata.IsSystem ? "1" : "0"));
			root.Add(rci);
			root.Add(rco);
			root.Add(rdi);
			root.Add(rdo);

			return root;
		}

		private string ImportDominoMetadata(XElement elDM = null)
		{
			XElement root = null;

			if (elDM == null)
			{
				XDocument mainMetadata = XDocument.Load(luaFile);
				root = mainMetadata.Element("DominoMetadata");
			}
			else
				root = elDM;

			bool rElSys = root.Attribute("IsSystem").Value == "1";
			if (rElSys)
			{
				return "System Domino box can't be opened.";
			}

			var ctrlsIn = root.Descendants("ControlIn");
			int ctrlPosY = 0;
			foreach (var ctrl in ctrlsIn)
			{
				DominoConnector inConn = new();
				inConn.ID = ctrl.Attribute("Name").Value;
				inConn.DrawY = ctrlPosY;
				dominoConnectors.Add(inConn.ID, inConn);
				ctrlPosY += 300;

				thisMetadata.ControlsIn.Add(new(ctrl.Attribute("Name").Value, int.Parse(ctrl.Attribute("AnchorDynType").Value), ctrl.Attribute("HostExecFunc").Value));
			}
			var ctrlsOut = root.Descendants("ControlOut");
			foreach (var ctrl in ctrlsOut)
			{
				thisMetadata.ControlsOut.Add(new(ctrl.Attribute("Name").Value, int.Parse(ctrl.Attribute("AnchorDynType").Value), ctrl.Attribute("IsDelayed").Value == "1"));
			}
			var datasIn = root.Descendants("DataIn");
			foreach (var data in datasIn)
			{
				thisMetadata.DatasIn.Add(new(data.Attribute("Name").Value, int.Parse(data.Attribute("AnchorDynType").Value), data.Attribute("DataTypeID").Value));
			}
			var datasOut = root.Descendants("DataOut");
			foreach (var data in datasOut)
			{
				thisMetadata.DatasOut.Add(new(data.Attribute("Name").Value, int.Parse(data.Attribute("AnchorDynType").Value), data.Attribute("DataTypeID").Value));
			}

			return "";
		}

		private void ProcessExecBoxes(string connName)
		{
			var readerParams = new StreamReader(new MemoryStream(fileBytes), System.Text.Encoding.UTF8);

			string l = "";

			while (l != "function export:" + connName + "()" && l != null)
			{
				l = readerParams.ReadLine();
			}

			if (readerParams.EndOfStream) return;

			DominoConnector conn = dominoConnectors[connName];

			List<DominoDict> tempParams = new();
			string boxID = "";
			string paramsFunc = "";

			while ((l = readerParams.ReadLine().Trim()) != "end")
			{
				if (l.StartsWith("self:"))
				{
					paramsFunc = l.Replace("self:", "").Replace("()", "");

					if (paramsFunc.StartsWith('_')) paramsFunc = paramsFunc[1..];

					if (thisMetadata.ControlsOut.Any(a => a.Name == paramsFunc))
					{
						conn.OutFuncName.Add(paramsFunc);
					}

					paramsFunc = "";
				}

				if (l.StartsWith("self:ex_"))
				{
					paramsFunc = l.Replace("self:", "").Replace("()", "");

					//externalCalls.Add(paramsFunc, connName);
					GetExternalFuncData(paramsFunc, connName);
				}

				if (l.StartsWith("params = self:"))
				{
					paramsFunc = l.Replace("params = self:", "").Replace("()", "");

					tempParams = GetParamsFuncData(paramsFunc);
				}

				if (l.StartsWith("l0 = "))
				{
					string boxCall = l.Replace("l0 = ", "");

					if (boxCall.StartsWith("Boxes"))
					{
						boxID = paramsFunc; //newBoxIDAssigned[paramsFunc].ToString();
					}

					if (boxCall.StartsWith("self["))
					{
						boxID = boxCall; //.Replace("self[", "").Replace("]", "");
					}
				}

				if (l.StartsWith("l0:Exec(") || l.StartsWith("l0:ExecDynInt("))
				{
					string[] execParams = l.Replace("l0:Exec(", "").Replace("l0:ExecDynInt(", "").Replace(")", "").Split(",");

					ExecBox execBox = new();
					execBox.Exec = int.Parse(execParams[0]);
					execBox.Params = tempParams;
					execBox.Box = dominoBoxes[boxID];

					if (regBoxes.ContainsKey(execBox.Box.Name))
						execBox.ExecStr = regBoxes[execBox.Box.Name].ControlsIn[execBox.Exec].Name;

					if (l.Contains(":Exec(")) execBox.Type = ExecType.Exec;
					if (l.Contains(":ExecDynInt("))
					{
						execBox.Type = ExecType.ExecDynInt;
						execBox.DynIntExec = int.Parse(execParams[2]);
					}

					conn.ExecBoxes.Add(execBox);

					tempParams = new();
					boxID = "";
					paramsFunc = "";
				}
			}

			readerParams.Close();

			// mozna pres isdelayed

			// linq order select

			// contains exec str , isdelayed=1 , ostatni

			/*foreach (var execBox in conn.ExecBoxes)
			{
				if (!execBox.Box.Processed)
				{
					foreach (var connection in execBox.Box.Connections)
					{
						if (connection.FromBoxConnectIDStr.StartsWith(execBox.ExecStr))
						{
							execBox.Box.Processed = true;

							if (connection.ID != null)
								ProcessExecBoxes(connection.ID);

							foreach (var subConn in connection.SubConnections)
								ProcessExecBoxes(subConn.ID);
						}
					}

					foreach (var connection in execBox.Box.Connections)
					{
						if (!connection.FromBoxConnectIDStr.StartsWith(execBox.ExecStr))
						{
							execBox.Box.Processed = true;

							if (connection.ID != null)
								ProcessExecBoxes(connection.ID);

							foreach (var subConn in connection.SubConnections)
								ProcessExecBoxes(subConn.ID);
						}
					}
				}
			}*/


			foreach (var execBox in conn.ExecBoxes)
			{
				if (!processedBoxes.Contains(execBox.Box.ID))
				{
					processedBoxes.Add(execBox.Box.ID);

					//var cns = execBox.Box.Connections.OrderBy(a => (a.FromBoxConnectIDStr.StartsWith(execBox.ExecStr) || a.IsDelayed || a.FromBoxConnectIDStr.ToLower().Contains("open") || a.FromBoxConnectIDStr.ToLower().Contains("start")) ? 0 : 1).ToList();
					var cns = execBox.Box.Connections
						.OrderByDescending(a => a.FromBoxConnectIDStr.StartsWith(execBox.ExecStr))
						.ThenByDescending(a => regBoxes[execBox.Box.Name].ControlsOut[a.FromBoxConnectID].IsDelayed)
						.ThenByDescending(a => a.FromBoxConnectIDStr.ToLower().Contains("open"))
						.ThenByDescending(a => a.FromBoxConnectIDStr.ToLower().Contains("start"))
						.ThenByDescending(a => a.FromBoxConnectIDStr.ToLower() == "loaded")
						.ToList();

					foreach (var connection in cns)
					{
						if (connection.ID != null)
							ProcessExecBoxes(connection.ID);

						foreach (var subConn in connection.SubConnections)
							ProcessExecBoxes(subConn.ID);
					}
				}
			}
		}

		private void GetExternalFuncData(string funcName, string parentFunc)
		{
			var readerParams = new StreamReader(new MemoryStream(fileBytes), System.Text.Encoding.UTF8);

			string l = "";

			while (l != "function export:" + funcName + "()")
			{
				l = readerParams.ReadLine();
			}

			string func = funcName;
			string[] funcParts = func.Split("_");
			func = funcParts[0] + "_" + funcParts[1];

			Dictionary<string, string> assigns = new();
			while ((l = readerParams.ReadLine().Trim()) != "end")
			{
				if (l.StartsWith('l') && l.Contains('=') && !l.Contains(':') && !l.Contains("GetDataOutValue"))
				{
					string[] sp = l.Split('=');
					string vn = sp[0].Trim();

					if (assigns.ContainsKey(vn))
						assigns[vn] = sp[1].Trim();
					else
						assigns.Add(vn, sp[1].Trim());
				}

				if (l.Contains("GetDataOutValue"))
				{
					string[] sp = l.Split('=');

					string box = sp[1].Trim().Split(':')[0];
					string boxName = assigns[box];
					if (boxName.StartsWith("Boxes["))
					{
						if (lastBoxesAssign.ContainsKey(boxName))
							lastBoxesAssign[boxName] = func;
						else
							lastBoxesAssign.Add(boxName, func);

						//boxName = func.Replace("ex_", "en_");
					}

					string var = sp[0].Trim();
					string varAssign = sp[1].Trim();

					foreach (var kvAssigns in assigns)
					{
						string t = kvAssigns.Value;

						if (kvAssigns.Value.StartsWith("Boxes["))
							t = func.Replace("ex_", "en_");

						var = var.Replace(kvAssigns.Key, t);
						varAssign = varAssign.Replace(kvAssigns.Key, t);
					}

					if (!dominoConnectors[parentFunc].SetVariables.Any(a => a.Name == var))
						dominoConnectors[parentFunc].SetVariables.Add(new() { Name = var, Value = varAssign } /*+ GetSetVarOutName(varAssign)*/);
				}
			}

			readerParams.Close();
		}

		private List<DominoDict> GetParamsFuncData(string funcName)
		{
			List<DominoDict> prm = new();

			var readerParams = new StreamReader(new MemoryStream(fileBytes), System.Text.Encoding.UTF8);

			string l = "";

			while (l != "function export:" + funcName + "()")
			{
				l = readerParams.ReadLine();
			}

			Dictionary<string, string> assigns = new();
			while ((l = readerParams.ReadLine()) != "end")
			{
				l = l.Trim();

				if (l.StartsWith('l') && l.Contains('=') && !l.Contains(':') && !l.Contains("GetDataOutValue"))
				{
					string[] sp = l.Split('=');
					string vv = sp[0].Trim();
					string vp = sp[1].Trim();

					if (vp.StartsWith("Boxes["))
					{
						if (lastBoxesAssign.ContainsKey(vp))
							vp = lastBoxesAssign[vp].Replace("ex_", "en_");
					}

					if (assigns.ContainsKey(vv))
						assigns[vv] = vp;
					else
						assigns.Add(vv, vp);
				}
				else
				if (l.StartsWith("params = {") && l != "params = {}")
				{
					//while (!(l = readerParams.ReadLine().Trim()).StartsWith("}"))

					/*if (l.Contains("GetDataOutValue"))
						foreach (var kvAssigns in assigns)
						{
							string t = kvAssigns.Value;

							if (kvAssigns.Value.StartsWith("Boxes["))
								t = parentFunc.Replace("ex_", "en_");

							l = l.Replace(kvAssigns.Key, t);
						}
					*/

					DominoDict parsePart()
					{
						if (l.Contains("GetDataOutValue"))
							foreach (var kvAssigns in assigns)
							{
								l = l.Replace(kvAssigns.Key, kvAssigns.Value);
							}

						string[] cData = l.Split('=');
						string num = cData[0].Replace("[", "").Replace("]", "").Trim();

						if (cData[1].Trim().EndsWith("{"))
						{
							List<DominoDict> tmpPrm = new();

							bool metEnding = false;

							while (!metEnding)
							{
								l = readerParams.ReadLine().Trim().TrimEnd(',');

								/*if (!l.Contains("{}"))
								{
									if (l.Contains('{')) mB++;
									if (l.StartsWith('}')) mB--;
									if (l.StartsWith('}') && mB == 0) metEnding = true;
								}*/

								if (l == "}") metEnding = true;

								if (l != "{" && l != "}")
									tmpPrm.Add(parsePart());
							}

							return new() { Name = num, ValueArray = tmpPrm };
						}
						else
						{
							cData[1] = cData[1].Replace(",", "").Trim();
							return new() { Name = num, Value = cData[1] };
						}
					}

					prm = parsePart().ValueArray;

					/*if (l.Contains("GetDataOutValue"))
						foreach (var kvAssigns in assigns)
						{
							l = l.Replace(kvAssigns.Key, kvAssigns.Value);
						}

					string[] cData = l.Split('=');
					int num = int.Parse(cData[0].Replace("[", "").Replace("]", "").Trim());

					if (cData[0].Trim().Contains("[") && cData[1].Trim() == "{")
					{
						int mB = 0;
						bool metEnding = false;

						List<string> entr = new();
						while (!metEnding)
						{
							l = readerParams.ReadLine().Trim().TrimEnd(',');

							if (l != "{" && l != "}")
								entr.Add(l);

							if (!l.Contains("{}"))
							{
								if (l.Contains('{')) mB++;
								if (l.StartsWith('}')) mB--;
								if (l.StartsWith('}') && mB == -1) metEnding = true;
							}
						}
						prm.Add(num, entr.ToArray());
					}
					else
					{
						cData[1] = cData[1].Replace(",", "").Trim();

						//if (cData[1].Contains("GetDataOutValue"))
						//	cData[1] += GetSetVarOutName(cData[1]);

						prm.Add(new() { Name = num.ToString(), Value = cData[1] });
					}*/
				}
			}

			readerParams.Close();

			return prm;
		}

		private string GetSetVarOutName(string inputStr)
		{
			if (inputStr.Contains("GetDataOutValue"))
			{
				string[] varAssignSp = inputStr.Split(':');

				if (!dominoBoxes.ContainsKey(varAssignSp[0]))
					return "";

				int dataOutParam = int.Parse(varAssignSp[1].Replace("GetDataOutValue(", "").Replace(")", ""));
				var boxNameP = dominoBoxes[varAssignSp[0]].Name;

				if (!regBoxes.ContainsKey(boxNameP))
					return "";

				string varBoxOutData = inputStr + " - " + regBoxes[boxNameP].DatasOut[dataOutParam].Name;

				return varBoxOutData;
			}
			else
				return inputStr;
		}

		private string ParamsAsString(DominoDict p, bool export = false, int ind = 1)
		{
			string v = "";

			string indd = "";
			for (int i = 0; i < ind; i++)
				indd += "  ";

			if (p.ValueArray.Any())
			{
				v += "{" + (export ? Environment.NewLine + "  " + indd : "");

				bool a = false;
				foreach (var s in p.ValueArray)
				{
					v += (a ? ("," + (export ? Environment.NewLine + "  " + indd : " ")) : "") + s.Name + " = ";

					v += ParamsAsString(s, export, ind++);

					a = true;
				}

				v += (export ? Environment.NewLine + indd : "") + "}";
			}
			else
			{
				v = export ? p.Value : GetSetVarOutName(p.Value);
			}

			return v;
		}

		private void ParseConnectionsArray(string l, DominoConnector parentConn)
		{
			if (l.Contains("[") && l.Contains("=") && !l.Contains("{") && !l.Contains("}"))
			{
				string[] cData = l.Split('=');
				int num = int.Parse(cData[0].Replace("[", "").Replace("]", "").Trim());
				cData[1] = cData[1].Replace(",", "").Replace("self.", "").Trim();

				DominoConnector conn = new();
				conn.ID = cData[1];
				conn.FromBoxConnectID = num;
				//conn.FromBoxes.Add(tempBox);

				if (regBoxes.ContainsKey(tempBox.Name) && parentConn == null)
				{
					conn.FromBoxConnectIDStr = regBoxes[tempBox.Name].ControlsOut[num].Name;
				}

				if (parentConn == null)
					tempBox.Connections.Add(conn);
				else
					parentConn.SubConnections.Add(conn);

				dominoConnectors.Add(conn.ID, conn);
			}

			else if (l.Contains("[") && l.Contains("=") && l.Contains("{"))
			{
				string[] cData = l.Split('=');
				int num = int.Parse(cData[0].Replace("[", "").Replace("]", "").Trim());

				DominoConnector conn = new();
				conn.FromBoxConnectID = num;
				//conn.FromBoxes.Add(tempBox);

				if (regBoxes.ContainsKey(tempBox.Name) && parentConn == null)
				{
					conn.FromBoxConnectIDStr = regBoxes[tempBox.Name].ControlsOut[num].Name;
				}

				if (parentConn == null)
					tempBox.Connections.Add(conn);
				else
					parentConn.SubConnections.Add(conn);

				while (!(l = reader.ReadLine().Trim()).StartsWith("}") && !l.EndsWith("}"))
				{
					ParseConnectionsArray(l, conn);
				}
			}

			else if (l.StartsWith("string = "))
			{
				string fncName = l.Replace("string = ", "").Replace(",", "").Replace("\"", "").Trim();
				parentConn.FromBoxConnectIDStr = fncName;
			}

			// parse name of func
			else if (l.StartsWith("value = "))
			{
				parentConn.ID = l.Replace("value = ", "").Replace(",", "").Replace("self.", "").Trim();
				dominoConnectors.Add(parentConn.ID, parentConn);
			}
		}

		List<Tuple<string, string, ArrowLine>> lines = new();
		int width = 300;
        int spaceX = 400;
        private List<Color> linesColors = new() {
				Colors.Red, Colors.Yellow, Colors.Blue, Colors.Green, Colors.LawnGreen, Colors.White, Colors.Pink, Colors.Orange, Colors.Azure,
				Colors.Purple, Colors.Violet, Colors.Brown, Colors.Cyan, Colors.Crimson, Colors.Fuchsia, Colors.Gold, Colors.Khaki,
				Colors.Navy, Colors.Olive, Colors.Silver, Colors.Turquoise, Colors.Tomato, Colors.Aqua, Colors.GreenYellow, Colors.LightGreen,
				Colors.LightGray, Colors.LightCyan, Colors.LightBlue, Colors.LightYellow, Colors.DarkBlue, Colors.DarkCyan, Colors.DarkGray,
				Colors.DarkKhaki, Colors.DarkMagenta, Colors.DarkOrange, Colors.DarkViolet, Colors.DeepPink, Colors.DarkRed, Colors.Lime,
				Colors.SkyBlue, Colors.DarkTurquoise,Colors.DeepSkyBlue,Colors.BlueViolet, Colors.BurlyWood,Colors.Chocolate,
				Colors.Firebrick, Colors.FloralWhite,
			};

		private void HandleSomethingHappened(string id, double x, double y)
		{
			foreach (var line in lines)
			{
				if (line.Item1 == id + "-P1" || line.Item1 == id + "-P2")
				{
					line.Item3.X1 = x + width;
					line.Item3.Y1 = y;
				}
				if (line.Item2 == id + "-P2" || line.Item2 == id + "-P1")
				{
					line.Item3.X2 = x;
					line.Item3.Y2 = y;
				}
			}

			wasEdited = true;
		}

		private void CleanChilds(UIElement except)
		{
			foreach (var child in canvas.Children)
				((UIElement)child).Opacity = 1;

			if (except is Widget || except is ArrowLine)
				foreach (var child in canvas.Children)
					if (child != except && (child is Widget || child is ArrowLine))
						((UIElement)child).Opacity = 0.25;
		}

		private void MarkBox(string boxID)
		{
			foreach (var line in lines)
			{
				if (
					(line.Item1 == boxID + "-P1" || line.Item1 == boxID + "-P2") ||
					(line.Item2 == boxID + "-P2" || line.Item2 == boxID + "-P1")
					)
				{
					line.Item3.Opacity = 1;

					List<string> lnb = new()
									{
										line.Item1.Replace("-P1", ""),
										line.Item1.Replace("-P2", ""),
										line.Item2.Replace("-P1", ""),
										line.Item2.Replace("-P2", "")
									};

					foreach (var child2 in canvas.Children)
						if (child2 is Widget chW2)
							if (lnb.Contains(chW2.ID))
								chW2.Opacity = 1;
				}
			}
		}

		private void W_MouseDoubleClick(object sender, System.Windows.Input.MouseButtonEventArgs e)
		{
			if (e.ClickCount == 2)
			{
				CleanChilds((UIElement)e.Source);

				if (e.Source is Widget)
					foreach (var child in canvas.Children)
						if (child == (UIElement)e.Source && child is Widget chW)
							MarkBox(chW.ID);

				if (e.Source is ArrowLine)
				{
					foreach (var line in lines)
					{
						if (line.Item3 == e.Source)
						{
							List<string> lnb = new()
							{
								line.Item1.Replace("-P1", ""),
								line.Item1.Replace("-P2", ""),
								line.Item2.Replace("-P1", ""),
								line.Item2.Replace("-P2", "")
							};

							foreach (var child in canvas.Children)
								if (child is Widget chW)
									if (lnb.Contains(chW.ID))
										chW.Opacity = 1;
						}
					}
				}
			}
		}

		public string Search(string input)
		{
			bool found = false;

			foreach (var child in canvas.Children)
				if (child is Widget w)
					if (w.ID == input)
					{
						CleanChilds(w);
						MarkBox(w.ID);
						found = true;
					}

			if (!found)
				return input + " was not found.";

			return "";
		}

		private void OnOpenClick(object sender, RoutedEventArgs e)
		{
            string openParam = (string)((Button)sender).Tag;

			AskDialog("Open", "Open the selected Domino script?", () =>
			{
				File.WriteAllBytes(runPath + "\\tmp", regBoxes[openParam].LuaBytes);

				ProcessStartInfo startInfo = new ProcessStartInfo(runPath + "\\DominoVisualizer.exe");
				startInfo.UseShellExecute = true;
				startInfo.Arguments = "-fcver=" + game + " -fileFolder=" + file.Replace(Path.GetFileName(file), runPath + "\\tmp") + " -bytes=" + runPath + "\\tmp" + " -fn=" + openParam;
				Process.Start(startInfo);
			});
		}

        private Widget wiMetaDataIn = null;
        private Widget wiMetaDataOut = null;
        private Widget wiMetaControlIn = null;
        private Widget wiMetaControlOut = null;
		private Widget wiGlobalVars = null;
		private Widget wiResources = null;

        private void Draw(bool workspace = false)
		{
			canvas.SomethingHappened += new MyEventHandler(HandleSomethingHappened);
			canvas.MouseLeftButtonDown += W_MouseDoubleClick;

			List<Point> selectedPoints = new();
			Dictionary<string, Point> linesPoints = new();
			List<Tuple<string, string, int>> linesJoin = new();

			int staticBoxesHeight = 0;
			int staticBoxesHeightT = 0;

            // ==============================================================================

            wiMetaControlIn = new Widget();
            wiMetaControlIn.ID = wiMetaControlIn.Header.Text = "ControlsIn";
            wiMetaControlIn.Header.Foreground = Brushes.White;
            wiMetaControlIn.Width = width;
            wiMetaControlIn.HeaderRectangle.Fill = Brushes.Green;
			wiMetaControlIn.delBtn.Visibility = Visibility.Hidden;
			wiMetaControlIn.DisableMove = true;
            canvas.Children.Add(wiMetaControlIn);
            Canvas.SetLeft(wiMetaControlIn, 0);
            Canvas.SetTop(wiMetaControlIn, 0);
            Panel.SetZIndex(wiMetaControlIn, 30);

            staticBoxesHeightT = 30;
            foreach (var inControl in thisMetadata.ControlsIn)
            {
                DrawMetaControlIn(inControl);
                staticBoxesHeightT += 50;
            }
            staticBoxesHeight = Math.Max(staticBoxesHeight, staticBoxesHeightT);

            linesPoints.Add("ControlsIn-P1", new(width, 0));

            // ==============================================================================

            wiMetaControlOut = new Widget();
            wiMetaControlOut.ID = wiMetaControlOut.Header.Text = "ControlsOut";
            wiMetaControlOut.Header.Foreground = Brushes.White;
            wiMetaControlOut.Width = width;
            wiMetaControlOut.HeaderRectangle.Fill = Brushes.Green;
			wiMetaControlOut.delBtn.Visibility = Visibility.Hidden;
            wiMetaControlOut.DisableMove = true;
            canvas.Children.Add(wiMetaControlOut);
            Canvas.SetLeft(wiMetaControlOut, spaceX);
            Canvas.SetTop(wiMetaControlOut, 0);
            Panel.SetZIndex(wiMetaControlOut, 30);

            staticBoxesHeightT = 30;
            foreach (var inControl in thisMetadata.ControlsOut)
            {
                DrawMetaControlOut(inControl);
                staticBoxesHeightT += 50;
            }
            staticBoxesHeight = Math.Max(staticBoxesHeight, staticBoxesHeightT);

            linesPoints.Add("ControlsOut-P2", new(spaceX, 0));

            // ==============================================================================

            wiMetaDataIn = new Widget();
            wiMetaDataIn.ID = wiMetaDataIn.Header.Text = "DatasIn";
            wiMetaDataIn.Header.Foreground = Brushes.White;
            wiMetaDataIn.Width = width;
            wiMetaDataIn.HeaderRectangle.Fill = Brushes.Green;
            wiMetaDataIn.delBtn.Visibility = Visibility.Hidden;
            wiMetaDataIn.DisableMove = true;
            canvas.Children.Add(wiMetaDataIn);
            Canvas.SetLeft(wiMetaDataIn, spaceX * 2);
			Canvas.SetTop(wiMetaDataIn, 0);
            Panel.SetZIndex(wiMetaDataIn, 30);

            wiMetaDataIn.list.Children.Add(DrawBtn("Add new", "datain", AddMetadataInfo));

            staticBoxesHeightT = 50;
			foreach (var inData in thisMetadata.DatasIn)
			{
                DrawMetaDataIn(inData, true);
				staticBoxesHeightT += 50;
			}
			staticBoxesHeight = Math.Max(staticBoxesHeight, staticBoxesHeightT);

			// ==============================================================================

			wiGlobalVars = new Widget();
			wiGlobalVars.ID = wiGlobalVars.Header.Text = "Global variables";
			wiGlobalVars.Header.Foreground = Brushes.White;
			wiGlobalVars.Width = width;
			wiGlobalVars.HeaderRectangle.Fill = Brushes.Green;
            wiGlobalVars.delBtn.Visibility = Visibility.Hidden;
            wiGlobalVars.DisableMove = true;
            canvas.Children.Add(wiGlobalVars);
			Canvas.SetLeft(wiGlobalVars, spaceX * 3);
			Canvas.SetTop(wiGlobalVars, 0);
            Panel.SetZIndex(wiGlobalVars, 30);

            wiGlobalVars.list.Children.Add(DrawBtn("Add new", "globalvar", AddMetadataInfo));

			staticBoxesHeightT = 50;
            foreach (var var in globalVariables)
            {
				DrawGlobalVar(var);
                staticBoxesHeightT += 40;
            }
            staticBoxesHeight = Math.Max(staticBoxesHeight, staticBoxesHeightT);

            // ==============================================================================

            wiMetaDataOut = new Widget();
            wiMetaDataOut.ID = wiMetaDataOut.Header.Text = "DatasOut";
            wiMetaDataOut.Header.Foreground = Brushes.White;
            wiMetaDataOut.Width = width;
            wiMetaDataOut.HeaderRectangle.Fill = Brushes.Green;
            wiMetaDataOut.delBtn.Visibility = Visibility.Hidden;
            wiMetaDataOut.DisableMove = true;
            canvas.Children.Add(wiMetaDataOut);
            Canvas.SetLeft(wiMetaDataOut, spaceX * 4);
            Canvas.SetTop(wiMetaDataOut, 0);
            Panel.SetZIndex(wiMetaDataOut, 30);

            wiMetaDataOut.list.Children.Add(DrawBtn("Add new", "dataout", AddMetadataInfo));

            staticBoxesHeightT = 50;
            foreach (var data in thisMetadata.DatasOut)
            {
                DrawMetaDataIn(data, false);
                staticBoxesHeightT += 50;
            }
            staticBoxesHeight = Math.Max(staticBoxesHeight, staticBoxesHeightT);

            // ==============================================================================

            wiResources = new Widget();
            wiResources.ID = wiResources.Header.Text = "Resources";
            wiResources.Header.Foreground = Brushes.White;
            wiResources.Width = width;
            wiResources.HeaderRectangle.Fill = Brushes.Green;
            wiResources.delBtn.Visibility = Visibility.Hidden;
            wiResources.DisableMove = true;
            canvas.Children.Add(wiResources);
            Canvas.SetLeft(wiResources, spaceX * 5);
            Canvas.SetTop(wiResources, 0);
            Panel.SetZIndex(wiResources, 30);

            wiResources.list.Children.Add(DrawBtn("Add new", "", AddResource));

            staticBoxesHeightT = 50;
            foreach (var data in dominoResources)
            {
                DrawResource(data);
                staticBoxesHeightT += 35;
            }
            staticBoxesHeight = Math.Max(staticBoxesHeight, staticBoxesHeightT);

            // ==============================================================================

            staticBoxesHeight = staticBoxesHeight + (300 - (staticBoxesHeight % 300));

			var inConns = dominoConnectors.Values.Where(c => thisMetadata.ControlsIn.Where(a => a.Name == c.ID).Any());
			foreach (var inConn in inConns)
                DrawChilds(inConn, 0, staticBoxesHeight + inConn.DrawY);

			foreach (var lineJoin in linesJoin)
			{
				if (linesPoints.ContainsKey(lineJoin.Item1) && linesPoints.ContainsKey(lineJoin.Item2))
				{
					DrawLine(
						linesPoints[lineJoin.Item1].X,
						linesPoints[lineJoin.Item1].Y,
						linesPoints[lineJoin.Item2].X,
						linesPoints[lineJoin.Item2].Y,
						lineJoin.Item1,
						lineJoin.Item2,
						lineJoin.Item3
					);
				}
			}

			// ==============================================================================

			Point GetFreePos(double x, double y)
			{
				var sameX = selectedPoints.Where(p => p.X == x);

				Point newPoint = new(x, y);

				if (sameX != null && sameX.Any())
				{
					var maxY = sameX.MaxBy(p => p.Y);

                    double newY = y;

					while (maxY.Y > newY)
					{
						newY += 300;
					}

					newPoint = new(x, newY);
				}

				selectedPoints.Add(newPoint);

				return newPoint;
			}

			void DrawChilds(DominoConnector conn, double currX, double currY)
			{
				bool exists = false;
				//Widget w = null;
				if (conn.Widget == null)
                {
                    if (workspace)
                    {
                        currX = conn.DrawX;
                        currY = conn.DrawY;
                    }
                    else
                    {
                        var pos = GetFreePos(currX, currY);
                        currX = (int)pos.X;
                        currY = (int)pos.Y;
                    }

                    DrawConnector(conn, currX, currY, linesJoin, linesPoints);
                }
				else
				{
					//w = conn.Widget;
					exists = true;
				}

				if (!workspace)
					currX += spaceX;

                double currYBox = currY;
				int colorBoxSel = 0;
				foreach (var execBox in conn.ExecBoxes)
				{
					if (!exists)
					{
						DrawExecBoxContainerUI(conn, execBox, linesColors[colorBoxSel]);

						// ===

						bool execBoxNull = false;

						if (execBox.Box.Widget == null)
                        {
                            if (workspace)
                            {
                                currX = execBox.Box.DrawX;
                                currYBox = execBox.Box.DrawY;
                            }
                            else
                            {
                                var pos = GetFreePos(currX, currYBox);
                                currX = (int)pos.X;
                                currYBox = (int)pos.Y;
                            }

                            DrawBox(execBox.Box, currX, currYBox);

                            execBoxNull = true;

							foreach (var subConn in execBox.Box.Connections)
							{
                                DrawBoxConnectors(execBox.Box, subConn, "", linesJoin);

								/*if (subConn.ID != null && subConn.ID != "")
								{
									StackPanel sp2 = new();

									Grid g = new() { Height = 18 };
									g.Children.Add(new TextBox() { Text = "(" + subConn.FromBoxConnectID.ToString() + ") " + subConn.FromBoxConnectIDStr + " = " + subConn.ID, Margin = new(0, 0, 0, 0), FontWeight = FontWeights.Bold, Width = double.NaN, HorizontalAlignment = HorizontalAlignment.Left });
									sp2.Children.Add(g);

            						Button btnDel = new Button() { Tag = execBox.Box.ID + "|" + subConn.ID, Style = (Application.Current.FindResource("DelBtn") as Style) };
            						btnDel.Click += RemoveBoxConn;
            						sp2.Children.Add(btnDel);

									Border b2 = new() { BorderBrush = new SolidColorBrush(linesColors[colorConnSel]), BorderThickness = new(2, 2, 2, 2), Child = sp2 };
									wb.list.Children.Add(b2);
									
									subConn.ContainerUI = b2;

									execBox.Box.Height += 20;

									linesJoin.Add(new(execBox.Box.ID + "-P2", subConn.ID + "-P2", colorConnSel));
								}

								foreach (var subSubConn in subConn.SubConnections)
								{
									//if (aaa > 4) continue;

									StackPanel sp3 = new();

									Grid g3 = new() { Height = 18 };
									g3.Children.Add(new TextBox() { Text = "(" + subConn.FromBoxConnectID.ToString() + ") " + subConn.FromBoxConnectIDStr + " > (" + subSubConn.FromBoxConnectID.ToString() + ") " + subSubConn.FromBoxConnectIDStr + " = " + subSubConn.ID, Margin = new(0, 0, 0, 0), FontWeight = FontWeights.Bold, Width = double.NaN, HorizontalAlignment = HorizontalAlignment.Left });
									sp3.Children.Add(g3);

									Border b3 = new() { BorderBrush = new SolidColorBrush(linesColors[colorConnSel]), BorderThickness = new(2, 2, 2, 2), Child = sp3 };
									wb.list.Children.Add(b3);

									execBox.Box.Height += 20;

									linesJoin.Add(new(execBox.Box.ID + "-P2", subSubConn.ID + "-P2", colorConnSel));

									colorConnSel++;
								}

								colorConnSel++;*/
							}

							//currYBox += /*(int)wb.Height +*/ 100;


							//var cns = execBox.Box.Connections;
							var cns = execBox.Box.Connections
								.OrderByDescending(a => a.FromBoxConnectIDStr.StartsWith(execBox.ExecStr))
								.ThenByDescending(a => regBoxes[execBox.Box.Name].ControlsOut[a.FromBoxConnectID].IsDelayed)
								.ThenByDescending(a => a.FromBoxConnectIDStr.ToLower().Contains("open"))
								.ThenByDescending(a => a.FromBoxConnectIDStr.ToLower().Contains("start"))
								.ThenByDescending(a => a.FromBoxConnectIDStr.ToLower() == "loaded")
								.ToList();

							foreach (var subConn in cns)
							{
								if (subConn.ID == null)
								{
									foreach (var subSubConn in subConn.SubConnections)
									{
										if (subSubConn.ID != null)
                                            DrawChilds(subSubConn, execBox.Box.DrawX + spaceX, execBox.Box.DrawY + 20);
										//currY += 300;
									}
								}
								else
								{
                                    DrawChilds(subConn, execBox.Box.DrawX + spaceX, execBox.Box.DrawY + 20);
									//currY += 300;
								}
							}
						}
						/*else
						{
							hadX = execBox.Box.DrawX;
							hadY = execBox.Box.DrawY;
						}*/

						if (!linesPoints.ContainsKey(execBox.Box.ID + "-P1"))
							linesPoints.Add(execBox.Box.ID + "-P1", new(execBox.Box.DrawX, execBox.Box.DrawY));

						if (!linesPoints.ContainsKey(execBox.Box.ID + "-P2"))
							linesPoints.Add(execBox.Box.ID + "-P2", new(execBox.Box.DrawX + width, execBox.Box.DrawY));

						linesJoin.Add(new(conn.ID + "-P1", execBox.Box.ID + "-P1", colorBoxSel));

						if (execBoxNull)
							selectedPoints.Add(new(execBox.Box.DrawX, execBox.Box.DrawY + execBox.Box.Height));

						/*if (execBoxNull)
                            if (execBox.Box.Height > 300)
                            {
                                for (int i = 0; i < execBox.Box.Height; i += 300)
                                {
                                    selectedPoints.Add(new(execBox.Box.DrawX, execBox.Box.DrawY + i));
                                }
                            }*/
					}

					colorBoxSel++;
				}

				if (!exists)
					selectedPoints.Add(new(conn.DrawX, conn.DrawY + conn.Height));

				/*if (!exists)
                    if (conn.Height > 300)
                    {
                        for (int i = 0; i < conn.Height; i += 300)
                        {
                            selectedPoints.Add(new(conn.DrawX, conn.DrawY + i));
                        }
                    }*/

				/*if (hadBox)
					currX += spaceX;

				if (hadX > 0 && hadY > 0)
				{
					currX = hadX + spaceX;
					currY = hadY;
				}

				//if (aaa > 4) return;

				if (!exists)
					foreach (var execBox in conn.ExecBoxes)
					{
						//var cns = execBox.Box.Connections;
						var cns = execBox.Box.Connections
							.OrderByDescending(a => a.FromBoxConnectIDStr.StartsWith(execBox.ExecStr))
							.ThenByDescending(a => a.IsDelayed)
							.ThenByDescending(a => a.FromBoxConnectIDStr.ToLower().Contains("open"))
							.ThenByDescending(a => a.FromBoxConnectIDStr.ToLower().Contains("start"))
							.ThenByDescending(a => a.FromBoxConnectIDStr.ToLower() == "loaded")
							.ToList();

						foreach (var subConn in cns)
						{
							if (subConn.ID == null)
							{
								foreach (var subSubConn in subConn.SubConnections)
								{
									if (subSubConn.ID != null)
										DrawConnector(subSubConn, currX, currY + 20);
									//currY += 300;
								}
							}
							else
							{
								DrawConnector(subConn, currX, currY + 20);
								//currY += 300;
							}
						}
					}*/
			}
		}

		private Border DrawBtn(string name, string tag, RoutedEventHandler act)
		{
            Button btn = new Button() { Content = name, Tag = tag, Style = Application.Current.FindResource("BoxBtn") as Style };
            btn.Click += act;
            StackPanel spOpen = new();
            spOpen.Children.Add(btn);
            Border bOpen = new() { BorderBrush = new SolidColorBrush(Colors.Black), BorderThickness = new(2, 2, 2, 2), Child = spOpen };
			return bOpen;
        }

        private void DrawLine(double x1, double y1, double x2, double y2, string startIndex, string endIndex, int clrIndx)
		{
			ArrowLine l = new()
			{
				StrokeThickness = 2,
				Stroke = new SolidColorBrush(clrIndx == -1 ? Color.FromArgb(150, 150, 150, 150) : linesColors[clrIndx]),
				X1 = x1,
				Y1 = y1,
				X2 = x2,
				Y2 = y2
			};
			l.MakeBezier();
			l.Cursor = Cursors.Hand;

			canvas.Children.Add(l);
            Panel.SetZIndex(l, 40);

            lines.Add(new(startIndex, endIndex, l));
		}

		private void DrawExecBoxContainerUI(DominoConnector c, ExecBox eb, Color clr)
		{
			StackPanel sp = new();
			DrawExecBoxChildren(c, eb, sp);
			eb.MainUI = sp;
			eb.INT_clr = clr;
			Border b = new() { BorderBrush = new SolidColorBrush(clr), BorderThickness = new(2, 2, 2, 2), Child = sp };
			c.Widget.list.Children.Add(b);
			eb.ContainerUI = b;
		}

		private StackPanel DrawExecBoxChildren(DominoConnector conn, ExecBox execBox, StackPanel sp)
        {
            string execStr = "Exec: " + "(" + execBox.Exec.ToString() + ") " + regBoxes[execBox.Box.Name].ControlsIn[execBox.Exec].Name;
            if (execBox.Type == ExecType.ExecDynInt) execStr += ", DynInt: " + execBox.DynIntExec.ToString();

            Grid gh = new() { Height = 18 };
            gh.Children.Add(new TextBox() { Text = execStr + " > " + execBox.Box.ID, Margin = new(0, 0, 0, 0), HorizontalAlignment = HorizontalAlignment.Center, FontWeight = FontWeights.Bold, Width = double.NaN });

            Button btn = new Button() { Tag = conn.ID + "|" + execBox.Box.ID, Style = (Application.Current.FindResource("EditBtn") as Style) };
            btn.Click += EditExecBox;
            gh.Children.Add(btn);

            Button btn2 = new Button() { Tag = conn.ID + "|" + execBox.Box.ID, Style = (Application.Current.FindResource("DelBtn") as Style) };
            btn2.Click += RemoveExecBox;
            gh.Children.Add(btn2);

            sp.Children.Add(gh);

            conn.Height += 20;

            if (execBox.Params != null && execBox.Params.Count > 0)
            {
                foreach (var param in execBox.Params)
                {
                    string pv = ParamsAsString(param);

                    /*if (param.ValueArray.Count > 1)
                        pv = "{" + string.Join(", ", param.ValueArra) + "}";
                    else
                        pv = GetSetVarOutName(param.Value);*/

                    Grid g = new() { Height = 30 };
                    g.Children.Add(new TextBox() { Text = "(" + param.Name + ") " + (regBoxes.ContainsKey(execBox.Box.Name) ? regBoxes[execBox.Box.Name].DatasIn[int.Parse(param.Name)].Name : ""), Margin = new(0, 0, 0, 0), FontWeight = FontWeights.Bold, Width = double.NaN, HorizontalAlignment = HorizontalAlignment.Left });
                    g.Children.Add(new TextBox() { Text = pv, Margin = new(10, 13, 0, 0), Width = double.NaN, HorizontalAlignment = HorizontalAlignment.Left });
                    sp.Children.Add(g);

                    conn.Height += 34;
                }
            }

			return sp;
        }

		private void DrawBoxConnectors(DominoBox box, DominoConnector c, string parentName = "", List<Tuple<string, string, int>> linesJoin = null, bool addLine = true, int selClr = -1)
		{
            string name = parentName + "(" + c.FromBoxConnectID.ToString() + ") " + c.FromBoxConnectIDStr;
			int colorConnSel = selClr >= 0 ? selClr : box.Widget.list.Children.Count;

            if (c.ID != null && c.ID != "")
            {
				c.INT_clr = colorConnSel;

                StackPanel sp2 = new();

                Grid g = new() { Height = 18 };
                g.Children.Add(new TextBox() { Text = name + " = " + c.ID, Margin = new(0, 0, 20, 0), FontWeight = FontWeights.Bold, Width = double.NaN, HorizontalAlignment = HorizontalAlignment.Left });

                Button btnDel = new Button() { Tag = box.ID + "|" + c.ID, Style = (Application.Current.FindResource("DelBtn") as Style), Margin = new(0) };
                btnDel.Click += RemoveBoxConn;
                g.Children.Add(btnDel);

                sp2.Children.Add(g);

                Border b2 = new() { BorderBrush = new SolidColorBrush(linesColors[colorConnSel]), BorderThickness = new(2, 2, 2, 2), Child = sp2 };
                box.Widget.list.Children.Add(b2);

                c.ContainerUI = b2;

                box.Height += 20;

				if (linesJoin != null) 
					linesJoin.Add(new(box.ID + "-P2", c.ID + "-P2", colorConnSel));
				else if (addLine)
                {
                    var a = canvas.Transform2(new(Canvas.GetLeft(box.Widget), Canvas.GetTop(box.Widget)));
                    var b = canvas.Transform2(new(Canvas.GetLeft(c.Widget), Canvas.GetTop(c.Widget)));

                    DrawLine(
                        a.X + width,
                        a.Y,
                        b.X,
                        b.Y,
                        box.ID + "-P2",
                        c.ID + "-P2",
                        colorConnSel
                    );
                }
            }

            foreach (var sc in c.SubConnections)
            {
                DrawBoxConnectors(box, sc, name + " > ", linesJoin);
            }
        }

		private void DrawConnector(DominoConnector conn, double currX, double currY, List<Tuple<string, string, int>> linesJoin = null, Dictionary<string, Point> linesPoints = null)
		{
            bool isIn = thisMetadata.ControlsIn.Where(a => a.Name == conn.ID).Any();
			bool isOut = thisMetadata.ControlsOut.Where(a => conn.OutFuncName.Contains(a.Name)).Any();

			Brush brsh = Brushes.Yellow;
			if (isIn) brsh = Brushes.Red;
			if (isOut) brsh = Brushes.Orange;

            var w = new Widget();
            w.Header.Text = (isIn ? "ControlIn - " : "") + conn.ID;
            //w.Height = 30;
            w.Width = width;
            w.HeaderRectangle.Fill = brsh;
            w.ID = conn.ID;
            canvas.Children.Add(w);

			w.delBtn.Tag = conn.ID;
			w.delBtn.Click += RemoveConector;

			w.editBtn.Visibility = Visibility.Visible;
			w.editBtn.Tag = conn.ID;
			w.editBtn.Click += EditConnectorDialog;

            Canvas.SetLeft(w, currX);
            Canvas.SetTop(w, currY);
            Panel.SetZIndex(w, 30);
            conn.DrawX = currX;
            conn.DrawY = currY;
            conn.Widget = w;
            conn.Height = 50;

			if (!isOut)
				w.list.Children.Add(DrawBtn("Add new exec box", conn.ID, AddExecBox));

            w.list.Children.Add(DrawBtn("Add new set variable", conn.ID, AddConnVar));

            foreach (var setVar in conn.SetVariables)
            {
				DrawConnVariable(conn, setVar);
                conn.Height += 34;
            }

            foreach (string outFunc in conn.OutFuncName)
            {
                StackPanel sp2 = new();

                Grid g = new() { Height = 30 };
                g.Children.Add(new TextBox() { Text = "ControlOut", FontWeight = FontWeights.Bold, Width = double.NaN, HorizontalAlignment = HorizontalAlignment.Left });
                g.Children.Add(new TextBox() { Text = outFunc, Margin = new(10, 13, 0, 0), Width = double.NaN, HorizontalAlignment = HorizontalAlignment.Left });
                sp2.Children.Add(g);

                Border b2 = new() { BorderBrush = new SolidColorBrush(Colors.Orange), BorderThickness = new(2, 2, 2, 2), Child = sp2 };
                w.list.Children.Add(b2);

                conn.Height += 34;

				if (linesJoin != null)
					linesJoin.Add(new(conn.ID + "-P1", "ControlsOut-P2", -1));
            }

			if (linesJoin != null)
				if (isIn)
                    linesJoin.Add(new("ControlsIn-P1", conn.ID + "-P2", -1));

			if (linesPoints != null)
            {
                if (!linesPoints.ContainsKey(conn.ID + "-P1"))
                    linesPoints.Add(conn.ID + "-P1", new(conn.DrawX + w.Width, currY));

                if (!linesPoints.ContainsKey(conn.ID + "-P2"))
                    linesPoints.Add(conn.ID + "-P2", new(conn.DrawX, currY));
            }
        }

		private void DrawBox(DominoBox box, double currX, double currYBox)
        {
            Widget wb = new Widget();
            wb.Header.Text = box.ID + " - " + box.Name;
			wb.Header.Margin = new(0, 0, 40, 0);
            //wb.Height = 30;
            wb.Width = width;
            wb.HeaderRectangle.Fill = Brushes.White;
            wb.ID = box.ID;
            canvas.Children.Add(wb);

            wb.delBtn.Tag = box.ID;
            wb.delBtn.Click += RemoveBox;

			wb.swapBtn.Visibility = Visibility.Visible;
            wb.swapBtn.Tag = box.ID;
			wb.swapBtn.Click += SwapBox;

            Canvas.SetLeft(wb, currX);
            Canvas.SetTop(wb, currYBox);
            Panel.SetZIndex(wb, 30);
            box.DrawX = currX;
            box.DrawY = currYBox;
            box.Widget = wb;
            box.Height = 40;

            if (regBoxes.ContainsKey(box.Name) && !regBoxes[box.Name].IsSystem)
            {
                wb.list.Children.Add(DrawBtn("Open in new window >>>", box.Name, OnOpenClick));
                box.Height += 20;
            }

            wb.list.Children.Add(DrawBtn("Add new output connector", box.ID, AddBoxConnector));
        }

		private void DrawMetaDataIn(DominoBoxMetadataDatasIn inData, bool indt)
		{
            StackPanel sp2 = new();

            Grid g2 = new() { Height = 18 };

            g2.Children.Add(new TextBox() { Text = inData.Name, FontWeight = FontWeights.Bold });

			string tag = (indt ? "datain" : "dataout") + "|" + inData.Name;

            Button btn = new Button() { Tag = tag, Style = (Application.Current.FindResource("EditBtn") as Style) };
            btn.Click += EditMetadataInfo;
            g2.Children.Add(btn);

            Button btnDel = new Button() { Tag = tag, Style = (Application.Current.FindResource("DelBtn") as Style) };
            btnDel.Click += RemoveMetadataInfo;
            g2.Children.Add(btnDel);

            sp2.Children.Add(g2);


            sp2.Children.Add(new TextBox() { Text = "AnchorDynType: " + inData.AnchorDynType, Margin = new(10, 0, 0,0) });
            sp2.Children.Add(new TextBox() { Text = "DataTypeID: " + inData.DataTypeID, Margin = new(10, 0, 0, 0) });

            Border b2 = new() { BorderBrush = new SolidColorBrush(Colors.Black), BorderThickness = new(2, 2, 2, 2), Child = sp2 };
			inData.ContainerUI = b2;
            if (indt) wiMetaDataIn.list.Children.Add(b2);
            else wiMetaDataOut.list.Children.Add(b2);
        }

		private void DrawMetaControlIn(DominoBoxMetadataControlsIn inCtrl)
        {
            StackPanel sp2 = new();

            Grid g2 = new() { Height = 18 };

            g2.Children.Add(new TextBox() { Text = inCtrl.Name, FontWeight = FontWeights.Bold });

            Button btn = new Button() { Tag = "controlin|" + inCtrl.Name, Style = (Application.Current.FindResource("EditBtn") as Style) };
            btn.Click += EditMetadataInfo;
            g2.Children.Add(btn);

            sp2.Children.Add(g2);

            sp2.Children.Add(new TextBox() { Text = "AnchorDynType: " + inCtrl.AnchorDynType, Margin = new(10, 0, 0, 0) });
            sp2.Children.Add(new TextBox() { Text = "HostExecFunc: " + inCtrl.HostExecFunc, Margin = new(10, 0, 0, 0) });

            Border b2 = new() { BorderBrush = new SolidColorBrush(Colors.Black), BorderThickness = new(2, 2, 2, 2), Child = sp2 };
            inCtrl.ContainerUI = b2;
			wiMetaControlIn.list.Children.Add(b2);
        }

		private void DrawMetaControlOut(DominoBoxMetadataControlsOut outCtrl)
		{
            StackPanel sp2 = new();

            Grid g2 = new() { Height = 18 };

            g2.Children.Add(new TextBox() { Text = outCtrl.Name, FontWeight = FontWeights.Bold });

            Button btn = new Button() { Tag = "controlout|" + outCtrl.Name, Style = (Application.Current.FindResource("EditBtn") as Style) };
            btn.Click += EditMetadataInfo;
            g2.Children.Add(btn);

            sp2.Children.Add(g2);

            sp2.Children.Add(new TextBox() { Text = "AnchorDynType: " + outCtrl.AnchorDynType, Margin = new(10, 0, 0, 0) });
            sp2.Children.Add(new TextBox() { Text = "IsDelayed: " + (outCtrl.IsDelayed ? "true" : "false"), Margin = new(10, 0, 0, 0) });

            Border b2 = new() { BorderBrush = new SolidColorBrush(Colors.Black), BorderThickness = new(2, 2, 2, 2), Child = sp2 };
            outCtrl.ContainerUI = b2;
			wiMetaControlOut.list.Children.Add(b2);
        }

		private void RemoveLine(string a, string b)
        {
            foreach (var i in lines)
                if (i.Item1 == a && i.Item2 == b)
                {
                    canvas.Children.Remove(i.Item3);
                    break;
                }

            lines.RemoveAll(aa => aa.Item1 == a && aa.Item2 == b);
        }

		private void RemoveConector(object sender, RoutedEventArgs e)
        {
			AskDialog("Remove connector", "Do you want to remove the connector?", () =>
            {
                string tag = (string)(sender as Button).Tag;

                var conn = dominoConnectors[tag];

                foreach (var execBox in conn.ExecBoxes)
                    RemoveLine(tag + "-P1", execBox.Box.ID + "-P1");

                foreach (var box in dominoBoxes.Values)
                {
                    RemoveBoxConnS(box, box.Connections, tag);
                    //RemoveLine(box.ID + "-P2", tag + "-P2");
                }

                var ci = thisMetadata.ControlsIn.Where(a => a.Name == conn.ID).SingleOrDefault();
                if (ci != null)
                {
                    RemoveLine("ControlsIn-P1", conn.ID + "-P2");
                    wiMetaControlIn.list.Children.Remove(ci.ContainerUI);
                    thisMetadata.ControlsIn.Remove(ci);
                }

                foreach (var sof in conn.OutFuncName)
                {
                    var co = thisMetadata.ControlsOut.Where(a => a.Name == sof).SingleOrDefault();
                    if (co != null)
                    {
                        RemoveLine(conn.ID + "-P1", "ControlsOut-P2");
                        wiMetaControlOut.list.Children.Remove(co.ContainerUI);
                        thisMetadata.ControlsOut.Remove(co);
                    }
                }

                canvas.Children.Remove(conn.Widget);
                dominoConnectors.Remove(tag);
            });
        }

		private void DrawConnVariable(DominoConnector conn, DominoDict setVar)
        {
            StackPanel sp2 = new();

            Grid g = new() { Height = 18 };
            g.Children.Add(new TextBox() { Text = setVar.Name, FontWeight = FontWeights.Bold, Width = double.NaN, HorizontalAlignment = HorizontalAlignment.Left });

            Button btn = new Button() { Tag = conn.ID + "|" + setVar.UniqueID, Style = (Application.Current.FindResource("EditBtn") as Style) };
            btn.Click += EditConnVar;
            g.Children.Add(btn);

            Button btn2 = new Button() { Tag = conn.ID + "|" + setVar.UniqueID, Style = (Application.Current.FindResource("DelBtn") as Style) };
            btn2.Click += RemoveConnVar;
            g.Children.Add(btn2);

            sp2.Children.Add(g);

            sp2.Children.Add(new TextBox() { Text = GetSetVarOutName(setVar.Value), Margin = new(10, 0, 0, 0), Width = double.NaN, HorizontalAlignment = HorizontalAlignment.Left });

            Border b2 = new() { BorderBrush = new SolidColorBrush(Colors.Black), BorderThickness = new(2, 2, 2, 2), Child = sp2 };
			setVar.ContainerUI = b2;
			conn.Widget.list.Children.Add(b2);
        }

		private void DrawGlobalVar(DominoDict var)
		{
            string pv = ParamsAsString(var);
			
            /*if (var.Value.Length > 1)
                pv = "{" + string.Join(", ", var.Value) + "}";
            else
                pv = GetSetVarOutName(var.Value[0]);*/

            StackPanel sp2 = new();

            Grid g = new() { Height = 18 };
            g.Children.Add(new TextBox() { Text = var.Name, FontWeight = FontWeights.Bold });
			
            Button btn = new Button() { Tag = "globalvar|" + var.UniqueID, Style = (Application.Current.FindResource("EditBtn") as Style) };
            btn.Click += EditMetadataInfo;
            g.Children.Add(btn);

            Button btnDel = new Button() { Tag = "globalvar|" + var.UniqueID, Style = (Application.Current.FindResource("DelBtn") as Style) };
            btnDel.Click += RemoveMetadataInfo;
            g.Children.Add(btnDel);

            sp2.Children.Add(g);

            sp2.Children.Add(new TextBox() { Text = pv, Margin = new(10, 0, 0, 0) });

            Border b2 = new() { BorderBrush = new SolidColorBrush(Colors.Black), BorderThickness = new(2, 2, 2, 2), Child = sp2 };
            var.ContainerUI = b2;
			wiGlobalVars.list.Children.Add(b2);
		}

		private void RemoveBox(object sender, RoutedEventArgs e)
        {
			AskDialog("Remove box", "Do you want to remove the box?", () =>
            {
                string tag = (string)(sender as Button).Tag;

                var b = dominoBoxes[tag];

                foreach (var c in dominoConnectors.Values)
                {
                    var eb = c.ExecBoxes.Where(a => a.Box.ID == tag).SingleOrDefault();
                    if (eb != null)
                    {
                        c.Widget.list.Children.Remove(eb.ContainerUI);
                        c.ExecBoxes.RemoveAll(a => a.Box.ID == tag);

                        RemoveLine(c.ID + "-P1", tag + "-P1");
                    }
                }

                void a(List<DominoConnector> c)
                {
                    foreach (var cc in c)
                    {
                        cc.FromBoxConnectID = -1;
                        cc.FromBoxConnectIDStr = "MISSING BOX";
                        RemoveLine(tag + "-P2", cc.ID + "-P2");
                    }

                    foreach (var cc in c)
                        a(cc.SubConnections);
                }

                a(b.Connections);

                canvas.Children.Remove(b.Widget);
                dominoBoxes.Remove(tag);

				var toRem = regBoxes.Where(r => dominoBoxes.Count(m => m.Value.Name == r.Key) == 0).Select(pair => pair.Key).ToList();
				foreach (var tr in toRem)
				{
    				regBoxes.Remove(tr);
				}
            });
        }

		private void SwapBox(object sender, RoutedEventArgs e)
        {
            string tag = (string)(sender as Button).Tag;

			var b = dominoBoxes[tag];

			string num = b.ID.Replace("self[", "").Replace("]", "").Replace("en_", "");

			if (b.ID.StartsWith("self["))
				b.ID = "en_" + num;
			else if (b.ID.StartsWith("en_"))
				b.ID = "self[" + num + "]";

			b.Widget.Header.Text = b.ID + " - " + b.Name;
			
            foreach (var c in dominoConnectors.Values)
            {
                var eb = c.ExecBoxes.Where(a => a.Box.ID == b.ID).SingleOrDefault();
				if (eb != null)
                {
                    c.Widget.list.Children.Remove(eb.ContainerUI);
					DrawExecBoxContainerUI(c, eb, eb.INT_clr);
                }
            }

			wasEdited = true;
        }

        private void DrawComment(DominoComment c, double currX, double currY)
		{
            Grid g = new();
            g.Children.Add(new TextBlock() { Text = c.Name, Foreground = new SolidColorBrush(Colors.White), Margin = new Thickness(0, 0, 50, 0) });
			
            Button btn = new Button() { Tag = "edit|" + c.UniqueID, Style = (Application.Current.FindResource("EditBtn") as Style) };
            btn.Click += EditCommentDialog;
            g.Children.Add(btn);

            Button btnDel = new Button() { Tag = "delete|" + c.UniqueID, Style = (Application.Current.FindResource("DelBtn") as Style) };
            btnDel.Click += EditCommentDialog;
            g.Children.Add(btnDel);

            Border b2 = new() { BorderBrush = new SolidColorBrush(linesColors[c.Color]), Background = new SolidColorBrush(Color.FromArgb(150, 150, 150, 150)), Padding = new Thickness(10, 5, 5, 5), BorderThickness = new(2, 2, 2, 2), Child = g };
            c.ContainerUI = b2;

			canvas.Children.Add(b2);
            Canvas.SetLeft(b2, currX);
            Canvas.SetTop(b2, currY);
            Panel.SetZIndex(b2, 20);
        }

        private void DrawBorder(DominoBorder b, double currX, double currY, double w, double h, bool? moveChilds)
        {
			DoubleCollection lineStyle = null;

			if (b.Style == 0) lineStyle = new(new double[] { 1, 1 });           // . . . . dotted line
            if (b.Style == 1) lineStyle = new(new double[] { 4, 1, 2, 1 });     // - . - . dash-dotted line
            if (b.Style == 2) lineStyle = new(new double[] { 4, 4 });           // --  --  dashed line
            if (b.Style == 3) lineStyle = new(new double[] { 1, 0 });           // ------- solid line

			Grid g = new();

			Button btn = new Button() { Tag = "edit|" + b.UniqueID, Style = (Application.Current.FindResource("EditBtnWhite") as Style), VerticalAlignment = VerticalAlignment.Top, Margin = new(0, 4, 4, 0) };
            btn.Click += EditBorderDialog;
            g.Children.Add(btn);

            Button btnDel = new Button() { Tag = "delete|" + b.UniqueID, Style = (Application.Current.FindResource("DelBtnWhite") as Style), VerticalAlignment = VerticalAlignment.Top, Margin = new(0, 4, 24, 0) };
            btnDel.Click += EditBorderDialog;
            g.Children.Add(btnDel);

            System.Windows.Shapes.Rectangle r = new();
			r.StrokeDashArray = lineStyle;
			r.Stroke = new SolidColorBrush(linesColors[b.Color]);
			r.StrokeThickness = 2;
			g.Children.Add(r);

			BorderD b2 = new() {
				//BorderBrush = new SolidColorBrush(linesColors[b.Color]),
				Background = new SolidColorBrush(Colors.Transparent),
				//BorderThickness = new(2, 2, 2, 2),
				Height = h,
				Width = w,
				EnableMove = true,
				Child = g,
				EnableMovingChilds = moveChilds == true
            };
            b.ContainerUI = b2;

            canvas.Children.Add(b2);
            Canvas.SetLeft(b2, currX);
            Canvas.SetTop(b2, currY);
            Panel.SetZIndex(b2, 10);
        }

        private void DrawResource(DominoDict res)
        {
            StackPanel sp2 = new();

            Grid g2 = new() { Height = 18 };

            g2.Children.Add(new TextBox() { Text = res.Name, FontWeight = FontWeights.Bold });

            Button btn = new Button() { Tag = "edit|" + res.UniqueID, Style = (Application.Current.FindResource("EditBtn") as Style) };
            btn.Click += EditResourceDialog;
            g2.Children.Add(btn);

            Button btnDel = new Button() { Tag = "delete|" + res.UniqueID, Style = (Application.Current.FindResource("DelBtn") as Style) };
            btnDel.Click += EditResourceDialog;
            g2.Children.Add(btnDel);

            sp2.Children.Add(g2);

            sp2.Children.Add(new TextBox() { Text = res.Value, Margin = new(10, 0, 0, 0) });

            Border b2 = new() { BorderBrush = new SolidColorBrush(Colors.Black), BorderThickness = new(2, 2, 2, 2), Child = sp2 };
            res.ContainerUI = b2;
            wiResources.list.Children.Add(b2);
        }


        public delegate void OpenAskDialog(string name, string desc);
        public OpenAskDialog openAskDialog;
		private Action dialogAskAction;
		private Action dialogAskActionCancel;
        private void AskDialog(string name, string desc, Action action, Action actionCancel = null)
		{
			dialogAskAction = action;
            dialogAskActionCancel = actionCancel;
            openAskDialog(name, desc);
        }
        public void AskDialogAct()
        {
            dialogAskAction();
        }
        public void AskDialogActCancel()
        {
			if (dialogAskActionCancel != null)
				dialogAskActionCancel();
        }

        public void InfoDialogAct()
		{
		}

        public delegate void OpenEditExecBoxDialog(List<ParamEntry> wndData, List<ExecEntry> execs, int selType, int selExec, int selDynInt);
        public OpenEditExecBoxDialog openEditExecBoxDialog;
		DominoConnector connEdit = null;
		ExecBox execBoxEdit = null;
		List<DominoDict> paramsEdit = new();
		bool paramsEditSingle = false;

        private void EditExecBox(object sender, RoutedEventArgs e)
		{
			string tag = (string)(sender as Button).Tag;
			string[] ids = tag.Split('|');

			connEdit = dominoConnectors[ids[0]];
			execBoxEdit = connEdit.ExecBoxes.Where(e => e.Box.ID == ids[1]).Single();

			List<ExecEntry> execs = new();
			var b = regBoxes[execBoxEdit.Box.Name].ControlsIn;
            for (int i = 0; i < b.Count; i++)
            {
                execs.Add(new() { Name = "(" + i.ToString() + ") " + b[i].Name + (b[i].AnchorDynType > 0 ? " - DynInt" : ""), Num = i.ToString() });
            }

			paramsEdit = Helpers.CopyList(execBoxEdit.Params);
            paramsEditSingle = false;
            openEditExecBoxDialog(EditExecBoxUISetParams(), execs, (int)execBoxEdit.Type, execBoxEdit.Exec, execBoxEdit.DynIntExec);
		}

		private List<ParamEntry> EditExecBoxUISetParams()
		{
			List<ParamEntry> wndData = new();

			void aa(DominoDict prmVal, string uniqueIDParent, int arrayLeft = 0, string paramName = null, bool isBase = false, int baseID = -1)
			{
				if (prmVal != null && prmVal.ValueArray.Count == 0)
				{
                	wndData.Add(new()
					{ 
						ParamName = paramName ?? prmVal.Name, 
						ParamNameRaw = prmVal.Name, 
						UniqueID = prmVal.UniqueID, 
						UniqueIDParent = uniqueIDParent, 
						ParamValue = prmVal.Value ?? "", 
						ParamUsed = true, 
						ParamHasArray = false, 
						ParamIsBase = isBase,
						AddArrayVs = Visibility.Visible,
						AddVs = Visibility.Hidden,
						RemoveVs = isBase ? Visibility.Hidden : Visibility.Visible,
                        ArrayBulletVs = arrayLeft > 0 ? Visibility.Visible : Visibility.Collapsed,
                        NameMargin = new(arrayLeft, 0, 5, 0)
                    });
				}
				else if (prmVal != null && prmVal.ValueArray.Count > 0 && prmVal.Value == null)
				{
                	wndData.Add(new() 
					{ 
						ParamName = paramName ?? prmVal.Name, 
						ParamNameRaw = prmVal.Name, 
						UniqueID = prmVal.UniqueID, 
						UniqueIDParent = uniqueIDParent,
						ParamValue = "Array", 
						ParamUsed = true,
						ParamHasArray = true,
						ParamIsBase = isBase,
                        AddArrayVs = Visibility.Hidden,
                        AddVs = Visibility.Visible,
                        RemoveVs = isBase ? Visibility.Hidden : Visibility.Visible,
                        ArrayBulletVs = arrayLeft > 0 ? Visibility.Visible : Visibility.Collapsed,
                        NameMargin = new(arrayLeft, 0, 5, 0)
                    });
				
           	 		for (int i = 0; i < prmVal.ValueArray.Count; i++)
					{
						aa(prmVal.ValueArray[i], prmVal.UniqueID, arrayLeft + 10);
					}
				}
				else
                	wndData.Add(new() 
					{ 
						ParamName = paramName ?? prmVal.Name, 
						ParamNameRaw = baseID != -1 ? baseID.ToString() : prmVal.Name, 
						UniqueID = prmVal != null ? prmVal.UniqueID : Helpers.RandomString(), 
						UniqueIDParent = uniqueIDParent, 
						ParamValue = "",
						ParamUsed = false, 
						ParamHasArray = false, 
						ParamIsBase = isBase,
                        AddArrayVs = Visibility.Hidden,
                        AddVs = Visibility.Hidden,
                        RemoveVs = isBase ? Visibility.Hidden : Visibility.Visible,
						ArrayBulletVs = Visibility.Collapsed,
						NameMargin = new(0,0,0,0)
                    });
			}

			if (paramsEditSingle)
            {
                aa(paramsEdit[0], "", 0, null, true, 0);
            }
			else
            {
                var a = regBoxes[execBoxEdit.Box.Name].DatasIn;
                for (int i = 0; i < a.Count; i++)
                {
                    string paramName = "(" + i.ToString() + ") " + a[i].Name;

                    var prmVal = paramsEdit.Where(a => a.Name == i.ToString()).SingleOrDefault();

                    /*if (prmVal == null)
                    {
                        prmVal = new();
                        prmVal.Name = i.ToString();
                    }*/

                    //aa(prmVal, "", 0, paramName, true, i);

                    aa(prmVal, "", 0, paramName, true, i);
                }
            }

			return wndData;
		}

		private void EditExecBoxUIGetParams(List<ParamEntry> paramsList)
        {
            DominoDict aa(ParamEntry param, string assign)
            {
                if (param.ParamUsed)
                {
                    DominoDict p = new();
					p.UniqueID = param.UniqueID;

                    if (param.ParamIsBase)
                        p.Name = param.ParamNameRaw;
                    else
                        p.Name = param.ParamName;

                    if (!param.ParamHasArray)
                        p.Value = param.ParamValue;
                    else
                    {
                        var su = paramsList.Where(a => a.UniqueIDParent == param.UniqueID);

                        foreach (var s in su)
                        {
                            var ax = aa(s, assign + "-" + param.ParamNameRaw);

                            if (ax != null)
                                p.ValueArray.Add(ax);
                        }
                    }

                    return p;
                }
                else
                    return null;
            }

            paramsEdit.Clear();

            var baseParams = paramsList.Where(a => a.ParamIsBase);
            foreach (var param in baseParams)
            {
                var ax = aa(param, "");

                if (ax != null)
                    paramsEdit.Add(ax);
            }

			/*if (paramsEditSingle)
				paramsEdit.Add(aa(paramsList[0], ""));*/
        }

        public List<ParamEntry> EditExecBoxParamsAddRow(string uniqueID, bool makeArray)
        {
            void a(List<DominoDict> aa)
            {
                foreach (var c in aa)
				{
					if (c.UniqueID == uniqueID)
					{
						if (makeArray) c.Value = null;
                        c.ValueArray.Add(new() { Name = "New Param", Value = "A Value" });
					}

                    if (c.ValueArray.Count > 0)
                        a(c.ValueArray);
                }
            }
            a(paramsEdit);

            return EditExecBoxUISetParams();
        }

        public List<ParamEntry> EditExecBoxParamsRemoveRow(string uniqueID)
        {
			void a(List<DominoDict> aa)
            {
                aa.RemoveAll(a => a.UniqueID == uniqueID);

				foreach (var c in aa)
					if (c.ValueArray.Count > 0)
						a(c.ValueArray);
            }
			a(paramsEdit);

			return EditExecBoxUISetParams();
        }

        public string EditExecBoxSave(List<ParamEntry> paramsList, int editExecBoxType, int editExecBoxExec, string editExecBoxDynInt)
        {
			var tt = (ExecType)editExecBoxType;

			if (tt == ExecType.Exec)
			{
				var ctrlMeta = regBoxesAll[execBoxEdit.Box.Name].ControlsIn[editExecBoxExec].AnchorDynType > 0;
				if (ctrlMeta)
					return "Selected exec is dynamic, so you must select type 'Exec Dyn Int' and set Dyn Int value.";
			}
			if (tt == ExecType.ExecDynInt)
			{
				var ctrlMeta = regBoxesAll[execBoxEdit.Box.Name].ControlsIn[editExecBoxExec].AnchorDynType == 0;
				if (ctrlMeta)
					return "Selected exec is not dynamic, so you must select type 'Exec'.";
			}

			execBoxEdit.Type = tt;
			execBoxEdit.Exec = editExecBoxExec;
			execBoxEdit.DynIntExec = int.Parse(editExecBoxDynInt);

            EditExecBoxUIGetParams(paramsList);
			execBoxEdit.Params = paramsEdit;

            execBoxEdit.MainUI.Children.Clear();
            DrawExecBoxChildren(connEdit, execBoxEdit, execBoxEdit.MainUI);

            foreach (var c in dominoConnectors.Values)
            {
                foreach (var ceb in c.ExecBoxes)
                {
                    if (ceb.Box.ID == execBoxEdit.Box.ID)
                    {
                        ceb.Params = paramsEdit;
                        ceb.MainUI.Children.Clear();
                        DrawExecBoxChildren(c, ceb, ceb.MainUI);
                    }
                }
            }

            wasEdited = true;
			return "";
        }

        private void RemoveExecBox(object sender, RoutedEventArgs e)
		{
			AskDialog("Remove exec box", "Do you want to remove the exec box?", () =>
            {
                string tag = (string)(sender as Button).Tag;
                string[] ids = tag.Split('|');

                var c = dominoConnectors[ids[0]];
                var eb = c.ExecBoxes.Where(a => a.Box.ID == ids[1]).Single();
                c.Widget.list.Children.Remove(eb.ContainerUI);
                c.ExecBoxes.RemoveAll(a => a.Box.ID == ids[1]);

                RemoveLine(ids[0] + "-P1", ids[1] + "-P1");

                wasEdited = true;
            });
        }

        public delegate void OpenAddExecBoxDialog(List<ExecEntry> boxes);
        public OpenAddExecBoxDialog openAddExecBoxDialog;

        private void AddExecBox(object sender, RoutedEventArgs e)
		{
			string tag = (string)(sender as Button).Tag;

			connEdit = dominoConnectors[tag];

			List<ExecEntry> boxes = new();
			foreach (var b in dominoBoxes)
			{
				boxes.Add(new() { Name = b.Value.ID });
			}

			openAddExecBoxDialog(boxes);
		}

        public void AddExecBoxCreate(string selBox)
        {
            //canvas.ResetZoom();

			List<DominoDict> ep = new();
			foreach (var c in dominoConnectors.Values)
			{
				foreach (var ceb in c.ExecBoxes)
				{
					if (ceb.Box.ID == selBox)
					{
						ep = ceb.Params;
                    }
				}
			}

            ExecBox eb = new();
			eb.Box = dominoBoxes.Values.Where(a => a.ID == selBox).Single();
			eb.Exec = 0;
			eb.DynIntExec = 0;
			eb.Params = ep;
			connEdit.ExecBoxes.Add(eb);
			
			var ctrlMeta = regBoxesAll[eb.Box.Name].ControlsIn[0].AnchorDynType > 0;
			if (ctrlMeta)
			{
				eb.Type = ExecType.ExecDynInt;

				int cc = 0;
				foreach (var aa in dominoConnectors.Values)
					foreach (var bb in aa.ExecBoxes)
						if (bb.Box.ID == eb.Box.ID)
							cc++;
				
				eb.DynIntExec = cc;
			}
			else
				eb.Type = ExecType.Exec;

			var clr = connEdit.Widget.list.Children.Count;

			DrawExecBoxContainerUI(connEdit, eb, linesColors[clr]);

			var a = canvas.Transform2(new(Canvas.GetLeft(connEdit.Widget), Canvas.GetTop(connEdit.Widget)));
			var b = canvas.Transform2(new(Canvas.GetLeft(eb.Box.Widget), Canvas.GetTop(eb.Box.Widget)));

			DrawLine(
                a.X + width,
                a.Y,
                b.X,
                b.Y,
				connEdit.ID + "-P1",
				eb.Box.ID + "-P1",
				clr
			);

			canvas.RefreshChilds();

            wasEdited = true;
        }

		private void RemoveBoxConnS(DominoBox box, List<DominoConnector> c, string connID)
        {
            var conn = c.Where(a => a.ID == connID).SingleOrDefault();
            if (conn != null)
            {
                conn.FromBoxConnectID = -1;
                conn.FromBoxConnectIDStr = "MISSING BOX";
                box.Widget.list.Children.Remove(conn.ContainerUI);
                c.RemoveAll(a => a.ID == connID);
                RemoveLine(box.ID + "-P2", conn.ID + "-P2");
            }

            foreach (var cc in c)
                RemoveBoxConnS(box, cc.SubConnections, connID);

            c.RemoveAll(a => a.ID == null && !a.SubConnections.Any());
        }

		private void RemoveBoxConn(object sender, RoutedEventArgs e)
		{
			AskDialog("Remove connection", "Do you want to remove the connection?", () =>
            {
                string tag = (string)(sender as Button).Tag;
                string[] ids = tag.Split('|');

                var box = dominoBoxes[ids[0]];
                RemoveBoxConnS(box, box.Connections, ids[1]);

                //RemoveLine(ids[0] + "-P2", ids[1] + "-P2");

                wasEdited = true;
            });
		}

        public delegate void OpenAddBoxConnectorDialog(List<ExecEntry> boxFuncs, List<ExecEntry> connectors);
        public OpenAddBoxConnectorDialog openAddBoxConnectorDialog;
        DominoBox boxEdit = null;

        private void AddBoxConnector(object sender, RoutedEventArgs e)
        {
            string tag = (string)(sender as Button).Tag;

            boxEdit = dominoBoxes[tag];

            List<ExecEntry> boxFuncs = new();

            void aa(DominoConnector conn, int num, string name, string parentName, string prntUniqID = "")
            {
				string n = parentName + "(" + num.ToString() + ") " + name;

				DominoConnector bc = conn;

				if (bc == null)
					bc = boxEdit.Connections.Where(b => b.FromBoxConnectID == num).SingleOrDefault();

                if (bc != null)
                {
					if (bc.SubConnections.Any())
						n += " (Array)";

                    if (bc.SubConnections.Any())
                        boxFuncs.Add(new() { Name = n, Num = bc.UniqueID });

                    foreach (var sb in bc.SubConnections)
						aa(sb, sb.FromBoxConnectID, sb.FromBoxConnectIDStr, n + " > ");
                }
                else
                    boxFuncs.Add(new() { Name = n, Num = prntUniqID });
            }

			var a = regBoxes[boxEdit.Name].ControlsOut;
            for (int i = 0; i < a.Count; i++)
            {
                aa(null, i, a[i].Name, "", a[i].UniqueID);
            }

            List<ExecEntry> connectors = new();
			connectors.Add(new() { Name = "<<<Create new connector>>>" });
            foreach (var b in dominoConnectors.Where(a => a.Value.FromBoxConnectID == -1))
            {
                connectors.Add(new() { Name = b.Value.ID });
            }

            openAddBoxConnectorDialog(boxFuncs, connectors);
        }

        public void AddBoxConnectorCreate(string selBoxFnc, string selConn, bool? addAsArray, string arrayKey)
        {
			//canvas.ResetZoom();

			string acname = "";
			DominoConnector connSel(string name)
			{
				if (selConn == "<<<Create new connector>>>")
                {
                    name = boxEdit.ID.Replace("self[", "").Replace("]", "").Replace("en_", "") + name;

                    string checkCName(int inc = -1)
					{
						var a = inc >= 0 ? "_" + inc.ToString() : "";
						if (dominoConnectors.ContainsKey("f_" + name + a))
							return checkCName(inc + 1);
						else
							return name + a;
					}
					name = checkCName();

                    AddConnectorCreate(500, 500, name, false, false, "");
					return dominoConnectors["f_" + name];
                }
				else
					return dominoConnectors[selConn];
			}

            bool added = false;

            DominoConnector add(int index, string name, string parentName = "")
            {
                DominoConnector o = null;

                if (addAsArray == true)
                {
                    o = new();
                    o.ID = null;
                    o.FromBoxConnectID = index;
                    o.FromBoxConnectIDStr = name;

					DominoConnector c = connSel(acname + "_" + name + (arrayKey != "" ? "_" : "") + arrayKey);
                    c.FromBoxConnectID = 0;
                    c.FromBoxConnectIDStr = arrayKey;
                    o.SubConnections.Add(c);

                    DrawBoxConnectors(boxEdit, o, parentName);
                    added = true;
                }
                else
                {
					var a = name == "" ? arrayKey : name;
                    o = connSel(acname + (a != "" ? "_" : "") + a);
                    o.FromBoxConnectID = index;
                    o.FromBoxConnectIDStr = a;

                    DrawBoxConnectors(boxEdit, o, parentName);
                    added = true;
                }

				return o;
            }

			void subs(List<DominoConnector> list, string p = "")
            {
                foreach (var ss in list)
                {
					string n = "(" + ss.FromBoxConnectID.ToString() + ") " + ss.FromBoxConnectIDStr + " > ";

                    if (ss.UniqueID == selBoxFnc)
                    {
                        acname += "_" + ss.FromBoxConnectIDStr;
                        ss.SubConnections.Add(add(getFreeNum(ss.SubConnections), "", p + n));
						return;
                    }

					subs(ss.SubConnections, n);
                }
            }

			int getFreeNum(List<DominoConnector> list)
			{
				for (int i = 0; i < list.Count; i++)
				{
					var a = list.Any(a => a.FromBoxConnectID == i);
					if (!a)
						return i;
                }
                return list.Count;
            }

            var a = regBoxes[boxEdit.Name].ControlsOut;
            for (int i = 0; i < a.Count; i++)
            {
				var ec = boxEdit.Connections.Where(a => a.UniqueID == selBoxFnc && a.FromBoxConnectID == i).SingleOrDefault();
				if (a[i].UniqueID == selBoxFnc && ec == null)
				{
                    boxEdit.Connections.Add(add(i, a[i].Name)); //add new root
                }
				if (ec != null)
                {
                    acname += "_" + ec.FromBoxConnectIDStr;
                    ec.SubConnections.Add(add(getFreeNum(ec.SubConnections), "", "(" + ec.FromBoxConnectID.ToString() + ") " + ec.FromBoxConnectIDStr + " > ")); //add to existing root array
                }
            }

			if (!added)
                subs(boxEdit.Connections); //add to any subconnections

            canvas.RefreshChilds();

            wasEdited = true;
        }


        public string AddConnectorCreate(int widthA, int height, string name, bool? isIn, bool? isOut, string outName)
        {
			name = name.Replace(" ", "");
            outName = outName.Replace(" ", "");

            if (name == "")
                return "You must set a name.";

			if (isIn == false)
				name = "f_" + name;

			if (isOut == true)
				isIn = false;

			if (isOut == true && outName == "")
				return "Control out name is empty.";

            var e = dominoConnectors.Any(a => a.Value.ID == name);
            if (e)
                return "A connector with this name already exists. Select another name.";

            //canvas.ResetZoom();

            DominoConnector c = new();
            c.ID = name;
            c.FromBoxConnectID = isIn == true ? 0 : -1;
            c.FromBoxConnectIDStr = "MISSING BOX";
            dominoConnectors.Add(c.ID, c);

            if (isIn == true)
            {
                var m = new DominoBoxMetadataControlsIn(name, 0, "");
                thisMetadata.ControlsIn.Add(m);
                DrawMetaControlIn(m);
            }
            if (isOut == true)
            {
                var m = new DominoBoxMetadataControlsOut(outName, 0, false);
                thisMetadata.ControlsOut.Add(m);
                DrawMetaControlOut(m);
				c.OutFuncName.Add(outName);
            }

            Point pnt = new(widthA / 2, height / 2);

            var pntc = canvas.Transform3(pnt);
            DrawConnector(c, (int)pntc.X, (int)pntc.Y);

            pnt = canvas.Transform(pnt);

            if (isIn == true)
            {
                DrawLine(width, 0, pnt.X, pnt.Y, "ControlsIn-P1", name + "-P2", -1);
            }
            if (isOut == true)
            {
                DrawLine(pnt.X + width, pnt.Y, spaceX + width, 0, name + "-P1", "ControlsOut-P2", -1);
            }

            canvas.RefreshChilds();

            wasEdited = true;

            return "";
        }

        public delegate void OpenEditConnectorDialog(string name);
        public OpenEditConnectorDialog openEditConnectorDialog;
		DominoConnector editConnector = null;

        private void EditConnectorDialog(object sender, RoutedEventArgs e)
		{
            string tag = (string)(sender as Button).Tag;

			editConnector = dominoConnectors[tag];

            openEditConnectorDialog(editConnector.ID[2..]);
        }

        public string EditConnectorDialogAct(string name)
        {
            name = "f_" + name.Replace(" ", "");

            var e = dominoConnectors.Any(a => a.Value.ID == name);
            if (e)
                return "A connector with this name already exists. Select another name.";

            bool findBox(List<DominoConnector> c)
            {
                var conn = c.Where(a => a.ID == editConnector.ID).SingleOrDefault();
				if (conn != null)
					return true;

				foreach (var cc in c)
					if (findBox(cc.SubConnections))
						return true;

				return false;
            }

			var b = dominoBoxes.Values.Where(a => findBox(a.Connections)).SingleOrDefault();
			if (b != null)
            {
                b.Widget.list.Children.Remove(editConnector.ContainerUI);
            }

            editConnector.ID = name;
			editConnector.Widget.Header.Text = name;

			string findParentName(string currName, List<DominoConnector> c)
            {
                var conn = c.Where(a => a.ID == editConnector.ID).SingleOrDefault();
				if (conn != null)
					return currName;

                foreach (var cc in c)
				{
					var a = findParentName(currName + "(" + cc.FromBoxConnectID.ToString() + ") " + cc.FromBoxConnectIDStr + " > ", cc.SubConnections);
					if (a != "")
						return a;
                }

                return "";
            }

            if (b != null)
			{
                DrawBoxConnectors(b, editConnector, findParentName("", b.Connections), null, false, editConnector.INT_clr);
            }

            wasEdited = true;

            return "";
		}


        public List<ExecEntry> AddBoxNames()
		{
			List<ExecEntry> boxNames = new();

            foreach (var rb in regBoxesAll)
				boxNames.Add(new() { Name = rb.Key });

			return boxNames;
		}

        public string AddBoxCreate(int width, int height, bool global, string name)
        {
            string newID = dominoBoxes.Count.ToString();

            for (int i = 0; i < dominoBoxes.Count; i++)
			{
                //var a = dominoBoxes.Any(a => (global && a.Key == "self[" + i.ToString() + "]") || (!global && a.Key == "en_" + i.ToString()));
                var a = dominoBoxes.Any(a => a.Key == "self[" + i.ToString() + "]" || a.Key == "en_" + i.ToString());
                if (!a)
                    newID = i.ToString();
			}

			if (global)
				newID = "self[" + newID + "]";
            else
                newID = "en_" + newID;

            //canvas.ResetZoom();

			if (!regBoxes.ContainsKey(name))
			{
				var meta = regBoxesAll[name];
				regBoxes.Add(name, meta);
			}

			DominoBox b = new();
			b.ID = newID;
			b.Name = name;
			dominoBoxes.Add(b.ID, b);

            Point pnt = new(width / 2, height / 2);
            pnt = canvas.Transform3(pnt);

            DrawBox(b, (int)pnt.X, (int)pnt.Y);
            canvas.RefreshChilds();

            wasEdited = true;

            return "";
        }


		private void RemoveMetadataInfo(object sender, RoutedEventArgs e)
        {
			AskDialog("Remove metadata", "Do you want to remove the metadata?", () =>
            {
                string[] tag = ((string)((Button)sender).Tag).Split('|');

                if (tag[0] == "datain")
                {
                    var m = thisMetadata.DatasIn.Where(a => a.Name == tag[1]).Single();
                    wiMetaDataIn.list.Children.Remove(m.ContainerUI);
                    thisMetadata.DatasIn.RemoveAll(a => a.Name == tag[1]);
                }
                if (tag[0] == "dataout")
                {
                    var m = thisMetadata.DatasOut.Where(a => a.Name == tag[1]).Single();
                    wiMetaDataOut.list.Children.Remove(m.ContainerUI);
                    thisMetadata.DatasOut.RemoveAll(a => a.Name == tag[1]);
                }
                if (tag[0] == "globalvar")
                {
                    var m = globalVariables.Where(a => a.UniqueID == tag[1]).Single();
                    wiGlobalVars.list.Children.Remove(m.ContainerUI);
                    globalVariables.RemoveAll(a => a.UniqueID == tag[1]);
                }
                /*if (tag[0] == "controlin")
                {
                    var m = thisMetadata.ControlsIn.Where(a => a.Name == tag[1]).Single();
                    wiMetaControlIn.list.Children.Remove(m.ContainerUI);
                    thisMetadata.ControlsIn.RemoveAll(a => a.Name == tag[1]);

                    RemoveLine("ControlsIn-P1", m.Name + "-P2");
                }
                if (tag[0] == "controlout")
                {
                    var m = thisMetadata.ControlsOut.Where(a => a.Name == tag[1]).Single();
                    wiMetaControlOut.list.Children.Remove(m.ContainerUI);
                    thisMetadata.ControlsOut.RemoveAll(a => a.Name == tag[1]);

                    var c = dominoConnectors.Values.Where(a => a.OutFuncName.Contains(m.Name)).SingleOrDefault();
                    if (c != null)
                        RemoveLine(c.ID + "-P1", "ControlsOut-P2");
                }*/

                wasEdited = true;
            });
        }

		private void AddMetadataInfo(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;
			
            if (tag == "datain")
            {
				var m = new DominoBoxMetadataDatasIn("New Data In", 0, "string");
                thisMetadata.DatasIn.Add(m);
				DrawMetaDataIn(m, true);
            }
            if (tag == "dataout")
            {
				var m = new DominoBoxMetadataDatasOut("New Data Out", 0, "string");
                thisMetadata.DatasOut.Add(m);
				DrawMetaDataIn(m, false);
            }
            if (tag == "globalvar")
            {
				var m = new DominoDict();
				m.Name = "NewGlobalVariable";
				m.Value = "\"A value\"";
                globalVariables.Add(m);
				DrawGlobalVar(m);
            }
            /*if (tag == "controlin")
            {
				var m = new DominoBoxMetadataControlsIn("New Control In", 0, "");
                thisMetadata.ControlsIn.Add(m);
				DrawMetaControlIn(m);
            }
            if (tag == "controlout")
            {
				var m = new DominoBoxMetadataControlsOut("New Control Out", 0, false);
                thisMetadata.ControlsOut.Add(m);
				DrawMetaControlOut(m);
            }*/

            wasEdited = true;
        }

        public delegate void OpenEditDataDialog(string name, string desc, string metaName, string anchorDynType, string dataTypeID, string hostExecFunc, bool? isDelayed, List<ParamEntry> dataList);
        public OpenEditDataDialog openEditDataDialog;
		string[] editMetadataDialogData;

        private void EditMetadataInfo(object sender, RoutedEventArgs e)
        {
            string[] tag = ((string)((Button)sender).Tag).Split('|');
            editMetadataDialogData = tag;

            if (tag[0] == "datain")
            {
				var m = thisMetadata.DatasIn.Where(a => a.Name == tag[1]).Single();
                openEditDataDialog("Edit data in", "Edit the input data of this Domino:", m.Name, m.AnchorDynType.ToString(), m.DataTypeID, null, null, null);
            }
            if (tag[0] == "dataout")
            {
                var m = thisMetadata.DatasOut.Where(a => a.Name == tag[1]).Single();
                openEditDataDialog("Edit data out", "Edit the output data of this Domino:", m.Name, m.AnchorDynType.ToString(), m.DataTypeID, null, null, null);
            }
            if (tag[0] == "controlin")
            {
                var m = thisMetadata.ControlsIn.Where(a => a.Name == tag[1]).Single();
                openEditDataDialog("Edit controls in", "Edit the input controls of this Domino:", null, m.AnchorDynType.ToString(), null, m.HostExecFunc, null, null);
            }
            if (tag[0] == "controlout")
            {
                var m = thisMetadata.ControlsOut.Where(a => a.Name == tag[1]).Single();
                openEditDataDialog("Edit controls out", "Edit the output controls of this Domino:", null, m.AnchorDynType.ToString(), null, null, m.IsDelayed, null);
            }
            if (tag[0] == "globalvar")
            {
                var m = globalVariables.Where(a => a.UniqueID == tag[1]).Single();
				
				paramsEdit = Helpers.CopyList(new() { m });
				paramsEditSingle = true;
                openEditDataDialog("Edit global variables", "Edit global variable:", m.Name, null, null, null, null, EditExecBoxUISetParams());
            }
        }

		public void EditMetadataInfoCreate(string name, string anchorDynType, string dataTypeID, string hostExecFunc, bool? isDelayed, List<ParamEntry> paramsList)
        {
            if (editMetadataDialogData[0] == "datain")
            {
                var m = thisMetadata.DatasIn.Where(a => a.Name == editMetadataDialogData[1]).Single();
				m.Name = name;
				m.AnchorDynType = int.Parse(anchorDynType);
				m.DataTypeID = dataTypeID;

				wiMetaDataIn.list.Children.Remove(m.ContainerUI);
				DrawMetaDataIn(m, true);
            }
            if (editMetadataDialogData[0] == "dataout")
            {
                var m = thisMetadata.DatasOut.Where(a => a.Name == editMetadataDialogData[1]).Single();
				m.Name = name;
				m.AnchorDynType = int.Parse(anchorDynType);
				m.DataTypeID = dataTypeID;

                wiMetaDataOut.list.Children.Remove(m.ContainerUI);
                DrawMetaDataIn(m, false);
            }
            if (editMetadataDialogData[0] == "controlin")
            {
                var m = thisMetadata.ControlsIn.Where(a => a.Name == editMetadataDialogData[1]).Single();
				m.AnchorDynType = int.Parse(anchorDynType);
				m.HostExecFunc = hostExecFunc;

                wiMetaControlIn.list.Children.Remove(m.ContainerUI);
                DrawMetaControlIn(m);
            }
            if (editMetadataDialogData[0] == "controlout")
            {
                var m = thisMetadata.ControlsOut.Where(a => a.Name == editMetadataDialogData[1]).Single();
                m.AnchorDynType = int.Parse(anchorDynType);
                m.IsDelayed = isDelayed == true;

                wiMetaControlOut.list.Children.Remove(m.ContainerUI);
                DrawMetaControlOut(m);
            }
            if (editMetadataDialogData[0] == "globalvar")
            {
                name = name.Replace(" ", "");

                var m = globalVariables.Where(a => a.UniqueID == editMetadataDialogData[1]).Single();

                wiGlobalVars.list.Children.Remove(m.ContainerUI);

                EditExecBoxUIGetParams(paramsList);
                //m = paramsEdit[0]; // loose instance
				m.Name = name;
				m.Value = paramsEdit[0].Value;
				m.ValueArray = paramsEdit[0].ValueArray;
				m.UniqueID = paramsEdit[0].UniqueID;

                DrawGlobalVar(m);
            }

            wasEdited = true;
        }

		private void RemoveConnVar(object sender, RoutedEventArgs e)
        {
			AskDialog("Remove variable", "Do you want to remove the variable?", () =>
            {
                string[] tags = ((string)((Button)sender).Tag).Split('|');

                var c = dominoConnectors[tags[0]];

                var m = c.SetVariables.Where(a => a.UniqueID == tags[1]).Single();
                c.Widget.list.Children.Remove(m.ContainerUI);
                c.SetVariables.RemoveAll(a => a.UniqueID == tags[1]);

                wasEdited = true;
            });
        }

        public delegate void OpenEditConnVarDialog(string name, string val);
        public OpenEditConnVarDialog openEditConnVarDialog;
		string[] editConnVar;

        private void EditConnVar(object sender, RoutedEventArgs e)
        {
            string[] tags = ((string)((Button)sender).Tag).Split('|');
            editConnVar = tags;

            var c = dominoConnectors[tags[0]];
            var v = c.SetVariables.Where(a => a.UniqueID == tags[1]).Single();

            openEditConnVarDialog(v.Name, v.Value);
        }

        public void EditConnVarCreate(string name, string val)
        {
            name = name.Replace(" ", "");
            //val = val.Replace(" ", "");

            var c = dominoConnectors[editConnVar[0]];
			var v = c.SetVariables.Where(a => a.UniqueID == editConnVar[1]).Single();

			v.Name = name;
			v.Value = val;

			c.Widget.list.Children.Remove(v.ContainerUI);
            DrawConnVariable(c, v);

            wasEdited = true;
        }

        private void AddConnVar(object sender, RoutedEventArgs e)
        {
            var c = dominoConnectors[(string)((Button)sender).Tag];
			var v = new DominoDict() { Name = "NewVariable", Value = "\"A value\"" };
            c.SetVariables.Add(v);
			DrawConnVariable(c, v);

            wasEdited = true;
        }

		public void AddComment(int width, int height)
		{
            //canvas.ResetZoom();

			var c = new DominoComment();
			c.Name = "A comment";
			c.Color = 0;

            Point pnt = new(width / 2, height / 2);
            pnt = canvas.Transform3(pnt);

			DrawComment(c, (int)pnt.X, (int)pnt.Y);
			dominoComments.Add(c);

            canvas.RefreshChilds();

            wasEdited = true;
        }

        public delegate void OpenAddCommentDialog(string name, int selClr, List<ColorEntry> colors);
        public OpenAddCommentDialog openAddCommentDialog;
		private DominoComment editComment = null;

		public void EditCommentDialog(object sender, RoutedEventArgs e)
		{
            string[] tags = ((string)((Button)sender).Tag).Split('|');

			editComment = dominoComments.Where(a => a.UniqueID == tags[1]).Single();
			
			if (tags[0] == "edit")
            {
				List<ColorEntry> colors = new();

				foreach (var c in linesColors)
					colors.Add(new() { Color = new(c) });

                openAddCommentDialog(editComment.Name, editComment.Color, colors);
			}
			if (tags[0] == "delete")
            {
                AskDialog("Remove comment", "Do you want to remove the comment?", () =>
                {
                    canvas.Children.Remove(editComment.ContainerUI);
                    dominoComments.Remove(editComment);

                    wasEdited = true;
                });
			}
		}

		public void EditCommentDialogAct(string name, int selClr)
		{
            //canvas.ResetZoom();

			editComment.Name = name;
			editComment.Color = selClr;

			var x = Canvas.GetLeft(editComment.ContainerUI);
			var y = Canvas.GetTop(editComment.ContainerUI);

			canvas.Children.Remove(editComment.ContainerUI);
			
			DrawComment(editComment, (int)x, (int)y);

            canvas.RefreshChilds();

            wasEdited = true;
        }

		public void AddBorder(int width, int height)
        {
            //canvas.ResetZoom();

            var b = new DominoBorder();
            b.Color = 0;
			b.Style = 0;

            Point pnt = new(width / 2, height / 2);
            pnt = canvas.Transform3(pnt);

            DrawBorder(b, (int)pnt.X, (int)pnt.Y, 50, 50, true);
            dominoBorders.Add(b);

            canvas.RefreshChilds();

            wasEdited = true;
        }

        public delegate void OpenAddBorderDialog(int selStyle, int selClr, List<ColorEntry> colors, bool moveChilds);
        public OpenAddBorderDialog openAddBorderDialog;
        private DominoBorder editBorder = null;

        public void EditBorderDialog(object sender, RoutedEventArgs e)
        {
            string[] tags = ((string)((Button)sender).Tag).Split('|');

            editBorder = dominoBorders.Where(a => a.UniqueID == tags[1]).Single();

            if (tags[0] == "edit")
            {
                List<ColorEntry> colors = new();

                foreach (var c in linesColors)
                    colors.Add(new() { Color = new(c) });

                openAddBorderDialog(editBorder.Style, editBorder.Color, colors, editBorder.ContainerUI.EnableMovingChilds);
            }
            if (tags[0] == "delete")
            {
                AskDialog("Remove border", "Do you want to remove the border?", () =>
                {
                    canvas.Children.Remove(editBorder.ContainerUI);
                    dominoBorders.Remove(editBorder);

                    wasEdited = true;
                });
            }
        }

		public void EditBorderDialogAct(int selClr, int selStyle, bool? moveChilds)
        {
            //canvas.ResetZoom();

            editBorder.Style = selStyle;
            editBorder.Color = selClr;

            var x = Canvas.GetLeft(editBorder.ContainerUI);
            var y = Canvas.GetTop(editBorder.ContainerUI);
			var w = editBorder.ContainerUI.Width;
			var h = editBorder.ContainerUI.Height;

            canvas.Children.Remove(editBorder.ContainerUI);

            DrawBorder(editBorder, (int)x, (int)y, (int)w, (int)h, moveChilds);

            canvas.RefreshChilds();

            wasEdited = true;
        }

        public void AddResource(object sender, RoutedEventArgs e)
        {
            var b = new DominoDict();
            b.Name = "NewResource";
			b.Value = "Type";

            DrawResource(b);
            dominoResources.Add(b);

            wasEdited = true;
        }

        List<string> resourcesTypes = new()
        {
            "CSoundResource",
            "CGeometryResource",
            "CTextureResource",
            "CAnimationResource",
            "CBinkResource",
            "CBinkUIResource",
            "CSequenceResource",
            "CEntityArchetypeRes",
            "WolfskinItemResource",
            "WolfskinConfigResource",
            "CFireUIResource",
        };
        public delegate void OpenEditResourceDialog(string name, int selType, List<string> types);
        public OpenEditResourceDialog openEditResourceDialog;
        private DominoDict editResource = null;

        public void EditResourceDialog(object sender, RoutedEventArgs e)
        {
            string[] tags = ((string)((Button)sender).Tag).Split('|');

            editResource = dominoResources.Where(a => a.UniqueID == tags[1]).Single();

            if (tags[0] == "edit")
            {
				int s = resourcesTypes.FindIndex(a => a == editResource.Value);
                openEditResourceDialog(editResource.Name, s == -1 ? 0 : s, resourcesTypes);
            }
            if (tags[0] == "delete")
            {
				AskDialog("Remove resource", "Do you want to remove the resource?", () =>
                {
                    wiResources.list.Children.Remove(editResource.ContainerUI);
                    dominoResources.Remove(editResource);

                    wasEdited = true;
                });
            }
        }

        public void EditResourceDialogAct(string name, string type)
        {
            editResource.Name = name;
            editResource.Value = type;

            wiResources.list.Children.Remove(editResource.ContainerUI);

            DrawResource(editResource);

            wasEdited = true;
        }





		public void CheckEdited(Action afterAction)
		{
			if (wasEdited)
            {
                AskDialog("Unsaved changes", "There are some unsaved changes. Do you want to save before exit?", () =>
                {
                    Save();
                    afterAction();
                },
                () =>
                {
                    afterAction();
                });
            }
            else
                afterAction();
        }

		private string CheckConnBox()
        {
            List<string> execBoxes = new();
            foreach (var c in dominoConnectors.Values)
            {
                if (c.FromBoxConnectID == -1)
                {
                    return "There is a connector which isn't connected to any output from a box - " + c.ID;
                }

                foreach (var e in c.ExecBoxes)
                {
                    execBoxes.Add(e.Box.ID);
                }
            }
            foreach (var b in dominoBoxes.Keys)
            {
                if (!execBoxes.Contains(b))
                {
                    return "There is a box which isn't connected to any exec from a connector - " + b;
                }
            }
			return "";
        }

        public string Export()
        {
            var acb = CheckConnBox();
            if (acb != "")
                return acb;

			string exportPath = "";

			if (file == "" || file.EndsWith(".lua"))
			{
				SaveFileDialog sfd = new();
				sfd.Title = "Export Domino Workspace to LUA";
				sfd.Filter = "Compiled Domino Workspace|*.lua";
				if (sfd.ShowDialog() == true)
				{
					exportPath = sfd.FileName;
				}
				else
					return "";
			}
			else
				exportPath = file.Replace(".domino.xml", ".lua");

            string nl = Environment.NewLine;

			var luaData = new MemoryStream();
			var streamWriter = new StreamWriter(luaData);

			streamWriter.WriteLine("");
			streamWriter.WriteLine("--Created with " + MainWindow.appName);
			streamWriter.WriteLine("");
			streamWriter.WriteLine("export = {}");
			streamWriter.WriteLine("function export:LuaDependencies()");
			streamWriter.WriteLine("  local luaDepTable = {}");
			streamWriter.WriteLine("  return luaDepTable");
			streamWriter.WriteLine("end");
			streamWriter.WriteLine("function export:Create(cboxRes)");
			streamWriter.WriteLine("  --if cboxRes:ShouldLoadResources() == true then");

			foreach (var b in regBoxes)
				streamWriter.WriteLine($"    cboxRes:RegisterBox(\"{b.Key}\")");

			foreach (var res in dominoResources)
				streamWriter.WriteLine($"    cboxRes:LoadResource(\"{res.Name}\", \"{res.Value}\")");

			streamWriter.WriteLine("  --end");
			streamWriter.WriteLine("end");

			if (game != "fc6")
			{
				streamWriter.WriteLine("function export:RegisterCppMetadata()");

				foreach (var regBox in regBoxes)
				{
					streamWriter.WriteLine($"  metadataTable[GetPathID(\"{regBox.Key}\")] = {{");
					streamWriter.WriteLine($"    stateless = {(regBox.Value.IsStateless ? "true" : "false")},");
					
					streamWriter.Write($"    controlIn = {{");
					if (regBox.Value.ControlsIn.Any())
					{
						streamWriter.WriteLine("");
						int cm = 0;
						foreach (var m in regBox.Value.ControlsIn)
						{
							streamWriter.WriteLine($"      [{cm}] = {{name = \"{m.Name}\"{(m.AnchorDynType > 0 ? ", dynamicType = " + m.AnchorDynType.ToString() : "")}}}{(cm != regBox.Value.ControlsIn.Count() ? "," : "")}");
							cm++;
						}
						streamWriter.WriteLine("    },");
					}
					else
						streamWriter.WriteLine("},");
					streamWriter.WriteLine($"    controlInCount = {regBox.Value.ControlsIn.Count()},");

					streamWriter.Write($"    controlOut = {{");
					if (regBox.Value.ControlsOut.Any())
					{
						streamWriter.WriteLine("");
						int cm = 0;
						foreach (var m in regBox.Value.ControlsOut)
						{
							streamWriter.WriteLine($"      [{cm}] = {{name = \"{m.Name}\"{(m.AnchorDynType > 0 ? ", dynamicType = " + m.AnchorDynType.ToString() : "")}, delayed = {(m.IsDelayed ? "true" : "false")}}}{(cm != regBox.Value.ControlsOut.Count() ? "," : "")}");
							cm++;
						}
						streamWriter.WriteLine("    },");
					}
					else
						streamWriter.WriteLine("},");
					streamWriter.WriteLine($"    controlOutCount = {regBox.Value.ControlsOut.Count()},");

					streamWriter.Write($"    dataIn = {{");
					if (regBox.Value.DatasIn.Any())
					{
						streamWriter.WriteLine("");
						int cm = 0;
						foreach (var m in regBox.Value.DatasIn)
						{
							streamWriter.WriteLine($"      [{cm}] = {{name = \"{m.Name}\", type = \"{m.DataTypeID}\"{(m.AnchorDynType > 0 ? ", dynamicType = " + m.AnchorDynType.ToString() : "")}}}{(cm != regBox.Value.DatasIn.Count() ? "," : "")}");
							cm++;
						}
						streamWriter.WriteLine("    },");
					}
					else
						streamWriter.WriteLine("},");
					streamWriter.WriteLine($"    dataInCount = {regBox.Value.DatasIn.Count()},");

					streamWriter.Write($"    dataOut = {{");
					if (regBox.Value.DatasOut.Any())
					{
						streamWriter.WriteLine("");
						int cm = 0;
						foreach (var m in regBox.Value.DatasOut)
						{
							streamWriter.WriteLine($"      [{cm}] = {{name = \"{m.Name}\", type = \"{m.DataTypeID}\"{(m.AnchorDynType > 0 ? ", dynamicType = " + m.AnchorDynType.ToString() : "")}}}{(cm != regBox.Value.DatasOut.Count() ? "," : "")}");
							cm++;
						}
						streamWriter.WriteLine("    },");
					}
					else
						streamWriter.WriteLine("},");
					streamWriter.WriteLine($"    dataOutCount = {regBox.Value.DatasOut.Count()},");

					streamWriter.WriteLine("  }");
				}

				streamWriter.WriteLine("end");
			}

			streamWriter.WriteLine("function export:Init(cbox)");
			streamWriter.WriteLine("  local l0");

			foreach (var var in globalVariables)
			{
				var vs = ParamsAsString(var, true);
				streamWriter.WriteLine($"  self.{var.Name} = {vs}");

				/*if (var.ValueArray.Count > 0)
				{
					string v = "";
					foreach (var a in var.ValueArray)
						v += (v != "" ? "," + nl : "") + "    " + a.Name + " = " + a.Value;

					streamWriter.WriteLine($"  self.{var.Name} = {{{nl}{v}{nl}  }}");
				}
				else
					streamWriter.WriteLine($"  self.{var.Name} = {var.Value}");*/
			}

			foreach (var box in dominoBoxes)
			{
				if (box.Value.ID.StartsWith("self["))
				{
					if (game == "fc6")
						streamWriter.WriteLine($"  {box.Value.ID} = cbox:CreateBox_PathID(\"{CRC64.Hash(box.Value.Name.ToLower().Replace("/", "\\"))}\")");
					else
						streamWriter.WriteLine($"  {box.Value.ID} = cbox:CreateBox(\"{box.Value.Name}\")");
					
					streamWriter.WriteLine($"  l0 = {box.Value.ID}");
					streamWriter.WriteLine($"  l0:SetParentGraph(self._cbox)");
					streamWriter.WriteLine(ExportConns(box.Value));
				}
			}

			streamWriter.WriteLine("end");

			List<string> outFncs = new();

			foreach (var conn in dominoConnectors)
			{
				streamWriter.WriteLine($"function export:{conn.Value.ID}()");

				if (conn.Value.ExecBoxes.Any())
				{
					bool hasPa = conn.Value.ExecBoxes.Any(a => a.Params.Any() || a.Box.ID.StartsWith("en_"));
					streamWriter.WriteLine($"  local {(hasPa ? "params, " : "")}l0");
				}
				//else

				if (conn.Value.SetVariables.Count > 0)
					streamWriter.WriteLine($"  self:{conn.Value.ID.Replace("f_", "ex_")}()");

				foreach (var exec in conn.Value.ExecBoxes)
				{
					//if (conn.Value.SetVariables.Count > 0)
					//	streamWriter.WriteLine($"  self:{conn.Value.ID.Replace("f_", "ex_")}()");

					bool wasLocalBox = false;

					if (exec.Params.Count > 0 || exec.Box.ID.StartsWith("en_"))
					{
						if (exec.Box.ID.StartsWith("en_"))
							streamWriter.WriteLine($"  params = self:{exec.Box.ID}()");
						else
							streamWriter.WriteLine($"  params = self:en_{exec.Box.ID.Replace("self[", "").Replace("]", "")}()");
					}

					if (exec.Box.ID.StartsWith("en_"))
					{
						wasLocalBox = true;
						if (game == "fc6")
							streamWriter.WriteLine($"  l0 = Boxes[\"{CRC64.Hash(exec.Box.Name.ToLower().Replace("/", "\\"))}\"]");
						else
							streamWriter.WriteLine($"  l0 = Boxes[GetPathID(\"{exec.Box.Name}\")]");
					}
					else
						streamWriter.WriteLine($"  l0 = {exec.Box.ID}");

					streamWriter.WriteLine($"  l0:Exec{(exec.Type == ExecType.ExecDynInt ? "DynInt" : "")}({exec.Exec}, {(exec.Params.Count > 0 || wasLocalBox ? "params" : "{}")}{(exec.Type == ExecType.ExecDynInt ? ", " + exec.DynIntExec : "")})");

					if (wasLocalBox)
						streamWriter.WriteLine($"  l0:SetParentGraph(nil)");
				}

				foreach (var otf in conn.Value.OutFuncName)
				{
					streamWriter.WriteLine($"  self:{otf}()");

					if (!outFncs.Contains(otf))
						outFncs.Add(otf);
				}

				streamWriter.WriteLine("end");
			}

			List<string> alreadyProccessed = new();
			foreach (var conn in dominoConnectors)
			{
				foreach (var exec in conn.Value.ExecBoxes)
				{
					if ((exec.Params.Count > 0 || exec.Box.ID.StartsWith("en_")) && !alreadyProccessed.Contains(exec.Box.ID))
					{
						bool wasLocalBox = false;
						string fN = "";

						if (exec.Box.ID.StartsWith("en_"))
						{
							wasLocalBox = true;
							fN = exec.Box.ID;
						}
						else
							fN = "en_" + exec.Box.ID.Replace("self[", "").Replace("]", "");

						streamWriter.WriteLine($"function export:{fN}()");

						Dictionary<string, string> tmpVaBAs = new();
						int tmpIdx = 0;

						void processParamsOutVal(List<DominoDict> listParams)
						{
							if (listParams.Any())
							{
								foreach (var ppm in listParams)
								{
									if (ppm.Value != null && ppm.Value.Contains("GetDataOutValue"))
									{
										string bN = ppm.Value.Split(':')[0];
										tmpVaBAs.Add(bN, "l" + tmpIdx.ToString());

										if (dominoBoxes.ContainsKey(bN) && bN.StartsWith("en_"))
										{
											if (game == "fc6")
												bN = "Boxes[\"" + CRC64.Hash(dominoBoxes[bN].Name.ToLower().Replace("/", "\\")) + "\"]";
											else
												bN = "Boxes[GetPathID(\"" + dominoBoxes[bN].Name + "\")]";
										}

										streamWriter.WriteLine($"  l{tmpIdx} = {bN}");
										tmpIdx++;
									}

									processParamsOutVal(ppm.ValueArray);
								}
							}
						}

						processParamsOutVal(exec.Params);

						string locDefs = "";
						for (int i = 0; i < tmpIdx + (wasLocalBox ? 1 : 0); i++)
							locDefs += ", l" + i.ToString();
						streamWriter.WriteLine($"  local params{locDefs}");

						if (wasLocalBox)
						{
							if (game == "fc6")
								streamWriter.WriteLine($"  l0 = Boxes[\"{CRC64.Hash(exec.Box.Name.ToLower().Replace("/", "\\"))}\"]");
							else
								streamWriter.WriteLine($"  l0 = Boxes[GetPathID(\"{exec.Box.Name}\")]");
							
							streamWriter.WriteLine("  l0:SetParentGraph(self._cbox)");
							streamWriter.WriteLine(ExportConns(exec.Box));
						}

						string a(string param)
						{
							if (param.Contains("GetDataOutValue"))
							{
								string bN = param.Split(':')[0];
								if (tmpVaBAs.ContainsKey(bN))
									return param.Replace(bN, tmpVaBAs[bN]);
							}

							return param;
						}

						void writeParams(List<DominoDict> listParams, int indent, bool root = false)
						{
							string indentSpaces = "";
							for (int i = 0; i < indent; i++)
								indentSpaces += "  ";

							if (root)
								streamWriter.Write(indentSpaces + "params = {");

							if (listParams.Any())
							{
								indentSpaces += "  ";
								streamWriter.WriteLine("");

								int cnt = 0;
								foreach (var ppm in listParams)
								{
									string cc = cnt != listParams.Count - 1 ? "," : "";

									bool dIsNum = int.TryParse(ppm.Name, out _);
									streamWriter.Write($"{indentSpaces}{(dIsNum ? "[" : "")}{ppm.Name}{(dIsNum ? "]" : "")} = ");

									if (ppm.Value != null)
										streamWriter.WriteLine($"{a(ppm.Value)}{cc}");

									if (ppm.ValueArray.Any())
									{
										streamWriter.Write("{");

										writeParams(ppm.ValueArray, indent + 1);

										streamWriter.WriteLine(indentSpaces + "}" + cc);
									}

									cnt++;
								}
							}

							if (root)
								streamWriter.WriteLine((listParams.Any() ? "  " : "") + "}");
						}

						writeParams(exec.Params, 1, true);

						/*
						if (exec.Params.Any())
						{
							streamWriter.WriteLine("  params = {");

							for (int j = 0; j < exec.Params.Count; j++)
							{
								if (exec.Params.ElementAt(j).Value.Count() > 1)
								{
									string ov = "";

									for (int i = 0; i < exec.Params.ElementAt(j).Value.Count(); i++)
										ov += (ov != "" ? $"{nl}" : "") + "      " + a(exec.Params.ElementAt(j).Value[i]);

									streamWriter.WriteLine($"    [{exec.Params.ElementAt(j).Key}] = {{{nl}{ov}{nl}    }}{(j != (exec.Params.Count - 1) ? "," : "")}");
								}
								else
									streamWriter.WriteLine($"    [{exec.Params.ElementAt(j).Key}] = {a(exec.Params.ElementAt(j).Value[0])}{(j != (exec.Params.Count - 1) ? "," : "")}");
							}

							streamWriter.WriteLine("  }");
						}
						else
							streamWriter.WriteLine("  params = {}");
						*/

						streamWriter.WriteLine("  return params");
						streamWriter.WriteLine("end");

						alreadyProccessed.Add(exec.Box.ID);
					}
				}
			}

			foreach (var conn in dominoConnectors)
			{
				if (conn.Value.SetVariables.Count > 0)
				{
					streamWriter.WriteLine($"function export:{conn.Value.ID.Replace("f_", "ex_")}()");

					Dictionary<string, string> tmpVars = new();
					List<string> tmpVarsSets = new();
					int vi = 0;

					foreach (var svar in conn.Value.SetVariables)
					{
						if (svar.Name.Contains(':'))
						{
							tmpVars.Add(svar.Name.Split(':')[0], "l" + vi.ToString());
							vi++;
						}

						if (svar.Value.Contains(':'))
						{
							var a = tmpVars.TryAdd(svar.Value.Split(':')[0], "l" + vi.ToString());
							if (a) vi++;
						}
					}

					foreach (var svar in conn.Value.SetVariables)
					{
						string dSet = svar.Name + " = " + svar.Value;

						foreach (var tmpVar in tmpVars)
							dSet = dSet.Replace(tmpVar.Key, tmpVar.Value);

						tmpVarsSets.Add(dSet);
					}

					string outVDef = "";

					foreach (var tmpVar in tmpVars)
						outVDef += (outVDef != "" ? ", " : "") + tmpVar.Value;

					if (outVDef != "")
						streamWriter.WriteLine("  local " + outVDef);

					foreach (var tmpVar in tmpVars)
					{
						string bb = tmpVar.Key;

						if (dominoBoxes.ContainsKey(tmpVar.Key) && tmpVar.Key.StartsWith("en_"))
						{
							if (game == "fc6")
								bb = "Boxes[\"" + CRC64.Hash(dominoBoxes[tmpVar.Key].Name.ToLower().Replace("/", "\\")) + "\"]";
							else
								bb = "Boxes[GetPathID(\"" + dominoBoxes[tmpVar.Key].Name + "\")]";
						}

						streamWriter.WriteLine($"  {tmpVar.Value} = {bb}");
					}

					foreach (var tmpVarSet in tmpVarsSets)
						streamWriter.WriteLine($"  {tmpVarSet}");

					streamWriter.WriteLine("end");
				}
			}

			foreach (var otf in outFncs)
			{
				streamWriter.WriteLine($"function export:{otf}()");
				streamWriter.WriteLine("end");
			}

			streamWriter.WriteLine("_compilerVersion = 60");
			streamWriter.Close();

			XDocument doc = new();
			doc.Declaration = null;
			doc.Add(ExportDominoMetadata());

			var docData = new MemoryStream();
			XmlWriterSettings xws = new XmlWriterSettings { OmitXmlDeclaration = true, Indent = true, IndentChars = "\t", Encoding = Encoding.ASCII };
			using (XmlWriter xw = XmlWriter.Create(docData, xws))
				doc.Save(xw);

			byte[] lua = luaData.ToArray();
			byte[] meta = docData.ToArray();

			var fileStream = File.Create(exportPath);
			fileStream.Write(BitConverter.GetBytes(0x4341554c), 0, 4);
			fileStream.Write(BitConverter.GetBytes(lua.Length), 0, sizeof(int));
			fileStream.WriteBytes(lua);
			fileStream.WriteBytes(meta);
			fileStream.Close();

			return "";
		}

		private string ExportConns(DominoBox box)
		{
			string nl = Environment.NewLine;

			bool SetDynAnchorCountAdd = false;

			string SetDynAnchorCount = "  l0:SetDynAnchorCount({" + nl;
			var execs = dominoConnectors.Values.SelectMany(a => a.ExecBoxes.Where(b => b.Box.ID == box.ID));
			var medi = execs.Where(a => a.Type == ExecType.ExecDynInt).GroupBy(x => x.Exec)
				.Select(x => new
				{
					Count = x.Count(),
					Exec = x.Key,
				}).OrderByDescending(x => x.Count).ToList();

			if (medi.Any())
			{
				SetDynAnchorCountAdd = true;

				SetDynAnchorCount += "    controlIn = {" + nl;

				for (int i = 0; i < medi.Count; i++)
					SetDynAnchorCount += $"      [{medi[i].Exec}] = {medi[i].Count}{(i != (medi.Count - 1) ? "," : "")}{nl}";

				SetDynAnchorCount += "    }," + nl;
			}
			else
				SetDynAnchorCount += "    controlIn = {}," + nl;

			string SetConnections = "";
			if (box.Connections.Count == 0)
				SetConnections += "  l0:SetConnections({})";
			else
			{
				SetConnections += "  l0:SetConnections({" + nl;

				List<string> dynac = new();

				for (int i = 0; i < box.Connections.Count; i++)
				{
					var c = box.Connections[i];

					if (c.SubConnections.Count > 0)
					{
						SetConnections += $"    [{c.FromBoxConnectID}] = {{{nl}";
						SetConnections += $"      connections = {{{nl}";

						for (int j = 0; j < c.SubConnections.Count; j++)
						{
							if (c.SubConnections[j].FromBoxConnectIDStr != "")
							{
                                SetConnections += $"        [{c.SubConnections[j].FromBoxConnectID}] = {{{nl}";
                                SetConnections += $"          string = \"{c.SubConnections[j].FromBoxConnectIDStr}\",{nl}";
                                SetConnections += $"          value = self.{c.SubConnections[j].ID}{nl}";
                                SetConnections += $"        }}{(j != (c.SubConnections.Count - 1) ? "," : "")}{nl}";
                            }
                            else
								SetConnections += $"        [{c.SubConnections[j].FromBoxConnectID}] = self.{c.SubConnections[j].ID}{(j != (c.SubConnections.Count - 1) ? "," : "")}{nl}";
                        }

                        SetConnections += $"      }},{nl}";
						SetConnections += $"      count = {c.SubConnections.Count}{nl}";
						SetConnections += $"    }}{(i != (box.Connections.Count - 1) ? "," : "")}{nl}";

						dynac.Add($"      [{c.FromBoxConnectID}] = {c.SubConnections.Count}{nl}");
					}
					else
						SetConnections += $"    [{c.FromBoxConnectID}] = self.{c.ID}{(i != (box.Connections.Count - 1) ? "," : "")}{nl}";
				}

				if (dynac.Any())
				{
					SetDynAnchorCountAdd = true;

					SetDynAnchorCount += "    controlOut = {" + nl;

					for (int i = 0; i < dynac.Count; i++)
						SetDynAnchorCount += $"{dynac[i]}{(i != (dynac.Count - 1) ? "," : "")}";

					SetDynAnchorCount += "    }," + nl;
				}
				else
					SetDynAnchorCount += "    controlOut = {}," + nl;

				SetConnections += "  })";
			}

			var vrs = execs.SelectMany(a => a.Params.Where(b => b.ValueArray.Any(c => c.Name.Contains("count"))));
			if (vrs.Any())
			{
				SetDynAnchorCountAdd = true;

				SetDynAnchorCount += "    dataIn = {" + nl;

				for (int i = 0; i < vrs.Count(); i++)
					foreach (var scd in vrs.ElementAt(i).ValueArray)
						if (scd.Name == "count")
							SetDynAnchorCount += $"      [{vrs.ElementAt(i).Name}] = {scd.Value}{(i != (vrs.Count() - 1) ? "," : "")}{nl}";

				SetDynAnchorCount += "    }," + nl;
			}
			else
				SetDynAnchorCount += "    dataIn = {}," + nl;

			SetDynAnchorCount += "    dataOut = {}" + nl;

			SetDynAnchorCount += "  })" + nl;

			string output = "";

			if (SetDynAnchorCountAdd)
				output += SetDynAnchorCount;

			output += SetConnections;

			return output;
		}

		public string Save()
        {
			var acb = CheckConnBox();
			if (acb != "")
				return acb;

			if (file == "" || file.EndsWith(".lua"))
			{
				SaveFileDialog sfd = new();
                sfd.Title = "Save Domino Workspace";
                sfd.Filter = "Domino Workspace|*.domino.xml";
				if (sfd.ShowDialog() == true)
				{
					file = sfd.FileName;
				}
				else
					return "";
			}

			//canvas.ResetZoom();
			wasEdited = false;

            static XElement saveConn(DominoConnector c)
			{
				XElement xcnt = new("Connector");
				xcnt.Add(new XAttribute("FromBoxConnectID", c.FromBoxConnectID.ToString()));
				xcnt.Add(new XAttribute("FromBoxConnectIDStr", c.FromBoxConnectIDStr.ToString()));

				if (c.SubConnections.Any())
				{
					XElement xsc = new("SubConnections");

					foreach (var sc in c.SubConnections)
						if (sc.ID != null || sc.SubConnections.Any())
							xsc.Add(saveConn(sc));

					xcnt.Add(xsc);
				}
				else
				{
					xcnt.Add(new XAttribute("ID", c.ID));
				}

				return xcnt;
			}

			XElement writeParams(List<DominoDict> prms, string pn, string vn)
			{
				if (prms.Any())
				{
					XElement xprms = new(pn);

					foreach (var prm in prms)
					{
						XElement xPrm = new(vn, new XAttribute("Name", prm.Name));

						if (prm.Value != null)
							xPrm.Add(new XAttribute("Value", prm.Value));

						xPrm.Add(writeParams(prm.ValueArray, pn, vn));

						xprms.Add(xPrm);
					}

					return xprms;
				}

				return null;
			}

			XElement xRoot = new("DominoDocument");
			//xRoot.Add(new XElement("IsStateless", thisMetadata.IsStateless ? "1" : "0"));
			//xRoot.Add(new XElement("IsSystem", thisMetadata.IsSystem ? "1" : "0"));
			xRoot.Add(new XElement("Game", game));

			xRoot.Add(ExportDominoMetadata());

			XElement xResources = new("Resources");
			foreach (var c in dominoResources)
				xResources.Add(new XElement("Resource", new XAttribute("File", c.Name), new XAttribute("Type", c.Value)));
			xRoot.Add(xResources);

			xRoot.Add(writeParams(globalVariables, "Variables", "Variable"));

            XElement xComments = new("Comments");
            foreach (var c in dominoComments)
			{
                var a = canvas.Transform2(new(Canvas.GetLeft(c.ContainerUI), Canvas.GetTop(c.ContainerUI)));
                xComments.Add(new XElement("Comment", new XAttribute("Name", c.Name), new XAttribute("Color", c.Color), new XAttribute("DrawX", a.X.ToString(CultureInfo.InvariantCulture)), new XAttribute("DrawY", a.Y.ToString(CultureInfo.InvariantCulture))));
            }
            xRoot.Add(xComments);

            XElement xBorders = new("Borders");
            foreach (var b in dominoBorders)
			{
                var a = canvas.Transform2(new(Canvas.GetLeft(b.ContainerUI), Canvas.GetTop(b.ContainerUI)));
                xBorders.Add(new XElement("Border", 
					new XAttribute("Style", b.Style), 
					new XAttribute("Color", b.Color), 
					new XAttribute("EnableMovingChilds", b.ContainerUI.EnableMovingChilds ? "true" : "false"),
                    new XAttribute("DrawX", a.X.ToString(CultureInfo.InvariantCulture)), 
					new XAttribute("DrawY", a.Y.ToString(CultureInfo.InvariantCulture)), 
					new XAttribute("DrawW", b.ContainerUI.Width.ToString(CultureInfo.InvariantCulture)), 
					new XAttribute("DrawH", b.ContainerUI.Height.ToString(CultureInfo.InvariantCulture))
					));
            }
            xRoot.Add(xBorders);

            XElement xBoxes = new("Boxes");
			foreach (var c in dominoBoxes)
            {
                var a = canvas.Transform2(new(Canvas.GetLeft(c.Value.Widget), Canvas.GetTop(c.Value.Widget)));

                XElement xBox = new("Box");
				xBox.Add(new XAttribute("ID", c.Value.ID));
				xBox.Add(new XAttribute("Name", c.Value.Name));
				xBox.Add(new XAttribute("DrawX", a.X.ToString(CultureInfo.InvariantCulture)));
				xBox.Add(new XAttribute("DrawY", a.Y.ToString(CultureInfo.InvariantCulture)));

				if (c.Value.Connections.Any())
				{
					XElement xsc = new("Connections");

					foreach (var sc in c.Value.Connections)
					{
						xsc.Add(saveConn(sc));
					}

					xBox.Add(xsc);
				}

				xBoxes.Add(xBox);
			}
			xRoot.Add(xBoxes);

			XElement xConns = new("Connectors");
			foreach (var c in dominoConnectors)
			{
                var a = canvas.Transform2(new(Canvas.GetLeft(c.Value.Widget), Canvas.GetTop(c.Value.Widget)));

				XElement xc = new("Connector");
				xc.Add(new XAttribute("ID", c.Value.ID));
				xc.Add(new XAttribute("DrawX", a.X.ToString(CultureInfo.InvariantCulture)));
				xc.Add(new XAttribute("DrawY", a.Y.ToString(CultureInfo.InvariantCulture)));

				if (c.Value.ExecBoxes.Any())
				{
					XElement xsc = new("ExecBoxes");

					foreach (var sc in c.Value.ExecBoxes)
					{
						XElement xeb = new("ExecBox");
						xeb.Add(new XAttribute("Type", sc.Type == ExecType.Exec ? "Exec" : "DynIntExec"));
						xeb.Add(new XAttribute("Exec", sc.Exec.ToString()));
						xeb.Add(new XAttribute("DynIntExec", sc.DynIntExec.ToString()));
						xeb.Add(new XAttribute("Box", sc.Box.ID));

						xeb.Add(writeParams(sc.Params, "Params", "Param"));

						xsc.Add(xeb);
					}

					xc.Add(xsc);
				}

				if (c.Value.OutFuncName.Any())
				{
					XElement xsc = new("OutFuncName");

					foreach (var sc in c.Value.OutFuncName)
						xsc.Add(new XElement("Function", new XAttribute("Name", sc)));

					xc.Add(xsc);
				}

				/*if (c.Value.FromBoxes.Any())
                {
                    XElement xsc = new("FromBoxes");

                    foreach (var sc in c.Value.FromBoxes)
                        xsc.Add(new XElement("Box", new XAttribute("Name", sc.ID)));

                    xc.Add(xsc);
                }*/

				xc.Add(writeParams(c.Value.SetVariables, "Variables", "Variable"));

				/*if (c.SubConnections.Any())
				{
					XElement xsc = new("SubConnections");

					foreach (var sc in c.SubConnections)
						xsc.Add(saveConn(sc));

					xc.Add(xsc);

				}*/

				xConns.Add(xc);
			}
			xRoot.Add(xConns);

			XDocument doc = new();
			doc.Add(xRoot);
			doc.Save(file);

			return "";
		}

		public string Load()
		{
			void loadConn(XElement parent, DominoBox box, DominoConnector parentConn)
			{
				var xConns = parent.Elements("Connector");
				foreach (var xConn in xConns)
				{
					DominoConnector conn = new();
					conn.FromBoxConnectID = int.Parse(xConn.Attribute("FromBoxConnectID").Value);
					conn.FromBoxConnectIDStr = xConn.Attribute("FromBoxConnectIDStr").Value;
					conn.ID = xConn.Attribute("ID")?.Value;

					if (conn.ID != null)
						dominoConnectors.Add(conn.ID, conn);

					if (parentConn == null)
						box.Connections.Add(conn);
					else
						parentConn.SubConnections.Add(conn);

					var xSubConnections = xConn.Element("SubConnections");
					if (xSubConnections != null)
					{
						loadConn(xSubConnections, box, conn);
					}
				}
			}

			List<DominoDict> readParams(XElement parent, string pn, string vn)
			{
				List<DominoDict> prms = new();

				var xParams = parent.Element(pn)?.Elements(vn);
				if (xParams != null)
				{
					foreach (var xParam in xParams)
					{
						DominoDict prm = new();
						prm.Name = xParam.Attribute("Name").Value;

						string val = xParam.Attribute("Value")?.Value;
						if (val != null)
							prm.Value = val;

						prm.ValueArray = readParams(xParam, pn, vn);

						prms.Add(prm);
					}
				}

				return prms;
			}

			XDocument xDoc = XDocument.Load(file);
			XElement xRoot = xDoc.Element("DominoDocument");

			game = xRoot.Element("Game").Value;

            ParseAllBoxes();

            string dmla = ImportDominoMetadata(xRoot.Element("DominoMetadata"));
			if (dmla != "")
				return dmla;

			var xRess = xRoot.Element("Resources").Elements("Resource");
			foreach (var xRe in xRess)
                dominoResources.Add(new() { Name = xRe.Attribute("File").Value, Value = xRe.Attribute("Type").Value });

            var xComments = xRoot.Element("Comments").Elements("Comment");
            foreach (var xC in xComments)
            {
                var c = new DominoComment();
                c.Name = xC.Attribute("Name").Value;
                c.Color = int.Parse(xC.Attribute("Color").Value);
                dominoComments.Add(c);

                double x = double.Parse(xC.Attribute("DrawX").Value, CultureInfo.InvariantCulture);
                double y = double.Parse(xC.Attribute("DrawY").Value, CultureInfo.InvariantCulture);

                DrawComment(c, x, y);
            }

            var xBorders = xRoot.Element("Borders").Elements("Border");
            foreach (var xB in xBorders)
            {
                var b = new DominoBorder();
                b.Style = int.Parse(xB.Attribute("Style").Value);
                b.Color = int.Parse(xB.Attribute("Color").Value);
                dominoBorders.Add(b);

				bool moveChilds = xB.Attribute("EnableMovingChilds").Value == "true";

                double x = double.Parse(xB.Attribute("DrawX").Value, CultureInfo.InvariantCulture);
                double y = double.Parse(xB.Attribute("DrawY").Value, CultureInfo.InvariantCulture);
                double w = double.Parse(xB.Attribute("DrawW").Value, CultureInfo.InvariantCulture);
                double h = double.Parse(xB.Attribute("DrawH").Value, CultureInfo.InvariantCulture);

                DrawBorder(b, x, y, w, h, moveChilds);
            }

            globalVariables = readParams(xRoot, "Variables", "Variable");

			var xBoxes = xRoot.Element("Boxes").Elements("Box");
			foreach (var xBox in xBoxes)
			{
				DominoBox box = new();
				box.ID = xBox.Attribute("ID").Value;
				box.Name = xBox.Attribute("Name").Value;
				box.DrawX = double.Parse(xBox.Attribute("DrawX").Value, CultureInfo.InvariantCulture);
				box.DrawY = double.Parse(xBox.Attribute("DrawY").Value, CultureInfo.InvariantCulture);
				dominoBoxes.Add(box.ID, box);

				XElement xConnections = xBox.Element("Connections");
				if (xConnections != null)
				{
					loadConn(xConnections, box, null);
				}
			}

			var xConnectors = xRoot.Element("Connectors").Elements("Connector");
			foreach (var xConnector in xConnectors)
			{
				DominoConnector conn = null;

				string cID = xConnector.Attribute("ID").Value;

				if (dominoConnectors.ContainsKey(cID))
					conn = dominoConnectors[cID];
				else
					conn = new();

				conn.ID = cID;
				conn.DrawX = double.Parse(xConnector.Attribute("DrawX").Value, CultureInfo.InvariantCulture);
				conn.DrawY = double.Parse(xConnector.Attribute("DrawY").Value, CultureInfo.InvariantCulture);

				if (!dominoConnectors.ContainsKey(cID))
					dominoConnectors.Add(conn.ID, conn);

				var xExecBoxes = xConnector.Element("ExecBoxes")?.Elements("ExecBox");
				if (xExecBoxes != null)
				{
					foreach (XElement xExecBox in xExecBoxes)
					{
						ExecBox execBox = new();
						execBox.Type = xExecBox.Attribute("Type").Value == "Exec" ? ExecType.Exec : ExecType.ExecDynInt;
						execBox.Exec = int.Parse(xExecBox.Attribute("Exec").Value);
						execBox.DynIntExec = int.Parse(xExecBox.Attribute("DynIntExec").Value);
						execBox.Box = dominoBoxes.Values.Where(a => a.ID == xExecBox.Attribute("Box").Value).Single();
						conn.ExecBoxes.Add(execBox);

						execBox.Params = readParams(xExecBox, "Params", "Param");
					}
				}

				conn.SetVariables = readParams(xConnector, "Variables", "Variable");
			}

			foreach (var box in dominoBoxes)
			{
				if (!regBoxes.ContainsKey(box.Value.Name))
					LoadReqBoxes(box.Value.Name);
			}

			foreach (var c in dominoConnectors)
			{
				foreach (var e in c.Value.ExecBoxes)
				{
					if (regBoxes.ContainsKey(e.Box.Name))
						e.ExecStr = regBoxes[e.Box.Name].ControlsIn[e.Exec].Name;
				}
			}

			Draw(true);

			if (errFilesB)
				return errFiles;

			return "";
		}
    }

	public static class Helpers
	{
        public static string RandomString()
        {
            Random random = new Random();
            int length = 40;

            const string chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            string newstr = new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());

            return newstr;
        }

		public static List<DominoDict> CopyList(List<DominoDict> source)
		{
			var newList = new List<DominoDict>();

			foreach (var i in source)
			{
				var ni = new DominoDict();
				ni.Name = i.Name;
				ni.Value = i.Value;
				ni.ContainerUI = i.ContainerUI;
				ni.UniqueID = i.UniqueID;

				ni.ValueArray = CopyList(i.ValueArray);

				newList.Add(ni);
			}

			return newList;
        }
    }

	public class DominoBox
	{
		public DominoBox()
		{
			Connections = new();
			//SetVariables = new();
		}

		public string ID { set; get; }

		public string Name { set; get; }

		public double DrawX { set; get; }

		public double DrawY { set; get; }

		public Widget Widget { set; get; }

		public int Height { set; get; }

		//public Dictionary<string, string> SetVariables { set; get; }

		public List<DominoConnector> Connections { set; get; }
	}

	public enum ExecType
	{
		Exec = 0,
		ExecDynInt = 1
	}

	public class ExecBox
	{
		public ExecBox()
		{
			Params = new();

			ExecStr = "";
		}

		public DominoBox Box { set; get; }

		public ExecType Type { set; get; }

		public int Exec { set; get; }

		public string ExecStr { set; get; }

		public int DynIntExec { set; get; }

		public List<DominoDict> Params { set; get; }

		public StackPanel MainUI { set; get; }

		public Border ContainerUI { set; get; }

		public Color INT_clr { set; get; }
	}

	public class DominoConnector
	{
		public DominoConnector()
		{
			SubConnections = new();
			//FromBoxes = new();
			ExecBoxes = new();
			SetVariables = new();
			OutFuncName = new();

			FromBoxConnectIDStr = "";

			UniqueID = Helpers.RandomString();
		}

		public string ID { set; get; }

		public int FromBoxConnectID { set; get; }

		public double DrawX { set; get; }

		public double DrawY { set; get; }

		public Widget Widget { set; get; }

		public int Height { set; get; }

		public string FromBoxConnectIDStr { set; get; }

		public List<DominoConnector> SubConnections { set; get; }

		//public List<DominoBox> FromBoxes { set; get; }

		public List<ExecBox> ExecBoxes { set; get; }

		public List<DominoDict> SetVariables { set; get; }

		public List<string> OutFuncName { set; get; }

		public Border ContainerUI { set; get; }

		public string UniqueID { get; }

        public int INT_clr { set; get; }

    }

	public class DominoBoxMetadata
	{
		public DominoBoxMetadata()
		{
			ControlsIn = new();
			ControlsOut = new();
			DatasIn = new();
			DatasOut = new();
		}

		public byte[] LuaBytes { set; get; }

		public bool IsStateless { set; get; }

		public bool IsSystem { set; get; }

		public List<DominoBoxMetadataControlsIn> ControlsIn { set; get; }

		public List<DominoBoxMetadataControlsOut> ControlsOut { set; get; }

		public List<DominoBoxMetadataDatasIn> DatasIn { set; get; }

		public List<DominoBoxMetadataDatasOut> DatasOut { set; get; }
	}

	public class DominoBoxMetadataControlsIn
	{
		public DominoBoxMetadataControlsIn(string name, int anchorDynType, string hostExecFunc)
		{
			Name = name;
			AnchorDynType = anchorDynType;
			HostExecFunc = hostExecFunc;
		}

		public string Name { set; get; }

		public int AnchorDynType { set; get; }

		public string HostExecFunc { set; get; }

        public Border ContainerUI { set; get; }
    }

	public class DominoBoxMetadataControlsOut
	{
		public DominoBoxMetadataControlsOut(string name, int anchorDynType, bool isDelayed)
		{
			Name = name;
			AnchorDynType = anchorDynType;
			IsDelayed = isDelayed;

            UniqueID = Helpers.RandomString();
        }

		public string Name { set; get; }

		public int AnchorDynType { set; get; }

		public bool IsDelayed { set; get; }

		public string UniqueID { get; }

        public Border ContainerUI { set; get; }
    }

	public class DominoBoxMetadataDatasIn
	{
		public DominoBoxMetadataDatasIn(string name, int anchorDynType, string dataTypeID)
		{
			Name = name;
			AnchorDynType = anchorDynType;
			DataTypeID = dataTypeID;
		}

		public string Name { set; get; }

		public int AnchorDynType { set; get; }

		public string DataTypeID { set; get; }

		public Border ContainerUI { set; get; }
    }

	public class DominoBoxMetadataDatasOut : DominoBoxMetadataDatasIn
	{
		public DominoBoxMetadataDatasOut(string name, int anchorDynType, string dataTypeID) : base(name, anchorDynType, dataTypeID)
		{
		}
	}

	public class DominoDict
	{
		public DominoDict()
		{
			ValueArray = new();

            UniqueID = Helpers.RandomString();
        }

		public string Name { set; get; }

        public string Value { set; get; }

        public string UniqueID { get; set; }

        public List<DominoDict> ValueArray { set; get; }

        public Border ContainerUI { set; get; }
	}

	public class DominoComment
	{
		public DominoComment()
		{
            UniqueID = Helpers.RandomString();
		}

		public string Name { set; get; }

        public string UniqueID { get; set; }

        public int Color { get; set; }

        public Border ContainerUI { set; get; }
    }

    public class DominoBorder
    {
        public DominoBorder()
        {
            UniqueID = Helpers.RandomString();
        }

        public string UniqueID { get; set; }

        public int Color { get; set; }

        public int Style { get; set; }

        public BorderD ContainerUI { set; get; }
    }
}
