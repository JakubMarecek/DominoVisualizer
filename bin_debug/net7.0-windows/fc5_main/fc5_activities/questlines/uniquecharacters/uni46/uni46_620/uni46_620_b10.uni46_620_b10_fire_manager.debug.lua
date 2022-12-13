LUACJ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni46/uni46_620/uni46_620_b10.domino
-- User graph: UNI46_620_B10_Fire_Manager
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Particle1" Type="Nomad|entity{}" />
    <DataIn Name="Delay" Type="Core|float" />
    <DataIn Name="Particle2" Type="Nomad|entity{}" />
    <DataIn Name="Soundpoint1" Type="Nomad|entity{}" />
    <DataIn Name="Fire Length" Type="Core|float" />
    <DataIn Name="Soundpoint2" Type="Nomad|entity{}" />
    <DataIn Name="Trigger" Type="Nomad|entity{}" />
    <DataIn Name="bCoop" Type="Core|bool" />
    <DataIn Name="Particle_Fire_Host" Type="Nomad|entity{}" />
    <DataIn Name="Particle_Fire_Client" Type="Nomad|entity{}" />
    <DataIn Name="Soundpoint_Fire_Host" Type="Nomad|entity{}" />
    <DataIn Name="Soundpoint_Fire_Client" Type="Nomad|entity{}" />
    <DataIn Name="Start_VEH_Fire_Sound" Type="Nomad|Sound" />
    <DataIn Name="Stop_VEH_Fire_Sound" Type="Nomad|Sound" />
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
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/CreateUniqueGroup.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Audio_Manager.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Fire_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable_Veh_Fire",
            },
            [1] = {
                name = "Enable_Flame",
            },
            [2] = {
                name = "Enable_Veh_Fire",
            },
            [3] = {
                name = "Start",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Disabled_Veh_Fire",
                delayed = false,
            },
            [1] = {
                name = "Enabled_Flame",
                delayed = false,
            },
            [2] = {
                name = "Enabled_Veh_Fire",
                delayed = false,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bCoop",
                type = "bool",
            },
            [1] = {
                name = "Delay",
                type = "float",
            },
            [2] = {
                name = "Fire_Length",
                type = "float",
            },
            [3] = {
                name = "Particle_Fire_Client",
                type = "entity",
            },
            [4] = {
                name = "Particle_Fire_Host",
                type = "entity",
            },
            [5] = {
                name = "Particle1",
                type = "entity",
            },
            [6] = {
                name = "Particle2",
                type = "entity",
            },
            [7] = {
                name = "Soundpoint_Fire_Client",
                type = "entity",
            },
            [8] = {
                name = "Soundpoint_Fire_Host",
                type = "entity",
            },
            [9] = {
                name = "Soundpoint1",
                type = "entity",
            },
            [10] = {
                name = "Soundpoint2",
                type = "entity",
            },
            [11] = {
                name = "Start_VEH_Fire_Sound",
                type = "Sound",
            },
            [12] = {
                name = "Stop_VEH_Fire_Sound",
                type = "Sound",
            },
            [13] = {
                name = "Trigger",
                type = "entity",
            },
        },
        dataInCount = 14,
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Audio_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable_Flame",
            },
            [1] = {
                name = "Disable_Veh_Fire",
            },
            [2] = {
                name = "Enable_Flame",
            },
            [3] = {
                name = "Enable_Veh_Fire",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Disabled_Flame",
                delayed = false,
            },
            [1] = {
                name = "Disabled_Veh_Fire",
                delayed = false,
            },
            [2] = {
                name = "Enabled_Flame",
                delayed = false,
            },
            [3] = {
                name = "Enabled_Veh_Fire",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Soundpoint_Fire",
                type = "entity",
            },
            [1] = {
                name = "Soundpoint1_Flame",
                type = "entity",
            },
            [2] = {
                name = "Soundpoint2_Flame",
                type = "entity",
            },
            [3] = {
                name = "Start_VEH_Fire_Sound",
                type = "Sound",
            },
            [4] = {
                name = "Stop_VEH_Fire_Sound",
                type = "Sound",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI46_620_B10_Fire_Manager";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager";
    self.Started = DummyFunction;
    self.Enabled_Flame = DummyFunction;
    self.Enabled_Veh_Fire = DummyFunction;
    self.Disabled_Veh_Fire = DummyFunction;
    self.gp_firepillar = nil;
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|13917156");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_6_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_MultipleAND_v2_9 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|173212722");
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
        [0] = self.f_box_MultipleAND_v2_9_Out,
    });
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|189006865");
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
        [0] = self.f_box_MultipleOR_30_Out,
    });
    self.box_ProximityTrigger_v2_1 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|427341257");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_1_OnOccupied,
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|838555840");
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
        [0] = self.f_box_MultipleOR_20_Out,
    });
    self.box_UNI46_620_B10_Audio_Manager_12 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Audio_Manager.debug.lua");
    l0 = self.box_UNI46_620_B10_Audio_Manager_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_620_B10_Audio_Manager_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|889225861");
    l0:SetConnections({
        -- Disabled_Flame,
        [0] = self.f_box_UNI46_620_B10_Audio_Manager_12_Disabled_Flame,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1202881610");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1213946340");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_UNI46_620_B10_Audio_Manager_25 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Audio_Manager.debug.lua");
    l0 = self.box_UNI46_620_B10_Audio_Manager_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_620_B10_Audio_Manager_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1308471204");
    l0:SetConnections({
        -- Disabled_Veh_Fire,
        [1] = self.f_box_UNI46_620_B10_Audio_Manager_25_Disabled_Veh_Fire,
        -- Enabled_Veh_Fire,
        [3] = self.f_box_UNI46_620_B10_Audio_Manager_25_Enabled_Veh_Fire,
    });
    self.box_UNI46_620_B10_Audio_Manager_22 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Audio_Manager.debug.lua");
    l0 = self.box_UNI46_620_B10_Audio_Manager_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_620_B10_Audio_Manager_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1683133581");
    l0:SetConnections({
        -- Disabled_Veh_Fire,
        [1] = self.f_box_UNI46_620_B10_Audio_Manager_22_Disabled_Veh_Fire,
        -- Enabled_Veh_Fire,
        [3] = self.f_box_UNI46_620_B10_Audio_Manager_22_Enabled_Veh_Fire,
    });
end;

function export:Disable_Veh_Fire()
    local params, l0;
    params = self:OnEnter_box_Compare_Boolean_28();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1211510738", "1211510738", "UNI46_620_B10_Fire_Manager", "Disable_Veh_Fire", "box_Compare_Boolean_28.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Enable_Flame()
    local params, l0;
    params = self:OnEnter_box_ProximityTrigger_v2_1();
    l0 = self.box_ProximityTrigger_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|23894645", "23894645", "UNI46_620_B10_Fire_Manager", "Enable_Flame", "box_ProximityTrigger_v2_1.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:Enable_Veh_Fire()
    local params, l0;
    params = self:OnEnter_box_Compare_Boolean_17();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|177042939", "177042939", "UNI46_620_B10_Fire_Manager", "Enable_Veh_Fire", "box_Compare_Boolean_17.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Start()
    local l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|398157248", "398157248", "UNI46_620_B10_Fire_Manager", "Start", "box_MultipleOR_5.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_6_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_7();
    l0 = self.box_Delay_v5_6;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|2141161069", "2141161069", "UNI46_620_B10_Fire_Manager", "box_Delay_v5_6.Started", "box_ParticleSystem_v3_7.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_7();
    l0 = self.box_Delay_v5_6;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1610315646", "1610315646", "UNI46_620_B10_Fire_Manager", "box_Delay_v5_6.TimeElapsed", "box_ParticleSystem_v3_7.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1319538952", "1319538952", "UNI46_620_B10_Fire_Manager", "box_OutputOrder_v2_14.Out", "Started", clone:GetLuaBox(), self);
    self:Started();
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1533988919", "1533988919", "UNI46_620_B10_Fire_Manager", "box_OutputOrder_v2_14.Out", "box_Delay_v5_8.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IsValueNil_v3_16_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_23();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1647581645", "1647581645", "UNI46_620_B10_Fire_Manager", "box_IsValueNil_v3_16.No", "box_IsValueNil_v3_23.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupAddToGroup_v2_13_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_9();
    l0 = self.box_MultipleAND_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1748169331", "1748169331", "UNI46_620_B10_Fire_Manager", "box_GroupAddToGroup_v2_13.Out", "box_MultipleAND_v2_9.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI46_620_B10_Audio_Manager_25();
    l0 = self.box_UNI46_620_B10_Audio_Manager_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|961211577", "961211577", "UNI46_620_B10_Fire_Manager", "box_OutputOrder_v2_29.Out", "box_UNI46_620_B10_Audio_Manager_25.Disable_Veh_Fire", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable_Veh_Fire
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|642386855", "642386855", "UNI46_620_B10_Fire_Manager", "box_OutputOrder_v2_29.Out", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleAND_v2_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_MultipleAND_v2_9;
    l1 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1784276198", "1784276198", "UNI46_620_B10_Fire_Manager", "box_MultipleAND_v2_9.Out", "box_Delay_v5_6.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UNI46_620_B10_Audio_Manager_22();
    l0 = self.box_MultipleOR_30;
    l1 = self.box_UNI46_620_B10_Audio_Manager_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1520069768", "1520069768", "UNI46_620_B10_Fire_Manager", "box_MultipleOR_30.Out", "box_UNI46_620_B10_Audio_Manager_22.Disable_Veh_Fire", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable_Veh_Fire
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_28_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1509062661", "1509062661", "UNI46_620_B10_Fire_Manager", "box_Compare_Boolean_28.A_is_False", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_28_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1720732398", "1720732398", "UNI46_620_B10_Fire_Manager", "box_Compare_Boolean_28.A_is_True", "box_OutputOrder_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_10();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1079131369", "1079131369", "UNI46_620_B10_Fire_Manager", "box_OutputOrder_v2_2.Out", "box_IsValueNil_v3_10.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_3();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1299338022", "1299338022", "UNI46_620_B10_Fire_Manager", "box_OutputOrder_v2_2.Out", "box_IsValueNil_v3_3.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_1_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_1;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|171745985", "171745985", "UNI46_620_B10_Fire_Manager", "box_ProximityTrigger_v2_1.OnOccupied", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_21();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|936289867", "936289867", "UNI46_620_B10_Fire_Manager", "box_OutputOrder_v2_27.Out", "box_ParticleSystem_v3_21.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1264381586", "1264381586", "UNI46_620_B10_Fire_Manager", "box_OutputOrder_v2_27.Out", "Disabled_Veh_Fire", clone:GetLuaBox(), self);
    self:Disabled_Veh_Fire();
end;

function export:f_box_ParticleSystem_v3_7_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI46_620_B10_Audio_Manager_12();
    l0 = self.box_UNI46_620_B10_Audio_Manager_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1391089325", "1391089325", "UNI46_620_B10_Fire_Manager", "box_ParticleSystem_v3_7.Started", "box_UNI46_620_B10_Audio_Manager_12.Enable_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable_Flame
    l0:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_7_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI46_620_B10_Audio_Manager_12();
    l0 = self.box_UNI46_620_B10_Audio_Manager_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1482213201", "1482213201", "UNI46_620_B10_Fire_Manager", "box_ParticleSystem_v3_7.Stopped", "box_UNI46_620_B10_Audio_Manager_12.Disable_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable_Flame
    l0:Exec(0, params);
end;

function export:f_box_IsValueNil_v3_24_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI46_620_B10_Audio_Manager_25();
    l0 = self.box_UNI46_620_B10_Audio_Manager_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1075261405", "1075261405", "UNI46_620_B10_Fire_Manager", "box_IsValueNil_v3_24.No", "box_UNI46_620_B10_Audio_Manager_25.Enable_Veh_Fire", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable_Veh_Fire
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_7();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1197118818", "1197118818", "UNI46_620_B10_Fire_Manager", "box_OutputOrder_v2_15.Out", "box_ParticleSystem_v3_7.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|84376863", "84376863", "UNI46_620_B10_Fire_Manager", "box_OutputOrder_v2_15.Out", "Enabled_Flame", clone:GetLuaBox(), self);
    self:Enabled_Flame();
end;

function export:f_box_MultipleOR_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_16();
    l0 = self.box_MultipleOR_20;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|701662257", "701662257", "UNI46_620_B10_Fire_Manager", "box_MultipleOR_20.Out", "box_IsValueNil_v3_16.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_18_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_24();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1737696843", "1737696843", "UNI46_620_B10_Fire_Manager", "box_IsValueNil_v3_18.No", "box_IsValueNil_v3_24.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UNI46_620_B10_Audio_Manager_12_Disabled_Flame()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_UNI46_620_B10_Audio_Manager_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1074950866", "1074950866", "UNI46_620_B10_Fire_Manager", "box_UNI46_620_B10_Audio_Manager_12.Disabled_Flame", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CreateUniqueGroup_11_Out()
    local params, l0;
    self:OnExit_box_CreateUniqueGroup_11_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|2144072813", "2144072813", "UNI46_620_B10_Fire_Manager", "box_CreateUniqueGroup_11.Out", "box_OutputOrder_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupAddToGroup_v2_4_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_9();
    l0 = self.box_MultipleAND_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1368179296", "1368179296", "UNI46_620_B10_Fire_Manager", "box_GroupAddToGroup_v2_4.Out", "box_MultipleAND_v2_9.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CreateUniqueGroup_11();
    l0 = self.box_MultipleOR_5;
    l1 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|675993218", "675993218", "UNI46_620_B10_Fire_Manager", "box_MultipleOR_5.Out", "box_CreateUniqueGroup_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = self.box_Delay_v5_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|679157355", "679157355", "UNI46_620_B10_Fire_Manager", "box_Delay_v5_8.TimeElapsed", "box_OutputOrder_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI46_620_B10_Audio_Manager_25_Disabled_Veh_Fire()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_26();
    l0 = self.box_UNI46_620_B10_Audio_Manager_25;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|997261142", "997261142", "UNI46_620_B10_Fire_Manager", "box_UNI46_620_B10_Audio_Manager_25.Disabled_Veh_Fire", "box_ParticleSystem_v3_26.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI46_620_B10_Audio_Manager_25_Enabled_Veh_Fire()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_26();
    l0 = self.box_UNI46_620_B10_Audio_Manager_25;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|194403733", "194403733", "UNI46_620_B10_Fire_Manager", "box_UNI46_620_B10_Audio_Manager_25.Enabled_Veh_Fire", "box_ParticleSystem_v3_26.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_18();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1082555058", "1082555058", "UNI46_620_B10_Fire_Manager", "box_OutputOrder_v2_19.Out", "box_IsValueNil_v3_18.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|487183949", "487183949", "UNI46_620_B10_Fire_Manager", "box_OutputOrder_v2_19.Out", "box_MultipleOR_20.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_10_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1997409899", "1997409899", "UNI46_620_B10_Fire_Manager", "box_IsValueNil_v3_10.No", "box_GroupAddToGroup_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UNI46_620_B10_Audio_Manager_22_Disabled_Veh_Fire()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_21();
    l0 = self.box_UNI46_620_B10_Audio_Manager_22;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1784354705", "1784354705", "UNI46_620_B10_Fire_Manager", "box_UNI46_620_B10_Audio_Manager_22.Disabled_Veh_Fire", "box_ParticleSystem_v3_21.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI46_620_B10_Audio_Manager_22_Enabled_Veh_Fire()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_21();
    l0 = self.box_UNI46_620_B10_Audio_Manager_22;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|2018355494", "2018355494", "UNI46_620_B10_Fire_Manager", "box_UNI46_620_B10_Audio_Manager_22.Enabled_Veh_Fire", "box_ParticleSystem_v3_21.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_3_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_13();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1704509249", "1704509249", "UNI46_620_B10_Fire_Manager", "box_IsValueNil_v3_3.No", "box_GroupAddToGroup_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_17_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1940310996", "1940310996", "UNI46_620_B10_Fire_Manager", "box_Compare_Boolean_17.A_is_False", "box_MultipleOR_20.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_17_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|282715064", "282715064", "UNI46_620_B10_Fire_Manager", "box_Compare_Boolean_17.A_is_True", "box_OutputOrder_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_23_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI46_620_B10_Audio_Manager_22();
    l0 = self.box_UNI46_620_B10_Audio_Manager_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|913762725", "913762725", "UNI46_620_B10_Fire_Manager", "box_IsValueNil_v3_23.No", "box_UNI46_620_B10_Audio_Manager_22.Enable_Veh_Fire", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable_Veh_Fire
    l0:Exec(3, params);
end;

function export:f_box_ParticleSystem_v3_26_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_26();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|231914530", "231914530", "UNI46_620_B10_Fire_Manager", "box_ParticleSystem_v3_26.Stopped", "box_ParticleSystem_v3_26.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_21_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1338356542", "1338356542", "UNI46_620_B10_Fire_Manager", "box_ParticleSystem_v3_21.Started", "Enabled_Veh_Fire", clone:GetLuaBox(), self);
    self:Enabled_Veh_Fire();
end;

function export:f_box_ParticleSystem_v3_21_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1501213335", "1501213335", "UNI46_620_B10_Fire_Manager", "box_ParticleSystem_v3_21.Stopped", "box_OutputOrder_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.Fire_Length,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|55512622");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|110193993");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_16_No,
    });
    params = {
        -- ent,
        [4] = self.Particle_Fire_Host,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|131960091");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_13_Out,
    });
    params = {
        -- FromGroup,
        [0] = self.Particle2,
        -- ToGroup,
        [1] = self.gp_firepillar,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|140256128");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_9()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|193008124");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_28_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_28_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bCoop,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|278259174");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 2,
        },
    });
    params = {
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

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|517133830");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|550615266");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_7_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_7_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.gp_firepillar,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|565376420");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_24_No,
    });
    params = {
        -- ent,
        [4] = self.Soundpoint_Fire_Client,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|702079024");
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

function export:OnEnter_box_IsValueNil_v3_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|884543460");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_18_No,
    });
    params = {
        -- ent,
        [4] = self.Particle_Fire_Client,
    };
    return params;
