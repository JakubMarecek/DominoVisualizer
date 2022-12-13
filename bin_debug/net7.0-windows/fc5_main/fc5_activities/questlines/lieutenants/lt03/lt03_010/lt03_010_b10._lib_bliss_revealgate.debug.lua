LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt03/lt03_010/lt03_010_b10.domino
-- User graph: _Lib_Bliss_RevealGate
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Y_Offset" Type="Core|float" />
    <DataIn Name="Door_Angle" Type="Core|float" />
    <DataIn Name="FX_Fog_Parent" Type="Nomad|entity{}" />
    <DataIn Name="Left_Door" Type="Nomad|entity{}" />
    <DataIn Name="X_Offset" Type="Core|float" />
    <DataIn Name="Right_Door" Type="Nomad|entity{}" />
    <DataIn Name="Z_offset" Type="Core|float" />
    <DataIn Name="RevealGate_blendTime" Type="Core|float" />
    <DataIn Name="Initialized_blendTime" Type="Core|float" />
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
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/FloatArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPosition.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.LT03_010_B10 = nil;
    Globals.LT03_010_B10 = {
        Player = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_010/LT03_010_B10._Lib_Bliss_RevealGate.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Initialize",
            },
            [1] = {
                name = "Reveal_Gate",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "FogParentInitializeDone",
                delayed = false,
            },
            [1] = {
                name = "Initialize_OUT",
                delayed = false,
            },
            [2] = {
                name = "RevealGate_OUT",
                delayed = false,
            },
            [3] = {
                name = "RevealGateDone",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Door_Angle",
                type = "float",
            },
            [1] = {
                name = "FX_Fog_Parent",
                type = "entity",
            },
            [2] = {
                name = "Initialized_blendTime",
                type = "float",
            },
            [3] = {
                name = "Left_Door",
                type = "entity",
            },
            [4] = {
                name = "RevealGate_blendTime",
                type = "float",
            },
            [5] = {
                name = "Right_Door",
                type = "entity",
            },
            [6] = {
                name = "X_Offset",
                type = "float",
            },
            [7] = {
                name = "Y_Offset",
                type = "float",
            },
            [8] = {
                name = "Z_offset",
                type = "float",
            },
        },
        dataInCount = 9,
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
    metadataTable[GetPathID("Domino/System/Delay_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Resume",
            },
            [2] = {
                name = "Start",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "LoopingEnded",
                delayed = true,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Resumed",
                delayed = false,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
            [4] = {
                name = "Stopped",
                delayed = false,
            },
            [5] = {
                name = "TimeElapsed",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "loop",
                type = "bool",
            },
            [1] = {
                name = "nbLoop",
                type = "int",
            },
            [2] = {
                name = "seconds",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "currentLoop",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/IsValueNil_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Animation",
            },
            [1] = {
                name = "Archetype",
            },
            [2] = {
                name = "Boolean",
            },
            [3] = {
                name = "Database",
            },
            [4] = {
                name = "Entity",
            },
            [5] = {
                name = "Float",
            },
            [6] = {
                name = "GenericDb",
            },
            [7] = {
                name = "Group",
            },
            [8] = {
                name = "Integer",
            },
            [9] = {
                name = "MissionBlock",
            },
            [10] = {
                name = "MissionBlockLayer",
            },
            [11] = {
                name = "Oasis",
            },
            [12] = {
                name = "Script",
            },
            [13] = {
                name = "Sound",
            },
            [14] = {
                name = "String",
            },
        },
        controlInCount = 15,
        controlOut = {
            [0] = {
                name = "No",
                delayed = false,
            },
            [1] = {
                name = "Yes",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "archetypeId",
                type = "archetype",
            },
            [2] = {
                name = "bool",
                type = "bool",
            },
            [3] = {
                name = "databaseId",
                type = "database",
            },
            [4] = {
                name = "ent",
                type = "entity",
            },
            [5] = {
                name = "float",
                type = "float",
            },
            [6] = {
                name = "genericDbId",
                type = "genericdb",
            },
            [7] = {
                name = "group",
                type = "group",
            },
            [8] = {
                name = "int",
                type = "int",
            },
            [9] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [10] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
            [11] = {
                name = "oasis",
                type = "oasis",
            },
            [12] = {
                name = "script",
                type = "boxclass",
            },
            [13] = {
                name = "sound",
                type = "Sound",
            },
            [14] = {
                name = "str",
                type = "string",
            },
        },
        dataInCount = 15,
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
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 8,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "_Lib_Bliss_RevealGate";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate";
    self.RevealGate_OUT = DummyFunction;
    self.Initialize_OUT = DummyFunction;
    self.RevealGateDone = DummyFunction;
    self.FogParentInitializeDone = DummyFunction;
    self.Origin_Rot = {
    };
    self.Door_Left_Loc_Open = {
    };
    self.vFogInitialPos = {
    };
    self.Door_Right_Loc_Open = {
    };
    self.Door_Right_Rot_Open = {
    };
    self.Door_Left_Rot_Open = {
    };
    self.box_PositionModifier_v2_12 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|146536716");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_1 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|318988958");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_14 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|717372877");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_14_Done,
    });
    self.box_PositionModifier_v2_20 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|967060548");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_20_Done,
    });
    self.box_PositionModifier_v2_8 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1065959325");
    l0:SetConnections({
    });
    self.box_Delay_v5_27 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1471052119");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_27_TimeElapsed,
    });
    self.box_PositionModifier_v2_34 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1999675463");
    l0:SetConnections({
    });
