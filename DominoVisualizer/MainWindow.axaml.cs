using Avalonia.Controls;
using Avalonia.Input;
using Avalonia.Interactivity;
using Avalonia.Media;
using Avalonia.Platform.Storage;
using Avalonia.Threading;
using Avalonia.VisualTree;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Timers;

namespace DominoVisualizer
{
    public partial class MainWindow : Window
	{
        public static DVClass parser;
		bool loaded = false;
		bool externalLaunch = false;
		const string appVer = "v2.00";
		public const string appName = "Domino Visualizer " + appVer + " by ArmanIII";
        Arguments arguments;
		OpenType selDialogType = OpenType.None;
        string selDialogFile = "";

		private enum OpenType
		{
            None,
			Import,
            ImportParam,
			Open,
            OpenParam,
			Binary,
			Create,
            SwapGraph
		}

        public static Window MainWnd;

        public MainWindow()
		{
			InitializeComponent();
			SetTitle(true);
			Blur(true);

            MainWnd = this;
		}

        public void SetTitle(bool clean, string file = "", bool edit = false)
        {
            if (clean)
            {
			        wndTitle.Content = Title = appName;
			        wndTitleW.Content = "";
            }
            else
            {
                Title = appName + " - " + (edit ? "*" : "") + file;
                wndTitleW.Content = " - " + (edit ? "*" : "") + file.Replace("_", "__");
            }
        }

		private async void Window_Loaded(object sender, RoutedEventArgs e)
		{
            //DiscordPresence();
            DiscordOwnRPC.Connect();

            verT.Content = appVer;

            string[] args = Environment.GetCommandLineArgs();
			arguments = new(args);

			if (arguments["bytes"] != null && arguments["fcver"] != null && arguments["fileFolder"] != null && arguments["fn"] != null)
				await OpenFileAsync(OpenType.Binary, null);
			else if (args.Length > 0)
			{
				foreach (string a in args)
				{
					if (File.Exists(a) && a.EndsWith(".lua"))
					{
                		selDialogType = OpenType.ImportParam;
                        selDialogFile = a;

                        Animation(true, gridDialogSelGame);
						break;
					}
					if (File.Exists(a) && (a.EndsWith(".domino.xml") || a.EndsWith(".domino")))
					{
                        await OpenFileAsync(OpenType.OpenParam, null, a);
						break;
					}
				}
			}
		}

		private async Task OpenFileAsync(OpenType type, string game, string directFile = "")
		{
            if (type == OpenType.Import)
            {
                FilePickerOpenOptions opts = new();
                opts.AllowMultiple = false;
                opts.FileTypeFilter = new FilePickerFileType[] { new("Domino script") { Patterns = new[] { "*.lua" } } };
                opts.Title = "Select compiled Domino script";

                var d = StorageProvider.OpenFilePickerAsync(opts).Result;
                if (d != null && d.Count > 0)
                {
                    await OpenFileAsync(OpenType.ImportParam, game, d[0].Path.LocalPath);
                }

                return;
            }
            else if (type == OpenType.Open)
            {
                FilePickerOpenOptions opts = new();
                opts.AllowMultiple = false;
                opts.FileTypeFilter = new FilePickerFileType[] { new("Domino script") { Patterns = new[] { "*.domino.xml", "*.domino" } } };
                opts.Title = "Select Domino Workspace";

                var d = await StorageProvider.OpenFilePickerAsync(opts);
                if (d != null && d.Count > 0)
                {
                    await OpenFileAsync(OpenType.OpenParam, game, d[0].Path.LocalPath);
                }

                return;
            }
            
            if (type != OpenType.SwapGraph)
            {
			    Animation(false, gridMainMenu);
			    Animation(true, gridLoading);
            }

            Loading(type, game, directFile);

            selDialogType = OpenType.None;
            selDialogFile = "";
        }

