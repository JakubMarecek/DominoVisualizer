using Avalonia;

namespace DominoVisualizer
{
    public class ParamEntry
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

        public bool AddArrayVs { set; get; }

        public bool AddVs { set; get; }

        public bool RemoveVs { set; get; }

        public bool ArrayBulletVs { set; get; }

        public bool GetDataVs { set; get; }
    }
}