end;

function export:Initialize()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|637943613", "637943613", "_Lib_Bliss_RevealGate", "Initialize", "box_OutputOrder_v2_18.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Reveal_Gate()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1080047555", "1080047555", "_Lib_Bliss_RevealGate", "Reveal_Gate", "box_OutputOrder_v2_19.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_33_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPosition_15();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1409437730", "1409437730", "_Lib_Bliss_RevealGate", "box_IsValueNil_v3_33.No", "box_GetPosition_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_6_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_36();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|2059634279", "2059634279", "_Lib_Bliss_RevealGate", "box_FloatArithmetics_v2_6.Out", "box_FloatArithmetics_v2_36.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_17_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_8();
    l0 = self.box_PositionModifier_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1276017232", "1276017232", "_Lib_Bliss_RevealGate", "box_IsValueNil_v3_17.No", "box_PositionModifier_v2_8.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_IsValueNil_v3_7_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPosition_31();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|131576705", "131576705", "_Lib_Bliss_RevealGate", "box_IsValueNil_v3_7.No", "box_GetPosition_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_11_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_11_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_14();
    l0 = self.box_PositionModifier_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|711998605", "711998605", "_Lib_Bliss_RevealGate", "box_CreateVector3_11.Out", "box_PositionModifier_v2_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_CreateVector3_25_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_25_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_29();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1305320468", "1305320468", "_Lib_Bliss_RevealGate", "box_CreateVector3_25.Out", "box_FloatArithmetics_v2_29.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_17();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|504489183", "504489183", "_Lib_Bliss_RevealGate", "box_OutputOrder_v2_30.Out", "box_IsValueNil_v3_17.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_23();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1577115235", "1577115235", "_Lib_Bliss_RevealGate", "box_OutputOrder_v2_30.Out", "box_IsValueNil_v3_23.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_14_Done()
    local l0;
    l0 = self.box_PositionModifier_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|684218299", "684218299", "_Lib_Bliss_RevealGate", "box_PositionModifier_v2_14.Done", "FogParentInitializeDone", l0:GetLuaBox(), self);
    self:FogParentInitializeDone();
end;

function export:f_box_CreateVector3_2_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_2_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_16();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|929719572", "929719572", "_Lib_Bliss_RevealGate", "box_CreateVector3_2.Out", "box_FloatArithmetics_v2_16.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_5();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|2096270250", "2096270250", "_Lib_Bliss_RevealGate", "box_OutputOrder_v2_19.Out", "box_IsValueNil_v3_5.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_27();
    l0 = self.box_Delay_v5_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|71245870", "71245870", "_Lib_Bliss_RevealGate", "box_OutputOrder_v2_19.Out", "box_Delay_v5_27.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1926433820", "1926433820", "_Lib_Bliss_RevealGate", "box_OutputOrder_v2_19.Out", "RevealGate_OUT", clone:GetLuaBox(), self);
    self:RevealGate_OUT();
end;

function export:f_box_FloatArithmetics_v2_36_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_36_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_4();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1282183531", "1282183531", "_Lib_Bliss_RevealGate", "box_FloatArithmetics_v2_36.Out", "box_CreateVector3_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_20_Done()
    local l0;
    l0 = self.box_PositionModifier_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1239881388", "1239881388", "_Lib_Bliss_RevealGate", "box_PositionModifier_v2_20.Done", "RevealGateDone", l0:GetLuaBox(), self);
    self:RevealGateDone();
end;

