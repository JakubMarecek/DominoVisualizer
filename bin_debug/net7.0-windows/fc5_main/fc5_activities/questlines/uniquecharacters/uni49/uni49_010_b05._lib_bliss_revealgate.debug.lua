LUAC'�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni49/uni49_010_b05.domino
-- User graph: _Lib_Bliss_RevealGate
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="X_Offset" Type="Core|float" />
    <DataIn Name="Door_Angle" Type="Core|float" />
    <DataIn Name="Y_Offset" Type="Core|float" />
    <DataIn Name="FOG_blendTime" Type="Core|float" />
    <DataIn Name="Door_Left" Type="Nomad|entity{}" />
    <DataIn Name="Door_Right" Type="Nomad|entity{}" />
    <DataIn Name="FOG_Parent" Type="Nomad|entity{}" />
    <DataIn Name="Door_RotationDelay" Type="Core|float" />
    <DataIn Name="Door_BlendTime" Type="Core|float" />
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

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010_B05._Lib_Bliss_RevealGate.debug.lua")] = {
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
                name = "FOG_RevealDone",
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
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Door_Angle",
                type = "float",
            },
            [1] = {
                name = "Door_BlendTime",
                type = "float",
            },
            [2] = {
                name = "Door_Left",
                type = "entity",
            },
            [3] = {
                name = "Door_Right",
                type = "entity",
            },
            [4] = {
                name = "Door_RotationDelay",
                type = "float",
            },
            [5] = {
                name = "FOG_blendTime",
                type = "float",
            },
            [6] = {
                name = "FOG_Parent",
                type = "entity",
            },
            [7] = {
                name = "X_Offset",
                type = "float",
            },
            [8] = {
                name = "Y_Offset",
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
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate";
    self.Initialize_OUT = DummyFunction;
    self.RevealGate_OUT = DummyFunction;
    self.FOG_RevealDone = DummyFunction;
    self.Door_Left_Loc_Open = {
    };
    self.Origin_Rot = {
    };
    self.vFogInitialPos = {
    };
    self.Door_Left_Rot_Open = {
    };
    self.Door_Right_Rot_Open = {
    };
    self.Door_Right_Loc_Open = {
    };
    self.box_PositionModifier_v2_25 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|264003159");
    l0:SetConnections({
    });
    self.box_Delay_v5_9 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|728910620");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_9_TimeElapsed,
    });
    self.box_PositionModifier_v2_20 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1090981446");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_19 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1429149610");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_6 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1569969800");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_7 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1802622888");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_15 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|2091049999");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_15_Done,
    });
end;

function export:Initialize()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1299853630", "1299853630", "_Lib_Bliss_RevealGate", "Initialize", "box_OutputOrder_v2_24.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Reveal_Gate()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1549003944", "1549003944", "_Lib_Bliss_RevealGate", "Reveal_Gate", "box_OutputOrder_v2_17.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_33_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_7();
    l0 = self.box_PositionModifier_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|223302548", "223302548", "_Lib_Bliss_RevealGate", "box_IsValueNil_v3_33.No", "box_PositionModifier_v2_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_CreateVector3_5_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_5_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_18();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1188065404", "1188065404", "_Lib_Bliss_RevealGate", "box_CreateVector3_5.Out", "box_CreateVector3_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_31_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_31_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_25();
    l0 = self.box_PositionModifier_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1795575316", "1795575316", "_Lib_Bliss_RevealGate", "box_CreateVector3_31.Out", "box_PositionModifier_v2_25.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_CreateVector3_11_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_11_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_23();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1865165581", "1865165581", "_Lib_Bliss_RevealGate", "box_CreateVector3_11.Out", "box_CreateVector3_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_33();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|668098053", "668098053", "_Lib_Bliss_RevealGate", "box_OutputOrder_v2_22.Out", "box_IsValueNil_v3_33.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_13();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1020066989", "1020066989", "_Lib_Bliss_RevealGate", "box_OutputOrder_v2_22.Out", "box_IsValueNil_v3_13.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_16_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_16_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_4();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1964935060", "1964935060", "_Lib_Bliss_RevealGate", "box_CreateVector3_16.Out", "box_FloatArithmetics_v2_4.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_28_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_5();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1807412419", "1807412419", "_Lib_Bliss_RevealGate", "box_FloatArithmetics_v2_28.Out", "box_CreateVector3_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_23_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_23_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_2();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|710895765", "710895765", "_Lib_Bliss_RevealGate", "box_CreateVector3_23.Out", "box_FloatArithmetics_v2_2.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_32_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_15();
    l0 = self.box_PositionModifier_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1622299252", "1622299252", "_Lib_Bliss_RevealGate", "box_IsValueNil_v3_32.No", "box_PositionModifier_v2_15.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_FloatArithmetics_v2_21_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_21_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_26();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|825725636", "825725636", "_Lib_Bliss_RevealGate", "box_FloatArithmetics_v2_21.Out", "box_CreateVector3_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_9_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_Delay_v5_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|2010413506", "2010413506", "_Lib_Bliss_RevealGate", "box_Delay_v5_9.TimeElapsed", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_10();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|168217197", "168217197", "_Lib_Bliss_RevealGate", "box_OutputOrder_v2_24.Out", "box_IsValueNil_v3_10.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_27();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1542167482", "1542167482", "_Lib_Bliss_RevealGate", "box_OutputOrder_v2_24.Out", "box_IsValueNil_v3_27.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_35();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|2117181907", "2117181907", "_Lib_Bliss_RevealGate", "box_OutputOrder_v2_24.Out", "box_IsValueNil_v3_35.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1127328976", "1127328976", "_Lib_Bliss_RevealGate", "box_OutputOrder_v2_24.Out", "Initialize_OUT", clone:GetLuaBox(), self);
    self:Initialize_OUT();
