using System.Windows.Controls;

namespace DominoVisualizer.CustomControls
{
    public class DominoUILinePoint : Grid
    {
        public DominoUILinePoint()
        {
            ID = Helpers.RandomString();
        }

        public System.Windows.Point Point { set; get; }

        public string ID { set; get; }
    }
}