function export:f_box_GetPosition_15_Out()
    local params, l0;
    self:OnExit_box_GetPosition_15_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_2();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|692384963", "692384963", "_Lib_Bliss_RevealGate", "box_GetPosition_15.Out", "box_CreateVector3_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_4_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_4_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_11();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|60497353", "60497353", "_Lib_Bliss_RevealGate", "box_CreateVector3_4.Out", "box_CreateVector3_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_29_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_29_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_21();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1337431783", "1337431783", "_Lib_Bliss_RevealGate", "box_FloatArithmetics_v2_29.Out", "box_CreateVector3_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPosition_31_Out()
    local params, l0;
    self:OnExit_box_GetPosition_31_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_22();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1234391232", "1234391232", "_Lib_Bliss_RevealGate", "box_GetPosition_31.Out", "box_CreateVector3_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_16_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_16_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_6();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1755489801", "1755489801", "_Lib_Bliss_RevealGate", "box_FloatArithmetics_v2_16.Out", "box_FloatArithmetics_v2_6.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_27_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = self.box_Delay_v5_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1081531621", "1081531621", "_Lib_Bliss_RevealGate", "box_Delay_v5_27.TimeElapsed", "box_OutputOrder_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_26_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_26_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_34();
    l0 = self.box_PositionModifier_v2_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|555503916", "555503916", "_Lib_Bliss_RevealGate", "box_CreateVector3_26.Out", "box_PositionModifier_v2_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_CreateVector3_35_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_35_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_28();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|991408811", "991408811", "_Lib_Bliss_RevealGate", "box_CreateVector3_35.Out", "box_FloatArithmetics_v2_28.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_33();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|794869815", "794869815", "_Lib_Bliss_RevealGate", "box_OutputOrder_v2_18.Out", "box_IsValueNil_v3_33.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_7();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1032827130", "1032827130", "_Lib_Bliss_RevealGate", "box_OutputOrder_v2_18.Out", "box_IsValueNil_v3_7.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_24();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|310829754", "310829754", "_Lib_Bliss_RevealGate", "box_OutputOrder_v2_18.Out", "box_IsValueNil_v3_24.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|549152033", "549152033", "_Lib_Bliss_RevealGate", "box_OutputOrder_v2_18.Out", "Initialize_OUT", clone:GetLuaBox(), self);
    self:Initialize_OUT();
end;

