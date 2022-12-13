LUAC�x -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni46/uni46_010/uni46_010_b10.domino
-- User graph: uni46_010_vehiclefire_system
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="iGatePassed" Type="Core|int" />
    <DataIn Name="ListCheckpoints" Type="Core|list" />
    <DataIn Name="ListFXs" Type="Core|list" />
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
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1123537790.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_vehiclefire_system.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
            [2] = {
                name = "GatePass",
            },
        },
        controlInCount = 3,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "iGatePassed",
                type = "int",
            },
            [1] = {
                name = "ListCheckpoints",
                type = "list",
            },
            [2] = {
                name = "ListFXs",
                type = "list",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/CompareEntity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Equal",
                delayed = false,
            },
            [1] = {
                name = "NotEqual",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity1",
                type = "entity",
            },
            [1] = {
                name = "Entity2",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "bool",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/CompareIntegers.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_eq_B",
                delayed = false,
            },
            [1] = {
                name = "A_ge_B",
                delayed = false,
            },
            [2] = {
                name = "A_gt_B",
                delayed = false,
            },
            [3] = {
                name = "A_le_B",
                delayed = false,
            },
            [4] = {
                name = "A_lt_B",
                delayed = false,
            },
            [5] = {
                name = "A_ne_B",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "A",
                type = "int",
            },
            [1] = {
                name = "B",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/CoopActivePlayers.lua")] = {
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
                name = "OnePlayer",
                delayed = false,
            },
            [1] = {
                name = "PlayerAdded",
                delayed = true,
            },
            [2] = {
                name = "PlayerRemoved",
                delayed = true,
            },
            [3] = {
                name = "TwoPlayers",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "Player1",
                type = "entity",
            },
            [1] = {
                name = "Player2",
                type = "entity",
            },
            [2] = {
                name = "PlayerAddedOrRemoved",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/Gate_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Close",
            },
            [1] = {
                name = "In",
            },
            [2] = {
                name = "Open",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Closed",
                delayed = false,
            },
            [1] = {
                name = "Opened",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "initStateOpen",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/HealthModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Damage",
            },
            [1] = {
                name = "Heal",
            },
            [2] = {
                name = "RemoveCritical",
            },
            [3] = {
                name = "Set",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Damaged",
                delayed = false,
            },
            [1] = {
                name = "Healed",
                delayed = false,
            },
            [2] = {
                name = "OnRemoveCritical",
                delayed = false,
            },
            [3] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "damageWithStim",
                type = "int",
            },
            [1] = {
                name = "origin",
                type = "entity",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "value",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/MessageListener_v3.lua")] = {
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
                name = "Received",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "message",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/OnceOnly_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
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
                dynamicType = 1,
                delayed = false,
            },
            [1] = {
                name = "ResetOut",
                delayed = false,
            },
        },
        controlOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/SetBoolean_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "False",
            },
            [1] = {
                name = "FromBool",
            },
            [2] = {
                name = "Toggle",
            },
            [3] = {
                name = "True",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Bool",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "bool",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/SoundModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "SoundId",
                type = "Sound",
            },
            [2] = {
                name = "SoundType",
                type = "SoundType",
            },
            [3] = {
                name = "StopFadeOut",
                type = "float",
            },
            [4] = {
                name = "UseSubtitles",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In_Start_Fire",
            },
            [1] = {
                name = "In_Start_Flame",
            },
            [2] = {
                name = "In_Stop_Fire",
            },
            [3] = {
                name = "In_Stop_Flame",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Out_Start_Fire",
                delayed = false,
            },
            [1] = {
                name = "Out_Start_Flame",
                delayed = false,
            },
            [2] = {
                name = "Out_Stop_Fire",
                delayed = false,
            },
            [3] = {
                name = "Out_Stop_Flame",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Fire_Vehicle",
                type = "entity",
            },
            [1] = {
                name = "Flame_Soundpoint",
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
    self._name = "uni46_010_vehiclefire_system";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system";
    self.bCoop = false;
    self.ePlayerHost = nil;
    self.ePlayerClient = nil;
    self.ePlayerPassingGate = nil;
    self.box_MessageListener_v3_58 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2516925");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_58_Received,
    });
    self.box_OnceOnly_v3_157 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|18514146");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_157_Out_0,
            },
            count = 1,
        },
    });
    self.box_ProximityTrigger_v2_123 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|20842526");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_123_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_123_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_123_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_123_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_123_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_123_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_123_Use,
    });
    self.box_Audio_Manager_45 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
    l0 = self.box_Audio_Manager_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Audio_Manager_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|21670590");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_170 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|61392207");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_170_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_146 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|102565421");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_146_Out_0,
            },
            count = 1,
        },
    });
    self.box_Gate_v3_63 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|177689416");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_63_Out,
    });
    self.box_ProximityTrigger_v2_127 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|201007608");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_127_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_127_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_127_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_127_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_127_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_127_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_127_Use,
    });
    self.box_ProximityTrigger_v2_175 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|225269068");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_175_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_175_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_175_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_175_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_175_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_175_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_175_Use,
    });
    self.box_OnceOnly_v3_109 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|244145771");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_109_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_138 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|273605340");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_138_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|292846368");
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
        [0] = self.f_box_MultipleOR_62_Out,
    });
    self.box_OnceOnly_v3_168 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|326964647");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_168_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_142 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|330199026");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_142_Out_0,
            },
            count = 1,
        },
    });
    self.box_SoundModifier_v2_19 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|336308773");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_19_Started,
    });
    self.box_OnceOnly_v3_140 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|398366627");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_140_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_155 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|517724818");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_155_Out_0,
            },
            count = 1,
        },
    });
    self.box_ProximityTrigger_v2_156 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|544725762");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_156_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_156_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_156_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_156_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_156_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_156_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_156_Use,
    });
    self.box_Audio_Manager_36 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
    l0 = self.box_Audio_Manager_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Audio_Manager_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|564270252");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_83 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|601535620");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_83_Received,
    });
    self.box_Audio_Manager_37 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
    l0 = self.box_Audio_Manager_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Audio_Manager_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|619457193");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_131 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|655274303");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_131_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_131_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_131_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_131_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_131_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_131_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_131_Use,
    });
    self.box_ProximityTrigger_v2_177 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|679540857");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_177_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_177_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_177_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_177_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_177_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_177_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_177_Use,
    });
    self.box_ProximityTrigger_v2_119 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|693517368");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_119_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_119_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_119_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_119_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_119_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_119_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_119_Use,
    });
    self.box_ProximityTrigger_v2_98 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|736327855");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_98_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_98_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_98_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_98_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_98_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_98_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_98_Use,
    });
    self.box_SoundModifier_v2_26 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|772974261");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_26_Started,
    });
    self.box_ProximityTrigger_v2_183 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|782962186");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_183_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_183_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_183_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_183_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_183_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_183_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_183_Use,
    });
    self.box_ProximityTrigger_v2_154 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|790526947");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_154_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_154_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_154_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_154_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_154_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_154_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_154_Use,
    });
    self.box_MultipleOR_79 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|836394403");
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
        [0] = self.f_box_MultipleOR_79_Out,
    });
    self.box_CoopActivePlayers_17 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|901361507");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_17_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_17_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_17_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_17_TwoPlayers,
    });
    self.box_OnceOnly_v3_104 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|910033749");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_104_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_162 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|941454481");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_162_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_136 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|959937325");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_136_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_144 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|985179009");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_144_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_132 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|997379552");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_132_Out_0,
            },
            count = 1,
        },
    });
    self.box_Bind_v4_4 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1021812780");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_4_Bound,
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1021867818");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_Bind_v4_2 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1025358365");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_2_Bound,
    });
    self.box_Audio_Manager_27 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
    l0 = self.box_Audio_Manager_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Audio_Manager_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1057314288");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_161 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1090840664");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_161_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_166 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1124115593");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_166_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_50 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1143943750");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_50_TimeElapsed,
    });
    self.box_OnceOnly_v3_128 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1215550475");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_128_Out_0,
            },
            count = 1,
        },
    });
    self.box_Bind_v4_6 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1253028755");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_6_Bound,
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1287606781");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_MessageListener_v3_8 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1340571770");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_8_Received,
    });
    self.box_OnceOnly_v3_112 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1361694631");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_112_Out_0,
            },
            count = 1,
        },
    });
    self.box_Bind_v4_1 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1371452945");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_1_Bound,
    });
    self.box_Delay_v5_35 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1431455380");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_35_TimeElapsed,
    });
    self.box_MultipleOR_120 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1437901345");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 13,
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
        [0] = self.f_box_MultipleOR_120_Out,
    });
    self.box_ProximityTrigger_v2_125 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1517741354");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_125_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_125_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_125_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_125_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_125_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_125_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_125_Use,
    });
    self.box_OnceOnly_v3_106 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1601003374");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_106_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_134 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1620872792");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_134_Out_0,
            },
            count = 1,
        },
    });
    self.box_Gate_v3_65 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1653066833");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_65_Out,
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1827194648");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_Audio_Manager_30 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
    l0 = self.box_Audio_Manager_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Audio_Manager_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1831361790");
    l0:SetConnections({
    });
    self.box_Bind_v4_5 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1856969613");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_5_Bound,
    });
    self.box_OnceOnly_v3_160 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1887297775");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_160_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_49 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1907045251");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_49_TimeElapsed,
    });
    self.box_OnceOnly_v3_169 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1914880660");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_169_Out_0,
            },
            count = 1,
        },
    });
    self.box_ProximityTrigger_v2_158 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1940192865");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_158_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_158_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_158_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_158_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_158_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_158_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_158_Use,
    });
    self.box_Audio_Manager_54 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
    l0 = self.box_Audio_Manager_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Audio_Manager_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1994646021");
    l0:SetConnections({
    });
    self.box_MultipleOR_59 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2025238877");
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
        [0] = self.f_box_MultipleOR_59_Out,
    });
    self.box_OnceOnly_v3_149 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2032549474");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_149_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_182 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2092635103");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_182_Out_0,
            },
            count = 1,
        },
    });
    self.box_ProximityTrigger_v2_151 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2111109382");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_151_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_151_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_151_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_151_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_151_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_151_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_151_Use,
    });
    self.box_Bind_v4_3 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2135420947");
    l0:SetConnections({
    });
