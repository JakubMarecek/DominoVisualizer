using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Timers;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Input;
using System.Windows.Media;
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
		const string appVer = "v1.10";
		public const string appName = "Domino Visualizer " + appVer + " by ArmanIII";
        //int actInx = 0;
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

		public MainWindow()
		{
			InitializeComponent();
			SetTitle(true);
			Blur(true);
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
                wndTitleW.Content = " - " + (edit ? "*" : "") + file;
            }
        }

		private void Window_Loaded(object sender, RoutedEventArgs e)
		{
            /*gridLoading.Visibility = Visibility.Hidden;
			gridException.Visibility = Visibility.Hidden;
			gridNotice.Visibility = Visibility.Hidden;
			gridSearch.Visibility = Visibility.Hidden;
			gridDialog.Visibility = Visibility.Hidden;
			gridDialogRun.Visibility = Visibility.Hidden;*/
            verT.Content = appVer;

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
                		selDialogType = OpenType.ImportParam;
                        selDialogFile = a;

                        Animation(true, gridDialogSelGame);
						break;
					}
					if (File.Exists(a) && (a.EndsWith(".domino.xml") || a.EndsWith(".domino")))
					{
                		OpenFile(OpenType.OpenParam, null, a);
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

		private void OpenFile(OpenType type, string game, string directFile = "")
		{
			void Loading()
            {
                Timer bTimer = new Timer(500);
                bTimer.Enabled = true;
                bTimer.Elapsed += (object source, ElapsedEventArgs e) =>
                {
                    bTimer.Stop();
                    Dispatcher.Invoke(() =>
                    {
                        bool eS = false;

                        try
				        {
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
                                Dispatcher.Invoke(() =>
                                {
                                    Blur(false);
                                    Animation(false, gridLoading);
                                });
                            };
                        }
                    });
                };
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
                    OpenFile(OpenType.ImportParam, game, ofdI.FileName);
                }
                /*else
                {
                    Animation(true, gridMainMenu);
                    Animation(false, gridLoading);
                }*/

                return;
            }

            if (type == OpenType.Open)
            {
                OpenFileDialog ofdO = new OpenFileDialog();
                ofdO.Title = "Select Domino Workspace";
                ofdO.Filter = "Domino Workspace|*.domino.xml;*.domino";

                if (ofdO.ShowDialog() == true)
                {
                    OpenFile(OpenType.OpenParam, game, ofdO.FileName);
                }
                /*else
                {
                    Animation(true, gridMainMenu);
                    Animation(false, gridLoading);
                }*/

                return;
            }

            if (type != OpenType.SwapGraph)
            {
			    Animation(false, gridMainMenu);
			    Animation(true, gridLoading);
            }

			if (type == OpenType.Binary)
			{
    			SetTitle(false, arguments["fn"]);

				externalLaunch = true;

				Timer aTimer = new Timer(500);
				aTimer.Enabled = true;
				aTimer.Elapsed += (object source, ElapsedEventArgs e) =>
				{
					aTimer.Stop();

					parser = new(this, arguments["bytes"], arguments["fileFolder"], canvas, arguments["fcver"]);

					Dispatcher.Invoke(() =>
					{
						Loading();
					});
				};

				return;
			}

            if (type == OpenType.ImportParam)
            {
                parser = new(this, directFile, canvas, game);

    			SetTitle(false, directFile);

                Loading();
            }

            if (type == OpenType.OpenParam)
            {
                parser = new(this, directFile, canvas);

    			SetTitle(false, directFile);

                Loading();
            }

			if (type == OpenType.SwapGraph)
			{
				parser = new(this, directFile, canvas);
    			SetTitle(false, directFile);
                Loading();
			}

			if (type == OpenType.Create)
			{
    			SetTitle(false, "Unsaved workspace");

				parser = new(this, canvas, game);
                //SetWorkspaceName(wrkspName.Text, wrkspGraph.Text);

                Loading();
			}

            selDialogType = OpenType.None;
            selDialogFile = "";
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

			OpenFile(selDialogType, tag, selDialogFile);
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
                Animation(true, gridDialogWorkspace);
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
                GC.Collect();

    			SetTitle(true);

                Blur(true);
                Animation(true, screen);
                Animation(false, gridMainClose);

                afterAccept();
            });
        }
        
        public static IEnumerable<T> FindVisualChilds<T>(DependencyObject depObj) where T : DependencyObject
        {
            if (depObj == null) yield return (T)Enumerable.Empty<T>();
            for (int i = 0; i < VisualTreeHelper.GetChildrenCount(depObj); i++)
            {
                DependencyObject ithChild = VisualTreeHelper.GetChild(depObj, i);
                if (ithChild == null) continue;
                if (ithChild is T t) yield return t;
                foreach (T childOfChild in FindVisualChilds<T>(ithChild)) yield return childOfChild;
            }
        }
        
		private void Animation(bool fadeInOut, Grid grid)
		{
            foreach (var ch in FindVisualChilds<Button>(grid))
            {
                if (fadeInOut)
                    (ch as Button).IsEnabled = true;
                else
                    (ch as Button).IsEnabled = false;
            }

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
            if (a == "r")
            {
            }
            else if (a != "")
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

        private void ButtonLVGetData_Click(object sender, RoutedEventArgs e)
        {
            parser.GetDataFromBox((outDta) => 
            {
                var rowItem = (sender as Button).DataContext as ParamEntry;
                rowItem.ParamValue = outDta;
                ICollectionView view = CollectionViewSource.GetDefaultView(paramsList.ItemsSource);
                view.Refresh();
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
                //editDataDataTypeID.Text = dataTypeID;
                var data = parser.GetDataTypes();
                editDataDataTypeID.ItemsSource = data;
                editDataDataTypeID.SelectedIndex = data.FindIndex(a => a == dataTypeID);
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

        private void ButtonEDLGetData_Click(object sender, RoutedEventArgs e)
        {
            parser.GetDataFromBox((outDta) =>
            {
                var rowItem = (sender as Button).DataContext as ParamEntry;
                rowItem.ParamValue = outDta;
                ICollectionView view = CollectionViewSource.GetDefaultView(editDataList.ItemsSource);
                view.Refresh();
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
                addGetDataFromBoxData.Items.Refresh();
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
            mainGraphs.Items.Refresh();
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
                        Dispatcher.Invoke(() =>
                        {
                            OpenFile(OpenType.SwapGraph, forceReload, f);
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
                        Dispatcher.Invoke(() =>
                        {
                            string graph = ((DominoGraph)mainGraphs.SelectedItem).UniqueID;
                            OpenFile(OpenType.SwapGraph, graph, f);
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
        }

        [DllImport("user32.dll")]
        static extern IntPtr SendMessage(IntPtr hWnd, int msg, IntPtr wp, IntPtr lp);

        [DllImport("user32.dll")]
        static extern IntPtr GetSystemMenu(IntPtr hWnd, bool bRevert);

        [DllImport("user32.dll")]
        static extern int TrackPopupMenu(IntPtr hMenu, uint uFlags, int x, int y, int nReserved, IntPtr hWnd, IntPtr prcRect);

        [DllImport("user32.dll")]
        static extern bool RemoveMenu(IntPtr hMenu, uint uPosition, uint uFlags);
        
        private void ShowSystemicMenu(object sender, MouseButtonEventArgs e)
        {
            Point mousePos = PointToScreen(Mouse.GetPosition(this));
            IntPtr hWnd = new System.Windows.Interop.WindowInteropHelper(this).Handle;
            //RECT pos;
            //GetWindowRect(hWnd, out pos);
            IntPtr hMenu = GetSystemMenu(hWnd, false);
            //RemoveMenu(hMenu, 0xF030, 0x00000000);
            //RemoveMenu(hMenu, 0xF120, 0x00000000);
            int cmd = TrackPopupMenu(hMenu, 0x100, (int)mousePos.X, (int)mousePos.Y, 0, hWnd, IntPtr.Zero);
            if (cmd > 0) SendMessage(hWnd, 0x112, (IntPtr)cmd, IntPtr.Zero);
        }

        private void MoveWnd(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
                this.DragMove();
        }

        private void ChromeClick(object sender, MouseButtonEventArgs e)
        {
            if (e.ClickCount == 2 && e.ChangedButton == MouseButton.Left)
                if (WindowState == WindowState.Maximized)
                    WindowState = WindowState.Normal;
                else
                    WindowState = WindowState.Maximized;
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
