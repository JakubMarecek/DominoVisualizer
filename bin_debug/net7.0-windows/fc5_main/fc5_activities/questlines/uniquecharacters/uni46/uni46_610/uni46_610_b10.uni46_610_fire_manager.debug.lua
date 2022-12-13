LUAC`�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni46/uni46_610/uni46_610_b10.domino
-- User graph: UNI46_610_Fire_Manager
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Trigger" Type="Nomad|entity{}" />
    <DataIn Name="Delay" Type="Core|float" />
    <DataIn Name="Particle1" Type="Nomad|entity{}" />
    <DataIn Name="Fire Length" Type="Core|float" />
    <DataIn Name="Particle2" Type="Nomad|entity{}" />
    <DataIn Name="Soundpoint1" Type="Nomad|entity{}" />
    <DataIn Name="Soundpoint2" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/CreateUniqueGroup.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_610/UNI46_610_B10.UNI46_610_Audio_Manager.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_610/UNI46_610_B10.UNI46_610_Fire_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Delay",
                type = "float",
            },
            [1] = {
                name = "Fire_Length",
                type = "float",
            },
            [2] = {
                name = "Particle1",
                type = "entity",
            },
            [3] = {
                name = "Particle2",
                type = "entity",
            },
            [4] = {
                name = "Soundpoint1",
                type = "entity",
            },
            [5] = {
                name = "Soundpoint2",
                type = "entity",
            },
            [6] = {
                name = "Trigger",
                type = "entity",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")] = {
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
                name = "FromGroup",
                type = "group",
            },
            [1] = {
                name = "ToGroup",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CreateUniqueGroup.lua")] = {
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
            [0] = {
                name = "OutGroup",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/MultipleAND_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Condition",
                dynamicType = 1,
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/ParticleSystem_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Clean",
            },
            [1] = {
                name = "Pause",
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
                name = "Cleaned",
                delayed = false,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "TargetEntities",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v2.lua")] = {
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
                name = "Enter",
                delayed = true,
            },
            [3] = {
                name = "Leave",
                delayed = true,
            },
            [4] = {
                name = "OnEmpty",
                delayed = true,
            },
            [5] = {
                name = "OnOccupied",
                delayed = true,
            },
            [6] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "colliderFilterId",
                type = "group",
            },
            [2] = {
                name = "listenToGroupSizeChange",
                type = "bool",
            },
            [3] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "colliderId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_610/UNI46_610_B10.UNI46_610_Audio_Manager.debug.lua")] = {
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Soundpoint1",
                type = "entity",
            },
            [1] = {
                name = "Soundpoint2",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI46_610_Fire_Manager";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager";
    self.Out = DummyFunction;
    self.Started = DummyFunction;
    self.gp_firepillar = nil;
    self.box_MultipleAND_v2_12 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|418651173");
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
        [0] = self.f_box_MultipleAND_v2_12_Out,
    });
    self.box_ProximityTrigger_v2_1 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|558081895");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_1_OnOccupied,
    });
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|560167781");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_Delay_v5_2 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|1061652488");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_2_TimeElapsed,
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|1322165073");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_UNI46_610_Audio_Manager_11 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_610/UNI46_610_B10.UNI46_610_Audio_Manager.debug.lua");
    l0 = self.box_UNI46_610_Audio_Manager_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_610_Audio_Manager_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|1669830140");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UNI46_610_Audio_Manager_11_Disabled,
    });
    self.box_Delay_v5_5 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|2084701636");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_5_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_5_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_ProximityTrigger_v2_1();
    l0 = self.box_ProximityTrigger_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|2088285315", "2088285315", "UNI46_610_Fire_Manager", "In", "box_ProximityTrigger_v2_1.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:Start()
    local l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|937742104", "937742104", "UNI46_610_Fire_Manager", "Start", "box_MultipleOR_13.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupAddToGroup_v2_7_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_12();
    l0 = self.box_MultipleAND_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|843839890", "843839890", "UNI46_610_Fire_Manager", "box_GroupAddToGroup_v2_7.Out", "box_MultipleAND_v2_12.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleAND_v2_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_5();
    l0 = self.box_MultipleAND_v2_12;
    l1 = self.box_Delay_v5_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|1325756071", "1325756071", "UNI46_610_Fire_Manager", "box_MultipleAND_v2_12.Out", "box_Delay_v5_5.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_1_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_1;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|2123739980", "2123739980", "UNI46_610_Fire_Manager", "box_ProximityTrigger_v2_1.OnOccupied", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_4();
    l0 = self.box_Delay_v5_16;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|284679647", "284679647", "UNI46_610_Fire_Manager", "box_Delay_v5_16.TimeElapsed", "box_ParticleSystem_v3_4.Clean", l0:GetLuaBox(), l1:GetLuaBox());
    -- Clean
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupAddToGroup_v2_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_12();
    l0 = self.box_MultipleAND_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|1009838845", "1009838845", "UNI46_610_Fire_Manager", "box_GroupAddToGroup_v2_10.Out", "box_MultipleAND_v2_12.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_ParticleSystem_v3_4_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI46_610_Audio_Manager_11();
    l0 = self.box_UNI46_610_Audio_Manager_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|3193622", "3193622", "UNI46_610_Fire_Manager", "box_ParticleSystem_v3_4.Started", "box_UNI46_610_Audio_Manager_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_4_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI46_610_Audio_Manager_11();
    l0 = self.box_UNI46_610_Audio_Manager_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|1171604788", "1171604788", "UNI46_610_Fire_Manager", "box_ParticleSystem_v3_4.Stopped", "box_UNI46_610_Audio_Manager_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|908414488", "908414488", "UNI46_610_Fire_Manager", "box_OutputOrder_v2_15.Out", "box_Delay_v5_16.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|11305155", "11305155", "UNI46_610_Fire_Manager", "box_OutputOrder_v2_15.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_IsValueNil_v3_6_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|1082084490", "1082084490", "UNI46_610_Fire_Manager", "box_IsValueNil_v3_6.No", "box_GroupAddToGroup_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_2_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_Delay_v5_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|1015964309", "1015964309", "UNI46_610_Fire_Manager", "box_Delay_v5_2.TimeElapsed", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_8_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|1384076314", "1384076314", "UNI46_610_Fire_Manager", "box_IsValueNil_v3_8.No", "box_GroupAddToGroup_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_6();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|862325941", "862325941", "UNI46_610_Fire_Manager", "box_OutputOrder_v2_9.Out", "box_IsValueNil_v3_6.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_8();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|992053967", "992053967", "UNI46_610_Fire_Manager", "box_OutputOrder_v2_9.Out", "box_IsValueNil_v3_8.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|881346518", "881346518", "UNI46_610_Fire_Manager", "box_OutputOrder_v2_3.Out", "Started", clone:GetLuaBox(), self);
    self:Started();
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|488367642", "488367642", "UNI46_610_Fire_Manager", "box_OutputOrder_v2_3.Out", "box_Delay_v5_2.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CreateUniqueGroup_14();
    l0 = self.box_MultipleOR_13;
    l1 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|1878732084", "1878732084", "UNI46_610_Fire_Manager", "box_MultipleOR_13.Out", "box_CreateUniqueGroup_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CreateUniqueGroup_14_Out()
    local params, l0;
    self:OnExit_box_CreateUniqueGroup_14_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|585809308", "585809308", "UNI46_610_Fire_Manager", "box_CreateUniqueGroup_14.Out", "box_OutputOrder_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UNI46_610_Audio_Manager_11_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_UNI46_610_Audio_Manager_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|481168493", "481168493", "UNI46_610_Fire_Manager", "box_UNI46_610_Audio_Manager_11.Disabled", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_5_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_4();
    l0 = self.box_Delay_v5_5;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|1199576340", "1199576340", "UNI46_610_Fire_Manager", "box_Delay_v5_5.Started", "box_ParticleSystem_v3_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_5_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_4();
    l0 = self.box_Delay_v5_5;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|1290700216", "1290700216", "UNI46_610_Fire_Manager", "box_Delay_v5_5.TimeElapsed", "box_ParticleSystem_v3_4.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_GroupAddToGroup_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|297641959");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_7_Out,
    });
    params = {
        -- FromGroup,
        [0] = self.Particle1,
        -- ToGroup,
        [1] = self.gp_firepillar,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_12()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#ED455357",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = self.Trigger,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_16()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|579151974");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_10_Out,
    });
    params = {
        -- FromGroup,
        [0] = self.Particle2,
        -- ToGroup,
        [1] = self.gp_firepillar,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|948630957");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_4_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_4_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.gp_firepillar,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|983332575");
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

function export:OnEnter_box_IsValueNil_v3_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|1018593730");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_6_No,
    });
    params = {
        -- ent,
        [4] = self.Particle1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_2()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.Delay,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|1158028621");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_8_No,
    });
    params = {
        -- ent,
        [4] = self.Particle2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|1213697832");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
            },
            count = 2,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|1232718409");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CreateUniqueGroup_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateUniqueGroup_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_Fire_Manager|1361017999");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateUniqueGroup_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UNI46_610_Audio_Manager_11()
    local params;
    params = {
        -- Soundpoint1,
        [0] = self.Soundpoint1,
        -- Soundpoint2,
        [1] = self.Soundpoint2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_5()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.Fire_Length,
    };
    return params;
end;

function export:OnExit_box_CreateUniqueGroup_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    self.gp_firepillar = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:Started()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Started" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Delay" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Fire_Length" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Particle1" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Particle2" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Soundpoint1" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Soundpoint2" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Trigger" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