end;

function export:f_box_FloatArithmetics_v2_4_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_28();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1397564210", "1397564210", "_Lib_Bliss_RevealGate", "box_FloatArithmetics_v2_4.Out", "box_FloatArithmetics_v2_28.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPosition_30_Out()
    local params, l0;
    self:OnExit_box_GetPosition_30_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_11();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1692134288", "1692134288", "_Lib_Bliss_RevealGate", "box_GetPosition_30.Out", "box_CreateVector3_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPosition_3_Out()
    local params, l0;
    self:OnExit_box_GetPosition_3_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_8();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1224500524", "1224500524", "_Lib_Bliss_RevealGate", "box_GetPosition_3.Out", "box_CreateVector3_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_13_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_20();
    l0 = self.box_PositionModifier_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1211003018", "1211003018", "_Lib_Bliss_RevealGate", "box_IsValueNil_v3_13.No", "box_PositionModifier_v2_20.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_IsValueNil_v3_10_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPosition_29();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|733337276", "733337276", "_Lib_Bliss_RevealGate", "box_IsValueNil_v3_10.No", "box_GetPosition_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_26_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_26_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_6();
    l0 = self.box_PositionModifier_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1040436286", "1040436286", "_Lib_Bliss_RevealGate", "box_CreateVector3_26.Out", "box_PositionModifier_v2_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_CreateVector3_8_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_8_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_1();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1199212207", "1199212207", "_Lib_Bliss_RevealGate", "box_CreateVector3_8.Out", "box_CreateVector3_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPosition_29_Out()
    local params, l0;
    self:OnExit_box_GetPosition_29_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_16();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|929635255", "929635255", "_Lib_Bliss_RevealGate", "box_GetPosition_29.Out", "box_CreateVector3_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_35_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPosition_30();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1930124535", "1930124535", "_Lib_Bliss_RevealGate", "box_IsValueNil_v3_35.No", "box_GetPosition_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_18_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_18_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_19();
    l0 = self.box_PositionModifier_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1338078518", "1338078518", "_Lib_Bliss_RevealGate", "box_CreateVector3_18.Out", "box_PositionModifier_v2_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_CreateVector3_1_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_1_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_21();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|237871251", "237871251", "_Lib_Bliss_RevealGate", "box_CreateVector3_1.Out", "box_FloatArithmetics_v2_21.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_FloatArithmetics_v2_2_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_31();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|136585811", "136585811", "_Lib_Bliss_RevealGate", "box_FloatArithmetics_v2_2.Out", "box_CreateVector3_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_32();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|390402559", "390402559", "_Lib_Bliss_RevealGate", "box_OutputOrder_v2_17.Out", "box_IsValueNil_v3_32.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_9();
    l0 = self.box_Delay_v5_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|97506580", "97506580", "_Lib_Bliss_RevealGate", "box_OutputOrder_v2_17.Out", "box_Delay_v5_9.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1684835622", "1684835622", "_Lib_Bliss_RevealGate", "box_OutputOrder_v2_17.Out", "RevealGate_OUT", clone:GetLuaBox(), self);
    self:RevealGate_OUT();
end;

function export:f_box_IsValueNil_v3_27_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPosition_3();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1391659442", "1391659442", "_Lib_Bliss_RevealGate", "box_IsValueNil_v3_27.No", "box_GetPosition_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_15_Done()
    local l0;
    l0 = self.box_PositionModifier_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|696653537", "696653537", "_Lib_Bliss_RevealGate", "box_PositionModifier_v2_15.Done", "FOG_RevealDone", l0:GetLuaBox(), self);
    self:FOG_RevealDone();