end;

function export:Activate()
    local params, l0;
    params = self:OnEnter_box_MessageListener_v3_58();
    l0 = self.box_MessageListener_v3_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|979421115", "979421115", "uni46_010_vehiclefire_system", "Activate", "box_MessageListener_v3_58.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0 = self.box_CoopActivePlayers_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1869732920", "1869732920", "uni46_010_vehiclefire_system", "Activate", "box_CoopActivePlayers_17.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:Deactivate()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1250669440", "1250669440", "uni46_010_vehiclefire_system", "Deactivate", "box_OutputOrder_v2_57.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:GatePass()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_101();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2037752337", "2037752337", "uni46_010_vehiclefire_system", "GatePass", "box_OutputOrder_v2_101.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_184_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_119();
    l0 = self.box_ProximityTrigger_v2_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1768839998", "1768839998", "uni46_010_vehiclefire_system", "box_Simple_Node_184.Out", "box_ProximityTrigger_v2_119.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_ProximityTrigger_v2_98();
    l0 = self.box_ProximityTrigger_v2_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|351959526", "351959526", "uni46_010_vehiclefire_system", "box_Simple_Node_184.Out", "box_ProximityTrigger_v2_98.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|304935118", "304935118", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_57.Out", "box_OutputOrder_v2_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1100335181", "1100335181", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_57.Out", "box_OutputOrder_v2_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_40();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|337352950", "337352950", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_57.Out", "box_Compare_Boolean_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1776909289", "1776909289", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_57.Out", "box_OutputOrder_v2_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_12_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2023538598", "2023538598", "uni46_010_vehiclefire_system", "box_Simple_Node_12.Out", "box_OutputOrder_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_58_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = self.box_MessageListener_v3_58;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|691650359", "691650359", "uni46_010_vehiclefire_system", "box_MessageListener_v3_58.Received", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_157_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_156();
    l0 = self.box_OnceOnly_v3_157;
    l1 = self.box_ProximityTrigger_v2_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|357768892", "357768892", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_157.Out", "box_ProximityTrigger_v2_156.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_123_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_122();
    l0 = self.box_ProximityTrigger_v2_123;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|397980263", "397980263", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_123.Disabled", "box_ParticleSystem_v3_122.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_123_Enabled()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_123_Enabled();
    params = self:OnEnter_box_ParticleSystem_v3_122();
    l0 = self.box_ProximityTrigger_v2_123;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1341309736", "1341309736", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_123.Enabled", "box_ParticleSystem_v3_122.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_123_Enter()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_123_Enter();
    l0 = self.box_ProximityTrigger_v2_123;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|377069741", "377069741", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_123.Enter", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ProximityTrigger_v2_123_Leave()
    self:OnExit_box_ProximityTrigger_v2_123_Leave();
end;

function export:f_box_ProximityTrigger_v2_123_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_123_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_123_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_123_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_123_Use()
    self:OnExit_box_ProximityTrigger_v2_123_Use();
end;

function export:f_box_OnceOnly_v3_170_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_175();
    l0 = self.box_OnceOnly_v3_170;
    l1 = self.box_ProximityTrigger_v2_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1746205870", "1746205870", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_170.Out", "box_ProximityTrigger_v2_175.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_111_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_110();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1718660634", "1718660634", "uni46_010_vehiclefire_system", "box_Compare_Integers_111.A_ge_B", "box_Compare_Integers_110.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_84_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1987825286", "1987825286", "uni46_010_vehiclefire_system", "box_Compare_Boolean_84.A_is_True", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_146_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_151();
    l0 = self.box_OnceOnly_v3_146;
    l1 = self.box_ProximityTrigger_v2_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1937633084", "1937633084", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_146.Out", "box_ProximityTrigger_v2_151.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_181_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_179();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1600328188", "1600328188", "uni46_010_vehiclefire_system", "box_Compare_Integers_181.A_ge_B", "box_Compare_Integers_179.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_118_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_19();
    l0 = self.box_SoundModifier_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1596516267", "1596516267", "uni46_010_vehiclefire_system", "box_ParticleSystem_v3_118.Started", "box_SoundModifier_v2_19.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_167_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_171();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1350407220", "1350407220", "uni46_010_vehiclefire_system", "box_Compare_Integers_167.A_ge_B", "box_Compare_Integers_171.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_47_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1842757646", "1842757646", "uni46_010_vehiclefire_system", "box_Simple_Node_47.Out", "box_OutputOrder_v2_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_Gate_v3_63;
    l1 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1210818941", "1210818941", "uni46_010_vehiclefire_system", "box_Gate_v3_63.Out", "box_Delay_v5_35.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_127_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_126();
    l0 = self.box_ProximityTrigger_v2_127;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1619006805", "1619006805", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_127.Disabled", "box_ParticleSystem_v3_126.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_127_Enabled()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_127_Enabled();
    params = self:OnEnter_box_ParticleSystem_v3_126();
    l0 = self.box_ProximityTrigger_v2_127;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|130938749", "130938749", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_127.Enabled", "box_ParticleSystem_v3_126.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_127_Enter()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_127_Enter();
    l0 = self.box_ProximityTrigger_v2_127;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|651566375", "651566375", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_127.Enter", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_ProximityTrigger_v2_127_Leave()
    self:OnExit_box_ProximityTrigger_v2_127_Leave();
end;

