LUACʀ  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_310/mis_310_flamers.domino
-- User graph: MIS_310_Flamers_PingPongTarget
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="X" Type="Core|float" />
    <DataIn Name="Y" Type="Core|float" />
    <DataIn Name="BlendTime" Type="Core|float" />
    <DataIn Name="Anchor" Type="Nomad|entity{}" />
    <DataIn Name="Z" Type="Core|float" />
</InputReflection> 
]]--
-- *** END OF SCRIPT INPUT REFLECTION ***


export = {
};


function export:LuaDependencies()
    local luaDepTable = {
    };
    return luaDepTable;
end;

function export:Create(cboxRes)
    if (cboxRes:ShouldLoadResources() == true) then
        -- External box dependencies
        cboxRes:RegisterBox("Domino/System/CreateVector3.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FloatArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPosition.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_Flamers.MIS_310_Flamers_PingPongTarget.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Anchor",
                type = "entity",
            },
            [1] = {
                name = "BlendTime",
                type = "float",
            },
            [2] = {
                name = "X",
                type = "float",
            },
            [3] = {
                name = "Y",
                type = "float",
            },
            [4] = {
                name = "Z",
                type = "float",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CreateVector3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "x",
                type = "float",
            },
            [1] = {
                name = "y",
                type = "float",
            },
            [2] = {
                name = "z",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "vector3",
                type = "list",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/EntityStatusListener.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Disabled",
                delayed = false,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "Loaded",
                delayed = true,
            },
            [3] = {
                name = "Unloaded",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "checkNow",
                type = "bool",
            },
            [2] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/FloatArithmetics_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Abs",
            },
            [1] = {
                name = "Add",
            },
            [2] = {
                name = "Div",
            },
            [3] = {
                name = "Exp",
            },
            [4] = {
                name = "Max",
            },
            [5] = {
                name = "Min",
            },
            [6] = {
                name = "Mod",
            },
            [7] = {
                name = "Mul",
            },
            [8] = {
                name = "Sub",
            },
        },
        controlInCount = 9,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "A",
                type = "float",
            },
            [1] = {
                name = "B",
                type = "float",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "float",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/GetPosition.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "id",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "pitch",
                type = "float",
            },
            [1] = {
                name = "roll",
                type = "float",
            },
            [2] = {
                name = "xPos",
                type = "float",
            },
            [3] = {
                name = "yaw",
                type = "float",
            },
            [4] = {
                name = "yPos",
                type = "float",
            },
            [5] = {
                name = "zPos",
                type = "float",
            },
        },
        dataOutCount = 6,
    };
    metadataTable[GetPathID("Domino/System/MultipleOR.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Input",
                dynamicType = 1,
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/OutputOrder_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PositionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "StartOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "blendCurve",
                type = "archetype",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "endPos",
                type = "list",
            },
            [3] = {
                name = "endRot",
                type = "list",
            },
            [4] = {
                name = "endTarget",
                type = "entity",
            },
            [5] = {
                name = "players",
                type = "group",
            },
            [6] = {
                name = "targets",
                type = "group",
            },
            [7] = {
                name = "usePhysVelocity",
                type = "bool",
            },
            [8] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 9,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_310_Flamers_PingPongTarget";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget";
    self.Vector_Plus = {
    };
    self.Vector_Minus = {
    };
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|1400478883");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_PositionModifier_v2_11 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|1548428767");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_11_Done,
    });
    self.box_PositionModifier_v2_3 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|1881712143");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_3_Done,
    });
    self.box_EntityStatusListener_5 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|1950302599");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_5_Loaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_5();
    l0 = self.box_EntityStatusListener_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|353213697", "353213697", "MIS_310_Flamers_PingPongTarget", "In", "box_EntityStatusListener_5.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_FloatArithmetics_v2_14_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_10();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|1139226162", "1139226162", "MIS_310_Flamers_PingPongTarget", "box_FloatArithmetics_v2_14.Out", "box_FloatArithmetics_v2_10.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_6_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_12();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|1844476612", "1844476612", "MIS_310_Flamers_PingPongTarget", "box_FloatArithmetics_v2_6.Out", "box_FloatArithmetics_v2_12.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_8_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_2();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|1052666393", "1052666393", "MIS_310_Flamers_PingPongTarget", "box_FloatArithmetics_v2_8.Out", "box_CreateVector3_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPosition_13_Out()
    local params, l0;
    self:OnExit_box_GetPosition_13_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_14();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|231450150", "231450150", "MIS_310_Flamers_PingPongTarget", "box_GetPosition_13.Out", "box_FloatArithmetics_v2_14.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_9_Out()
    local l0;
    self:OnExit_box_CreateVector3_9_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|484006217", "484006217", "MIS_310_Flamers_PingPongTarget", "box_CreateVector3_9.Out", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_FloatArithmetics_v2_12_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_12_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_8();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|420200137", "420200137", "MIS_310_Flamers_PingPongTarget", "box_FloatArithmetics_v2_12.Out", "box_FloatArithmetics_v2_8.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPosition_4_Out()
    local params, l0;
    self:OnExit_box_GetPosition_4_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_6();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|1412562974", "1412562974", "MIS_310_Flamers_PingPongTarget", "box_GetPosition_4.Out", "box_FloatArithmetics_v2_6.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_3();
    l0 = self.box_MultipleOR_7;
    l1 = self.box_PositionModifier_v2_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|841343496", "841343496", "MIS_310_Flamers_PingPongTarget", "box_MultipleOR_7.Out", "box_PositionModifier_v2_3.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_FloatArithmetics_v2_10_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_1();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|92958863", "92958863", "MIS_310_Flamers_PingPongTarget", "box_FloatArithmetics_v2_10.Out", "box_FloatArithmetics_v2_1.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_11_Done()
    local l0, l1;
    l0 = self.box_PositionModifier_v2_11;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|1235764989", "1235764989", "MIS_310_Flamers_PingPongTarget", "box_PositionModifier_v2_11.Done", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_FloatArithmetics_v2_1_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_9();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|1560519623", "1560519623", "MIS_310_Flamers_PingPongTarget", "box_FloatArithmetics_v2_1.Out", "box_CreateVector3_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_2_Out()
    self:OnExit_box_CreateVector3_2_Out();
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPosition_4();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|1628163567", "1628163567", "MIS_310_Flamers_PingPongTarget", "box_OutputOrder_v2_15.Out", "box_GetPosition_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPosition_13();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|160197213", "160197213", "MIS_310_Flamers_PingPongTarget", "box_OutputOrder_v2_15.Out", "box_GetPosition_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_3_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_11();
    l0 = self.box_PositionModifier_v2_3;
    l1 = self.box_PositionModifier_v2_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|566362781", "566362781", "MIS_310_Flamers_PingPongTarget", "box_PositionModifier_v2_3.Done", "box_PositionModifier_v2_11.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_5_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_EntityStatusListener_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|421510953", "421510953", "MIS_310_Flamers_PingPongTarget", "box_EntityStatusListener_5.Loaded", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_FloatArithmetics_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|20513571");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_14_Out,
    });
    params = {
        -- A,
        [0] = self._sld_xPos_box_GetPosition_13,
        -- B,
        [1] = self.X,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|58455766");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_6_Out,
    });
    params = {
        -- A,
        [0] = self._sld_xPos_box_GetPosition_4,
        -- B,
        [1] = self.X,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|392113770");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_8_Out,
    });
    params = {
        -- A,
        [0] = self._sld_zPos_box_GetPosition_4,
        -- B,
        [1] = self.Z,
    };
    return params;