end;

function export:OnEnter_box_IsValueNil_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|38033454");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_33_No,
    });
    params = {
        -- ent,
        [4] = self.Door_Left,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|141343795");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_5_Out,
    });
    params = {
        -- x,
        [0] = self._sld_pitch_box_GetPosition_29,
        -- y,
        [1] = self._sld_roll_box_GetPosition_29,
        -- z,
        [2] = self._sld_yaw_box_GetPosition_29,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|146211977");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_31_Out,
    });
    params = {
        -- x,
        [0] = self._sld_pitch_box_GetPosition_30,
        -- y,
        [1] = self._sld_roll_box_GetPosition_30,
        -- z,
        [2] = self._sld_Result_box_FloatArithmetics_v2_2,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|228079183");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_11_Out,
    });
    params = {
        -- x,
        [0] = self._sld_xPos_box_GetPosition_30,
        -- y,
        [1] = self._sld_yPos_box_GetPosition_30,
        -- z,
        [2] = self._sld_zPos_box_GetPosition_30,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_25()
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
        [6] = self.Door_Right,
        -- useSmallestAngleDiff,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|358670468");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|508586111");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_16_Out,
    });
    params = {
        -- x,
        [0] = self._sld_xPos_box_GetPosition_29,
        -- y,
        [1] = self._sld_yPos_box_GetPosition_29,
        -- z,
        [2] = self._sld_zPos_box_GetPosition_29,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|527516393");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_28_Out,
    });
    params = {
        -- A,
        [0] = self._sld_yPos_box_GetPosition_29,
        -- B,
        [1] = self.Y_Offset,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|556332162");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_23_Out,
    });
    params = {
        -- x,
        [0] = self._sld_pitch_box_GetPosition_30,
        -- y,
        [1] = self._sld_roll_box_GetPosition_30,
        -- z,
        [2] = self._sld_yaw_box_GetPosition_30,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|572864466");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_32_No,
    });
    params = {
        -- ent,
        [4] = self.FOG_Parent,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|703333170");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_21_Out,
    });
    params = {
        -- A,
        [0] = self._sld_yaw_box_GetPosition_3,
        -- B,
        [1] = self.Door_Angle,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_9()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.Door_RotationDelay,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|926070557");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
                [2] = self.f_box_OutputOrder_v2_24_Out_2,
                [3] = self.f_box_OutputOrder_v2_24_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|930588101");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_4_Out,
    });
    params = {
        -- A,
        [0] = self._sld_xPos_box_GetPosition_29,
        -- B,
        [1] = self.X_Offset,
    };
    return params;
end;

function export:OnEnter_box_GetPosition_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1024846097");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_30_Out,
    });
    params = {
        -- id,
        [0] = self.Door_Right,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_20()
    local params;
    params = {
        -- blendTime,
        [1] = self.Door_BlendTime,
        -- endPos,
        [2] = self.Door_Right_Loc_Open,
        -- endRot,
        [3] = self.Door_Right_Rot_Open,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.Door_Right,
        -- useSmallestAngleDiff,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPosition_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1096336324");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_3_Out,
    });
    params = {
        -- id,
        [0] = self.Door_Left,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1112786219");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_13_No,
    });
    params = {
        -- ent,
        [4] = self.Door_Right,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1224244097");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_10_No,
    });
    params = {
        -- ent,
        [4] = self.FOG_Parent,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1402759586");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_26_Out,
    });
    params = {
        -- x,
        [0] = self._sld_pitch_box_GetPosition_3,
        -- y,
        [1] = self._sld_roll_box_GetPosition_3,
        -- z,
        [2] = self._sld_Result_box_FloatArithmetics_v2_21,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1408605417");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_8_Out,
    });
    params = {
        -- x,
        [0] = self._sld_xPos_box_GetPosition_3,
        -- y,
        [1] = self._sld_yPos_box_GetPosition_3,
        -- z,
        [2] = self._sld_zPos_box_GetPosition_3,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    params = {
        -- blendTime,
        [1] = 1,
        -- endPos,
        [2] = l0:GetDataOutValue(0),
        -- endRot,
        [3] = self.Origin_Rot,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.FOG_Parent,
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPosition_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1556586885");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_29_Out,
    });
    params = {
        -- id,
        [0] = self.FOG_Parent,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_6()
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
        [6] = self.Door_Left,
        -- useSmallestAngleDiff,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1630291085");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_35_No,
    });
    params = {
        -- ent,
        [4] = self.Door_Right,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1734178973");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_18_Out,
    });
    params = {
        -- x,
        [0] = self._sld_Result_box_FloatArithmetics_v2_4,
        -- y,
        [1] = self._sld_Result_box_FloatArithmetics_v2_28,
        -- z,
        [2] = self._sld_zPos_box_GetPosition_29,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1766933526");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_1_Out,
    });
    params = {
        -- x,
        [0] = self._sld_pitch_box_GetPosition_3,
        -- y,
        [1] = self._sld_roll_box_GetPosition_3,
        -- z,
        [2] = self._sld_yaw_box_GetPosition_3,
    };
    return params;