function export:f_box_ProximityTrigger_v2_127_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_127_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_127_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_127_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_127_Use()
    self:OnExit_box_ProximityTrigger_v2_127_Use();
end;

function export:f_box_ParticleSystem_v3_53_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_44();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1420146983", "1420146983", "uni46_010_vehiclefire_system", "box_ParticleSystem_v3_53.Stopped", "box_ParticleSystem_v3_44.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_64();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1482770072", "1482770072", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_61.Out", "box_OutputOrder_v2_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_60();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1146931871", "1146931871", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_61.Out", "box_Compare_Boolean_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_175_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_174();
    l0 = self.box_ProximityTrigger_v2_175;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1282328635", "1282328635", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_175.Disabled", "box_ParticleSystem_v3_174.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_175_Enabled()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_175_Enabled();
    params = self:OnEnter_box_ParticleSystem_v3_174();
    l0 = self.box_ProximityTrigger_v2_175;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1245996749", "1245996749", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_175.Enabled", "box_ParticleSystem_v3_174.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_175_Enter()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_175_Enter();
    l0 = self.box_ProximityTrigger_v2_175;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|266802330", "266802330", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_175.Enter", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 10);
end;

function export:f_box_ProximityTrigger_v2_175_Leave()
    self:OnExit_box_ProximityTrigger_v2_175_Leave();
end;

function export:f_box_ProximityTrigger_v2_175_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_175_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_175_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_175_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_175_Use()
    self:OnExit_box_ProximityTrigger_v2_175_Use();
end;

function export:f_box_ParticleSystem_v3_115_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_26();
    l0 = self.box_SoundModifier_v2_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|314372111", "314372111", "uni46_010_vehiclefire_system", "box_ParticleSystem_v3_115.Started", "box_SoundModifier_v2_26.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_109_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_123();
    l0 = self.box_OnceOnly_v3_109;
    l1 = self.box_ProximityTrigger_v2_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|784328531", "784328531", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_109.Out", "box_ProximityTrigger_v2_123.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_138_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_127();
    l0 = self.box_OnceOnly_v3_138;
    l1 = self.box_ProximityTrigger_v2_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|292194023", "292194023", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_138.Out", "box_ProximityTrigger_v2_127.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_49();
    l0 = self.box_MultipleOR_62;
    l1 = self.box_Delay_v5_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1020779576", "1020779576", "uni46_010_vehiclefire_system", "box_MultipleOR_62.Out", "box_Delay_v5_49.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Compare_Integers_145_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1397702448", "1397702448", "uni46_010_vehiclefire_system", "box_Compare_Integers_145.A_ge_B", "box_OnceOnly_v3_140.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_145_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1830872238", "1830872238", "uni46_010_vehiclefire_system", "box_Compare_Integers_145.A_lt_B", "box_OnceOnly_v3_146.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_168_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_177();
    l0 = self.box_OnceOnly_v3_168;
    l1 = self.box_ProximityTrigger_v2_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|491140916", "491140916", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_168.Out", "box_ProximityTrigger_v2_177.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_142_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_131();
    l0 = self.box_OnceOnly_v3_142;
    l1 = self.box_ProximityTrigger_v2_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1267072268", "1267072268", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_142.Out", "box_ProximityTrigger_v2_131.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_19_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_12();
    l0 = self.box_SoundModifier_v2_19;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|819065519", "819065519", "uni46_010_vehiclefire_system", "box_SoundModifier_v2_19.Started", "box_Simple_Node_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_113_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_114();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1941129301", "1941129301", "uni46_010_vehiclefire_system", "box_Compare_Boolean_113.A_is_True", "box_Compare_Entity_114.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_83();
    l0 = self.box_MessageListener_v3_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|461279552", "461279552", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_11.Out", "box_MessageListener_v3_83.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_8();
    l0 = self.box_MessageListener_v3_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1684416249", "1684416249", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_11.Out", "box_MessageListener_v3_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_140_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_151();
    l0 = self.box_OnceOnly_v3_140;
    l1 = self.box_ProximityTrigger_v2_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|502051083", "502051083", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_140.Out", "box_ProximityTrigger_v2_151.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_130_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_133();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|613320407", "613320407", "uni46_010_vehiclefire_system", "box_Compare_Integers_130.A_ge_B", "box_Compare_Integers_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_135_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_137();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|341346921", "341346921", "uni46_010_vehiclefire_system", "box_Compare_Integers_135.A_ge_B", "box_Compare_Integers_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_139_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_141();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|921216214", "921216214", "uni46_010_vehiclefire_system", "box_Compare_Integers_139.A_ge_B", "box_Compare_Integers_141.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_115();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|396884473", "396884473", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_13.Out", "box_ParticleSystem_v3_115.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_115();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|120723887", "120723887", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_13.Out", "box_ParticleSystem_v3_115.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_55_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_45();
    l0 = self.box_Audio_Manager_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|125994574", "125994574", "uni46_010_vehiclefire_system", "box_ParticleSystem_v3_55.Stopped", "box_Audio_Manager_45.In_Stop_Fire", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Stop_Fire
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_155_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_183();
    l0 = self.box_OnceOnly_v3_155;
    l1 = self.box_ProximityTrigger_v2_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1529053148", "1529053148", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_155.Out", "box_ProximityTrigger_v2_183.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|498235550", "498235550", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_48.Out", "box_MultipleOR_59.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1283800305", "1283800305", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_48.Out", "box_Delay_v5_34.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1057113936", "1057113936", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_14.Out", "box_Delay_v5_20.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_24();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2019413720", "2019413720", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_14.Out", "box_ParticleSystem_v3_24.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_21();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|583831719", "583831719", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_14.Out", "box_ParticleSystem_v3_21.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1026495599", "1026495599", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_14.Out", "box_Simple_Node_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_156_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_152();
    l0 = self.box_ProximityTrigger_v2_156;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|816844672", "816844672", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_156.Disabled", "box_ParticleSystem_v3_152.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_156_Enabled()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_156_Enabled();
    params = self:OnEnter_box_ParticleSystem_v3_152();
    l0 = self.box_ProximityTrigger_v2_156;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|944376133", "944376133", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_156.Enabled", "box_ParticleSystem_v3_152.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_156_Enter()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_156_Enter();
    l0 = self.box_ProximityTrigger_v2_156;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|633474714", "633474714", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_156.Enter", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_ProximityTrigger_v2_156_Leave()
    self:OnExit_box_ProximityTrigger_v2_156_Leave();
end;

function export:f_box_ProximityTrigger_v2_156_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_156_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_156_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_156_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_156_Use()
    self:OnExit_box_ProximityTrigger_v2_156_Use();
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_4();
    l0 = self.box_Bind_v4_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1745452770", "1745452770", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_41.Out", "box_Bind_v4_4.UnBind", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_6();
    l0 = self.box_Bind_v4_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2052677293", "2052677293", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_41.Out", "box_Bind_v4_6.UnBind", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_41_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_3();
    l0 = self.box_Bind_v4_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1546570420", "1546570420", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_41.Out", "box_Bind_v4_3.UnBind", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_164_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1999778689", "1999778689", "uni46_010_vehiclefire_system", "box_Compare_Integers_164.A_ge_B", "box_OnceOnly_v3_157.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_164_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|322986428", "322986428", "uni46_010_vehiclefire_system", "box_Compare_Integers_164.A_lt_B", "box_OnceOnly_v3_162.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_165_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_164();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1112497826", "1112497826", "uni46_010_vehiclefire_system", "box_Compare_Integers_165.A_ge_B", "box_Compare_Integers_164.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_159_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_163();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1337366079", "1337366079", "uni46_010_vehiclefire_system", "box_Compare_Integers_159.A_ge_B", "box_Compare_Integers_163.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_83_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_1();
    l0 = self.box_MessageListener_v3_83;
    l1 = self.box_Bind_v4_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1479940560", "1479940560", "uni46_010_vehiclefire_system", "box_MessageListener_v3_83.Received", "box_Bind_v4_1.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_172_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|245994843", "245994843", "uni46_010_vehiclefire_system", "box_Compare_Integers_172.A_ge_B", "box_OnceOnly_v3_166.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_172_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1449692561", "1449692561", "uni46_010_vehiclefire_system", "box_Compare_Integers_172.A_lt_B", "box_OnceOnly_v3_170.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_131_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_129();
    l0 = self.box_ProximityTrigger_v2_131;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1709113042", "1709113042", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_131.Disabled", "box_ParticleSystem_v3_129.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_131_Enabled()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_131_Enabled();
    params = self:OnEnter_box_ParticleSystem_v3_129();
    l0 = self.box_ProximityTrigger_v2_131;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1706149005", "1706149005", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_131.Enabled", "box_ParticleSystem_v3_129.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_131_Enter()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_131_Enter();
    l0 = self.box_ProximityTrigger_v2_131;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1699787294", "1699787294", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_131.Enter", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_ProximityTrigger_v2_131_Leave()
    self:OnExit_box_ProximityTrigger_v2_131_Leave();
