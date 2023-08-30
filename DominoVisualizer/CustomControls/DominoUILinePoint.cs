using Avalonia;
using Avalonia.Controls;

namespace DominoVisualizer.CustomControls
{
    public class DominoUILinePoint : Grid
    {
        public DominoUILinePoint()
        {
            ID = Helpers.RandomString();
        }

        public Point Point { set; get; }

        public string ID { set; get; }
    }
}
