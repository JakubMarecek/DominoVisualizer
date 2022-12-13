LUACLv  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni49/uni49_010/uni49_010_doors.domino
-- User graph: _OpenDoor_Manager
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Door_Angle" Type="Core|float" />
    <DataIn Name="Right_Door" Type="Nomad|entity{}" />
    <DataIn Name="BlendTime" Type="Core|float" />
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI49/UNI49_010/UNI49_010_DOORS._OpenDoor_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Initialize",
            },
            [1] = {
                name = "Open_Door",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Initialize_OUT",
                delayed = false,
            },
            [1] = {
                name = "Open_Door_OUT",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "BlendTime",
                type = "float",
            },
            [1] = {
                name = "Door_Angle",
                type = "float",
            },
            [2] = {
                name = "Right_Door",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    self._name = "_OpenDoor_Manager";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager";
    self.Initialize_OUT = DummyFunction;
    self.Open_Door_OUT = DummyFunction;
    self.Door_Right_Loc_Open = {
    };
    self.Door_Right_Rot_Open = {
    };
    self.Origin_Rot = {
    };
    self.box_PositionModifier_v2_6 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|1629302638");
    l0:SetConnections({
    });
    self.box_Delay_v5_7 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|1652263783");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_7_TimeElapsed,
    });
    self.box_PositionModifier_v2_5 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|2003231818");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_5_StartOut,
    });
end;

function export:Initialize()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|510021102", "510021102", "_OpenDoor_Manager", "Initialize", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Open_Door()
    local params, l0;
    params = self:OnEnter_box_Delay_v5_7();
    l0 = self.box_Delay_v5_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|1781245481", "1781245481", "_OpenDoor_Manager", "Open_Door", "box_Delay_v5_7.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_FloatArithmetics_v2_12_Out()
    local params, l0;
    self:OnExit_box_FloatArithmetics_v2_12_Out();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_9();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|1590007486", "1590007486", "_OpenDoor_Manager", "box_FloatArithmetics_v2_12.Out", "box_CreateVector3_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_1();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|2124319712", "2124319712", "_OpenDoor_Manager", "box_OutputOrder_v2_4.Out", "box_IsValueNil_v3_1.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|1990986464", "1990986464", "_OpenDoor_Manager", "box_OutputOrder_v2_4.Out", "Initialize_OUT", clone:GetLuaBox(), self);
    self:Initialize_OUT();
end;

function export:f_box_CreateVector3_9_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_9_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_6();
    l0 = self.box_PositionModifier_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|2143875415", "2143875415", "_OpenDoor_Manager", "box_CreateVector3_9.Out", "box_PositionModifier_v2_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_IsValueNil_v3_1_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPosition_2();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|1469242980", "1469242980", "_OpenDoor_Manager", "box_IsValueNil_v3_1.No", "box_GetPosition_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_3_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_3_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_11();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|2008028503", "2008028503", "_OpenDoor_Manager", "box_CreateVector3_3.Out", "box_CreateVector3_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_7_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_8();
    l0 = self.box_Delay_v5_7;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|839862709", "839862709", "_OpenDoor_Manager", "box_Delay_v5_7.TimeElapsed", "box_IsValueNil_v3_8.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_11_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_11_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_FloatArithmetics_v2_12();
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|469497133", "469497133", "_OpenDoor_Manager", "box_CreateVector3_11.Out", "box_FloatArithmetics_v2_12.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_8_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_5();
    l0 = self.box_PositionModifier_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|1369242557", "1369242557", "_OpenDoor_Manager", "box_IsValueNil_v3_8.No", "box_PositionModifier_v2_5.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_GetPosition_2_Out()
    local params, l0;
    self:OnExit_box_GetPosition_2_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateVector3_3();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|1930057859", "1930057859", "_OpenDoor_Manager", "box_GetPosition_2.Out", "box_CreateVector3_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_5_StartOut()
    local l0;
    l0 = self.box_PositionModifier_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|1334448749", "1334448749", "_OpenDoor_Manager", "box_PositionModifier_v2_5.StartOut", "Open_Door_OUT", l0:GetLuaBox(), self);
    self:Open_Door_OUT();
end;

function export:OnEnter_box_FloatArithmetics_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FloatArithmetics_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|126082319");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FloatArithmetics_v2_12_Out,
    });
    params = {
        -- A,
        [0] = self._sld_yaw_box_GetPosition_2,
        -- B,
        [1] = self.Door_Angle,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|132975944");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|465311945");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_9_Out,
    });
    params = {
        -- x,
        [0] = self._sld_pitch_box_GetPosition_2,
        -- y,
        [1] = self._sld_roll_box_GetPosition_2,
        -- z,
        [2] = self._sld_Result_box_FloatArithmetics_v2_12,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|483229743");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_1_No,
    });
    params = {
        -- ent,
        [4] = self.Right_Door,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|1046886579");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_3_Out,
    });
    params = {
        -- x,
        [0] = self._sld_xPos_box_GetPosition_2,
        -- y,
        [1] = self._sld_yPos_box_GetPosition_2,
        -- z,
        [2] = self._sld_zPos_box_GetPosition_2,
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

function export:OnEnter_box_Delay_v5_7()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.25,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|1939242023");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_11_Out,
    });
    params = {
        -- x,
        [0] = self._sld_pitch_box_GetPosition_2,
        -- y,
        [1] = self._sld_roll_box_GetPosition_2,
        -- z,
        [2] = self._sld_yaw_box_GetPosition_2,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|1956376837");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_8_No,
    });
    params = {
        -- ent,
        [4] = self.Right_Door,
    };
    return params;
end;

function export:OnEnter_box_GetPosition_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI49\\UNI49_010\\UNI49_010_DOORS.domino|@_OpenDoor_Manager|1998383823");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_2_Out,
    });
    params = {
        -- id,
        [0] = self.Right_Door,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_5()
    local params;
    params = {
        -- blendTime,
        [1] = self.BlendTime,
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

function export:OnExit_box_FloatArithmetics_v2_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics_v2.lua")];
    self._sld_Result_box_FloatArithmetics_v2_12 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_9_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_6;
    l1:GetLuaBox().endRot = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self.Door_Right_Loc_Open = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    self.Door_Right_Rot_Open = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPosition_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_xPos_box_GetPosition_2 = l0:GetDataOutValue(2);
    self._sld_yPos_box_GetPosition_2 = l0:GetDataOutValue(4);
    self._sld_zPos_box_GetPosition_2 = l0:GetDataOutValue(5);
    self._sld_pitch_box_GetPosition_2 = l0:GetDataOutValue(0);
    self._sld_pitch_box_GetPosition_2 = l0:GetDataOutValue(0);
    self._sld_roll_box_GetPosition_2 = l0:GetDataOutValue(1);
    self._sld_roll_box_GetPosition_2 = l0:GetDataOutValue(1);
    self._sld_yaw_box_GetPosition_2 = l0:GetDataOutValue(3);
    self._sld_yaw_box_GetPosition_2 = l0:GetDataOutValue(3);
end;

-- Empty out anchor definitions
function export:Initialize_OUT()
    
end;
function export:Open_Door_OUT()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Initialize" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Open_Door" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Initialize_OUT" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Open_Door_OUT" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="BlendTime" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Door_Angle" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Right_Door" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