end;

function export:OnEnter_box_FloatArithmetics_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1787725320");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_2_Out,
    });
    params = {
        -- A,
        [0] = self._sld_yaw_box_GetPosition_30,
        -- B,
        [1] = self.Door_Angle,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1797076406");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_7()
    local params;
    params = {
        -- blendTime,
        [1] = self.Door_BlendTime,
        -- endPos,
        [2] = self.Door_Left_Loc_Open,
        -- endRot,
        [3] = self.Door_Left_Rot_Open,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.Door_Left,
        -- useSmallestAngleDiff,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010_B05.domino|@_Lib_Bliss_RevealGate|1961774233");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_27_No,
    });
    params = {
        -- ent,
        [4] = self.Door_Left,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_15()
    local params;
    params = {
        -- blendTime,
        [1] = self.FOG_blendTime,
        -- endPos,
        [2] = self.vFogInitialPos,
        -- endRot,
        [3] = self.Origin_Rot,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.FOG_Parent,
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnExit_box_CreateVector3_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self.Origin_Rot = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_31_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_25;
    l1:GetLuaBox().endRot = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self.Door_Right_Loc_Open = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self.vFogInitialPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_28 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self.Door_Right_Rot_Open = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_21 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_4 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPosition_30_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_xPos_box_GetPosition_30 = l0:GetDataOutValue(2);
    self._sld_yPos_box_GetPosition_30 = l0:GetDataOutValue(4);
    self._sld_zPos_box_GetPosition_30 = l0:GetDataOutValue(5);
    self._sld_pitch_box_GetPosition_30 = l0:GetDataOutValue(0);
    self._sld_pitch_box_GetPosition_30 = l0:GetDataOutValue(0);
    self._sld_roll_box_GetPosition_30 = l0:GetDataOutValue(1);
    self._sld_roll_box_GetPosition_30 = l0:GetDataOutValue(1);
    self._sld_yaw_box_GetPosition_30 = l0:GetDataOutValue(3);
    self._sld_yaw_box_GetPosition_30 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPosition_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_xPos_box_GetPosition_3 = l0:GetDataOutValue(2);
    self._sld_yPos_box_GetPosition_3 = l0:GetDataOutValue(4);
    self._sld_zPos_box_GetPosition_3 = l0:GetDataOutValue(5);
    self._sld_pitch_box_GetPosition_3 = l0:GetDataOutValue(0);
    self._sld_pitch_box_GetPosition_3 = l0:GetDataOutValue(0);
    self._sld_roll_box_GetPosition_3 = l0:GetDataOutValue(1);
    self._sld_roll_box_GetPosition_3 = l0:GetDataOutValue(1);
    self._sld_yaw_box_GetPosition_3 = l0:GetDataOutValue(3);
    self._sld_yaw_box_GetPosition_3 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_CreateVector3_26_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_6;
    l1:GetLuaBox().endRot = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self.Door_Left_Loc_Open = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPosition_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_xPos_box_GetPosition_29 = l0:GetDataOutValue(2);
    self._sld_xPos_box_GetPosition_29 = l0:GetDataOutValue(2);
    self._sld_yPos_box_GetPosition_29 = l0:GetDataOutValue(4);
    self._sld_yPos_box_GetPosition_29 = l0:GetDataOutValue(4);
    self._sld_zPos_box_GetPosition_29 = l0:GetDataOutValue(5);
    self._sld_zPos_box_GetPosition_29 = l0:GetDataOutValue(5);
    self._sld_pitch_box_GetPosition_29 = l0:GetDataOutValue(0);
    self._sld_roll_box_GetPosition_29 = l0:GetDataOutValue(1);
    self._sld_yaw_box_GetPosition_29 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_CreateVector3_18_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_19;
    l1:GetLuaBox().endPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self.Door_Left_Rot_Open = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FloatArithmetics_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_2 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Initialize_OUT()
    
end;
function export:RevealGate_OUT()
    
end;
function export:FOG_RevealDone()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Initialize" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Reveal_Gate" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="FOG_RevealDone" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Initialize_OUT" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="RevealGate_OUT" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Door_Angle" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Door_BlendTime" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Door_Left" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Door_Right" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Door_RotationDelay" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="FOG_blendTime" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="FOG_Parent" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="X_Offset" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Y_Offset" AnchorDynType="0" DataTypeID="float" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