end;

function export:f_box_ProximityTrigger_v2_131_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_131_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_131_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_131_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_131_Use()
    self:OnExit_box_ProximityTrigger_v2_131_Use();
end;

function export:f_box_Compare_Integers_107_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_108();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|47564545", "47564545", "uni46_010_vehiclefire_system", "box_Compare_Integers_107.A_ge_B", "box_Compare_Integers_108.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_177_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_176();
    l0 = self.box_ProximityTrigger_v2_177;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1804110372", "1804110372", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_177.Disabled", "box_ParticleSystem_v3_176.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_177_Enabled()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_177_Enabled();
    params = self:OnEnter_box_ParticleSystem_v3_176();
    l0 = self.box_ProximityTrigger_v2_177;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1093312382", "1093312382", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_177.Enabled", "box_ParticleSystem_v3_176.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_177_Enter()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_177_Enter();
    l0 = self.box_ProximityTrigger_v2_177;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|702543390", "702543390", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_177.Enter", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 11);
end;

function export:f_box_ProximityTrigger_v2_177_Leave()
    self:OnExit_box_ProximityTrigger_v2_177_Leave();
end;

function export:f_box_ProximityTrigger_v2_177_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_177_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_177_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_177_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_177_Use()
    self:OnExit_box_ProximityTrigger_v2_177_Use();
end;

function export:f_box_ProximityTrigger_v2_119_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_121();
    l0 = self.box_ProximityTrigger_v2_119;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1486894347", "1486894347", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_119.Disabled", "box_ParticleSystem_v3_121.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_119_Enabled()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_119_Enabled();
    params = self:OnEnter_box_ParticleSystem_v3_121();
    l0 = self.box_ProximityTrigger_v2_119;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|969379642", "969379642", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_119.Enabled", "box_ParticleSystem_v3_121.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_119_Enter()
    self:OnExit_box_ProximityTrigger_v2_119_Enter();
end;

function export:f_box_ProximityTrigger_v2_119_Leave()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_119_Leave();
    l0 = self.box_ProximityTrigger_v2_119;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1287413184", "1287413184", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_119.Leave", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_119_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_119_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_119_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_119_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_119_Use()
    self:OnExit_box_ProximityTrigger_v2_119_Use();
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|396169563", "396169563", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_52.Out", "box_MultipleOR_62.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_50();
    l0 = self.box_Delay_v5_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2022633424", "2022633424", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_52.Out", "box_Delay_v5_50.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_66_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_65();
    l0 = self.box_Gate_v3_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1152164431", "1152164431", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_66.Out", "box_Gate_v3_65.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_66_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2072961824", "2072961824", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_66.Out", "box_MultipleOR_62.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_98_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_99();
    l0 = self.box_ProximityTrigger_v2_98;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|438605729", "438605729", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_98.Disabled", "box_ParticleSystem_v3_99.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_98_Enabled()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_98_Enabled();
    params = self:OnEnter_box_ParticleSystem_v3_99();
    l0 = self.box_ProximityTrigger_v2_98;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1499307996", "1499307996", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_98.Enabled", "box_ParticleSystem_v3_99.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_98_Enter()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_98_Enter();
    l0 = self.box_ProximityTrigger_v2_98;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|480101663", "480101663", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_98.Enter", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_98_Leave()
    self:OnExit_box_ProximityTrigger_v2_98_Leave();
end;

function export:f_box_ProximityTrigger_v2_98_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_98_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_98_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_98_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_98_Use()
    self:OnExit_box_ProximityTrigger_v2_98_Use();
end;

function export:f_box_ParticleSystem_v3_21_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_27();
    l0 = self.box_Audio_Manager_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|919045389", "919045389", "uni46_010_vehiclefire_system", "box_ParticleSystem_v3_21.Stopped", "box_Audio_Manager_27.In_Stop_Fire", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Stop_Fire
    l0:Exec(2, params);
end;

function export:f_box_SoundModifier_v2_26_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_12();
    l0 = self.box_SoundModifier_v2_26;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1939629023", "1939629023", "uni46_010_vehiclefire_system", "box_SoundModifier_v2_26.Started", "box_Simple_Node_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_183_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_178();
    l0 = self.box_ProximityTrigger_v2_183;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1839084861", "1839084861", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_183.Disabled", "box_ParticleSystem_v3_178.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_183_Enabled()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_183_Enabled();
    params = self:OnEnter_box_ParticleSystem_v3_178();
    l0 = self.box_ProximityTrigger_v2_183;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1310550814", "1310550814", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_183.Enabled", "box_ParticleSystem_v3_178.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_183_Enter()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_183_Enter();
    l0 = self.box_ProximityTrigger_v2_183;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|336286994", "336286994", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_183.Enter", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 12);
end;

function export:f_box_ProximityTrigger_v2_183_Leave()
    self:OnExit_box_ProximityTrigger_v2_183_Leave();
end;

function export:f_box_ProximityTrigger_v2_183_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_183_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_183_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_183_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_183_Use()
    self:OnExit_box_ProximityTrigger_v2_183_Use();
end;

function export:f_box_ProximityTrigger_v2_154_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_153();
    l0 = self.box_ProximityTrigger_v2_154;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1071166450", "1071166450", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_154.Disabled", "box_ParticleSystem_v3_153.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_154_Enabled()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_154_Enabled();
    params = self:OnEnter_box_ParticleSystem_v3_153();
    l0 = self.box_ProximityTrigger_v2_154;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|191121459", "191121459", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_154.Enabled", "box_ParticleSystem_v3_153.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_154_Enter()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_154_Enter();
    l0 = self.box_ProximityTrigger_v2_154;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1821626274", "1821626274", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_154.Enter", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_ProximityTrigger_v2_154_Leave()
    self:OnExit_box_ProximityTrigger_v2_154_Leave();
end;

function export:f_box_ProximityTrigger_v2_154_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_154_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_154_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_154_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_154_Use()
    self:OnExit_box_ProximityTrigger_v2_154_Use();
end;

function export:f_box_MultipleOR_79_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_MultipleOR_79;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|701314547", "701314547", "uni46_010_vehiclefire_system", "box_MultipleOR_79.Out", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_105_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_12();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|304489076", "304489076", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_105.Out", "box_Simple_Node_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_105_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_184();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1241569924", "1241569924", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_105.Out", "box_Simple_Node_184.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_17_OnePlayer()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_17_OnePlayer();
    l0 = self.box_CoopActivePlayers_17;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1951076055", "1951076055", "uni46_010_vehiclefire_system", "box_CoopActivePlayers_17.OnePlayer", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_17_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_10();
    l0 = self.box_CoopActivePlayers_17;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|64413725", "64413725", "uni46_010_vehiclefire_system", "box_CoopActivePlayers_17.PlayerAdded", "box_Simple_Node_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_17_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_17_TwoPlayers();
    params = self:OnEnter_box_SetBoolean_v2_78();
    l0 = self.box_CoopActivePlayers_17;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1443031186", "1443031186", "uni46_010_vehiclefire_system", "box_CoopActivePlayers_17.TwoPlayers", "box_SetBoolean_v2_78.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_44_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_54();
    l0 = self.box_Audio_Manager_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1193860004", "1193860004", "uni46_010_vehiclefire_system", "box_ParticleSystem_v3_44.Stopped", "box_Audio_Manager_54.In_Stop_Fire", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Stop_Fire
    l0:Exec(2, params);
