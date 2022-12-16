using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Timers;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;

namespace DominoVisualizer
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
	{
		DominoParser parser;
		//string fileSel = "";
		bool loaded = false;
		bool externalLaunch = false;
		public const string appName = "Domino Visualizer v1.00 by ArmanIII";
        //int actInx = 0;
		Arguments arguments;
		OpenType selDialogType;

		private enum OpenType
		{
			Import,
			Open,
			Binary,
			Create
		}

		public MainWindow()
		{
			InitializeComponent();
			Title = appName;
			Blur(true);
		}

		private void Window_Loaded(object sender, RoutedEventArgs e)
		{
			/*gridLoading.Visibility = Visibility.Hidden;
			gridException.Visibility = Visibility.Hidden;
			gridNotice.Visibility = Visibility.Hidden;
			gridSearch.Visibility = Visibility.Hidden;
			gridDialog.Visibility = Visibility.Hidden;
			gridDialogRun.Visibility = Visibility.Hidden;*/

			string[] args = Environment.GetCommandLineArgs();
			arguments = new(args);

			if (arguments["bytes"] != null && arguments["fcver"] != null && arguments["fileFolder"] != null && arguments["fn"] != null)
				OpenFile(OpenType.Binary, null);
			else if (args.Length > 0)
			{
				foreach (string a in args)
				{
					if (File.Exists(a) && a.EndsWith(".lua"))
					{
                		selDialogType = OpenType.Import;
			    		Animation(true, gridDialogSelGame);
						break;
					}
					if (File.Exists(a) && a.EndsWith(".domino.xml"))
					{
                		OpenFile(OpenType.Open, null);
						break;
					}
				}
			}

			/*
			if (arguments["bytes"] != null && arguments["fcver"] != null && arguments["fileFolder"] != null && arguments["fn"] != null)
			{
				Animation(false, gridMainMenu);
				Animation(true, gridLoading);

				Title = appName + " - " + arguments["fn"];

				externalLaunch = true;

				Timer aTimer = new Timer(500);
				aTimer.Enabled = true;
				aTimer.Elapsed += (object source, ElapsedEventArgs e) =>
				{
					aTimer.Stop();

					parser = new(arguments["bytes"], arguments["fileFolder"], canvas, arguments["fcver"]);

					Dispatcher.Invoke(() =>
					{
						Call();

						Timer bTimer = new Timer(1000);
						bTimer.Enabled = true;
						bTimer.Elapsed += (object source, ElapsedEventArgs e) =>
						{
							bTimer.Stop();
							Dispatcher.Invoke(() =>
							{
								Blur(false);
								Animation(false, gridLoading);
							});
						};
					});
				};
			}
			else if (args.Length > 0)
			{
				foreach (string a in args)
				{
					if (File.Exists(a) && a.EndsWith(".lua"))
					{
						fileSel = a;
						// todo
					}
				}
			}*/
		}

		private void OpenFile(OpenType type, string game)
		{
			void Call()
			{
				try
				{
					string r = "";
	
        	        if (type == OpenType.Open) r = parser.Load();
        	        if (type == OpenType.Import || type == OpenType.Binary) r = parser.Parse();

					if (r != "")
					{
						OpenInfoDialog("Notice", r);
					}

					parser.openEditExecBoxDialog = OpenEditExecBoxDialog;
					parser.openAddExecBoxDialog = OpenAddExecBoxDialog;
					parser.openAddBoxConnectorDialog = OpenAddBoxConnectorDialog;
					parser.openEditDataDialog = OpenEditDataDialog;
					parser.openEditConnVarDialog = OpenEditConnVarDialog;
					parser.openAskDialog = OpenAskDialog;
					parser.openAddCommentDialog = OpenAddCommentDialog;
					parser.openAddBorderDialog = OpenAddBorderDialog;
					parser.openEditResourceDialog = OpenEditResourceDialog;
					parser.openEditConnectorDialog = OpenEditConnectorDialog;

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
			}

			void Loading()
			{
                Call();

                Timer aTimer = new Timer(1000);
                aTimer.Enabled = true;
                aTimer.Elapsed += (object source, ElapsedEventArgs e) =>
                {
                    aTimer.Stop();
                    Dispatcher.Invoke(() =>
                    {
                        Blur(false);
                        Animation(false, gridLoading);
                    });
                };
            }

			Animation(false, gridMainMenu);
			Animation(true, gridLoading);

			if (type == OpenType.Binary)
			{
				Title = appName + " - " + arguments["fn"];

				externalLaunch = true;

				Timer aTimer = new Timer(500);
				aTimer.Enabled = true;
				aTimer.Elapsed += (object source, ElapsedEventArgs e) =>
				{
					aTimer.Stop();

					parser = new(arguments["bytes"], arguments["fileFolder"], canvas, arguments["fcver"]);

					Dispatcher.Invoke(() =>
					{
						Loading();
					});
				};

				return;
			}

			if (type == OpenType.Import)
			{
                OpenFileDialog ofdI = new OpenFileDialog();
                //ofd.InitialDirectory = Path.GetDirectoryName(filenamesel);
                //ofd.FileName = filenamesel;
				ofdI.Title = "Select compiled Domino script";
				ofdI.Filter = "Domino script|*.lua";

				if (ofdI.ShowDialog() == true)
				{
					parser = new(ofdI.FileName, canvas, game);

                    Title = appName + " - " + ofdI.FileName;

                    Loading();
                }
				else
				{
					Animation(true, gridMainMenu);
					Animation(false, gridLoading);
				}
			}

			if (type == OpenType.Open)
			{
                OpenFileDialog ofdO = new OpenFileDialog();
				ofdO.Title = "Select Domino Workspace";
				ofdO.Filter = "Domino Workspace|*.domino.xml";

				if (ofdO.ShowDialog() == true)
				{
					parser = new(ofdO.FileName, canvas);

                    Title = appName + " - " + ofdO.FileName;

                    Loading();
                }
				else
				{
					Animation(true, gridMainMenu);
					Animation(false, gridLoading);
				}
			}

			if (type == OpenType.Create)
			{
                Title = appName + " - Unsaved workspace";

				parser = new(canvas, game);
				parser.Create();

                Loading();
			}
		}

/*
		private void Button_Click(object sender, RoutedEventArgs e)
		{
			string tag = (string)((Button)sender).Tag;

			Animation(false, gridMainMenu);
			if (actInx == 0 || actInx == 3) Animation(false, gridDialogSelGame);
			Animation(true, gridLoading);

			if (fileSel != "")
			{
				if (actInx == 1) parser = new(fileSel, canvas);
				if (actInx == 0) parser = new(fileSel, canvas, tag);

				Call();

				Title = appName + " - " + fileSel;

				Blur(false);
				Animation(false, gridLoading);
			}
			else
			{
				void a()
				{
                    Call();

                    Timer aTimer = new Timer(1000);
                    aTimer.Enabled = true;
                    aTimer.Elapsed += (object source, ElapsedEventArgs e) =>
                    {
                        aTimer.Stop();
                        Dispatcher.Invoke(() =>
                        {
                            Blur(false);
                            Animation(false, gridLoading);
                        });
                    };
                }

                if (actInx == 3)
                {
                    Title = appName + " - Unsaved workspace";
					parser = new(canvas, tag);
					parser.Create();
                    a();
					return;
                }

                OpenFileDialog ofd = new OpenFileDialog();
                //ofd.InitialDirectory = Path.GetDirectoryName(filenamesel);
                //ofd.FileName = filenamesel;

                if (actInx == 1)
                {
				    ofd.Title = "Select Domino Workspace";
				    ofd.Filter = "Domino Workspace|*.domino.xml";
                }
                if (actInx == 0)
                {
				    ofd.Title = "Select compiled Domino script";
				    ofd.Filter = "Domino script|*.lua";
                }

				if (ofd.ShowDialog() == true)
				{
					if (actInx == 1) parser = new(ofd.FileName, canvas);
					if (actInx == 0) parser = new(ofd.FileName, canvas, tag);

                    Title = appName + " - " + ofd.FileName;

                    a();
                }
				else
				{
					Animation(true, gridMainMenu);
					Animation(false, gridLoading);
				}
			}

			Focus();
		}*/

		private void ButtonSelGame_Click(object sender, RoutedEventArgs e)
		{
			string tag = (string)((Button)sender).Tag;

			Animation(false, gridDialogSelGame);

			if (tag == "cancel")
				return;

			OpenFile(selDialogType, tag);
        }

		private void ButtonSelDialog_Click(object sender, RoutedEventArgs e)
		{
			int tag = int.Parse((string)((Button)sender).Tag);

            if (tag == 0) //import
            {
                selDialogType = OpenType.Import;
			    Animation(true, gridDialogSelGame);
            }
            if (tag == 1) //open
            {
                OpenFile(OpenType.Open, null);
            }
            if (tag == 2) //create
            {
                selDialogType = OpenType.Create;
                Animation(true, gridDialogSelGame);
            }
        }

        /*
                void Call()
                {
                    try
                    {
                        string r = "";

                        if (actInx == 1) r = parser.Load();
                        if (actInx == 0) r = parser.Parse();

                        if (r != "")
                        {
                            descTB.Text = r;
                            Animation(true, gridNotice);
                        }

                        parser.openRunDialog = OpenRunDialog;
                        parser.openEditExecBoxDialog = OpenEditExecBoxDialog;
                        parser.openAddExecBoxDialog = OpenAddExecBoxDialog;
                        parser.openAddBoxConnectorDialog = OpenAddBoxConnectorDialog;
                        parser.openEditDataDialog = OpenEditDataDialog;
                        parser.openEditConnVarDialog = OpenEditConnVarDialog;
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
                }
        */

        bool canClose = false;
        bool closeWait = false;
        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
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

        private void W_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.Key == Key.F && Keyboard.IsKeyDown(Key.LeftCtrl))
			{
				if (loaded)
					Animation(true, gridSearch);
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
			parser.CheckEdited(() =>
            {
                if (externalLaunch)
                {
                    Close();
                    return;
                }

                canvas.Clean();
                parser = null;
                GC.Collect();

                Title = appName;

                Blur(true);
                Animation(true, gridMainMenu);
                Animation(false, gridMainClose);
            });
		}

		private void Animation(bool fadeInOut, Grid grid)
		{
			if (fadeInOut)
			{
				grid.Opacity = 0;
				grid.Visibility = Visibility.Visible;
			}

			DoubleAnimation doubleAnimation = new DoubleAnimation
			{
				From = fadeInOut ? 0 : 1,
				To = fadeInOut ? 1 : 0,
				Duration = new Duration(TimeSpan.FromMilliseconds(200))
			};

			Storyboard.SetTargetName(doubleAnimation, grid.Name);
			Storyboard.SetTargetProperty(doubleAnimation, new PropertyPath(Grid.OpacityProperty));

			Storyboard storyboard = new();
			storyboard.Children.Add(doubleAnimation);
			storyboard.Completed += (object? sender, EventArgs e) =>
			{
				if (!fadeInOut)
				{
					grid.Visibility = Visibility.Hidden;
					grid.Opacity = 1;
				}
			};
			storyboard.Begin(grid);
		}

		private void Blur(bool enable)
		{
			if (enable)
			{
				canvas.Effect = new BlurEffect
				{
					Radius = 10,
					KernelType = KernelType.Gaussian,
					RenderingBias = RenderingBias.Quality
				};
			}
			else
			{
				canvas.Effect = null;
			}
		}

		private void ButtonExport_Click(object sender, RoutedEventArgs e)
		{
			var a = parser.Export();
            if (a != "")
            {
				OpenInfoDialog("Export", a);
            }
			else
			{
				ShowNotice("Domino has been successfully exported to LUA.");
			}
        }

		private void ButtonSave_Click(object sender, RoutedEventArgs e)
		{
			var a = parser.Save(this);
			if (a != "")
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
				var a = parser.EditExecBoxSave(paramsList.Items.OfType<ParamEntry>().ToList(), editExecBoxType.SelectedIndex, editExecBoxExec.SelectedIndex, editExecBoxDynInt.Text);
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
            paramsList.ItemsSource = parser.EditExecBoxParamsAddRow(paramsList.Items.OfType<ParamEntry>().ToList(), (string)((Button)sender).Tag, true);
		}

		private void ButtonLVAdd_Click(object sender, RoutedEventArgs e)
		{
            paramsList.ItemsSource = parser.EditExecBoxParamsAddRow(paramsList.Items.OfType<ParamEntry>().ToList(), (string)((Button)sender).Tag, false);
		}

		private void ButtonLVDelete_Click(object sender, RoutedEventArgs e)
		{
            paramsList.ItemsSource = parser.EditExecBoxParamsRemoveRow((string)((Button)sender).Tag);
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
                parser.AddExecBoxCreate(((ExecEntry)addExecBoxBox.SelectedItem).Name);
            }

            Animation(false, gridDialogAddExecBox);
		}

        private void OpenAddBoxConnectorDialog(List<ExecEntry> boxFuncs, List<ExecEntry> connectors)
        {
            addBoxConnectorC.ItemsSource = connectors;
            addBoxConnectorB.ItemsSource = boxFuncs;
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
                parser.AddBoxConnectorCreate(((ExecEntry)addBoxConnectorB.SelectedItem).Num, ((ExecEntry)addBoxConnectorC.SelectedItem).Name, addBoxConnectorArray.IsChecked, addBoxConnectorArrayKey.Text);
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

			editDataList.Visibility = Visibility.Collapsed;
            editDataAnchorDynTypeC.Visibility = Visibility.Collapsed;
            editDataNameC.Visibility = Visibility.Collapsed;
            editDataDataTypeIDC.Visibility = Visibility.Collapsed;
            editDataHostExecFuncC.Visibility = Visibility.Collapsed;
            editDataIsDelayedC.Visibility = Visibility.Collapsed;

            if (anchorDynType != null)
            {
                editDataAnchorDynType.Text = anchorDynType;
                editDataAnchorDynTypeC.Visibility = Visibility.Visible;
            }

            if (metaName != null)
            {
                editDataName.Text = metaName;
                editDataNameC.Visibility = Visibility.Visible;
            }

            if (dataTypeID != null)
            {
                editDataDataTypeID.Text = dataTypeID;
                editDataDataTypeIDC.Visibility = Visibility.Visible;
            }

            if (hostExecFunc != null)
            {
                editDataHostExecFunc.Text = hostExecFunc;
                editDataHostExecFuncC.Visibility = Visibility.Visible;
            }

            if (isDelayed != null)
            {
                editDataIsDelayed.IsChecked = isDelayed;
                editDataIsDelayedC.Visibility = Visibility.Visible;
            }

            if (dataList != null)
            {
                editDataList.ItemsSource = dataList;
                editDataList.Visibility = Visibility.Visible;
            }

            Animation(true, gridDialogEditData);
        }

        private void ButtonDialogEditData_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

            if (tag == "1")
            {
				parser.EditMetadataInfoCreate(editDataName.Text, editDataAnchorDynType.Text, editDataDataTypeID.Text, editDataHostExecFunc.Text, editDataIsDelayed.IsChecked, editDataList.Items.OfType<ParamEntry>().ToList());
            }

            Animation(false, gridDialogEditData);
        }

        private void ButtonEDLArray_Click(object sender, RoutedEventArgs e)
        {
            editDataList.ItemsSource = parser.EditExecBoxParamsAddRow(editDataList.Items.OfType<ParamEntry>().ToList(), (string)((Button)sender).Tag, true);
        }

        private void ButtonEDLAdd_Click(object sender, RoutedEventArgs e)
        {
            editDataList.ItemsSource = parser.EditExecBoxParamsAddRow(editDataList.Items.OfType<ParamEntry>().ToList(), (string)((Button)sender).Tag, false);
        }

        private void ButtonEDLDelete_Click(object sender, RoutedEventArgs e)
        {
            editDataList.ItemsSource = parser.EditExecBoxParamsRemoveRow((string)((Button)sender).Tag);
        }

        private void OpenEditConnVarDialog(string name, string val)
        {
            editConnVarName.Text = name;
            editConnVarSet.Text = val;
            Animation(true, gridDialogEditConnVar);
        }

        private void ButtonDialogEditConnVar_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

			if (tag == "1")
				parser.EditConnVarCreate(editConnVarName.Text, editConnVarSet.Text);

            Animation(false, gridDialogEditConnVar);
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

            Storyboard fade = FindResource("gridNoticeNoteFadeIn") as Storyboard;
            fade.Begin();

            Timer aTimer = new Timer(5000);
            aTimer.Enabled = true;
            aTimer.Elapsed += (object source, ElapsedEventArgs e) =>
            {
                aTimer.Stop();
                Dispatcher.Invoke(() =>
                {
                    fade = FindResource("gridNoticeNoteFadeOut") as Storyboard;
                    fade.Begin();
                });
            };
        }

        private void ButtonAddBorder_Click(object sender, RoutedEventArgs e)
        {
            parser.AddBorder((int)Width, (int)Height);
        }

        private void OpenAddBorderDialog(int selStyle, int selClr, List<ColorEntry> colors, bool moveChilds)
        {
            addBorderColor.ItemsSource = colors;
            addBorderColor.SelectedIndex = selClr;
			addBorderStyle.SelectedIndex = selStyle;
			addBorderMove.IsChecked = moveChilds;
            Animation(true, gridDialogAddBorder);
        }

        private void ButtonDialogAddBorder_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

            if (tag == "1")
                parser.EditBorderDialogAct(addBorderColor.SelectedIndex, addBorderStyle.SelectedIndex, addBorderMove.IsChecked);

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
			editConnectorName.Text = name;
            Animation(true, gridDialogEditConnector);
        }

        private void ButtonDialogEditConnector_Click(object sender, RoutedEventArgs e)
        {
            string tag = (string)((Button)sender).Tag;

            if (tag == "1")
			{
                var a = parser.EditConnectorDialogAct(editConnectorName.Text);
                if (a != "")
                {
                    OpenInfoDialog("Edit connector", a);
                    return;
                }
            }

            Animation(false, gridDialogEditConnector);
        }

        /*private void ExportPicture(object sender, RoutedEventArgs e)
		{
			RenderTargetBitmap rtb = new RenderTargetBitmap((int)canvas.RenderSize.Width,
				(int)canvas.RenderSize.Height, 96d, 96d, System.Windows.Media.PixelFormats.Default);
			rtb.Render(canvas);

			var crop = new CroppedBitmap(rtb, new Int32Rect(50, 50, 250, 250));

			BitmapEncoder pngEncoder = new PngBitmapEncoder();
			pngEncoder.Frames.Add(BitmapFrame.Create(crop));

			using (var fs = System.IO.File.OpenWrite("logo.png"))
			{
				pngEncoder.Save(fs);
			}
		}*/
    }
}
