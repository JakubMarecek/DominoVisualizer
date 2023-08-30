using Avalonia.Controls;
using Avalonia.Media;

namespace DominoVisualizer.CustomControls
{
    public class DominoUIBorder : Border
    {
        public string ID { set; get; }
        
        public bool EnableMove { set; get; }

        public bool EnableMovingChilds { set; get; }

        public SolidColorBrush BackgroundColor { set; get; }
    }
}