end;

function export:f_box_Compare_Integers_171_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|936959916", "936959916", "uni46_010_vehiclefire_system", "box_Compare_Integers_171.A_ge_B", "box_OnceOnly_v3_169.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_171_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1602013989", "1602013989", "uni46_010_vehiclefire_system", "box_Compare_Integers_171.A_lt_B", "box_OnceOnly_v3_168.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_83();
    l0 = self.box_MessageListener_v3_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|716636019", "716636019", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_38.Out", "box_MessageListener_v3_83.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_8();
    l0 = self.box_MessageListener_v3_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1413200396", "1413200396", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_38.Out", "box_MessageListener_v3_8.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_104_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_98();
    l0 = self.box_OnceOnly_v3_104;
    l1 = self.box_ProximityTrigger_v2_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|925590363", "925590363", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_104.Out", "box_ProximityTrigger_v2_98.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1609222414", "1609222414", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_15.Out", "box_Delay_v5_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_25();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|75163973", "75163973", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_15.Out", "box_ParticleSystem_v3_25.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_31();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1751956234", "1751956234", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_15.Out", "box_ParticleSystem_v3_31.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_47();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|480474370", "480474370", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_15.Out", "box_Simple_Node_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_173_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_172();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1687180427", "1687180427", "uni46_010_vehiclefire_system", "box_Compare_Integers_173.A_ge_B", "box_Compare_Integers_172.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_162_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_156();
    l0 = self.box_OnceOnly_v3_162;
    l1 = self.box_ProximityTrigger_v2_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|453748657", "453748657", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_162.Out", "box_ProximityTrigger_v2_156.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_16_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_37();
    l0 = self.box_Audio_Manager_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|511409387", "511409387", "uni46_010_vehiclefire_system", "box_ParticleSystem_v3_16.Started", "box_Audio_Manager_37.In_Start_Fire", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Start_Fire
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_136_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_131();
    l0 = self.box_OnceOnly_v3_136;
    l1 = self.box_ProximityTrigger_v2_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1096217424", "1096217424", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_136.Out", "box_ProximityTrigger_v2_131.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_137_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2083238330", "2083238330", "uni46_010_vehiclefire_system", "box_Compare_Integers_137.A_ge_B", "box_OnceOnly_v3_132.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_137_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1139452401", "1139452401", "uni46_010_vehiclefire_system", "box_Compare_Integers_137.A_lt_B", "box_OnceOnly_v3_138.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_144_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_154();
    l0 = self.box_OnceOnly_v3_144;
    l1 = self.box_ProximityTrigger_v2_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|947740997", "947740997", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_144.Out", "box_ProximityTrigger_v2_154.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_147_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_148();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1798186896", "1798186896", "uni46_010_vehiclefire_system", "box_Compare_Integers_147.A_ge_B", "box_Compare_Integers_148.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_132_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_127();
    l0 = self.box_OnceOnly_v3_132;
    l1 = self.box_ProximityTrigger_v2_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1842575856", "1842575856", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_132.Out", "box_ProximityTrigger_v2_127.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_4_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_6();
    l0 = self.box_Bind_v4_4;
    l1 = self.box_Bind_v4_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|399407278", "399407278", "uni46_010_vehiclefire_system", "box_Bind_v4_4.Bound", "box_Bind_v4_6.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_Delay_v5_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1187902807", "1187902807", "uni46_010_vehiclefire_system", "box_Delay_v5_20.TimeElapsed", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_2_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_5();
    l0 = self.box_Bind_v4_2;
    l1 = self.box_Bind_v4_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|119441790", "119441790", "uni46_010_vehiclefire_system", "box_Bind_v4_2.Bound", "box_Bind_v4_5.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_60_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_66();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|362193559", "362193559", "uni46_010_vehiclefire_system", "box_Compare_Boolean_60.A_is_True", "box_OutputOrder_v2_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_133_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|408394462", "408394462", "uni46_010_vehiclefire_system", "box_Compare_Integers_133.A_ge_B", "box_OnceOnly_v3_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_133_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1888420879", "1888420879", "uni46_010_vehiclefire_system", "box_Compare_Integers_133.A_lt_B", "box_OnceOnly_v3_134.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_56_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_55();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2071458551", "2071458551", "uni46_010_vehiclefire_system", "box_ParticleSystem_v3_56.Stopped", "box_ParticleSystem_v3_55.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_179_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1536633000", "1536633000", "uni46_010_vehiclefire_system", "box_Compare_Integers_179.A_ge_B", "box_OnceOnly_v3_182.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_179_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1775440103", "1775440103", "uni46_010_vehiclefire_system", "box_Compare_Integers_179.A_lt_B", "box_OnceOnly_v3_155.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_40_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1801678386", "1801678386", "uni46_010_vehiclefire_system", "box_Compare_Boolean_40.A_is_True", "box_OutputOrder_v2_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_161_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_158();
    l0 = self.box_OnceOnly_v3_161;
    l1 = self.box_ProximityTrigger_v2_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|809510874", "809510874", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_161.Out", "box_ProximityTrigger_v2_158.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_23_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_36();
    l0 = self.box_Audio_Manager_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|379401655", "379401655", "uni46_010_vehiclefire_system", "box_ParticleSystem_v3_23.Started", "box_Audio_Manager_36.In_Start_Fire", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Start_Fire
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_166_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_175();
    l0 = self.box_OnceOnly_v3_166;
    l1 = self.box_ProximityTrigger_v2_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1544920363", "1544920363", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_166.Out", "box_ProximityTrigger_v2_175.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_50_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_65();
    l0 = self.box_Delay_v5_50;
    l1 = self.box_Gate_v3_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|77228764", "77228764", "uni46_010_vehiclefire_system", "box_Delay_v5_50.TimeElapsed", "box_Gate_v3_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_128_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_125();
    l0 = self.box_OnceOnly_v3_128;
    l1 = self.box_ProximityTrigger_v2_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|560977025", "560977025", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_128.Out", "box_ProximityTrigger_v2_125.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_6_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_3();
    l0 = self.box_Bind_v4_6;
    l1 = self.box_Bind_v4_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1220546028", "1220546028", "uni46_010_vehiclefire_system", "box_Bind_v4_6.Bound", "box_Bind_v4_3.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_63();
    l0 = self.box_Delay_v5_34;
    l1 = self.box_Gate_v3_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|730801578", "730801578", "uni46_010_vehiclefire_system", "box_Delay_v5_34.TimeElapsed", "box_Gate_v3_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_102_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_118();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|24550242", "24550242", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_102.Out", "box_ParticleSystem_v3_118.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_118();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1105613270", "1105613270", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_102.Out", "box_ParticleSystem_v3_118.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_8_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_105();
    l0 = self.box_MessageListener_v3_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1954947322", "1954947322", "uni46_010_vehiclefire_system", "box_MessageListener_v3_8.Received", "box_OutputOrder_v2_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_53();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|554678155", "554678155", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_43.Out", "box_ParticleSystem_v3_53.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_42();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1411691758", "1411691758", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_43.Out", "box_Compare_Boolean_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_112_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_123();
    l0 = self.box_OnceOnly_v3_112;
    l1 = self.box_ProximityTrigger_v2_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|545521428", "545521428", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_112.Out", "box_ProximityTrigger_v2_123.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_7_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_4();
    l0 = self.box_Bind_v4_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1651934518", "1651934518", "uni46_010_vehiclefire_system", "box_Compare_Boolean_7.A_is_True", "box_Bind_v4_4.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_Bind_v4_1_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_2();
    l0 = self.box_Bind_v4_1;
    l1 = self.box_Bind_v4_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1142143630", "1142143630", "uni46_010_vehiclefire_system", "box_Bind_v4_1.Bound", "box_Bind_v4_2.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_143_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_145();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2002716007", "2002716007", "uni46_010_vehiclefire_system", "box_Compare_Integers_143.A_ge_B", "box_Compare_Integers_145.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_35_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_33();
    l0 = self.box_Delay_v5_35;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|949377891", "949377891", "uni46_010_vehiclefire_system", "box_Delay_v5_35.TimeElapsed", "box_HealthModifier_v2_33.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_148_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1287708930", "1287708930", "uni46_010_vehiclefire_system", "box_Compare_Integers_148.A_ge_B", "box_OnceOnly_v3_144.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_148_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1219756671", "1219756671", "uni46_010_vehiclefire_system", "box_Compare_Integers_148.A_lt_B", "box_OnceOnly_v3_149.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_120_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_116();
    l0 = self.box_MultipleOR_120;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1987748503", "1987748503", "uni46_010_vehiclefire_system", "box_MultipleOR_120.Out", "box_OutputOrder_v2_116.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_125_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_124();
    l0 = self.box_ProximityTrigger_v2_125;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|899699531", "899699531", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_125.Disabled", "box_ParticleSystem_v3_124.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_125_Enabled()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_125_Enabled();
    params = self:OnEnter_box_ParticleSystem_v3_124();
    l0 = self.box_ProximityTrigger_v2_125;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1091856616", "1091856616", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_125.Enabled", "box_ParticleSystem_v3_124.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_125_Enter()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_125_Enter();
    l0 = self.box_ProximityTrigger_v2_125;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1003108589", "1003108589", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_125.Enter", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_ProximityTrigger_v2_125_Leave()
    self:OnExit_box_ProximityTrigger_v2_125_Leave();