end;

function export:OnEnter_box_UNI46_620_B10_Audio_Manager_12()
    local params;
    params = {
        -- Soundpoint1_Flame,
        [1] = self.Soundpoint1,
        -- Soundpoint2_Flame,
        [2] = self.Soundpoint2,
    };
    return params;
end;

function export:OnEnter_box_CreateUniqueGroup_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateUniqueGroup_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|954904300");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateUniqueGroup_11_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1174850173");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_4_Out,
    });
    params = {
        -- FromGroup,
        [0] = self.Particle1,
        -- ToGroup,
        [1] = self.gp_firepillar,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_8()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.Delay,
    };
    return params;
end;

function export:OnEnter_box_UNI46_620_B10_Audio_Manager_25()
    local params;
    params = {
        -- Soundpoint_Fire,
        [0] = self.Soundpoint_Fire_Client,
        -- Start_VEH_Fire_Sound,
        [3] = self.Start_VEH_Fire_Sound,
        -- Stop_VEH_Fire_Sound,
        [4] = self.Stop_VEH_Fire_Sound,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1433926949");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1458305597");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_10_No,
    });
    params = {
        -- ent,
        [4] = self.Particle1,
    };
    return params;
end;

function export:OnEnter_box_UNI46_620_B10_Audio_Manager_22()
    local params;
    params = {
        -- Soundpoint_Fire,
        [0] = self.Soundpoint_Fire_Host,
        -- Start_VEH_Fire_Sound,
        [3] = self.Start_VEH_Fire_Sound,
        -- Stop_VEH_Fire_Sound,
        [4] = self.Stop_VEH_Fire_Sound,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1825942494");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_3_No,
    });
    params = {
        -- ent,
        [4] = self.Particle2,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1835519472");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_17_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_17_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bCoop,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|1938545054");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_23_No,
    });
    params = {
        -- ent,
        [4] = self.Soundpoint_Fire_Host,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|2080982442");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_26_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.Particle_Fire_Client,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Fire_Manager|2084854973");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_21_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_21_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.Particle_Fire_Host,
    };
    return params;
end;

function export:OnExit_box_CreateUniqueGroup_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    self.gp_firepillar = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Started()
    
end;
function export:Enabled_Flame()
    
end;
function export:Enabled_Veh_Fire()
    
end;
function export:Disabled_Veh_Fire()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable_Veh_Fire" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable_Flame" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable_Veh_Fire" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Disabled_Veh_Fire" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Enabled_Flame" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Enabled_Veh_Fire" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Started" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="bCoop" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="Delay" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Fire_Length" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Particle_Fire_Client" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Particle_Fire_Host" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Particle1" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Particle2" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Soundpoint_Fire_Client" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Soundpoint_Fire_Host" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Soundpoint1" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Soundpoint2" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Start_VEH_Fire_Sound" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="Stop_VEH_Fire_Sound" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="Trigger" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
