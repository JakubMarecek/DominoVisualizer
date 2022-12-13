LUACc�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni11/uni11_010/uni11_010_b20.domino
-- User graph: _Brick_Repair_V3
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="e_MobileObjectiveMarker" Type="Nomad|entity{}" />
    <DataIn Name="b_HasObjectiveText" Type="Core|bool" />
    <DataIn Name="b_UseObjectHealthTreshold" Type="Core|bool" />
    <DataIn Name="f_ObjectHealthThreshold" Type="Core|float" />
    <DataIn Name="e_EntityToRepair" Type="Nomad|entity{}" />
    <DataIn Name="opt_ObjectiveText" Type="Nomad|oasis" />
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_010/UNI11_010_B20._Brick_Repair_V3.debug.lua")] = {
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
                name = "Enabled",
                delayed = false,
            },
            [1] = {
                name = "Object_FullyRepaired",
                delayed = false,
            },
            [2] = {
                name = "Object_ThresholdReached",
                delayed = false,
            },
            [3] = {
                name = "Vehicle_Destroyed",
                delayed = false,
            },
            [4] = {
                name = "Vehicle_FullyRepair",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "b_HasObjectiveText",
                type = "bool",
            },
            [1] = {
                name = "b_UseObjectHealthTreshold",
                type = "bool",
            },
            [2] = {
                name = "e_EntityToRepair",
                type = "entity",
            },
            [3] = {
                name = "e_MobileObjectiveMarker",
                type = "entity",
            },
            [4] = {
                name = "f_ObjectHealthThreshold",
                type = "float",
            },
            [5] = {
                name = "opt_ObjectiveText",
                type = "oasis",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")] = {
        stateless = true,
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "CharacterId",
                type = "genericdb",
            },
            [1] = {
                name = "Marker",
                type = "entity",
            },
            [2] = {
                name = "ObjectiveId",
                type = "oasis",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")] = {
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
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "TargetGroup",
                type = "group",
            },
            [3] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")] = {
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
                name = "ObjectiveId",
                type = "oasis",
            },
            [1] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Bind_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Bind",
            },
            [1] = {
                name = "UnBind",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Bound",
                delayed = false,
            },
            [1] = {
                name = "UnBound",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "EntityA",
                type = "entity",
            },
            [2] = {
                name = "EntityB",
                type = "entity",
            },
            [3] = {
                name = "IsMultiBeatBind",
                type = "bool",
            },
            [4] = {
                name = "PositionOnly",
                type = "bool",
            },
            [5] = {
                name = "RemoveOffset",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareBoolean.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_and_B",
                delayed = false,
            },
            [1] = {
                name = "A_is_False",
                delayed = false,
            },
            [2] = {
                name = "A_is_True",
                delayed = false,
            },
            [3] = {
                name = "A_or_B",
                delayed = false,
            },
            [4] = {
                name = "A_xor_B",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "A",
                type = "bool",
            },
            [1] = {
                name = "B",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/SimpleNode.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/VehicleDamageListener_v2.lua")] = {
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
                name = "BoxDisabled",
                delayed = false,
            },
            [1] = {
                name = "Broken",
                delayed = true,
            },
            [2] = {
                name = "Destroyed",
                delayed = true,
            },
            [3] = {
                name = "Disabled",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "MajorDamage",
                delayed = true,
            },
            [6] = {
                name = "MinorDamage",
                delayed = true,
            },
            [7] = {
                name = "Mint",
                delayed = true,
            },
            [8] = {
                name = "OnFire",
                delayed = true,
            },
            [9] = {
                name = "Perfect",
                delayed = true,
            },
            [10] = {
                name = "StateChange",
                delayed = true,
            },
        },
        controlOutCount = 11,
        dataIn = {
            [0] = {
                name = "Vehicle",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "StateID",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "_Brick_Repair_V3";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3";
    self.Object_FullyRepaired = DummyFunction;
    self.Vehicle_FullyRepair = DummyFunction;
    self.Vehicle_Destroyed = DummyFunction;
    self.Enabled = DummyFunction;
    self.Object_ThresholdReached = DummyFunction;
    self.box_EntityStatusListener_10 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|523034978");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_10_Loaded,
    });
    self.box_VehicleDamageListener_v2_4 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|794471782");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_4_Destroyed,
        -- Perfect,
        [9] = self.f_box_VehicleDamageListener_v2_4_Perfect,
    });
    self.box_Bind_v4_1 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1481324464");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_1_Bound,
    });
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1594564439", "1594564439", "_Brick_Repair_V3", "Disable", "box_OutputOrder_v2_20.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_10();
    l0 = self.box_EntityStatusListener_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1976385801", "1976385801", "_Brick_Repair_V3", "Enable", "box_EntityStatusListener_10.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_6();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|591785950", "591785950", "_Brick_Repair_V3", "box_Simple_Node_22.Out", "box_Compare_Boolean_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_5();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1865746800", "1865746800", "_Brick_Repair_V3", "box_Simple_Node_21.Out", "box_Compare_Boolean_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_4();
    l0 = self.box_VehicleDamageListener_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1788995511", "1788995511", "_Brick_Repair_V3", "box_Simple_Node_23.Out", "box_VehicleDamageListener_v2_4.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_5_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_17();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|2064529941", "2064529941", "_Brick_Repair_V3", "box_Compare_Boolean_5.A_is_True", "box_EndActivityObjective_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_10_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_EntityStatusListener_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1747378607", "1747378607", "_Brick_Repair_V3", "box_EntityStatusListener_10.Loaded", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_2_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1735975727", "1735975727", "_Brick_Repair_V3", "box_Compare_Boolean_2.A_is_True", "box_AddActivityObjective_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_23();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1399845844", "1399845844", "_Brick_Repair_V3", "box_OutputOrder_v2_20.Out", "box_Simple_Node_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1131517606", "1131517606", "_Brick_Repair_V3", "box_OutputOrder_v2_20.Out", "box_Simple_Node_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_4_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_VehicleDamageListener_v2_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1820943947", "1820943947", "_Brick_Repair_V3", "box_VehicleDamageListener_v2_4.Destroyed", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_4_Perfect()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = self.box_VehicleDamageListener_v2_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1007726800", "1007726800", "_Brick_Repair_V3", "box_VehicleDamageListener_v2_4.Perfect", "box_OutputOrder_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_23();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1155730139", "1155730139", "_Brick_Repair_V3", "box_OutputOrder_v2_8.Out", "box_Simple_Node_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1766718651", "1766718651", "_Brick_Repair_V3", "box_OutputOrder_v2_8.Out", "box_Simple_Node_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1975316134", "1975316134", "_Brick_Repair_V3", "box_OutputOrder_v2_8.Out", "Vehicle_FullyRepair", clone:GetLuaBox(), self);
    self:Vehicle_FullyRepair();
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|174107869", "174107869", "_Brick_Repair_V3", "box_OutputOrder_v2_3.Out", "Enabled", clone:GetLuaBox(), self);
    self:Enabled();
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_4();
    l0 = self.box_VehicleDamageListener_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|159882238", "159882238", "_Brick_Repair_V3", "box_OutputOrder_v2_3.Out", "box_VehicleDamageListener_v2_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1934367537", "1934367537", "_Brick_Repair_V3", "box_OutputOrder_v2_3.Out", "box_OutputOrder_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_23();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|888622397", "888622397", "_Brick_Repair_V3", "box_OutputOrder_v2_11.Out", "box_Simple_Node_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1074057684", "1074057684", "_Brick_Repair_V3", "box_OutputOrder_v2_11.Out", "box_Simple_Node_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1283826658", "1283826658", "_Brick_Repair_V3", "box_OutputOrder_v2_11.Out", "Vehicle_Destroyed", clone:GetLuaBox(), self);
    self:Vehicle_Destroyed();