end;

function export:f_box_ProximityTrigger_v2_125_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_125_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_125_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_125_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_125_Use()
    self:OnExit_box_ProximityTrigger_v2_125_Use();
end;

function export:f_box_Compare_Integers_110_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|307440270", "307440270", "uni46_010_vehiclefire_system", "box_Compare_Integers_110.A_ge_B", "box_OnceOnly_v3_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_110_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|717270330", "717270330", "uni46_010_vehiclefire_system", "box_Compare_Integers_110.A_lt_B", "box_OnceOnly_v3_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Entity_114_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|970478444", "970478444", "uni46_010_vehiclefire_system", "box_Compare_Entity_114.Equal", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_117_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_102();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|159678767", "159678767", "uni46_010_vehiclefire_system", "box_Compare_Entity_117.Equal", "box_OutputOrder_v2_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_78_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_78_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|659121458", "659121458", "uni46_010_vehiclefire_system", "box_SetBoolean_v2_78.Out", "box_MultipleOR_79.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_116_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_117();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|369191767", "369191767", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_116.Out", "box_Compare_Entity_117.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_116_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_113();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1666215800", "1666215800", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_116.Out", "box_Compare_Boolean_113.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_106_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_119();
    l0 = self.box_OnceOnly_v3_106;
    l1 = self.box_ProximityTrigger_v2_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|671893080", "671893080", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_106.Out", "box_ProximityTrigger_v2_119.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_134_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_125();
    l0 = self.box_OnceOnly_v3_134;
    l1 = self.box_ProximityTrigger_v2_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|155834741", "155834741", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_134.Out", "box_ProximityTrigger_v2_125.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_163_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|805575061", "805575061", "uni46_010_vehiclefire_system", "box_Compare_Integers_163.A_ge_B", "box_OnceOnly_v3_161.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_163_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|519752272", "519752272", "uni46_010_vehiclefire_system", "box_Compare_Integers_163.A_lt_B", "box_OnceOnly_v3_160.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_65_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_49();
    l0 = self.box_Gate_v3_65;
    l1 = self.box_Delay_v5_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|939048681", "939048681", "uni46_010_vehiclefire_system", "box_Gate_v3_65.Out", "box_Delay_v5_49.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Integers_108_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|231409998", "231409998", "uni46_010_vehiclefire_system", "box_Compare_Integers_108.A_ge_B", "box_OnceOnly_v3_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_50();
    l0 = self.box_Delay_v5_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2120579974", "2120579974", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_28.Out", "box_Delay_v5_50.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_22();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|781534347", "781534347", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_28.Out", "box_ParticleSystem_v3_22.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_16();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2066391440", "2066391440", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_28.Out", "box_ParticleSystem_v3_16.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1025746599", "1025746599", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_32.Out", "box_Delay_v5_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_29();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|339912057", "339912057", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_32.Out", "box_ParticleSystem_v3_29.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_23();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2909698", "2909698", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_32.Out", "box_ParticleSystem_v3_23.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_1();
    l0 = self.box_Bind_v4_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1575546230", "1575546230", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_39.Out", "box_Bind_v4_1.UnBind", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_2();
    l0 = self.box_Bind_v4_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1397600453", "1397600453", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_39.Out", "box_Bind_v4_2.UnBind", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_5();
    l0 = self.box_Bind_v4_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1847355266", "1847355266", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_39.Out", "box_Bind_v4_5.UnBind", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_141_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1538126629", "1538126629", "uni46_010_vehiclefire_system", "box_Compare_Integers_141.A_ge_B", "box_OnceOnly_v3_136.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_141_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1371791448", "1371791448", "uni46_010_vehiclefire_system", "box_Compare_Integers_141.A_lt_B", "box_OnceOnly_v3_142.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_101_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_96();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|986376047", "986376047", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_101.Out", "box_Compare_Integers_96.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_107();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|822612136", "822612136", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_101.Out", "box_Compare_Integers_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_111();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|718544312", "718544312", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_101.Out", "box_Compare_Integers_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_130();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1922696794", "1922696794", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_101.Out", "box_Compare_Integers_130.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_135();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|473269153", "473269153", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_101.Out", "box_Compare_Integers_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_139();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2136047661", "2136047661", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_101.Out", "box_Compare_Integers_139.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_143();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1695786938", "1695786938", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_101.Out", "box_Compare_Integers_143.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_147();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1691435388", "1691435388", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_101.Out", "box_Compare_Integers_147.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_165();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|398680725", "398680725", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_101.Out", "box_Compare_Integers_165.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_159();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|616551255", "616551255", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_101.Out", "box_Compare_Integers_159.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_173();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|525714030", "525714030", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_101.Out", "box_Compare_Integers_173.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_167();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1717801152", "1717801152", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_101.Out", "box_Compare_Integers_167.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_181();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|275296331", "275296331", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_101.Out", "box_Compare_Integers_181.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_103_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|799577490", "799577490", "uni46_010_vehiclefire_system", "box_Compare_Integers_103.A_ge_B", "box_OnceOnly_v3_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = self.box_Delay_v5_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1045918946", "1045918946", "uni46_010_vehiclefire_system", "box_Delay_v5_18.TimeElapsed", "box_OutputOrder_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_64_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_63();
    l0 = self.box_Gate_v3_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|578908896", "578908896", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_64.Out", "box_Gate_v3_63.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_64_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|63773094", "63773094", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_64.Out", "box_MultipleOR_59.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_46_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2005196041", "2005196041", "uni46_010_vehiclefire_system", "box_Simple_Node_46.Out", "box_OutputOrder_v2_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_5_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_7();
    l0 = self.box_Bind_v4_5;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1306881016", "1306881016", "uni46_010_vehiclefire_system", "box_Bind_v4_5.Bound", "box_Compare_Boolean_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_160_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_158();
    l0 = self.box_OnceOnly_v3_160;
    l1 = self.box_ProximityTrigger_v2_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|584549411", "584549411", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_160.Out", "box_ProximityTrigger_v2_158.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_42_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_56();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1560609940", "1560609940", "uni46_010_vehiclefire_system", "box_Compare_Boolean_42.A_is_False", "box_ParticleSystem_v3_56.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_49_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_51();
    l0 = self.box_Delay_v5_49;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1308779892", "1308779892", "uni46_010_vehiclefire_system", "box_Delay_v5_49.TimeElapsed", "box_HealthModifier_v2_51.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_169_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_177();
    l0 = self.box_OnceOnly_v3_169;
    l1 = self.box_ProximityTrigger_v2_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1861173815", "1861173815", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_169.Out", "box_ProximityTrigger_v2_177.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_158_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_180();
    l0 = self.box_ProximityTrigger_v2_158;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1880093564", "1880093564", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_158.Disabled", "box_ParticleSystem_v3_180.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_158_Enabled()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_158_Enabled();
    params = self:OnEnter_box_ParticleSystem_v3_180();
    l0 = self.box_ProximityTrigger_v2_158;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|144194779", "144194779", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_158.Enabled", "box_ParticleSystem_v3_180.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_158_Enter()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_158_Enter();
    l0 = self.box_ProximityTrigger_v2_158;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1440069385", "1440069385", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_158.Enter", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_ProximityTrigger_v2_158_Leave()
    self:OnExit_box_ProximityTrigger_v2_158_Leave();