end;

function export:OnEnter_box_GetPosition_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|764568692");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_13_Out,
    });
    params = {
        -- id,
        [0] = self.Anchor,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|875207285");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_9_Out,
    });
    params = {
        -- x,
        [0] = self._sld_Result_box_FloatArithmetics_v2_14,
        -- y,
        [1] = self._sld_Result_box_FloatArithmetics_v2_10,
        -- z,
        [2] = self._sld_Result_box_FloatArithmetics_v2_1,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|1183351586");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_12_Out,
    });
    params = {
        -- A,
        [0] = self._sld_yPos_box_GetPosition_4,
        -- B,
        [1] = self.Y,
    };
    return params;
end;

function export:OnEnter_box_GetPosition_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|1294104817");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_4_Out,
    });
    params = {
        -- id,
        [0] = self.Anchor,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|1426276648");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_10_Out,
    });
    params = {
        -- A,
        [0] = self._sld_yPos_box_GetPosition_13,
        -- B,
        [1] = self.Y,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_11()
    local params;
    params = {
        -- blendTime,
        [1] = self.BlendTime,
        -- endPos,
        [2] = self.Vector_Minus,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.Anchor,
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|1718799027");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_1_Out,
    });
    params = {
        -- A,
        [0] = self._sld_zPos_box_GetPosition_13,
        -- B,
        [1] = self.Z,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|1750040405");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_2_Out,
    });
    params = {
        -- x,
        [0] = self._sld_Result_box_FloatArithmetics_v2_6,
        -- y,
        [1] = self._sld_Result_box_FloatArithmetics_v2_12,
        -- z,
        [2] = self._sld_Result_box_FloatArithmetics_v2_8,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_PingPongTarget|1874215539");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_3()
    local params;
    params = {
        -- blendTime,
        [1] = self.BlendTime,
        -- endPos,
        [2] = self.Vector_Plus,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.Anchor,
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.Anchor,
    };
    return params;
end;

function export:OnExit_box_FloatArithmetics_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_14 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_6 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_8 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPosition_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_xPos_box_GetPosition_13 = l0:GetDataOutValue(2);
    self._sld_yPos_box_GetPosition_13 = l0:GetDataOutValue(4);
    self._sld_zPos_box_GetPosition_13 = l0:GetDataOutValue(5);
end;

function export:OnExit_box_CreateVector3_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self.Vector_Minus = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_12 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPosition_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_xPos_box_GetPosition_4 = l0:GetDataOutValue(2);
    self._sld_yPos_box_GetPosition_4 = l0:GetDataOutValue(4);
    self._sld_zPos_box_GetPosition_4 = l0:GetDataOutValue(5);
end;

function export:OnExit_box_FloatArithmetics_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_10 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self.Vector_Plus = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="Anchor" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="BlendTime" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="X" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Y" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Z" AnchorDynType="0" DataTypeID="float" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