        private void Loading(OpenType type, string game, string directFile = "")
        {
            Timer bTimer = new Timer(500);
            bTimer.Enabled = true;
            bTimer.Elapsed += (object source, ElapsedEventArgs e) =>
            {
                bTimer.Stop();
                
                Dispatcher.UIThread.InvokeAsync(() =>
                {
                    bool eS = false;

                    try
			        {
			            if (type == OpenType.Binary)
			            {
    		            	SetTitle(false, arguments["fn"]);

			            	externalLaunch = true;

			            	parser = new(this, arguments["bytes"], arguments["fileFolder"], canvas, arguments["fcver"]);
			            }

                        if (type == OpenType.ImportParam)
                        {
                            parser = new(this, directFile, canvas, game);

    		            	SetTitle(false, directFile);
                        }

                        if (type == OpenType.OpenParam)
                        {
                            parser = new(this, directFile, canvas);

    		            	SetTitle(false, directFile);
                        }

			            if (type == OpenType.SwapGraph)
			            {
			            	parser = new(this, directFile, canvas);
    		            	SetTitle(false, directFile);
			            }

			            if (type == OpenType.Create)
			            {
    		            	SetTitle(false, "Unsaved workspace");

			            	parser = new(this, canvas, game);
                            //SetWorkspaceName(wrkspName.Text, wrkspGraph.Text);
			            }

			        	string r = "";

                        parser.setWorkspaceName = SetWorkspaceName;

                        if (type == OpenType.Open || type == OpenType.OpenParam) r = parser.Load();
                        if (type == OpenType.SwapGraph) r = parser.Load(game);
        	            if (type == OpenType.Import || type == OpenType.ImportParam || type == OpenType.Binary) (eS, r) = parser.Parse();
			            if (type == OpenType.Create) parser.Create(wrkspName.Text, wrkspGraph.Text, wrkspDat.Text);

			        	if (r != "")
			        	{
			        		OpenInfoDialog("Notice", r);

                            if (eS)
                            {
                                CloseWorkspace(gridMainMenu, () => { });
                                Animation(false, gridLoading);
                                return;
                            }
			        	}

			        	parser.openEditExecBoxDialog = OpenEditExecBoxDialog;
			        	parser.openAddExecBoxDialog = OpenAddExecBoxDialog;
			        	parser.openAddBoxConnectorDialog = OpenAddBoxConnectorDialog;
			        	parser.openEditDataDialog = OpenEditDataDialog;
			        	parser.openAskDialog = OpenAskDialog;
			        	parser.openAddCommentDialog = OpenAddCommentDialog;
			        	parser.openAddBorderDialog = OpenAddBorderDialog;
			        	parser.openEditResourceDialog = OpenEditResourceDialog;
			        	parser.openEditConnectorDialog = OpenEditConnectorDialog;
                        parser.openInfoDialog = OpenInfoDialog;
                        parser.openGetDataFromBoxDialog = OpenGetDataFromBoxDialog;
                        parser.openNotice = ShowNotice;

                        chromeBtnSettings.IsVisible = true;

                        loaded = true;
			        	Animation(true, gridMainClose);
			        }
			        catch (Exception ex)
			        {
			        	Animation(false, gridDialogSelGame);
			        	Animation(false, gridLoading);
			        	Animation(true, gridException);

			        	excLabel.Text = ex.ToString();
                    }

                    if (!eS)
                    {
                        Timer aTimer = new Timer(1000);
                        aTimer.Enabled = true;
                        aTimer.Elapsed += (object source, ElapsedEventArgs e) =>
                        {
                            aTimer.Stop();
                            
                            Dispatcher.UIThread.InvokeAsync(() =>
                            {
                                Blur(false);
                                Animation(false, gridLoading);
                            });
                        };
                    }
                });
            };
        }

		private async void ButtonSelGame_Click(object sender, RoutedEventArgs e)
		{
			string tag = (string)((Button)sender).Tag;

			Animation(false, gridDialogSelGame);

			if (tag == "cancel")
				return;

            await OpenFileAsync(selDialogType, tag, selDialogFile);
        }

		private async void ButtonSelDialog_Click(object sender, RoutedEventArgs e)
		{
			int tag = int.Parse((string)((Button)sender).Tag);

            if (tag == 0) //import
            {
                selDialogType = OpenType.Import;
			    Animation(true, gridDialogSelGame);
            }
            if (tag == 1) //open
            {
                await OpenFileAsync(OpenType.Open, null);
            }
            if (tag == 2) //create
            {
                Animation(true, gridDialogWorkspace);
            }
        }