end;

function export:f_box_ProximityTrigger_v2_158_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_158_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_158_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_158_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_158_Use()
    self:OnExit_box_ProximityTrigger_v2_158_Use();
end;

function export:f_box_MultipleOR_59_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_MultipleOR_59;
    l1 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1897574559", "1897574559", "uni46_010_vehiclefire_system", "box_MultipleOR_59.Out", "box_Delay_v5_35.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_OnceOnly_v3_149_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_154();
    l0 = self.box_OnceOnly_v3_149;
    l1 = self.box_ProximityTrigger_v2_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1354999787", "1354999787", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_149.Out", "box_ProximityTrigger_v2_154.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1118914436", "1118914436", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_9.Out", "box_OutputOrder_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_84();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1689502545", "1689502545", "uni46_010_vehiclefire_system", "box_OutputOrder_v2_9.Out", "box_Compare_Boolean_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_96_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_103();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1789905908", "1789905908", "uni46_010_vehiclefire_system", "box_Compare_Integers_96.A_ge_B", "box_Compare_Integers_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_31_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_30();
    l0 = self.box_Audio_Manager_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|531852420", "531852420", "uni46_010_vehiclefire_system", "box_ParticleSystem_v3_31.Stopped", "box_Audio_Manager_30.In_Stop_Fire", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Stop_Fire
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_182_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_183();
    l0 = self.box_OnceOnly_v3_182;
    l1 = self.box_ProximityTrigger_v2_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|647756561", "647756561", "uni46_010_vehiclefire_system", "box_OnceOnly_v3_182.Out", "box_ProximityTrigger_v2_183.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_151_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_150();
    l0 = self.box_ProximityTrigger_v2_151;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1220785970", "1220785970", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_151.Disabled", "box_ParticleSystem_v3_150.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_151_Enabled()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_151_Enabled();
    params = self:OnEnter_box_ParticleSystem_v3_150();
    l0 = self.box_ProximityTrigger_v2_151;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1878810761", "1878810761", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_151.Enabled", "box_ParticleSystem_v3_150.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_151_Enter()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_151_Enter();
    l0 = self.box_ProximityTrigger_v2_151;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1216692112", "1216692112", "uni46_010_vehiclefire_system", "box_ProximityTrigger_v2_151.Enter", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_ProximityTrigger_v2_151_Leave()
    self:OnExit_box_ProximityTrigger_v2_151_Leave();
end;

function export:f_box_ProximityTrigger_v2_151_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_151_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_151_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_151_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_151_Use()
    self:OnExit_box_ProximityTrigger_v2_151_Use();
end;

function export:OnEnter_box_Simple_Node_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|@ActivateFirstSprinklers");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_184_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|@Disabling");
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
                [0] = self.f_box_OutputOrder_v2_57_Out_0,
                [1] = self.f_box_OutputOrder_v2_57_Out_1,
                [2] = self.f_box_OutputOrder_v2_57_Out_2,
                [3] = self.f_box_OutputOrder_v2_57_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|@RestartCarFire");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_12_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_58()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "uni46_010_playerfire_deactivate",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|19810218");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103898804752236132",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_123()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103899187734134420",
    };
    return params;
end;

function export:OnEnter_box_Audio_Manager_45()
    local params;
    params = {
        -- Fire_Vehicle,
        [0] = "2103165457910477741",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|77931012");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_111_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|78072984");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_84_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bCoop,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|108553614");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_181_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|130655808");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_118_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103222278748647038",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|149094492");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_167_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|149359748");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103222316574977669",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|165926609");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_47_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_63()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_127()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103899221087239835",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|207262025");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_53_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103222261956750968",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|212996862");
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
                [0] = self.f_box_OutputOrder_v2_61_Out_0,
                [1] = self.f_box_OutputOrder_v2_61_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_175()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103899310090370727",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|229480246");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_115_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103222316574977673",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|306353899");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_145_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_145_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 9,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_19()
    local params;
    params = {
        -- Pawns,
        [0] = self.ePlayerHost,
        -- SoundId,
        [1] = "1123537790",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|347355164");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_113_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bCoop,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|366550714");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|429682731");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_130_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|432085888");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_135_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|455593731");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_139_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|485275228");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|495731160");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_55_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103222316574977671",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|497286732");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103898605426327114",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|536325456");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|539364446");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
                [2] = self.f_box_OutputOrder_v2_14_Out_2,
                [3] = self.f_box_OutputOrder_v2_14_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_156()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103899285188787875",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|555768805");
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
                [0] = self.f_box_OutputOrder_v2_41_Out_0,
                [1] = self.f_box_OutputOrder_v2_41_Out_1,
                [2] = self.f_box_OutputOrder_v2_41_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|561501366");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_164_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_164_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 11,
    };
    return params;
end;

function export:OnEnter_box_Audio_Manager_36()
    local params;
    params = {
        -- Fire_Vehicle,
        [0] = "2099890102925796236",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|573542188");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_165_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 7,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|592892328");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_159_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 8,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_83()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "clutchnixon_countdown_3",
    };
    return params;
end;