end;

function export:f_box_Bind_v4_1_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_14();
    l0 = self.box_Bind_v4_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1757877246", "1757877246", "_Brick_Repair_V3", "box_Bind_v4_1.Bound", "box_ActivityObjectiveMarkerModifier_v3_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_12_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_1();
    l0 = self.box_Bind_v4_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1526967253", "1526967253", "_Brick_Repair_V3", "box_IsValueNil_v3_12.No", "box_Bind_v4_1.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_6_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_13();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1326255858", "1326255858", "_Brick_Repair_V3", "box_Compare_Boolean_6.A_is_True", "box_EndActivityObjective_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_2();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|334629649", "334629649", "_Brick_Repair_V3", "box_OutputOrder_v2_7.Out", "box_Compare_Boolean_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_12();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|96968272", "96968272", "_Brick_Repair_V3", "box_OutputOrder_v2_7.Out", "box_IsValueNil_v3_12.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|@n_Fail");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|@n_Success");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_21_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|@nStopListeners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|134399039");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_5_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_HasObjectiveText,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.e_EntityToRepair,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|599459037");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_2_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_HasObjectiveText,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|629317916");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_4()
    local params;
    params = {
        -- Vehicle,
        [0] = self.e_EntityToRepair,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|834121721");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
                [2] = self.f_box_OutputOrder_v2_8_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|910501425");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|965192379");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
                [2] = self.f_box_OutputOrder_v2_11_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1384847815");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = self.e_MobileObjectiveMarker,
        -- ObjectiveId,
        [2] = self.opt_ObjectiveText,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_1()
    local params;
    params = {
        -- EntityA,
        [1] = self.e_EntityToRepair,
        -- EntityB,
        [2] = self.e_MobileObjectiveMarker,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1551837626");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_12_No,
    });
    params = {
        -- ent,
        [4] = self.e_MobileObjectiveMarker,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1699892277");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = self.opt_ObjectiveText,
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1729636460");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = self.opt_ObjectiveText,
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1844330414");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_6_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_HasObjectiveText,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1876907068");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B20.domino|@_Brick_Repair_V3|1954244061");
    l0:SetConnections({
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = self.opt_ObjectiveText,
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

-- Empty out anchor definitions
function export:Object_FullyRepaired()
    
end;
function export:Vehicle_FullyRepair()
    
end;
function export:Vehicle_Destroyed()
    
end;
function export:Enabled()
    
end;
function export:Object_ThresholdReached()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Enabled" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Object_FullyRepaired" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Object_ThresholdReached" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Vehicle_Destroyed" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Vehicle_FullyRepair" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="b_HasObjectiveText" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="b_UseObjectHealthTreshold" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="e_EntityToRepair" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="e_MobileObjectiveMarker" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="f_ObjectHealthThreshold" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="opt_ObjectiveText" AnchorDynType="0" DataTypeID="oasis" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
