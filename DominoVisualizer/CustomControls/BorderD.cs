using System.Windows.Controls;
using System.Windows.Media;

namespace DominoVisualizer.CustomControls
{
    public class BorderD : Border
    {
        public bool EnableMove { set; get; }

        public bool EnableMovingChilds { set; get; }

        public SolidColorBrush BackgroundColor { set; get; }
    }
}