        bool canClose = false;
        bool closeWait = false;
        private void Window_Closing(object sender, WindowClosingEventArgs e)
        {
            //DiscordClose();
            DiscordOwnRPC.Disconnect();

            if (parser != null && !canClose)
            {
                parser.CheckEdited(() =>
                {
                    canClose = true;
                    if (closeWait)
                        Close();
                });

                if (!canClose)
                    e.Cancel = true;

                closeWait = true;
            }
        }

        protected override void OnKeyDown(KeyEventArgs e)
        {
            Keyboard.Keys.Add(e.Key);
            base.OnKeyDown(e);
        }

        protected override void OnKeyUp(KeyEventArgs e)
        {
            Keyboard.Keys.Remove(e.Key);
            base.OnKeyUp(e);
        }

        public void MainWindow_Deactivated(object sender, EventArgs e)
        {
            Keyboard.Clear();
        }

        private void W_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.Key == Key.F && Keyboard.IsKeyDown(Key.LeftCtrl))
			{
				if (loaded)
					Animation(true, gridSearch);
			}
			if (e.Key == Key.C && Keyboard.IsKeyDown(Key.LeftCtrl))
			{
				if (loaded)
                    parser.CopyingMakeCopy();
			}
			if (e.Key == Key.V && Keyboard.IsKeyDown(Key.LeftCtrl))
			{
				if (loaded)
                    parser.CopyingPaste();
			}
			if (e.Key == Key.Delete)
			{
				if (loaded)
                    parser.SelectedDelete();
			}
		}

		private void ButtonSearch_Click(object sender, RoutedEventArgs e)
		{
			if (loaded)
			{
				string a = parser.Search(searchTB.Text);
				if (a != "")
				{
					OpenInfoDialog("Search", a);
				}
			}
		}

		private void ButtonX_Click(object sender, RoutedEventArgs e)
		{
			Animation(false, gridSearch);
		}

		private void searchTB_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.Key == Key.Enter)
				ButtonSearch_Click(null, null);
		}

		private void ButtonClose_Click(object sender, RoutedEventArgs e)
		{
            CloseWorkspace(gridMainMenu, () => { });
		}

        private void CloseWorkspace(Grid screen, Action afterAccept)
        {
			parser.CheckEdited(() =>
            {
                if (externalLaunch)
                {
                    Close();
                    return;
                }

                canvas.Clean();
                parser = null;
                //GC.Collect();

    			SetTitle(true);

                chromeBtnSettings.IsVisible = false;

                Blur(true);
                Animation(true, screen);
                Animation(false, gridMainClose);

                afterAccept();
            });
        }
        
		private void Animation(bool fadeInOut, Grid grid)
		{
            foreach (var ch in grid.GetVisualDescendants().OfType<Button>())
            {
                if (fadeInOut)
                    (ch as Button).IsEnabled = true;
                else
                    (ch as Button).IsEnabled = false;
            }

			if (fadeInOut)
			{
				grid.IsVisible = true;
			}
            
            grid.Opacity = fadeInOut ? 1 : 0;

            if (!fadeInOut)
            {
                Timer aTimer = new Timer(300);
                aTimer.Enabled = true;
                aTimer.Elapsed += (object source, ElapsedEventArgs e) =>
                {
                    aTimer.Stop();
                    Dispatcher.UIThread.InvokeAsync(() =>
                    {
                        grid.IsVisible = false;
                    });
                };
            }
        }

		private void Blur(bool enable)
		{
			if (enable)
			{
				canvas.Effect = new BlurEffect
				{
					Radius = 10,
					//KernelType = KernelType.Gaussian,
					//RenderingBias = RenderingBias.Quality
				};
			}
			else
			{
				canvas.Effect = null;
			}
		}

		private void ButtonExport_Click(object sender, RoutedEventArgs e)
		{
            parser.Export();
        }

		private void ButtonSave_Click(object sender, RoutedEventArgs e)
		{
			var a = parser.Save();
            if (a == "r")
            {
            }
            else if (a != "")
            {
                OpenInfoDialog("Save", a);
            }
            else
            {
                ShowNotice("Workspace saved successfully.");
            }
        }

		private void ButtonDialogEditExecBox_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

			if (tag == "1")
            {
				var a = parser.EditExecBoxSave(paramsList.ItemsSource.OfType<ParamEntry>().ToList(), editExecBoxType.SelectedIndex, editExecBoxExec.SelectedIndex, editExecBoxDynInt.Text);
                if (a != "")
                {
					OpenInfoDialog("Edit exec box", a);
                    return;
                }
            }

            Animation(false, gridDialogEditExecBox);
        }

		private void OpenEditExecBoxDialog(List<ParamEntry> wndData, List<ExecEntry> execs, int selType, int selExec, int selDynInt)
        {
            paramsList.ItemsSource = wndData;
			editExecBoxType.SelectedIndex = selType;
			editExecBoxExec.ItemsSource = execs;
			editExecBoxExec.SelectedIndex = selExec;
			editExecBoxDynInt.Text = selDynInt.ToString();

            Animation(true, gridDialogEditExecBox);
        }

		private void ButtonLVArray_Click(object sender, RoutedEventArgs e)
		{
            paramsList.ItemsSource = parser.EditExecBoxParamsAddRow(paramsList.ItemsSource.OfType<ParamEntry>().ToList(), (string)((Button)sender).Tag, true);
		}

		private void ButtonLVAdd_Click(object sender, RoutedEventArgs e)
		{
            paramsList.ItemsSource = parser.EditExecBoxParamsAddRow(paramsList.ItemsSource.OfType<ParamEntry>().ToList(), (string)((Button)sender).Tag, false);
		}

		private void ButtonLVDelete_Click(object sender, RoutedEventArgs e)
		{
            paramsList.ItemsSource = parser.EditExecBoxParamsRemoveRow((string)((Button)sender).Tag);
        }

        private void ButtonLVGetData_Click(object sender, RoutedEventArgs e)
        {
            parser.GetDataFromBox((outDta) => 
            {
                var rowItem = (sender as Button).DataContext as ParamEntry;
                rowItem.ParamValue = outDta;
                //ICollectionView view = CollectionViewSource.GetDefaultView(paramsList.ItemsSource);
                //view.Refresh();
            });
        }

        private void OpenAddExecBoxDialog(List<ExecEntry> boxes)
        {
			addExecBoxBox.ItemsSource = boxes;
            Animation(true, gridDialogAddExecBox);
        }

		private void ButtonDialogAddExecBox_Click(object sender, RoutedEventArgs e)
		{
            string tag = (string)((Button)sender).Tag;

			if (tag == "1")
            {
                if (addExecBoxBox.SelectedIndex == -1)
                {
					OpenInfoDialog("Add exec box", "No box selected.");
					return;
                }
                parser.AddExecBoxCreate(((ExecEntry)addExecBoxBox.SelectedItem).Num);
            }

            Animation(false, gridDialogAddExecBox);
		}

        private void OpenAddBoxConnectorDialog(List<ExecEntry> boxFuncs, List<ExecEntry> connectors)
        {
            addBoxConnectorC.ItemsSource = connectors;
            addBoxConnectorC.SelectedIndex = 0;
            addBoxConnectorB.ItemsSource = boxFuncs;
            if (boxFuncs.Any())
                addBoxConnectorB.SelectedIndex = 0;
            Animation(true, gridDialogAddBoxConnector);
        }

        private void ButtonDialogAddBoxConnector_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

            if (tag == "1")
            {
                if (addBoxConnectorB.SelectedIndex == -1 || addBoxConnectorC.SelectedIndex == -1)
                {
					OpenInfoDialog("Add box connector", "No output selected or missing connector.");
					return;
                }
                var a = parser.AddBoxConnectorCreate(((ExecEntry)addBoxConnectorB.SelectedItem).Num, ((ExecEntry)addBoxConnectorC.SelectedItem).Name, addBoxConnectorArray.IsChecked, addBoxConnectorArrayKey.Text);
                if (a != "")
                {
                    OpenInfoDialog("Add box connector", a);
                    return;
                }
            }

            Animation(false, gridDialogAddBoxConnector);
        }

        private void ButtonAddConn_Click(object sender, RoutedEventArgs e)
        {
            Animation(true, gridDialogAddConnector);
        }

        private void ButtonDialogAddConnector_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

            if (tag == "1")
            {
                var a = parser.AddConnectorCreate((int)Width, (int)Height, addConnectorName.Text, addConnectorIn.IsChecked, addConnectorOut.IsChecked, addConnectorOutName.Text);
                if (a != "")
                {
					OpenInfoDialog("Add connector", a);
                    return;
                }
            }

            Animation(false, gridDialogAddConnector);
        }

        private void ButtonAddBox_Click(object sender, RoutedEventArgs e)
        {
            addBoxName.ItemsSource = parser.AddBoxNames();
			addBoxName.SelectedIndex = 0;
            addBoxGlobal.IsChecked = false;
            Animation(true, gridDialogAddBox);
        }

        private void ButtonDialogAddBox_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

            if (tag == "1")
            {
                var a = parser.AddBoxCreate((int)Width, (int)Height, addBoxGlobal.IsChecked == true, ((ExecEntry)addBoxName.SelectedItem).Name);
                if (a != "")
                {
					OpenInfoDialog("Add box", a);
                    return;
                }
            }

            Animation(false, gridDialogAddBox);
        }

		private void OpenEditDataDialog(string name, string desc, string metaName, string anchorDynType, string dataTypeID, string hostExecFunc, bool? isDelayed, List<ParamEntry> dataList)
		{
			editDataLblName.Content = name;
			editDataLblDesc.Text = desc;

			editDataList.IsVisible = false;
            editDataAnchorDynTypeC.IsVisible = false;
            editDataNameC.IsVisible = false;
            editDataDataTypeIDC.IsVisible = false;
            editDataHostExecFuncC.IsVisible = false;
            editDataIsDelayedC.IsVisible = false;

            if (anchorDynType != null)
            {
                editDataAnchorDynType.Text = anchorDynType;
                editDataAnchorDynTypeC.IsVisible = true;
            }

            if (metaName != null)
            {
                editDataName.Text = metaName;
                editDataNameC.IsVisible = true;
            }

            if (dataTypeID != null)
            {
                //editDataDataTypeID.Text = dataTypeID;
                var data = parser.GetDataTypes();
                editDataDataTypeID.ItemsSource = data;
                editDataDataTypeID.SelectedIndex = data.FindIndex(a => a == dataTypeID);
                editDataDataTypeIDC.IsVisible = true;
            }

            if (hostExecFunc != null)
            {
                editDataHostExecFunc.Text = hostExecFunc;
                editDataHostExecFuncC.IsVisible = true;
            }

            if (isDelayed != null)
            {
                editDataIsDelayed.IsChecked = isDelayed;
                editDataIsDelayedC.IsVisible = true;
            }

            if (dataList != null)
            {
                editDataList.ItemsSource = dataList;
                editDataList.IsVisible = true;
            }

            Animation(true, gridDialogEditData);
        }

        private void ButtonDialogEditData_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

            if (tag == "1")
            {
				parser.EditMetadataInfoCreate(editDataName.Text, editDataAnchorDynType.Text, (string)editDataDataTypeID.SelectedItem, editDataHostExecFunc.Text, editDataIsDelayed.IsChecked, editDataList.ItemsSource.OfType<ParamEntry>().ToList());
            }

            Animation(false, gridDialogEditData);
        }

        private void ButtonEDLArray_Click(object sender, RoutedEventArgs e)
        {
            editDataList.ItemsSource = parser.EditExecBoxParamsAddRow(editDataList.ItemsSource.OfType<ParamEntry>().ToList(), (string)((Button)sender).Tag, true);
        }

        private void ButtonEDLAdd_Click(object sender, RoutedEventArgs e)
        {
            editDataList.ItemsSource = parser.EditExecBoxParamsAddRow(editDataList.ItemsSource.OfType<ParamEntry>().ToList(), (string)((Button)sender).Tag, false);
        }

        private void ButtonEDLDelete_Click(object sender, RoutedEventArgs e)
        {
            editDataList.ItemsSource = parser.EditExecBoxParamsRemoveRow((string)((Button)sender).Tag);
        }

        private void ButtonEDLGetData_Click(object sender, RoutedEventArgs e)
        {
            parser.GetDataFromBox((outDta) =>
            {
                var rowItem = (sender as Button).DataContext as ParamEntry;
                rowItem.ParamValue = outDta;
                //ICollectionView view = CollectionViewSource.GetDefaultView(editDataList.ItemsSource);
                //view.Refresh();
            });
        }

        private void OpenAskDialog(string name, string val)
        {
            dialogAskName.Content = name;
            dialogAskDesc.Text = val;
            Animation(true, gridDialogAsk);
        }

        private void ButtonDialogAskClose_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

            if (tag == "0")
                parser.AskDialogActCancel();

            if (tag == "1")
                parser.AskDialogAct();

            Animation(false, gridDialogAsk);
        }

        private void OpenInfoDialog(string name, string val)
        {
            dialogInfoName.Content = name;
            dialogInfoLabel.Text = val;
            Animation(true, gridDialogInfo);
        }

        private void ButtonDialogInfoClose_Click(object sender, RoutedEventArgs e)
        {
            if (parser != null)
                parser.InfoDialogAct();
            Animation(false, gridDialogInfo);
        }

        private void ButtonAddComment_Click(object sender, RoutedEventArgs e)
        {
			parser.AddComment((int)Width, (int)Height);
        }

        private void OpenAddCommentDialog(string name, int selClr, List<ColorEntry> colors)
        {
            addCommentColor.ItemsSource = colors;
            addCommentColor.SelectedIndex = selClr;
            addCommentName.Text = name;
            Animation(true, gridDialogAddComment);
        }

        private void ButtonDialogAddComment_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

            if (tag == "1")
                parser.EditCommentDialogAct(addCommentName.Text, addCommentColor.SelectedIndex);

            Animation(false, gridDialogAddComment);
        }

		private void ShowNotice(string text)
		{
            noticeNote.Content = text;

            gridNoticeNote.Opacity = 1;

            Timer aTimer = new Timer(5000);
            aTimer.Enabled = true;
            aTimer.Elapsed += (object source, ElapsedEventArgs e) =>
            {
                aTimer.Stop();
                Dispatcher.UIThread.InvokeAsync(() =>
                {
                    gridNoticeNote.Opacity = 0;
                });
            };
        }

        private void ButtonAddBorder_Click(object sender, RoutedEventArgs e)
        {
            parser.AddBorder((int)Width, (int)Height);
        }

        private void OpenAddBorderDialog(int selStyle, int selClr, int selBgClr, List<ColorEntry> colors, bool moveChilds)
        {
            addBorderColor.ItemsSource = colors;
            addBorderColor.SelectedIndex = selClr;
			addBorderStyle.SelectedIndex = selStyle;
			addBorderMove.IsChecked = moveChilds;
            addBorderBgColor.ItemsSource = colors;
            addBorderBgColor.SelectedIndex = selBgClr == -1 ? 0 : selBgClr;

            if (selBgClr == -1)
                addBorderBgTr.IsChecked = true;
            else
                addBorderBgTr.IsChecked = false;

            Animation(true, gridDialogAddBorder);
        }

        private void ButtonDialogAddBorder_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

            if (tag == "1")
                parser.EditBorderDialogAct(addBorderColor.SelectedIndex, addBorderBgTr.IsChecked == true ? -1 : addBorderBgColor.SelectedIndex, addBorderStyle.SelectedIndex, addBorderMove.IsChecked);

            Animation(false, gridDialogAddBorder);
        }

        private void OpenEditResourceDialog(string name, int selType, List<string> types)
        {
			editResourceName.Text = name;
			editResourceType.ItemsSource = types;
			editResourceType.SelectedIndex = selType;
            Animation(true, gridDialogEditResource);
        }

        private void ButtonDialogEditResource_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

            if (tag == "1")
                parser.EditResourceDialogAct(editResourceName.Text, editResourceType.SelectedItem.ToString());

            Animation(false, gridDialogEditResource);
        }

        private void OpenEditConnectorDialog(string name)
        {
            OpenEditNameDialog("Edit connector", "Write a name of the connector, it must be unique:", name, "connector");
        }

        private void OpenGetDataFromBoxDialog(List<ExecEntry> boxes)
        {
            addGetDataFromBoxBox.ItemsSource = boxes;
            if (boxes.Any())
                addGetDataFromBoxBox.SelectedIndex = 0;
            Animation(true, gridDialogGetDataFromBox);
        }

        private void ButtonDialogGetDataFromBox_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

            if (tag == "1")
            {
                if (addGetDataFromBoxBox.SelectedIndex == -1)
                {
                    OpenInfoDialog("Get data from box", "No box selected.");
                    return;
                }
                parser.GetDataFromBoxCreate(((ExecEntry)addGetDataFromBoxBox.SelectedItem).Num, ((ExecEntry)addGetDataFromBoxData.SelectedItem).Num);
            }

            Animation(false, gridDialogGetDataFromBox);
        }

        private void addGetDataFromBoxBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (addGetDataFromBoxBox.SelectedItem != null)
            {
                addGetDataFromBoxData.ItemsSource = parser.GetDataFromBoxDatas(((ExecEntry)addGetDataFromBoxBox.SelectedItem).Num);
                addGetDataFromBoxData.SelectedIndex = 0;
                //addGetDataFromBoxData.Items.Refresh();
            }
        }

        private void ButtonDialogWrksp_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

            if (tag == "1")
            {
                if (wrkspDat.Text == "")
                {
                    OpenInfoDialog("Workspace", "Wrong DAT FAT path.");
                    return;
                }
                if (wrkspGraph.Text == "")
                {
                    OpenInfoDialog("Workspace", "Graph name must not be empty.");
                    return;
                }
                if (wrkspName.Text == "")
                {
                    OpenInfoDialog("Workspace", "Workspace name must not be empty.");
                    return;
                }

                selDialogType = OpenType.Create;
                Animation(true, gridDialogSelGame);
            }

            Animation(false, gridDialogWorkspace);
        }

        bool allowChangeGraphs = false;

        private void SetWorkspaceName(string workspace, List<DominoGraph> graphs, int selGraph, string forceReload)
        {
            allowChangeGraphs = false;
            mainWorkspaceName.Content = workspace;
            //mainGraphName.Content = graph;
            mainGraphs.ItemsSource = null;
            mainGraphs.ItemsSource = graphs;
            mainGraphs.SelectedIndex = selGraph;
            //mainGraphs.Items.Refresh();
            allowChangeGraphs = true;

            if (forceReload != "")
            {
                string f = parser.CurrentFile;
                CloseWorkspace(gridLoading, () =>
                {
                    Timer aTimer = new Timer(500);
                    aTimer.Enabled = true;
                    aTimer.Elapsed += (object source, ElapsedEventArgs e) =>
                    {
                        aTimer.Stop();
                        Dispatcher.UIThread.InvokeAsync(() =>
                        {
                            OpenFileAsync(OpenType.SwapGraph, forceReload, f);
                        });
                    };
                });
            }
        }

        private void mainGraphs_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (allowChangeGraphs)
            {
                string f = parser.CurrentFile;
                CloseWorkspace(gridLoading, () =>
                {
                    Timer aTimer = new Timer(500);
                    aTimer.Enabled = true;
                    aTimer.Elapsed += (object source, ElapsedEventArgs e) =>
                    {
                        aTimer.Stop();
                        Dispatcher.UIThread.InvokeAsync(() =>
                        {
                            string graph = ((DominoGraph)mainGraphs.SelectedItem).UniqueID;
                            OpenFileAsync(OpenType.SwapGraph, graph, f);
                        });
                    };
                });
            }
        }

        private void ButtonAddGraph_Click(object sender, RoutedEventArgs e)
        {
            Animation(true, gridDialogAddGraph);
        }

        private void ButtonDialogAddGraph_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

            if (tag == "1")
            {
                var a = parser.AddGraph(addGraphName.Text);
                if (a != "")
                {
                    OpenInfoDialog("Add graph", a);
                    return;
                }
            }

            Animation(false, gridDialogAddGraph);
        }

        private void ButtonMainGraphDel_Click(object sender, RoutedEventArgs e)
        {
            parser.DeleteGraph(((DominoGraph)mainGraphs.SelectedItem).UniqueID);
        }

        private void ButtonWorkspaceRename_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

            if (tag == "workspace")
                OpenEditNameDialog("Edit workspace name", "Set new workspace name:", mainWorkspaceName.Content.ToString(), tag);

            if (tag == "graph")
                OpenEditNameDialog("Edit graph name", "Set new graph name:", ((DominoGraph)mainGraphs.SelectedItem).Name, tag);

            if (tag == "path")
                OpenEditNameDialog("Edit path", "Set path which will be used inside DAT FAT:", parser.CurrentDatPath, tag);
        }

        string dialogEditNameTag = "";

        private void OpenEditNameDialog(string title, string desc, string name, string tag)
        {
            dialogEditNameTitle.Content = title;
            dialogEditNameDesc.Text = desc;
            dialogEditName.Text = name;
            Animation(true, gridDialogEditName);

            dialogEditNameTag = tag;
        }

        private void ButtonDialogEditName_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

            if (tag == "1")
            {
                if (dialogEditNameTag == "connector")
                {
                    var a = parser.EditConnectorDialogAct(dialogEditName.Text);
                    if (a != "")
                    {
                        OpenInfoDialog("Edit connector", a);
                        return;
                    }
                }
                else
                {
                    var a = parser.RenameWorkspace(dialogEditNameTag, dialogEditName.Text);
                    if (a != "")
                    {
                        OpenInfoDialog("Edit workspace", a);
                        return;
                    }
                }
            }

            Animation(false, gridDialogEditName);
        }

        private void ButtonDialogSettings_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

            if (tag == "1")
            {
                var s = parser.GetSettings;
                s["useBezier"] = settingsBezier.IsChecked == true;
                s["linePointsBezier"] = settingsLinePointsBezier.IsChecked == true;
                s["snapToGrid"] = settingsSnap.IsChecked == true;
                s["bytecode"] = settingsBytecode.IsChecked == true;
                s["bytecodeDebug"] = settingsBytecodeDebug.IsChecked == true;
                parser.UseSettings(true);
            }

            Animation(false, gridDialogSettings);
        }

        private void ButtonChrome_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

            if (tag == "0")
            {
                Close();
            }
            if (tag == "1")
            {
                if (WindowState == WindowState.Maximized)
                    WindowState = WindowState.Normal;
                else
                    WindowState = WindowState.Maximized;
            }
            if (tag == "2")
            {
                WindowState = WindowState.Minimized;
            }
            if (tag == "3")
            {
                var s = parser.GetSettings;
                settingsBezier.IsChecked = (bool)s["useBezier"];
                settingsLinePointsBezier.IsChecked = (bool)s["linePointsBezier"];
                settingsSnap.IsChecked = (bool)s["snapToGrid"];
                settingsBytecode.IsChecked = (bool)s["bytecode"];
                settingsBytecodeDebug.IsChecked = (bool)s["bytecodeDebug"];
                Animation(true, gridDialogSettings);
            }
        }

        private void MoveWnd(object sender, PointerPressedEventArgs e)
        {
            var props = e.GetCurrentPoint(this).Properties;
            if (props.IsLeftButtonPressed && e.ClickCount == 1)
            {
                Cursor = new Cursor(StandardCursorType.SizeAll);
                BeginMoveDrag(e);
                Cursor = new Cursor(StandardCursorType.Arrow);
            }

            if (props.IsLeftButtonPressed && e.ClickCount == 2)
                if (WindowState == WindowState.Normal)
                    WindowState = WindowState.Maximized;
                else if (WindowState == WindowState.Maximized)
                    WindowState = WindowState.Normal;
        }
    }
}
