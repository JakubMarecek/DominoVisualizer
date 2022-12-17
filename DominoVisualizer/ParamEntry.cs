using System.Windows;

namespace DominoVisualizer
{
    internal class ParamEntry
    {
        public string ParamName { set; get; }

        public string ParamNameRaw { set; get; }

        public string UniqueID { set; get; }

        public string UniqueIDParent { set; get; }

        public string ParamValue { set; get; }

        public bool ParamUsed { set; get; }

        public bool ParamIsBase { set; get; }

        public bool ParamHasArray { set; get; }

        public Thickness NameMargin { set; get; }

        public Visibility AddArrayVs { set; get; }

        public Visibility AddVs { set; get; }

        public Visibility RemoveVs { set; get; }

        public Visibility ArrayBulletVs { set; get; }

        public Visibility GetDataVs { set; get; }
    }
}