function export:OnEnter_box_Audio_Manager_37()
    local params;
    params = {
        -- Fire_Vehicle,
        [0] = "2103165457910477741",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|624501101");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 7,
        -- origin,
        [1] = self.ePlayerHost,
        -- pawns,
        [2] = self.ePlayerHost,
        -- value,
        [3] = 5,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|638578094");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_172_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_172_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 13,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_131()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103899236501307037",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|666534239");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_107_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_177()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103899336080375468",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_119()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103899175719550610",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|695114940");
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
                [0] = self.f_box_OutputOrder_v2_52_Out_0,
                [1] = self.f_box_OutputOrder_v2_52_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|696820552");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103898573734166082",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|697142135");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 7,
        -- origin,
        [1] = self.ePlayerClient,
        -- pawns,
        [2] = self.ePlayerClient,
        -- value,
        [3] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|705216005");
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
                [0] = self.f_box_OutputOrder_v2_66_Out_0,
                [1] = self.f_box_OutputOrder_v2_66_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_98()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103899124922334864",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|740145747");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_21_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103222264416710266",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|770372702");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103898515104087612",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_26()
    local params;
    params = {
        -- Pawns,
        [0] = self.ePlayerClient,
        -- SoundId,
        [1] = "1123537790",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_183()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103899348319354542",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_154()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103899271458733729",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|843132721");
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
                [0] = self.f_box_OutputOrder_v2_105_Out_0,
                [1] = self.f_box_OutputOrder_v2_105_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|898679276");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103898950110035574",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|902608024");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_44_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103222264416710266",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|902943122");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_171_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_171_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 14,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|903907773");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|912523148");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103898782421761627",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|938918362");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
                [2] = self.f_box_OutputOrder_v2_15_Out_2,
                [3] = self.f_box_OutputOrder_v2_15_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|940419501");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_173_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 9,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|944857886");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103898831176351340",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|950214191");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_16_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103222316574977671",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|980610799");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103898978792783484",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|983856476");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_137_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_137_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 7,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|996640533");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_147_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 6,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_4()
    local params;
    params = {
        -- EntityA,
        [1] = "2103165457910477741",
        -- EntityB,
        [2] = "2103222316574977669",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_2()
    local params;
    params = {
        -- EntityA,
        [1] = "2099890102925796236",
        -- EntityB,
        [2] = "2103222264416710266",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1029263382");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_60_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bCoop,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1033168468");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103899005609066118",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1040345411");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_133_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_133_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 6,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1051928561");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_56_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103222316574977669",
    };
    return params;
end;

function export:OnEnter_box_Audio_Manager_27()
    local params;
    params = {
        -- Fire_Vehicle,
        [0] = "2099890102925796236",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1066928203");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_179_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_179_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 14,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1087877283");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_40_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bCoop,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1100988132");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_23_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103222264416710266",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1125698861");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103222316574977669",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_50()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1198614307");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103222261956750968",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1229508057");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103898614217588305",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_6()
    local params;
    params = {
        -- EntityA,
        [1] = "2103165457910477741",
        -- EntityB,
        [2] = "2103222316574977671",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1333721815");
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
                [0] = self.f_box_OutputOrder_v2_102_Out_0,
                [1] = self.f_box_OutputOrder_v2_102_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "clutchnixon_countdown_1",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1360776521");
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
                [0] = self.f_box_OutputOrder_v2_43_Out_0,
                [1] = self.f_box_OutputOrder_v2_43_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1365962163");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_7_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bCoop,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_1()
    local params;
    params = {
        -- EntityA,
        [1] = "2099890102925796236",
        -- EntityB,
        [2] = "2103222261956750968",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1429810323");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_143_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_35()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1437802599");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_148_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_148_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_125()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103899202076556950",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1523179871");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_110_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_110_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1560129051");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103222261956750968",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1581836267");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_114_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.ePlayerClient,
        -- Entity2,
        [1] = self.ePlayerPassingGate,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1584323316");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_117_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.ePlayerHost,
        -- Entity2,
        [1] = self.ePlayerPassingGate,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1592285701");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_78_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1598949607");
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
                [0] = self.f_box_OutputOrder_v2_116_Out_0,
                [1] = self.f_box_OutputOrder_v2_116_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1631240162");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_163_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_163_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 12,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_65()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1664863213");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_108_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1699953337");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
                [2] = self.f_box_OutputOrder_v2_28_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1741535207");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
                [2] = self.f_box_OutputOrder_v2_32_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1760414827");
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
                [0] = self.f_box_OutputOrder_v2_39_Out_0,
                [1] = self.f_box_OutputOrder_v2_39_Out_1,
                [2] = self.f_box_OutputOrder_v2_39_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1767509358");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103898850872802928",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1776435279");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_141_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_141_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 8,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1783268080");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 13,
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
                [0] = self.f_box_OutputOrder_v2_101_Out_0,
                [1] = self.f_box_OutputOrder_v2_101_Out_1,
                [2] = self.f_box_OutputOrder_v2_101_Out_2,
                [3] = self.f_box_OutputOrder_v2_101_Out_3,
                [4] = self.f_box_OutputOrder_v2_101_Out_4,
                [5] = self.f_box_OutputOrder_v2_101_Out_5,
                [6] = self.f_box_OutputOrder_v2_101_Out_6,
                [7] = self.f_box_OutputOrder_v2_101_Out_7,
                [8] = self.f_box_OutputOrder_v2_101_Out_8,
                [9] = self.f_box_OutputOrder_v2_101_Out_9,
                [10] = self.f_box_OutputOrder_v2_101_Out_10,
                [11] = self.f_box_OutputOrder_v2_101_Out_11,
                [12] = self.f_box_OutputOrder_v2_101_Out_12,
            },
            count = 13,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1800403931");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103896998886264713",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1805956875");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_103_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_Audio_Manager_30()
    local params;
    params = {
        -- Fire_Vehicle,
        [0] = "2103165457910477741",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1836403025");
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
                [0] = self.f_box_OutputOrder_v2_64_Out_0,
                [1] = self.f_box_OutputOrder_v2_64_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1856861960");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_46_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_5()
    local params;
    params = {
        -- EntityA,
        [1] = "2099890102925796236",
        -- EntityB,
        [2] = "2103222278748647038",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1895202328");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_42_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bCoop,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_49()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_158()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103899297702493861",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|1948759841");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103897858036995310",
    };
    return params;
end;

function export:OnEnter_box_Audio_Manager_54()
    local params;
    params = {
        -- Fire_Vehicle,
        [0] = "2099890102925796236",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2076714118");
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

function export:OnEnter_box_Compare_Integers_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2081143220");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_96_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2090006607");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_vehiclefire_system|2092414461");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_31_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103222316574977671",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_151()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103899256661229215",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_3()
    local params;
    params = {
        -- EntityA,
        [1] = "2103165457910477741",
        -- EntityB,
        [2] = "2103222316574977673",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnExit_box_ProximityTrigger_v2_123_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_123;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_123_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_123;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_123_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_123;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_123_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_123;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_123_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_123;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_123_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_123;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_127_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_127;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_127_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_127;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_127_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_127;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_127_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_127;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_127_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_127;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_127_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_127;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_175_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_175;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_175_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_175;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_175_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_175;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_175_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_175;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_175_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_175;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_175_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_175;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_156_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_156;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_156_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_156;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_156_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_156;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_156_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_156;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_156_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_156;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_156_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_156;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_131_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_131;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_131_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_131;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_131_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_131;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_131_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_131;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_131_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_131;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_131_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_131;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_177_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_177;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_177_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_177;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_177_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_177;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_177_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_177;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_177_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_177;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_177_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_177;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_119_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_119;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_119_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_119;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_119_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_119;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_119_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_119;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_119_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_119;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_119_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_119;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_98_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_98;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_98_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_98;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_98_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_98;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_98_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_98;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_98_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_98;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_98_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_98;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_183_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_183;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_183_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_183;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_183_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_183;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_183_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_183;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_183_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_183;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_183_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_183;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_154_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_154;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_154_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_154;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_154_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_154;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_154_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_154;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_154_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_154;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_154_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_154;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_17_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_17;
    self.ePlayerHost = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_17_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_17;
    self.ePlayerHost = l0:GetDataOutValue(0);
    self.ePlayerClient = l0:GetDataOutValue(1);
end;

function export:OnExit_box_ProximityTrigger_v2_125_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_125;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_125_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_125;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_125_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_125;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_125_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_125;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_125_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_125;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_125_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_125;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_78_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bCoop = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_158_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_158;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_158_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_158;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_158_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_158;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_158_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_158;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_158_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_158;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_158_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_158;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_151_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_151;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_151_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_151;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_151_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_151;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_151_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_151;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_151_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_151;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_151_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_151;
    self.ePlayerPassingGate = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Activate" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Deactivate" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="GatePass" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="iGatePassed" AnchorDynType="0" DataTypeID="int" />
		<DataIn Name="ListCheckpoints" AnchorDynType="0" DataTypeID="list" />
		<DataIn Name="ListFXs" AnchorDynType="0" DataTypeID="list" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