function export:f_box_CreateVector3_3_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_3_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_35();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|740223060", "740223060", "_Lib_Bliss_RevealGate", "box_CreateVector3_3.Out", "box_CreateVector3_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_28_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_26();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|191673655", "191673655", "_Lib_Bliss_RevealGate", "box_FloatArithmetics_v2_28.Out", "box_CreateVector3_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_23_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_12();
    l0 = self.box_PositionModifier_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1374587363", "1374587363", "_Lib_Bliss_RevealGate", "box_IsValueNil_v3_23.No", "box_PositionModifier_v2_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_IsValueNil_v3_5_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_20();
    l0 = self.box_PositionModifier_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|642085263", "642085263", "_Lib_Bliss_RevealGate", "box_IsValueNil_v3_5.No", "box_PositionModifier_v2_20.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_IsValueNil_v3_24_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPosition_10();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|986011071", "986011071", "_Lib_Bliss_RevealGate", "box_IsValueNil_v3_24.No", "box_GetPosition_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_21_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_21_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_1();
    l0 = self.box_PositionModifier_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|796567265", "796567265", "_Lib_Bliss_RevealGate", "box_CreateVector3_21.Out", "box_PositionModifier_v2_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_CreateVector3_22_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_22_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_25();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1453376248", "1453376248", "_Lib_Bliss_RevealGate", "box_CreateVector3_22.Out", "box_CreateVector3_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPosition_10_Out()
    local params, l0;
    self:OnExit_box_GetPosition_10_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_3();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1235213659", "1235213659", "_Lib_Bliss_RevealGate", "box_GetPosition_10.Out", "box_CreateVector3_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_IsValueNil_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|24835282");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_33_No,
    });
    params = {
        -- ent,
        [4] = self.FX_Fog_Parent,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_12()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endPos,
        [2] = self.Door_Right_Loc_Open,
        -- endRot,
        [3] = self.Door_Right_Rot_Open,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.Right_Door,
        -- useSmallestAngleDiff,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|150306529");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_6_Out,
    });
    params = {
        -- A,
        [0] = self._sld_yPos_box_GetPosition_15,
        -- B,
        [1] = self.Y_Offset,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|159142648");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_17_No,
    });
    params = {
        -- ent,
        [4] = self.Left_Door,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|220894077");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_7_No,
    });
    params = {
        -- ent,
        [4] = self.Left_Door,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    params = {
        -- blendTime,
        [1] = 1,
        -- endPos,
        [2] = self.Door_Left_Loc_Open,
        -- endRot,
        [3] = l0:GetDataOutValue(0),
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.Left_Door,
        -- useSmallestAngleDiff,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|350631026");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_11_Out,
    });
    params = {
        -- x,
        [0] = self._sld_Result_box_FloatArithmetics_v2_16,
        -- y,
        [1] = self._sld_Result_box_FloatArithmetics_v2_6,
        -- z,
        [2] = self._sld_Result_box_FloatArithmetics_v2_36,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|563912581");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_25_Out,
    });
    params = {
        -- x,
        [0] = self._sld_pitch_box_GetPosition_31,
        -- y,
        [1] = self._sld_roll_box_GetPosition_31,
        -- z,
        [2] = self._sld_yaw_box_GetPosition_31,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|670724981");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    params = {
        -- blendTime,
        [1] = self.Initialized_blendTime,
        -- endPos,
        [2] = l0:GetDataOutValue(0),
        -- endRot,
        [3] = self.Origin_Rot,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.FX_Fog_Parent,
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|758925402");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_2_Out,
    });
    params = {
        -- x,
        [0] = self._sld_xPos_box_GetPosition_15,
        -- y,
        [1] = self._sld_yPos_box_GetPosition_15,
        -- z,
        [2] = self._sld_zPos_box_GetPosition_15,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|838999143");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 3,
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
                [2] = self.f_box_OutputOrder_v2_19_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|858053067");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_36_Out,
    });
    params = {
        -- A,
        [0] = self._sld_zPos_box_GetPosition_15,
        -- B,
        [1] = self.Z_offset,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_20()
    local params;
    params = {
        -- blendTime,
        [1] = self.RevealGate_blendTime,
        -- endPos,
        [2] = self.vFogInitialPos,
        -- endRot,
        [3] = self.Origin_Rot,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.FX_Fog_Parent,
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPosition_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1058806704");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_15_Out,
    });
    params = {
        -- id,
        [0] = self.FX_Fog_Parent,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_8()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endPos,
        [2] = self.Door_Left_Loc_Open,
        -- endRot,
        [3] = self.Door_Left_Rot_Open,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.Left_Door,
        -- useSmallestAngleDiff,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1071767679");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_4_Out,
    });
    params = {
        -- x,
        [0] = self._sld_pitch_box_GetPosition_15,
        -- y,
        [1] = self._sld_roll_box_GetPosition_15,
        -- z,
        [2] = self._sld_yaw_box_GetPosition_15,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1203698558");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_29_Out,
    });
    params = {
        -- A,
        [0] = self._sld_yaw_box_GetPosition_31,
        -- B,
        [1] = self.Door_Angle,
    };
    return params;
end;

function export:OnEnter_box_GetPosition_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1237847033");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_31_Out,
    });
    params = {
        -- id,
        [0] = self.Left_Door,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1412931900");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_16_Out,
    });
    params = {
        -- A,
        [0] = self._sld_xPos_box_GetPosition_15,
        -- B,
        [1] = self.X_Offset,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_27()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1585870352");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_26_Out,
    });
    params = {
        -- x,
        [0] = self._sld_pitch_box_GetPosition_10,
        -- y,
        [1] = self._sld_roll_box_GetPosition_10,
        -- z,
        [2] = self._sld_Result_box_FloatArithmetics_v2_28,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1606991117");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_35_Out,
    });
    params = {
        -- x,
        [0] = self._sld_pitch_box_GetPosition_10,
        -- y,
        [1] = self._sld_roll_box_GetPosition_10,
        -- z,
        [2] = self._sld_yaw_box_GetPosition_10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1632331098");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 4,
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
                [3] = self.f_box_OutputOrder_v2_18_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1694170074");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_3_Out,
    });
    params = {
        -- x,
        [0] = self._sld_xPos_box_GetPosition_10,
        -- y,
        [1] = self._sld_yPos_box_GetPosition_10,
        -- z,
        [2] = self._sld_zPos_box_GetPosition_10,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1713610708");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_28_Out,
    });
    params = {
        -- A,
        [0] = self._sld_yaw_box_GetPosition_10,
        -- B,
        [1] = self.Door_Angle,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1743216802");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_23_No,
    });
    params = {
        -- ent,
        [4] = self.Right_Door,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1759001397");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_5_No,
    });
    params = {
        -- ent,
        [4] = self.FX_Fog_Parent,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1844849375");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_24_No,
    });
    params = {
        -- ent,
        [4] = self.Right_Door,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|1866103169");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_21_Out,
    });
    params = {
        -- x,
        [0] = self._sld_pitch_box_GetPosition_31,
        -- y,
        [1] = self._sld_roll_box_GetPosition_31,
        -- z,
        [2] = self._sld_Result_box_FloatArithmetics_v2_29,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    params = {
        -- blendTime,
        [1] = 1,
        -- endPos,
        [2] = self.Door_Right_Loc_Open,
        -- endRot,
        [3] = l0:GetDataOutValue(0),
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.Right_Door,
        -- useSmallestAngleDiff,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|2025024380");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_22_Out,
    });
    params = {
        -- x,
        [0] = self._sld_xPos_box_GetPosition_31,
        -- y,
        [1] = self._sld_yPos_box_GetPosition_31,
        -- z,
        [2] = self._sld_zPos_box_GetPosition_31,
    };
    return params;
