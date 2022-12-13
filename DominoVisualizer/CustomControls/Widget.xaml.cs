using System.Windows.Controls;

namespace WpfPanAndZoom.CustomControls
{
    /// <summary>
    /// Interaktionslogik für Widget.xaml
    /// </summary>
    public partial class Widget : UserControl
    {
        public string ID { set; get; }

        public bool DisableMove { set; get; }

        public Widget()
        {
            InitializeComponent();
        }
    }
}
