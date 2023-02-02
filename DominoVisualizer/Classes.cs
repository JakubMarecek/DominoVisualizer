using DominoVisualizer.CustomControls;
using Petzold.Media2D;
using System.Collections.Generic;
using System.Windows.Controls;
using WpfPanAndZoom.CustomControls;

namespace DominoVisualizer
{
    class LinesVal
    {
        public LinesVal(string point1, string point2, ArrowLine ui)
        {
            Point1 = point1;
            Point2 = point2;
            UI = ui;
        }

        public string Point1 { set; get; }

        public string Point2 { set; get; }

        public ArrowLine UI { set; get; }

        public List<LinesPoint> Points { set; get; }
    }

    public class LinesPoint : Grid
    {
        public System.Windows.Point Point { set; get; }

        public int Index { set; get; }
    }

    public class DominoBox
    {
        public DominoBox()
        {
            Connections = new();
            //SetVariables = new();
        }

        public string ID { set; get; }

        public string Name { set; get; }

        public double DrawX { set; get; }

        public double DrawY { set; get; }

        public Widget Widget { set; get; }

        public int Height { set; get; }

        //public Dictionary<string, string> SetVariables { set; get; }

        public bool INT_open { set; get; }

        public List<DominoConnector> Connections { set; get; }
    }

    public enum ExecType
    {
        Exec = 0,
        ExecDynInt = 1
    }

    public class ExecBox
    {
        public ExecBox()
        {
            Params = new();

            ExecStr = "";
        }

        public DominoBox Box { set; get; }

        public ExecType Type { set; get; }

        public int Exec { set; get; }

        public string ExecStr { set; get; }

        public int DynIntExec { set; get; }

        public List<DominoDict> Params { set; get; }

        public StackPanel MainUI { set; get; }

        public Border ContainerUI { set; get; }

        public int INT_clr { set; get; }
    }

    public class DominoConnector
    {
        public DominoConnector()
        {
            SubConnections = new();
            //FromBoxes = new();
            ExecBoxes = new();
            SetVariables = new();
            OutFuncName = new();

            FromBoxConnectIDStr = "";

            UniqueID = Helpers.RandomString();
        }

        public string ID { set; get; }

        public int FromBoxConnectID { set; get; }

        public double DrawX { set; get; }

        public double DrawY { set; get; }

        public Widget Widget { set; get; }

        public double Height { set; get; }

        public string FromBoxConnectIDStr { set; get; }

        public List<DominoConnector> SubConnections { set; get; }

        //public List<DominoBox> FromBoxes { set; get; }

        public List<ExecBox> ExecBoxes { set; get; }

        public List<DominoDict> SetVariables { set; get; }

        public List<string> OutFuncName { set; get; }

        public Border ContainerUI { set; get; }

        public string UniqueID { get; }

        public int INT_clr { set; get; }

        public bool INT_isIn { set; get; }

        public bool INT_isOut { set; get; }

    }

    public class DominoBoxMetadata
    {
        public DominoBoxMetadata()
        {
            ControlsIn = new();
            ControlsOut = new();
            DatasIn = new();
            DatasOut = new();

            INT_Graph = false;
        }

        public byte[] LuaBytes { set; get; }

        public bool IsStateless { set; get; }

        public bool IsSystem { set; get; }

        public bool INT_Graph { set; get; }

        public List<DominoBoxMetadataControlsIn> ControlsIn { set; get; }

        public List<DominoBoxMetadataControlsOut> ControlsOut { set; get; }

        public List<DominoBoxMetadataDatasIn> DatasIn { set; get; }

        public List<DominoBoxMetadataDatasOut> DatasOut { set; get; }
    }

    public class DominoBoxMetadataControlsIn
    {
        public DominoBoxMetadataControlsIn(string name, int anchorDynType, string hostExecFunc)
        {
            Name = name;
            AnchorDynType = anchorDynType;
            HostExecFunc = hostExecFunc;
        }

        public string Name { set; get; }

        public int AnchorDynType { set; get; }

        public string HostExecFunc { set; get; }

        public Border ContainerUI { set; get; }
    }

    public class DominoBoxMetadataControlsOut
    {
        public DominoBoxMetadataControlsOut(string name, int anchorDynType, bool isDelayed)
        {
            Name = name;
            AnchorDynType = anchorDynType;
            IsDelayed = isDelayed;

            UniqueID = Helpers.RandomString();
        }

        public string Name { set; get; }

        public int AnchorDynType { set; get; }

        public bool IsDelayed { set; get; }

        public string UniqueID { get; }

        public Border ContainerUI { set; get; }
    }

    public class DominoBoxMetadataDatasIn
    {
        public DominoBoxMetadataDatasIn(string name, int anchorDynType, string dataTypeID)
        {
            Name = name;
            AnchorDynType = anchorDynType;
            DataTypeID = dataTypeID;
        }

        public string Name { set; get; }

        public int AnchorDynType { set; get; }

        public string DataTypeID { set; get; }

        public Border ContainerUI { set; get; }
    }

    public class DominoBoxMetadataDatasOut : DominoBoxMetadataDatasIn
    {
        public DominoBoxMetadataDatasOut(string name, int anchorDynType, string dataTypeID) : base(name, anchorDynType, dataTypeID)
        {
        }
    }

    public class DominoDict
    {
        public DominoDict()
        {
            ValueArray = new();

            UniqueID = Helpers.RandomString();
        }

        public string Name { set; get; }

        public string Value { set; get; }

        public string UniqueID { get; set; }

        public List<DominoDict> ValueArray { set; get; }

        public Border ContainerUI { set; get; }
    }

    public class DominoComment
    {
        public DominoComment()
        {
            UniqueID = Helpers.RandomString();
        }

        public string Name { set; get; }

        public string UniqueID { get; set; }

        public int Color { get; set; }

        public Border ContainerUI { set; get; }
    }

    public class DominoBorder
    {
        public DominoBorder()
        {
            UniqueID = Helpers.RandomString();
        }

        public string UniqueID { get; set; }

        public int Color { get; set; }

        public int BackgroundColor { get; set; }

        public int Style { get; set; }

        public BorderD ContainerUI { set; get; }
    }

    public class DominoGraph
    {
        public DominoGraph()
        {
            ContainsBoxes = new();

            UniqueID = Helpers.RandomString();
        }

        public string Name { set; get; }

        public string UniqueID { get; set; }

        public bool IsDefault { get; set; }

        public DominoBoxMetadata Metadata { set; get; }

        public List<string> ContainsBoxes { set; get; }
    }
}