end;

function export:OnEnter_box_GetPosition_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@_Lib_Bliss_RevealGate|2080598884");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_10_Out,
    });
    params = {
        -- id,
        [0] = self.Right_Door,
    };
    return params;
end;

function export:OnExit_box_FloatArithmetics_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_6 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_11_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_14;
    l1:GetLuaBox().endPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_25_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self.Door_Left_Rot_Open = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self.vFogInitialPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_36_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_36 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPosition_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_xPos_box_GetPosition_15 = l0:GetDataOutValue(2);
    self._sld_xPos_box_GetPosition_15 = l0:GetDataOutValue(2);
    self._sld_yPos_box_GetPosition_15 = l0:GetDataOutValue(4);
    self._sld_yPos_box_GetPosition_15 = l0:GetDataOutValue(4);
    self._sld_zPos_box_GetPosition_15 = l0:GetDataOutValue(5);
    self._sld_zPos_box_GetPosition_15 = l0:GetDataOutValue(5);
    self._sld_pitch_box_GetPosition_15 = l0:GetDataOutValue(0);
    self._sld_roll_box_GetPosition_15 = l0:GetDataOutValue(1);
    self._sld_yaw_box_GetPosition_15 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_CreateVector3_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self.Origin_Rot = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_29 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPosition_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_xPos_box_GetPosition_31 = l0:GetDataOutValue(2);
    self._sld_yPos_box_GetPosition_31 = l0:GetDataOutValue(4);
    self._sld_zPos_box_GetPosition_31 = l0:GetDataOutValue(5);
    self._sld_pitch_box_GetPosition_31 = l0:GetDataOutValue(0);
    self._sld_pitch_box_GetPosition_31 = l0:GetDataOutValue(0);
    self._sld_roll_box_GetPosition_31 = l0:GetDataOutValue(1);
    self._sld_roll_box_GetPosition_31 = l0:GetDataOutValue(1);
    self._sld_yaw_box_GetPosition_31 = l0:GetDataOutValue(3);
    self._sld_yaw_box_GetPosition_31 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_FloatArithmetics_v2_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_16 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_26_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_34;
    l1:GetLuaBox().endRot = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_35_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self.Door_Right_Rot_Open = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self.Door_Right_Loc_Open = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_28 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_21_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_1;
    l1:GetLuaBox().endRot = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_22_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self.Door_Left_Loc_Open = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPosition_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_xPos_box_GetPosition_10 = l0:GetDataOutValue(2);
    self._sld_yPos_box_GetPosition_10 = l0:GetDataOutValue(4);
    self._sld_zPos_box_GetPosition_10 = l0:GetDataOutValue(5);
    self._sld_pitch_box_GetPosition_10 = l0:GetDataOutValue(0);
    self._sld_pitch_box_GetPosition_10 = l0:GetDataOutValue(0);
    self._sld_roll_box_GetPosition_10 = l0:GetDataOutValue(1);
    self._sld_roll_box_GetPosition_10 = l0:GetDataOutValue(1);
    self._sld_yaw_box_GetPosition_10 = l0:GetDataOutValue(3);
    self._sld_yaw_box_GetPosition_10 = l0:GetDataOutValue(3);
end;

-- Empty out anchor definitions
function export:RevealGate_OUT()
    
end;
function export:Initialize_OUT()
    
end;
function export:RevealGateDone()
    
end;
function export:FogParentInitializeDone()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Initialize" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Reveal_Gate" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="FogParentInitializeDone" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Initialize_OUT" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="RevealGate_OUT" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="RevealGateDone" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Door_Angle" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="FX_Fog_Parent" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Initialized_blendTime" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Left_Door" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="RevealGate_blendTime" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Right_Door" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="X_Offset" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Y_Offset" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Z_offset" AnchorDynType="0" DataTypeID="float" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
