LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni11/uni11_010/uni11_010_b10.domino
-- User graph: UNI11_010_B10
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection /> 
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/ConversationListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MetaBreakableModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetLootGroup.lua");
        cboxRes:RegisterBox("Domino/System/SetOasis.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_010/UNI11_010_B10._UNI11_010_MarkerBind_LootCheck.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_010/UNI11_010_B10._UNI11_010_VultureKill.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_010/UNI11_010_B10._UNI11_010_VultureLootMarker.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[46667098.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4020914178.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3001636724.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2034543670.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1497799297.bnk]], "CSoundResource");
        cboxRes:LoadResource([[825436676.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_010/UNI11_010_B10.UNI11_010_B10.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnLeaveZone",
            },
        },
        controlInCount = 2,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v5.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "RemoveItemFromInventory",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "ItemsAcquired",
                delayed = false,
            },
            [1] = {
                name = "ItemsRemoved",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AmountRequired",
                type = "int",
            },
            [1] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [2] = {
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [3] = {
                name = "LootItemID",
                type = "genericdb",
            },
            [4] = {
                name = "MarkerTypeId",
                type = "database",
            },
            [5] = {
                name = "Objective",
                type = "oasis",
            },
            [6] = {
                name = "opt_eMarker",
                type = "entity",
            },
            [7] = {
                name = "ProtectItemOnSuccess",
                type = "bool",
            },
        },
        dataInCount = 8,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Aborted",
                delayed = true,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "Finished",
                delayed = true,
            },
            [3] = {
                name = "Paused",
                delayed = true,
            },
            [4] = {
                name = "Resumed",
                delayed = true,
            },
            [5] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "eNPC",
                type = "entity",
            },
            [1] = {
                name = "eQCA_STP",
                type = "entity",
            },
            [2] = {
                name = "oObjective",
                type = "oasis",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Interrupted",
                delayed = true,
            },
            [2] = {
                name = "Restarted",
                delayed = true,
            },
            [3] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "Mandatory",
                type = "bool",
            },
            [2] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua")] = {
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "eMobileMarker",
                type = "entity",
            },
            [2] = {
                name = "eNPC",
                type = "entity",
            },
            [3] = {
                name = "fHeight",
                type = "float",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityAcknowledgeGate.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Acknowledged",
                delayed = true,
            },
            [1] = {
                name = "Reloaded",
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityEnd.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EndHardSave",
            },
            [1] = {
                name = "EndNoSave",
            },
            [2] = {
                name = "EndSoftSave",
            },
        },
        controlInCount = 3,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityInitialized.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = true,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Retry",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "ReasonId",
                type = "oasis",
            },
            [1] = {
                name = "Reload",
                type = "bool",
            },
            [2] = {
                name = "ShowHud",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Active",
                delayed = false,
            },
            [1] = {
                name = "Canceled",
                delayed = false,
            },
            [2] = {
                name = "Completed",
                delayed = false,
            },
            [3] = {
                name = "Failed",
                delayed = false,
            },
            [4] = {
                name = "Inactive",
                delayed = false,
            },
            [5] = {
                name = "Out",
                delayed = false,
            },
            [6] = {
                name = "Unavailable",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "activityDescriptorID",
                type = "genericdb",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/SetActivityFact.lua")] = {
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
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/ConversationListener.lua")] = {
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
                name = "Aborted",
                delayed = true,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "Finished",
                delayed = true,
            },
            [4] = {
                name = "Paused",
                delayed = true,
            },
            [5] = {
                name = "Resumed",
                delayed = true,
            },
            [6] = {
                name = "Skipped",
                delayed = true,
            },
            [7] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/SetContextualStrategy.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetContextualStrategy",
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
                name = "ContextualStrategy",
                type = "entity",
            },
            [1] = {
                name = "Group",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/GetPlayerGroup_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EnemyPlayers",
            },
            [1] = {
                name = "FriendlyPlayers",
            },
            [2] = {
                name = "In",
            },
        },
        controlInCount = 3,
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
                name = "PlayerGroup",
                type = "group",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v5.lua")] = {
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
                name = "MemberAdded",
                delayed = true,
            },
            [3] = {
                name = "MemberRemoved",
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
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "memberCount",
                type = "int",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/HealthListener_v6.lua")] = {
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
                name = "Critical",
                delayed = true,
            },
            [1] = {
                name = "Damaged",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Downed",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "Healed",
                delayed = true,
            },
            [6] = {
                name = "Killed",
                delayed = true,
            },
            [7] = {
                name = "Revived",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "current",
                type = "float",
            },
            [1] = {
                name = "delta",
                type = "float",
            },
            [2] = {
                name = "emitterName",
                type = "string",
            },
            [3] = {
                name = "hitLocation",
                type = "string",
            },
            [4] = {
                name = "instigator",
                type = "entity",
            },
            [5] = {
                name = "sourceType",
                type = "string",
            },
            [6] = {
                name = "victim",
                type = "entity",
            },
        },
        dataOutCount = 7,
    };
    metadataTable[GetPathID("Domino/System/MetaBreakableModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDamageable",
            },
            [1] = {
                name = "SetDisabled",
            },
            [2] = {
                name = "SetEnabled",
            },
            [3] = {
                name = "SetUnDamageable",
            },
        },
        controlInCount = 4,
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
                name = "OnSetDamageable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUnDamageable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Print_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ToAll",
            },
            [1] = {
                name = "ToConsole",
            },
            [2] = {
                name = "ToFile",
            },
            [3] = {
                name = "ToScreen",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Error",
                delayed = false,
            },
            [1] = {
                name = "PrintedToConsole",
                delayed = false,
            },
            [2] = {
                name = "PrintedToFile",
                delayed = false,
            },
            [3] = {
                name = "PrintedToScreen",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bool",
                type = "bool",
            },
            [1] = {
                name = "color",
                type = "string",
            },
            [2] = {
                name = "db",
                type = "genericdb",
            },
            [3] = {
                name = "duration",
                type = "float",
            },
            [4] = {
                name = "float",
                type = "float",
            },
            [5] = {
                name = "id",
                type = "entity",
            },
            [6] = {
                name = "int",
                type = "int",
            },
            [7] = {
                name = "path",
                type = "string",
            },
            [8] = {
                name = "str",
                type = "string",
            },
            [9] = {
                name = "useTimeTag",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
            [0] = {
                name = "errorMsg",
                type = "string",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/SetEntity_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromEntity",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/SetLootGroup.lua")] = {
        stateless = false,
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
                name = "LootGroup",
                type = "genericdb",
            },
            [1] = {
                name = "Targets",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SetOasis.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromDuniaOasis",
            },
            [1] = {
                name = "FromOasis",
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
                name = "Oasis",
                type = "oasis",
            },
            [1] = {
                name = "OasisFromEditor",
                type = "oasiseditor",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Target",
                type = "oasis",
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
    metadataTable[GetPathID("Domino/System/Switch.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "None",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/VehicleModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAlternativeSuspensionDisabled",
            },
            [1] = {
                name = "SetAlternativeSuspensionEnabled",
            },
            [2] = {
                name = "SetAsAnimated",
            },
            [3] = {
                name = "SetAsDestructable",
            },
            [4] = {
                name = "SetAsIndestructable",
            },
            [5] = {
                name = "SetAsNotAnimated",
            },
            [6] = {
                name = "SetAsUnusable",
            },
            [7] = {
                name = "SetAsUsable",
            },
            [8] = {
                name = "SetBrakesReleased",
            },
            [9] = {
                name = "SetCommandeerDisabled",
            },
            [10] = {
                name = "SetCommandeerEnabled",
            },
            [11] = {
                name = "SetEngineBroken",
            },
            [12] = {
                name = "SetEngineDisabled",
            },
            [13] = {
                name = "SetEngineMajorDamage",
            },
            [14] = {
                name = "SetEngineMinorDamage",
            },
            [15] = {
                name = "SetExitDisabled",
            },
            [16] = {
                name = "SetExitEnabled",
            },
            [17] = {
                name = "SetExplosion",
            },
            [18] = {
                name = "SetInputDisabled",
            },
            [19] = {
                name = "SetInputEnabled",
            },
        },
        controlInCount = 20,
        controlOut = {
            [0] = {
                name = "OnSetAlternativeSuspensionDisabled",
                delayed = false,
            },
            [1] = {
                name = "OnSetAlternativeSuspensionEnabled",
                delayed = false,
            },
            [2] = {
                name = "OnSetAsAnimated",
                delayed = false,
            },
            [3] = {
                name = "OnSetAsDestructible",
                delayed = false,
            },
            [4] = {
                name = "OnSetAsIndestructible",
                delayed = false,
            },
            [5] = {
                name = "OnSetAsNotAnimated",
                delayed = false,
            },
            [6] = {
                name = "OnSetAsUnusable",
                delayed = false,
            },
            [7] = {
                name = "OnSetAsUsable",
                delayed = false,
            },
            [8] = {
                name = "OnSetBrakesReleased",
                delayed = false,
            },
            [9] = {
                name = "OnSetCommandeerDisabled",
                delayed = false,
            },
            [10] = {
                name = "OnSetCommandeerEnabled",
                delayed = false,
            },
            [11] = {
                name = "OnSetEngineBroken",
                delayed = false,
            },
            [12] = {
                name = "OnSetEngineDisabled",
                delayed = false,
            },
            [13] = {
                name = "OnSetEngineMajorDamage",
                delayed = false,
            },
            [14] = {
                name = "OnSetEngineMinorDamage",
                delayed = false,
            },
            [15] = {
                name = "OnSetExitDisabled",
                delayed = false,
            },
            [16] = {
                name = "OnSetExitEnabled",
                delayed = false,
            },
            [17] = {
                name = "OnSetExplosion",
                delayed = false,
            },
            [18] = {
                name = "OnSetInputDisabled",
                delayed = false,
            },
            [19] = {
                name = "OnSetInputEnabled",
                delayed = false,
            },
        },
        controlOutCount = 20,
        dataIn = {
            [0] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_010/UNI11_010_B10._UNI11_010_MarkerBind_LootCheck.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Debug_UNLOADED",
                delayed = false,
            },
            [1] = {
                name = "Looted",
                delayed = false,
            },
            [2] = {
                name = "VultureLoaded",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Kill_MobileMarker",
                type = "entity",
            },
            [1] = {
                name = "Vulture",
                type = "entity",
            },
            [2] = {
                name = "VultureSpawner",
                type = "entity",
            },
            [3] = {
                name = "VultureTarget",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_010/UNI11_010_B10._UNI11_010_VultureKill.debug.lua")] = {
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
                name = "NextMarker",
                delayed = false,
            },
            [1] = {
                name = "VultureKilled",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Mobile_Marker",
                type = "entity",
            },
            [1] = {
                name = "Objective",
                type = "oasis",
            },
            [2] = {
                name = "Vulture",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_010/UNI11_010_B10._UNI11_010_VultureLootMarker.debug.lua")] = {
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
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "b_VultureLooted",
                type = "bool",
            },
            [1] = {
                name = "Objective",
                type = "oasis",
            },
            [2] = {
                name = "Vulture",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI11_010_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10";
    self.PlayerGroup = nil;
    self.o_FailReason = {
        section = "",
        item = "",
        id = "",
    };
    self.b_Vulture01_Looted = false;
    self.b_Vulture02_Looted = false;
    self.b_Vulture03_Looted = false;
    self.e_Kenny = nil;
    self.e_VultureKiller = nil;
    self.box_OnceOnly_v3_97 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|15757098");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_97_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_127 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|16601620");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_127_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_15 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|177183660");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_15_Loaded,
    });
    self.box_OnceOnly_v3_11 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|265944339");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_11_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_106 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|270942335");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_106_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_110 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|326201184");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_110_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_120 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|371634878");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_120_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|373839270");
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
        [0] = self.f_box_MultipleOR_6_Out,
    });
    self.box_Brick_PlayDialog_Relax_85 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|381209305");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_55 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|413446227");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_55_Out_0,
            },
            count = 2,
        },
    });
    self.box__UNI11_010_VultureKill_26 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_010/UNI11_010_B10._UNI11_010_VultureKill.debug.lua");
    l0 = self.box__UNI11_010_VultureKill_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_010_VultureKill_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|447167020");
    l0:SetConnections({
        -- NextMarker,
        [0] = self.f_box__UNI11_010_VultureKill_26_NextMarker,
        -- VultureKilled,
        [1] = self.f_box__UNI11_010_VultureKill_26_VultureKilled,
    });
    self.box_BindMarkerOverHead_v2_25 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
    l0 = self.box_BindMarkerOverHead_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BindMarkerOverHead_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|488009907");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BindMarkerOverHead_v2_25_Out,
    });
    self.box_Brick_NarrativeQuickCinema_V3_90 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V3_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V3_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|494541310");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V3_90_Finished,
    });
    self.box_ActivityAcknowledgeGate_53 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|517306884");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_53_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_53_Reloaded,
    });
    self.box_MultipleOR_122 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|593877301");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
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
        [0] = self.f_box_MultipleOR_122_Out,
    });
    self.box_ActivityInitialized_12 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|596116182");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_12_Out,
    });
    self.box_Brick_PlayDialog_Relax_82 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|626164247");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v5_124 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|642695251");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_124_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_124_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_124_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_124_MemberRemoved,
    });
    self.box_SetLootGroup_3 = cbox:CreateBox("Domino/System/SetLootGroup.lua");
    l0 = self.box_SetLootGroup_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetLootGroup_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|645808119");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetLootGroup_3_Out,
    });
    self.box__UNI11_010_VultureLootMarker_21 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_010/UNI11_010_B10._UNI11_010_VultureLootMarker.debug.lua");
    l0 = self.box__UNI11_010_VultureLootMarker_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_010_VultureLootMarker_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|652021514");
    l0:SetConnections({
    });
    self.box_Brick_PlayDialog_Relax_80 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|655910080");
    l0:SetConnections({
    });
    self.box_MultipleOR_60 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|659771793");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
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
        [0] = self.f_box_MultipleOR_60_Out,
    });
    self.box_MultipleOR_93 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|801866997");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
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
        [0] = self.f_box_MultipleOR_93_Out,
    });
    self.box_OnceOnly_v3_99 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|832575030");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_99_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_70 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|881246532");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_70_Out_0,
            },
            count = 2,
        },
    });
    self.box_MetaBreakableModifier_v2_87 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|903780751");
    l0:SetConnections({
    });
    self.box_Switch_23 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|959181402");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- None,
        [0] = self.f_box_Switch_23_None,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_23_Output_0,
                [1] = self.f_box_Switch_23_Output_1,
                [2] = self.f_box_Switch_23_Output_2,
            },
            count = 3,
        },
    });
    self.box_OnceOnly_v3_61 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1008325143");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_61_Out_0,
            },
            count = 2,
        },
    });
    self.box_MetaBreakableModifier_v2_89 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1010822081");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_89_OnSetDamageable,
    });
    self.box_VehicleDamageListener_v2_128 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1032385105");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_128_Destroyed,
        -- Disabled,
        [3] = self.f_box_VehicleDamageListener_v2_128_Disabled,
    });
    self.box_OnceOnly_v3_37 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1074224964");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_37_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_77 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1113872886");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_77_Enter,
    });
    self.box_Brick_AcquireObject_v5_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v5.debug.lua");
    l0 = self.box_Brick_AcquireObject_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v5_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1131001947");
    l0:SetConnections({
        -- ItemsAcquired,
        [0] = self.f_box_Brick_AcquireObject_v5_2_ItemsAcquired,
    });
    self.box__UNI11_010_VultureKill_38 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_010/UNI11_010_B10._UNI11_010_VultureKill.debug.lua");
    l0 = self.box__UNI11_010_VultureKill_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_010_VultureKill_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1139282340");
    l0:SetConnections({
        -- NextMarker,
        [0] = self.f_box__UNI11_010_VultureKill_38_NextMarker,
        -- VultureKilled,
        [1] = self.f_box__UNI11_010_VultureKill_38_VultureKilled,
    });
    self.box_OnceOnly_v3_98 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1161412635");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_98_Out_0,
            },
            count = 2,
        },
    });
    self.box_GroupSizeListener_v5_42 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1164944124");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_42_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_42_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_42_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_42_MemberRemoved,
    });
    self.box_GroupSizeListener_v5_1 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1168732885");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_1_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_1_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_1_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_1_MemberRemoved,
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1199758289");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
    });
    self.box_EntityStatusListener_86 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1209893220");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_86_Loaded,
    });
    self.box_MultipleOR_125 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1210954375");
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
        [0] = self.f_box_MultipleOR_125_Out,
    });
    self.box_ConversationListener_64 = cbox:CreateBox("Domino/System/AI/ConversationListener.lua");
    l0 = self.box_ConversationListener_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConversationListener_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1240195942");
    l0:SetConnections({
        -- Finished,
        [3] = self.f_box_ConversationListener_64_Finished,
    });
    self.box_EntityStatusListener_75 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1278843775");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_75_Loaded,
    });
    self.box_HealthListener_v6_78 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1290864684");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_78_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_78_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_78_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_78_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_78_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_78_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_78_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_78_Revived,
    });
    self.box__UNI11_010_MarkerBind_LootCheck_32 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_010/UNI11_010_B10._UNI11_010_MarkerBind_LootCheck.debug.lua");
    l0 = self.box__UNI11_010_MarkerBind_LootCheck_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_010_MarkerBind_LootCheck_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1336861319");
    l0:SetConnections({
        -- Debug_UNLOADED,
        [0] = self.f_box__UNI11_010_MarkerBind_LootCheck_32_Debug_UNLOADED,
        -- Looted,
        [1] = self.f_box__UNI11_010_MarkerBind_LootCheck_32_Looted,
        -- VultureLoaded,
        [2] = self.f_box__UNI11_010_MarkerBind_LootCheck_32_VultureLoaded,
    });
    self.box__UNI11_010_VultureLootMarker_33 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_010/UNI11_010_B10._UNI11_010_VultureLootMarker.debug.lua");
    l0 = self.box__UNI11_010_VultureLootMarker_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_010_VultureLootMarker_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1399386433");
    l0:SetConnections({
    });
    self.box_Brick_PlayDialog_Relax_83 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1418713935");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_46 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1444433471");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_46_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleAND_v2_52 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1461774201");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
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
        [0] = self.f_box_MultipleAND_v2_52_Out,
    });
    self.box_OnceOnly_v3_132 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1482627745");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_132_Out_0,
            },
            count = 2,
        },
    });
    self.box__UNI11_010_MarkerBind_LootCheck_50 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_010/UNI11_010_B10._UNI11_010_MarkerBind_LootCheck.debug.lua");
    l0 = self.box__UNI11_010_MarkerBind_LootCheck_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_010_MarkerBind_LootCheck_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1504864386");
    l0:SetConnections({
        -- Debug_UNLOADED,
        [0] = self.f_box__UNI11_010_MarkerBind_LootCheck_50_Debug_UNLOADED,
        -- Looted,
        [1] = self.f_box__UNI11_010_MarkerBind_LootCheck_50_Looted,
        -- VultureLoaded,
        [2] = self.f_box__UNI11_010_MarkerBind_LootCheck_50_VultureLoaded,
    });
    self.box_MultipleOR_51 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1528538216");
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
        [0] = self.f_box_MultipleOR_51_Out,
    });
    self.box_Brick_PlayDialog_Relax_81 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1542087448");
    l0:SetConnections({
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1543708729");
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
        [0] = self.f_box_MultipleOR_34_Out,
    });
    self.box_Brick_AcquireObject_v5_41 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v5.debug.lua");
    l0 = self.box_Brick_AcquireObject_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v5_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1565819528");
    l0:SetConnections({
        -- ItemsAcquired,
        [0] = self.f_box_Brick_AcquireObject_v5_41_ItemsAcquired,
    });
    self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1569887259");
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
        [0] = self.f_box_MultipleOR_45_Out,
    });
    self.box_Brick_PlayDialog_Relax_84 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1605966646");
    l0:SetConnections({
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1624534755");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_EntityStatusListener_74 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1675256347");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_74_Loaded,
    });
    self.box__UNI11_010_VultureKill_19 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_010/UNI11_010_B10._UNI11_010_VultureKill.debug.lua");
    l0 = self.box__UNI11_010_VultureKill_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_010_VultureKill_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1675970129");
    l0:SetConnections({
        -- VultureKilled,
        [1] = self.f_box__UNI11_010_VultureKill_19_VultureKilled,
    });
    self.box_MultipleOR_72 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1728804821");
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
        [0] = self.f_box_MultipleOR_72_Out,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1745385764");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_MultipleOR_107 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1778617376");
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
        [0] = self.f_box_MultipleOR_107_Out,
    });
    self.box_MultipleOR_105 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1824934303");
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
        [0] = self.f_box_MultipleOR_105_Out,
    });
    self.box_MultipleOR_104 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1830197882");
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
        [0] = self.f_box_MultipleOR_104_Out,
    });
    self.box_EntityStatusListener_88 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1883886833");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_88_Loaded,
    });
    self.box_MultipleOR_129 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1889612775");
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
        [0] = self.f_box_MultipleOR_129_Out,
    });
    self.box_OnceOnly_v3_35 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1914556914");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_35_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_108 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1943421822");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_108_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_4 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1954455750");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_4_Out_0,
            },
            count = 2,
        },
    });
    self.box__UNI11_010_MarkerBind_LootCheck_39 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_010/UNI11_010_B10._UNI11_010_MarkerBind_LootCheck.debug.lua");
    l0 = self.box__UNI11_010_MarkerBind_LootCheck_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_010_MarkerBind_LootCheck_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1985142840");
    l0:SetConnections({
        -- Debug_UNLOADED,
        [0] = self.f_box__UNI11_010_MarkerBind_LootCheck_39_Debug_UNLOADED,
        -- Looted,
        [1] = self.f_box__UNI11_010_MarkerBind_LootCheck_39_Looted,
        -- VultureLoaded,
        [2] = self.f_box__UNI11_010_MarkerBind_LootCheck_39_VultureLoaded,
    });
    self.box__UNI11_010_VultureLootMarker_67 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_010/UNI11_010_B10._UNI11_010_VultureLootMarker.debug.lua");
    l0 = self.box__UNI11_010_VultureLootMarker_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_010_VultureLootMarker_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1998062029");
    l0:SetConnections({
    });
    self.box_MultipleOR_66 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2018893071");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
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
        [0] = self.f_box_MultipleOR_66_Out,
    });
    self.box_VehicleDamageListener_v2_134 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2046860403");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_134_Destroyed,
        -- Disabled,
        [3] = self.f_box_VehicleDamageListener_v2_134_Disabled,
    });
    self.box_Switch_8 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2089303790");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- None,
        [0] = self.f_box_Switch_8_None,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_8_Output_0,
                [1] = self.f_box_Switch_8_Output_1,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_135 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2090350508");
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
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1937333576", "1937333576", "UNI11_010_B10", "In", "box_OutputOrder_v2_17.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_47();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|638150491", "638150491", "UNI11_010_B10", "OnLeaveZone", "box_ActivityRetry_47.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_126_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1384365685", "1384365685", "UNI11_010_B10", "box_Simple_Node_126.Out", "box_MultipleOR_125.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_112_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2095611201", "2095611201", "UNI11_010_B10", "box_OutputOrder_v2_112.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_112_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|920563866", "920563866", "UNI11_010_B10", "box_OutputOrder_v2_112.Out", "box_OnceOnly_v3_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_112_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|253154693", "253154693", "UNI11_010_B10", "box_OutputOrder_v2_112.Out", "box_MultipleOR_125.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_103_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1432286890", "1432286890", "UNI11_010_B10", "box_Simple_Node_103.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_136();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1493403874", "1493403874", "UNI11_010_B10", "box_Simple_Node_29.Out", "box_OutputOrder_v2_136.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1273924873", "1273924873", "UNI11_010_B10", "box_Simple_Node_29.Out", "box_MultipleOR_93.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Simple_Node_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1324952637", "1324952637", "UNI11_010_B10", "box_Simple_Node_28.Out", "box_OnceOnly_v3_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConversationListener_64();
    l0 = self.box_ConversationListener_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|591237497", "591237497", "UNI11_010_B10", "box_Simple_Node_43.Out", "box_ConversationListener_64.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1273162864", "1273162864", "UNI11_010_B10", "box_Simple_Node_43.Out", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_OnceOnly_v3_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2058611925", "2058611925", "UNI11_010_B10", "box_Simple_Node_43.Out", "box_OnceOnly_v3_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_OnceOnly_v3_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|573421259", "573421259", "UNI11_010_B10", "box_Simple_Node_43.Out", "box_OnceOnly_v3_127.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1683754933", "1683754933", "UNI11_010_B10", "box_Simple_Node_43.Out", "box_MultipleOR_93.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1144367198", "1144367198", "UNI11_010_B10", "box_Simple_Node_43.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2146276991", "2146276991", "UNI11_010_B10", "box_Simple_Node_43.Out", "box_MultipleOR_66.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1351230406", "1351230406", "UNI11_010_B10", "box_Simple_Node_43.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1177166325", "1177166325", "UNI11_010_B10", "box_Simple_Node_43.Out", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_79_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MetaBreakableModifier_v2_87();
    l0 = self.box_MetaBreakableModifier_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|330186780", "330186780", "UNI11_010_B10", "box_Simple_Node_79.Out", "box_MetaBreakableModifier_v2_87.SetDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDamageable
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|62625933", "62625933", "UNI11_010_B10", "box_Simple_Node_79.Out", "box_MultipleOR_66.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_95_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V3_90();
    l0 = self.box_Brick_NarrativeQuickCinema_V3_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1978875689", "1978875689", "UNI11_010_B10", "box_ActivityObjectiveMarkerModifier_v3_95.Enabled", "box_Brick_NarrativeQuickCinema_V3_90.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_97_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_010_VultureLootMarker_33();
    l0 = self.box_OnceOnly_v3_97;
    l1 = self.box__UNI11_010_VultureLootMarker_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|751166587", "751166587", "UNI11_010_B10", "box_OnceOnly_v3_97.Out", "box__UNI11_010_VultureLootMarker_33.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_127_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_OnceOnly_v3_127;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|648464451", "648464451", "UNI11_010_B10", "box_OnceOnly_v3_127.Out", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_9_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_23();
    l0 = self.box_Switch_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2004908603", "2004908603", "UNI11_010_B10", "box_Compare_Entity_9.Equal", "box_Switch_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Entity_9_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_8();
    l0 = self.box_Switch_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1840976579", "1840976579", "UNI11_010_B10", "box_Compare_Entity_9.NotEqual", "box_Switch_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetOasis_131_Out()
    local params, l0;
    self:OnExit_box_SetOasis_131_Out();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_28();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|371630571", "371630571", "UNI11_010_B10", "box_SetOasis_131.Out", "box_Simple_Node_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|871174267", "871174267", "UNI11_010_B10", "box_OutputOrder_v2_101.Out", "box_MultipleOR_60.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_101_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|78241390", "78241390", "UNI11_010_B10", "box_OutputOrder_v2_101.Out", "box_MultipleOR_104.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1779425769", "1779425769", "UNI11_010_B10", "box_OutputOrder_v2_49.Out", "box_OnceOnly_v3_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1192336838", "1192336838", "UNI11_010_B10", "box_OutputOrder_v2_49.Out", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_48_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1178666257", "1178666257", "UNI11_010_B10", "box_Compare_Integers_48.A_eq_B", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_15_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetLootGroup_3();
    l0 = self.box_EntityStatusListener_15;
    l1 = self.box_SetLootGroup_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|686705460", "686705460", "UNI11_010_B10", "box_EntityStatusListener_15.Loaded", "box_SetLootGroup_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|984128511", "984128511", "UNI11_010_B10", "box_OutputOrder_v2_109.Out", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_109_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_010_VultureKill_38();
    l0 = self.box__UNI11_010_VultureKill_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2120242785", "2120242785", "UNI11_010_B10", "box_OutputOrder_v2_109.Out", "box__UNI11_010_VultureKill_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_11_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_OnceOnly_v3_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1439666158", "1439666158", "UNI11_010_B10", "box_OnceOnly_v3_11.Out", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_106_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = self.box_OnceOnly_v3_106;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1521655739", "1521655739", "UNI11_010_B10", "box_OnceOnly_v3_106.Out", "box_OutputOrder_v2_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_136_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_128();
    l0 = self.box_VehicleDamageListener_v2_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1855953463", "1855953463", "UNI11_010_B10", "box_OutputOrder_v2_136.Out", "box_VehicleDamageListener_v2_128.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_136_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_134();
    l0 = self.box_VehicleDamageListener_v2_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2032541503", "2032541503", "UNI11_010_B10", "box_OutputOrder_v2_136.Out", "box_VehicleDamageListener_v2_134.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_123_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1944415471", "1944415471", "UNI11_010_B10", "box_Compare_Integers_123.A_eq_B", "box_Simple_Node_126.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_110_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_31();
    l0 = self.box_OnceOnly_v3_110;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|913681769", "913681769", "UNI11_010_B10", "box_OnceOnly_v3_110.Out", "box_SetContextualStrategy_31.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_120_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_121();
    l0 = self.box_OnceOnly_v3_120;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|500616576", "500616576", "UNI11_010_B10", "box_OnceOnly_v3_120.Out", "box_SetContextualStrategy_121.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_OnceOnly_v3_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1842119393", "1842119393", "UNI11_010_B10", "box_MultipleOR_6.Out", "box_OnceOnly_v3_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_55_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_54();
    l0 = self.box_OnceOnly_v3_55;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2023565324", "2023565324", "UNI11_010_B10", "box_OnceOnly_v3_55.Out", "box_EndActivityObjective_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__UNI11_010_VultureKill_26_NextMarker()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_010_VultureKill_19();
    l0 = self.box__UNI11_010_VultureKill_26;
    l1 = self.box__UNI11_010_VultureKill_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|154024430", "154024430", "UNI11_010_B10", "box__UNI11_010_VultureKill_26.NextMarker", "box__UNI11_010_VultureKill_19.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box__UNI11_010_VultureKill_26_VultureKilled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_101();
    l0 = self.box__UNI11_010_VultureKill_26;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|303277593", "303277593", "UNI11_010_B10", "box__UNI11_010_VultureKill_26.VultureKilled", "box_OutputOrder_v2_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BindMarkerOverHead_v2_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_96();
    l0 = self.box_BindMarkerOverHead_v2_25;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1901847797", "1901847797", "UNI11_010_B10", "box_BindMarkerOverHead_v2_25.Out", "box_AddActivityObjective_v2_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_NarrativeQuickCinema_V3_90_Finished()
    local l0, l1;
    l0 = self.box_Brick_NarrativeQuickCinema_V3_90;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|175405107", "175405107", "UNI11_010_B10", "box_Brick_NarrativeQuickCinema_V3_90.Finished", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityAcknowledgeGate_53_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_53;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|8764111", "8764111", "UNI11_010_B10", "box_ActivityAcknowledgeGate_53.Acknowledged", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_53_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_53;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|555767183", "555767183", "UNI11_010_B10", "box_ActivityAcknowledgeGate_53.Reloaded", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_122_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_123();
    l0 = self.box_MultipleOR_122;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1948760602", "1948760602", "UNI11_010_B10", "box_MultipleOR_122.Out", "box_Compare_Integers_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = self.box_ActivityInitialized_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|893051223", "893051223", "UNI11_010_B10", "box_ActivityInitialized_12.Out", "box_OutputOrder_v2_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_96_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_95();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1581298119", "1581298119", "UNI11_010_B10", "box_AddActivityObjective_v2_96.Out", "box_ActivityObjectiveMarkerModifier_v3_95.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_69_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_69_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityInitialized_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1360271796", "1360271796", "UNI11_010_B10", "box_SetEntity_v2_69.Out", "box_ActivityInitialized_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_GroupSizeListener_v5_124_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_124;
    l1 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1364405229", "1364405229", "UNI11_010_B10", "box_GroupSizeListener_v5_124.Enabled", "box_MultipleOR_122.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_124_MemberAdded()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_124;
    l1 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|61695680", "61695680", "UNI11_010_B10", "box_GroupSizeListener_v5_124.MemberAdded", "box_MultipleOR_122.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v5_124_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_124;
    l1 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1043632114", "1043632114", "UNI11_010_B10", "box_GroupSizeListener_v5_124.MemberRemoved", "box_MultipleOR_122.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetLootGroup_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = self.box_SetLootGroup_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1654974031", "1654974031", "UNI11_010_B10", "box_SetLootGroup_3.Out", "box_OutputOrder_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_60_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_60;
    l1 = self.box_OnceOnly_v3_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|61971839", "61971839", "UNI11_010_B10", "box_MultipleOR_60.Out", "box_OnceOnly_v3_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_63_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_42();
    l0 = self.box_GroupSizeListener_v5_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1569682209", "1569682209", "UNI11_010_B10", "box_OutputOrder_v2_63.Out", "box_GroupSizeListener_v5_42.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2104259323", "2104259323", "UNI11_010_B10", "box_OutputOrder_v2_63.Out", "box_AddActivityObjective_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_63_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_78();
    l0 = self.box_HealthListener_v6_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1703921649", "1703921649", "UNI11_010_B10", "box_OutputOrder_v2_63.Out", "box_HealthListener_v6_78.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_30_Out()
    self:OnExit_box_SetBoolean_v2_30_Out();
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1455197109", "1455197109", "UNI11_010_B10", "box_OutputOrder_v2_68.Out", "box_MultipleOR_105.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1532643458", "1532643458", "UNI11_010_B10", "box_OutputOrder_v2_68.Out", "box_MultipleOR_104.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_68_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1099473668", "1099473668", "UNI11_010_B10", "box_OutputOrder_v2_68.Out", "box_MultipleOR_107.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EndActivityObjective_v2_92_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_95();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|444494778", "444494778", "UNI11_010_B10", "box_EndActivityObjective_v2_92.Out", "box_ActivityObjectiveMarkerModifier_v3_95.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1210767449", "1210767449", "UNI11_010_B10", "box_OutputOrder_v2_102.Out", "box_MultipleOR_60.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_102_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1904951922", "1904951922", "UNI11_010_B10", "box_OutputOrder_v2_102.Out", "box_MultipleOR_107.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_102_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|974986380", "974986380", "UNI11_010_B10", "box_OutputOrder_v2_102.Out", "box_OutputOrder_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_93_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_93;
    l1 = self.box_OnceOnly_v3_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2031001463", "2031001463", "UNI11_010_B10", "box_MultipleOR_93.Out", "box_OnceOnly_v3_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndActivityObjective_v2_13_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_112();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|18651083", "18651083", "UNI11_010_B10", "box_EndActivityObjective_v2_13.Out", "box_OutputOrder_v2_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_99_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_103();
    l0 = self.box_OnceOnly_v3_99;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1970891759", "1970891759", "UNI11_010_B10", "box_OnceOnly_v3_99.Out", "box_Simple_Node_103.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_22_Out()
    self:OnExit_box_SetBoolean_v2_22_Out();
end;

function export:f_box_OnceOnly_v3_70_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_42();
    l0 = self.box_OnceOnly_v3_70;
    l1 = self.box_GroupSizeListener_v5_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1654345730", "1654345730", "UNI11_010_B10", "box_OnceOnly_v3_70.Out", "box_GroupSizeListener_v5_42.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_59();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1320523422", "1320523422", "UNI11_010_B10", "box_OutputOrder_v2_17.Out", "box_Print_v2_59.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2043854581", "2043854581", "UNI11_010_B10", "box_OutputOrder_v2_17.Out", "box_ActivityAcknowledgeGate_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Switch_23_None()
    local params, l0;
    params = self:OnEnter_box_Switch_23();
    l0 = self.box_Switch_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|204284426", "204284426", "UNI11_010_B10", "box_Switch_23.None", "box_Switch_23.Reset", l0:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_Switch_23_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_80();
    l0 = self.box_Switch_23;
    l1 = self.box_Brick_PlayDialog_Relax_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|789282104", "789282104", "UNI11_010_B10", "box_Switch_23.Output", "box_Brick_PlayDialog_Relax_80.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_23_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_81();
    l0 = self.box_Switch_23;
    l1 = self.box_Brick_PlayDialog_Relax_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|867183217", "867183217", "UNI11_010_B10", "box_Switch_23.Output", "box_Brick_PlayDialog_Relax_81.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_23_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_82();
    l0 = self.box_Switch_23;
    l1 = self.box_Brick_PlayDialog_Relax_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|89732469", "89732469", "UNI11_010_B10", "box_Switch_23.Output", "box_Brick_PlayDialog_Relax_82.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_61_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_44();
    l0 = self.box_OnceOnly_v3_61;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1113652761", "1113652761", "UNI11_010_B10", "box_OnceOnly_v3_61.Out", "box_ActivityRetry_44.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_40_Out()
    self:OnExit_box_SetBoolean_v2_40_Out();
end;

function export:f_box_MetaBreakableModifier_v2_89_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_MetaBreakableModifier_v2_89;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1918163365", "1918163365", "UNI11_010_B10", "box_MetaBreakableModifier_v2_89.OnSetDamageable", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_128_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_130();
    l0 = self.box_VehicleDamageListener_v2_128;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1279778432", "1279778432", "UNI11_010_B10", "box_VehicleDamageListener_v2_128.Destroyed", "box_VehicleModifier_v2_130.SetExplosion", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetExplosion
    l1:Exec(17, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_128_Disabled()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_128;
    l1 = self.box_MultipleOR_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2115805348", "2115805348", "UNI11_010_B10", "box_VehicleDamageListener_v2_128.Disabled", "box_MultipleOR_135.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_133_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_128();
    l0 = self.box_VehicleDamageListener_v2_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|918635590", "918635590", "UNI11_010_B10", "box_OutputOrder_v2_133.Out", "box_VehicleDamageListener_v2_128.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_133_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_134();
    l0 = self.box_VehicleDamageListener_v2_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1227798109", "1227798109", "UNI11_010_B10", "box_OutputOrder_v2_133.Out", "box_VehicleDamageListener_v2_134.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_37_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_13();
    l0 = self.box_OnceOnly_v3_37;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|753619962", "753619962", "UNI11_010_B10", "box_OnceOnly_v3_37.Out", "box_EndActivityObjective_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_77_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_79();
    l0 = self.box_ProximityTrigger_v2_77;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|262494444", "262494444", "UNI11_010_B10", "box_ProximityTrigger_v2_77.Enter", "box_Simple_Node_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_85();
    l0 = self.box_Brick_PlayDialog_Relax_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1540980788", "1540980788", "UNI11_010_B10", "box_OutputOrder_v2_24.Out", "box_Brick_PlayDialog_Relax_85.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|450495106", "450495106", "UNI11_010_B10", "box_OutputOrder_v2_24.Out", "box_MultipleOR_93.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_AcquireObject_v5_2_ItemsAcquired()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_Brick_AcquireObject_v5_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1994469122", "1994469122", "UNI11_010_B10", "box_Brick_AcquireObject_v5_2.ItemsAcquired", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__UNI11_010_VultureKill_38_NextMarker()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_010_VultureKill_26();
    l0 = self.box__UNI11_010_VultureKill_38;
    l1 = self.box__UNI11_010_VultureKill_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|288494340", "288494340", "UNI11_010_B10", "box__UNI11_010_VultureKill_38.NextMarker", "box__UNI11_010_VultureKill_26.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box__UNI11_010_VultureKill_38_VultureKilled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_100();
    l0 = self.box__UNI11_010_VultureKill_38;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|179551018", "179551018", "UNI11_010_B10", "box__UNI11_010_VultureKill_38.VultureKilled", "box_OutputOrder_v2_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_98_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_010_VultureLootMarker_21();
    l0 = self.box_OnceOnly_v3_98;
    l1 = self.box__UNI11_010_VultureLootMarker_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1590062762", "1590062762", "UNI11_010_B10", "box_OnceOnly_v3_98.Out", "box__UNI11_010_VultureLootMarker_21.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v5_42_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_7();
    l0 = self.box_GroupSizeListener_v5_42;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1147960011", "1147960011", "UNI11_010_B10", "box_GroupSizeListener_v5_42.Enabled", "box_Compare_Integers_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_109();
    l0 = self.box_GroupSizeListener_v5_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1589643295", "1589643295", "UNI11_010_B10", "box_GroupSizeListener_v5_1.Enabled", "box_OutputOrder_v2_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_1_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = self.box_GroupSizeListener_v5_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|604215231", "604215231", "UNI11_010_B10", "box_GroupSizeListener_v5_1.MemberRemoved", "box_OutputOrder_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_121_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_111();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1641046597", "1641046597", "UNI11_010_B10", "box_SetContextualStrategy_121.Out", "box_SetActivityFact_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_86_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_87();
    l0 = self.box_EntityStatusListener_86;
    l1 = self.box_MetaBreakableModifier_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1281063642", "1281063642", "UNI11_010_B10", "box_EntityStatusListener_86.Loaded", "box_MetaBreakableModifier_v2_87.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_125_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_125;
    l1 = self.box_OnceOnly_v3_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|379746751", "379746751", "UNI11_010_B10", "box_MultipleOR_125.Out", "box_OnceOnly_v3_120.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ConversationListener_64_Finished()
    local l0, l1;
    l0 = self.box_ConversationListener_64;
    l1 = self.box_MultipleOR_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1395452334", "1395452334", "UNI11_010_B10", "box_ConversationListener_64.Finished", "box_MultipleOR_72.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_AcquireObject_v5_41();
    l0 = self.box_Brick_AcquireObject_v5_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|886939821", "886939821", "UNI11_010_B10", "box_OutputOrder_v2_57.Out", "box_Brick_AcquireObject_v5_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_57_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_73();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1525857572", "1525857572", "UNI11_010_B10", "box_OutputOrder_v2_57.Out", "box_OutputOrder_v2_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_75_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_77();
    l0 = self.box_EntityStatusListener_75;
    l1 = self.box_ProximityTrigger_v2_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|72158799", "72158799", "UNI11_010_B10", "box_EntityStatusListener_75.Loaded", "box_ProximityTrigger_v2_77.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_78_Critical()
    self:OnExit_box_HealthListener_v6_78_Critical();
end;

function export:f_box_HealthListener_v6_78_Damaged()
    self:OnExit_box_HealthListener_v6_78_Damaged();
end;

function export:f_box_HealthListener_v6_78_Downed()
    self:OnExit_box_HealthListener_v6_78_Downed();
end;

function export:f_box_HealthListener_v6_78_Healed()
    self:OnExit_box_HealthListener_v6_78_Healed();
end;

function export:f_box_HealthListener_v6_78_Killed()
    local params, l0, l1;
    self:OnExit_box_HealthListener_v6_78_Killed();
    params = self:OnEnter_box_Compare_Entity_9();
    l0 = self.box_HealthListener_v6_78;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1652017316", "1652017316", "UNI11_010_B10", "box_HealthListener_v6_78.Killed", "box_Compare_Entity_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_78_Revived()
    self:OnExit_box_HealthListener_v6_78_Revived();
end;

function export:f_box__UNI11_010_MarkerBind_LootCheck_32_Debug_UNLOADED()
    local l0, l1;
    l0 = self.box__UNI11_010_MarkerBind_LootCheck_32;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|934496408", "934496408", "UNI11_010_B10", "box__UNI11_010_MarkerBind_LootCheck_32.Debug_UNLOADED", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box__UNI11_010_MarkerBind_LootCheck_32_Looted()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_40();
    l0 = self.box__UNI11_010_MarkerBind_LootCheck_32;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|777896699", "777896699", "UNI11_010_B10", "box__UNI11_010_MarkerBind_LootCheck_32.Looted", "box_SetBoolean_v2_40.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__UNI11_010_MarkerBind_LootCheck_32_VultureLoaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_52();
    l0 = self.box__UNI11_010_MarkerBind_LootCheck_32;
    l1 = self.box_MultipleAND_v2_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1451535776", "1451535776", "UNI11_010_B10", "box__UNI11_010_MarkerBind_LootCheck_32.VultureLoaded", "box_MultipleAND_v2_52.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_OnceOnly_v3_46_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_46;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1538670273", "1538670273", "UNI11_010_B10", "box_OnceOnly_v3_46.Out", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MultipleAND_v2_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_74();
    l0 = self.box_MultipleAND_v2_52;
    l1 = self.box_EntityStatusListener_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|807159634", "807159634", "UNI11_010_B10", "box_MultipleAND_v2_52.Out", "box_EntityStatusListener_74.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_132_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetOasis_131();
    l0 = self.box_OnceOnly_v3_132;
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|392483585", "392483585", "UNI11_010_B10", "box_OnceOnly_v3_132.Out", "box_SetOasis_131.FromOasis", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromOasis
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__UNI11_010_MarkerBind_LootCheck_50_Debug_UNLOADED()
    local l0, l1;
    l0 = self.box__UNI11_010_MarkerBind_LootCheck_50;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1438323127", "1438323127", "UNI11_010_B10", "box__UNI11_010_MarkerBind_LootCheck_50.Debug_UNLOADED", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box__UNI11_010_MarkerBind_LootCheck_50_Looted()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_22();
    l0 = self.box__UNI11_010_MarkerBind_LootCheck_50;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1081965831", "1081965831", "UNI11_010_B10", "box__UNI11_010_MarkerBind_LootCheck_50.Looted", "box_SetBoolean_v2_22.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__UNI11_010_MarkerBind_LootCheck_50_VultureLoaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_52();
    l0 = self.box__UNI11_010_MarkerBind_LootCheck_50;
    l1 = self.box_MultipleAND_v2_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|247028744", "247028744", "UNI11_010_B10", "box__UNI11_010_MarkerBind_LootCheck_50.VultureLoaded", "box_MultipleAND_v2_52.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_OutputOrder_v2_73_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_71();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1033642060", "1033642060", "UNI11_010_B10", "box_OutputOrder_v2_73.Out", "box_GetActivityState_v2_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_73_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConversationListener_64();
    l0 = self.box_ConversationListener_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1150985828", "1150985828", "UNI11_010_B10", "box_OutputOrder_v2_73.Out", "box_ConversationListener_64.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_51_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_51;
    l1 = self.box_OnceOnly_v3_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2054039116", "2054039116", "UNI11_010_B10", "box_MultipleOR_51.Out", "box_OnceOnly_v3_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_48();
    l0 = self.box_MultipleOR_34;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|618801249", "618801249", "UNI11_010_B10", "box_MultipleOR_34.Out", "box_Compare_Integers_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_AcquireObject_v5_41_ItemsAcquired()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = self.box_Brick_AcquireObject_v5_41;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1665426098", "1665426098", "UNI11_010_B10", "box_Brick_AcquireObject_v5_41.ItemsAcquired", "box_Simple_Node_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_18();
    l0 = self.box_MultipleOR_45;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1351982235", "1351982235", "UNI11_010_B10", "box_MultipleOR_45.Out", "box_GetPlayerGroup_v2_18.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_100_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1219806775", "1219806775", "UNI11_010_B10", "box_OutputOrder_v2_100.Out", "box_MultipleOR_60.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_100_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|447978584", "447978584", "UNI11_010_B10", "box_OutputOrder_v2_100.Out", "box_MultipleOR_105.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1198553496", "1198553496", "UNI11_010_B10", "box_OutputOrder_v2_58.Out", "box_OutputOrder_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_14_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_14;
    l1 = self.box_OnceOnly_v3_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1408204280", "1408204280", "UNI11_010_B10", "box_MultipleOR_14.Out", "box_OnceOnly_v3_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_74_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_69();
    l0 = self.box_EntityStatusListener_74;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1933865767", "1933865767", "UNI11_010_B10", "box_EntityStatusListener_74.Loaded", "box_SetEntity_v2_69.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__UNI11_010_VultureKill_19_VultureKilled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_102();
    l0 = self.box__UNI11_010_VultureKill_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|503852458", "503852458", "UNI11_010_B10", "box__UNI11_010_VultureKill_19.VultureKilled", "box_OutputOrder_v2_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_91_Active()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BindMarkerOverHead_v2_25();
    l0 = self.box_BindMarkerOverHead_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|187533940", "187533940", "UNI11_010_B10", "box_GetActivityState_v2_91.Active", "box_BindMarkerOverHead_v2_25.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_GetActivityState_v2_91_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_94();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1958432656", "1958432656", "UNI11_010_B10", "box_GetActivityState_v2_91.Completed", "box_EndActivityObjective_v2_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_72_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_72;
    l1 = self.box_OnceOnly_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|506547633", "506547633", "UNI11_010_B10", "box_MultipleOR_72.Out", "box_OnceOnly_v3_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_16_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_16;
    l1 = self.box_OnceOnly_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2090612152", "2090612152", "UNI11_010_B10", "box_MultipleOR_16.Out", "box_OnceOnly_v3_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_107_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_107;
    l1 = self.box_OnceOnly_v3_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|425873809", "425873809", "UNI11_010_B10", "box_MultipleOR_107.Out", "box_OnceOnly_v3_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_71_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1193108410", "1193108410", "UNI11_010_B10", "box_GetActivityState_v2_71.Completed", "box_MultipleOR_72.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_105_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_105;
    l1 = self.box_OnceOnly_v3_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1873314281", "1873314281", "UNI11_010_B10", "box_MultipleOR_105.Out", "box_OnceOnly_v3_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_104_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_104;
    l1 = self.box_OnceOnly_v3_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1879821113", "1879821113", "UNI11_010_B10", "box_MultipleOR_104.Out", "box_OnceOnly_v3_97.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|883640790", "883640790", "UNI11_010_B10", "box_OutputOrder_v2_65.Out", "box_Simple_Node_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1492726700", "1492726700", "UNI11_010_B10", "box_OutputOrder_v2_65.Out", "box_MultipleOR_66.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_88_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_89();
    l0 = self.box_EntityStatusListener_88;
    l1 = self.box_MetaBreakableModifier_v2_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|899060271", "899060271", "UNI11_010_B10", "box_EntityStatusListener_88.Loaded", "box_MetaBreakableModifier_v2_89.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_129_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_129;
    l1 = self.box_OnceOnly_v3_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|84773340", "84773340", "UNI11_010_B10", "box_MultipleOR_129.Out", "box_OnceOnly_v3_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayerGroup_v2_18_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_18_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|421145310", "421145310", "UNI11_010_B10", "box_GetPlayerGroup_v2_18.Out", "box_OutputOrder_v2_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_35_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_AcquireObject_v5_2();
    l0 = self.box_OnceOnly_v3_35;
    l1 = self.box_Brick_AcquireObject_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|240848541", "240848541", "UNI11_010_B10", "box_OnceOnly_v3_35.Out", "box_Brick_AcquireObject_v5_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_108_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box__UNI11_010_VultureLootMarker_67();
    l0 = self.box_OnceOnly_v3_108;
    l1 = self.box__UNI11_010_VultureLootMarker_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1564190538", "1564190538", "UNI11_010_B10", "box_OnceOnly_v3_108.Out", "box__UNI11_010_VultureLootMarker_67.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_15();
    l0 = self.box_EntityStatusListener_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1597500384", "1597500384", "UNI11_010_B10", "box_OutputOrder_v2_76.Out", "box_EntityStatusListener_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_75();
    l0 = self.box_EntityStatusListener_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|3440900", "3440900", "UNI11_010_B10", "box_OutputOrder_v2_76.Out", "box_EntityStatusListener_75.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_86();
    l0 = self.box_EntityStatusListener_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|109720964", "109720964", "UNI11_010_B10", "box_OutputOrder_v2_76.Out", "box_EntityStatusListener_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_91();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|755456512", "755456512", "UNI11_010_B10", "box_OutputOrder_v2_76.Out", "box_GetActivityState_v2_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_124();
    l0 = self.box_GroupSizeListener_v5_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1578756185", "1578756185", "UNI11_010_B10", "box_OutputOrder_v2_76.Out", "box_GroupSizeListener_v5_124.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_133();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|64193257", "64193257", "UNI11_010_B10", "box_OutputOrder_v2_76.Out", "box_OutputOrder_v2_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_4_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_92();
    l0 = self.box_OnceOnly_v3_4;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1631475494", "1631475494", "UNI11_010_B10", "box_OnceOnly_v3_4.Out", "box_EndActivityObjective_v2_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_130_OnSetExplosion()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|184021362", "184021362", "UNI11_010_B10", "box_VehicleModifier_v2_130.OnSetExplosion", "box_MultipleOR_135.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box__UNI11_010_MarkerBind_LootCheck_39_Debug_UNLOADED()
    local l0, l1;
    l0 = self.box__UNI11_010_MarkerBind_LootCheck_39;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|992135037", "992135037", "UNI11_010_B10", "box__UNI11_010_MarkerBind_LootCheck_39.Debug_UNLOADED", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box__UNI11_010_MarkerBind_LootCheck_39_Looted()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_30();
    l0 = self.box__UNI11_010_MarkerBind_LootCheck_39;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1461031798", "1461031798", "UNI11_010_B10", "box__UNI11_010_MarkerBind_LootCheck_39.Looted", "box_SetBoolean_v2_30.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__UNI11_010_MarkerBind_LootCheck_39_VultureLoaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_52();
    l0 = self.box__UNI11_010_MarkerBind_LootCheck_39;
    l1 = self.box_MultipleAND_v2_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1845901957", "1845901957", "UNI11_010_B10", "box__UNI11_010_MarkerBind_LootCheck_39.VultureLoaded", "box_MultipleAND_v2_52.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_010_VultureLootMarker_21();
    l0 = self.box__UNI11_010_VultureLootMarker_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|132169419", "132169419", "UNI11_010_B10", "box_OutputOrder_v2_56.Out", "box__UNI11_010_VultureLootMarker_21.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_010_VultureLootMarker_33();
    l0 = self.box__UNI11_010_VultureLootMarker_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|657183638", "657183638", "UNI11_010_B10", "box_OutputOrder_v2_56.Out", "box__UNI11_010_VultureLootMarker_33.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_010_VultureLootMarker_67();
    l0 = self.box__UNI11_010_VultureLootMarker_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1126877520", "1126877520", "UNI11_010_B10", "box_OutputOrder_v2_56.Out", "box__UNI11_010_VultureLootMarker_67.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_010_VultureKill_38();
    l0 = self.box__UNI11_010_VultureKill_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1519537666", "1519537666", "UNI11_010_B10", "box_OutputOrder_v2_10.Out", "box__UNI11_010_VultureKill_38.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_010_VultureKill_26();
    l0 = self.box__UNI11_010_VultureKill_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1280730563", "1280730563", "UNI11_010_B10", "box_OutputOrder_v2_10.Out", "box__UNI11_010_VultureKill_26.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_010_VultureKill_19();
    l0 = self.box__UNI11_010_VultureKill_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1648351251", "1648351251", "UNI11_010_B10", "box_OutputOrder_v2_10.Out", "box__UNI11_010_VultureKill_19.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_66_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_88();
    l0 = self.box_MultipleOR_66;
    l1 = self.box_EntityStatusListener_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1433458226", "1433458226", "UNI11_010_B10", "box_MultipleOR_66.Out", "box_EntityStatusListener_88.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleDamageListener_v2_134_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_134;
    l1 = self.box_MultipleOR_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1052496848", "1052496848", "UNI11_010_B10", "box_VehicleDamageListener_v2_134.Destroyed", "box_MultipleOR_129.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_134_Disabled()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_134;
    l1 = self.box_MultipleOR_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1987033668", "1987033668", "UNI11_010_B10", "box_VehicleDamageListener_v2_134.Disabled", "box_MultipleOR_129.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_29();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|192405785", "192405785", "UNI11_010_B10", "box_OutputOrder_v2_20.Out", "box_Simple_Node_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_62();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|842425449", "842425449", "UNI11_010_B10", "box_OutputOrder_v2_20.Out", "box_ActivityEnd_62.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_5_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_1();
    l0 = self.box_GroupSizeListener_v5_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|958095040", "958095040", "UNI11_010_B10", "box_AddActivityObjective_v2_5.Out", "box_GroupSizeListener_v5_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_010_MarkerBind_LootCheck_32();
    l0 = self.box__UNI11_010_MarkerBind_LootCheck_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|862160780", "862160780", "UNI11_010_B10", "box_OutputOrder_v2_27.Out", "box__UNI11_010_MarkerBind_LootCheck_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_010_MarkerBind_LootCheck_39();
    l0 = self.box__UNI11_010_MarkerBind_LootCheck_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|863878918", "863878918", "UNI11_010_B10", "box_OutputOrder_v2_27.Out", "box__UNI11_010_MarkerBind_LootCheck_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_27_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_010_MarkerBind_LootCheck_50();
    l0 = self.box__UNI11_010_MarkerBind_LootCheck_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|264459281", "264459281", "UNI11_010_B10", "box_OutputOrder_v2_27.Out", "box__UNI11_010_MarkerBind_LootCheck_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_7_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_112();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|443859188", "443859188", "UNI11_010_B10", "box_Compare_Integers_7.A_eq_B", "box_OutputOrder_v2_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_7_A_ne_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1879367237", "1879367237", "UNI11_010_B10", "box_Compare_Integers_7.A_ne_B", "box_OutputOrder_v2_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Switch_8_None()
    local params, l0;
    params = self:OnEnter_box_Switch_8();
    l0 = self.box_Switch_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1567030051", "1567030051", "UNI11_010_B10", "box_Switch_8.None", "box_Switch_8.Reset", l0:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_Switch_8_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_83();
    l0 = self.box_Switch_8;
    l1 = self.box_Brick_PlayDialog_Relax_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1210190193", "1210190193", "UNI11_010_B10", "box_Switch_8.Output", "box_Brick_PlayDialog_Relax_83.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_8_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_84();
    l0 = self.box_Switch_8;
    l1 = self.box_Brick_PlayDialog_Relax_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1656334871", "1656334871", "UNI11_010_B10", "box_Switch_8.Output", "box_Brick_PlayDialog_Relax_84.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|@n_AllDeadBeforeTalk");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_126_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|@n_AllVulturesKilled");
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
                [0] = self.f_box_OutputOrder_v2_112_Out_0,
                [1] = self.f_box_OutputOrder_v2_112_Out_1,
                [2] = self.f_box_OutputOrder_v2_112_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|@n_aVultureWasKilled");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_103_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|@n_CleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_29_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|@n_Failed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|@n_FoundKey");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_43_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|@n_InsideBarn_Failsafe");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_79_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|9088275");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_95_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2103109347809766497",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI11_010_B10_OBJ_Speakwith",
            id = "789575",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|30841065");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|66114065");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_9_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_9_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.e_VultureKiller,
        -- Entity2,
        [1] = self.e_Kenny,
    };
    return params;
end;

function export:OnEnter_box_SetOasis_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetOasis_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|87740079");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetOasis_131_Out,
    });
    params = {
        -- Oasis,
        [0] = {
            section = "Objectives",
            item = "UNI11_010_DEBRIEF_GOAL_BringBackMeat",
            id = "461456",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|100646339");
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
                [0] = self.f_box_OutputOrder_v2_101_Out_0,
                [1] = self.f_box_OutputOrder_v2_101_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|122932114");
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
                [0] = self.f_box_OutputOrder_v2_49_Out_0,
                [1] = self.f_box_OutputOrder_v2_49_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|125048620");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_48_A_eq_B,
    });
    l0 = self.box_GroupSizeListener_v5_1;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_15()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103070501208365705",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|213600583");
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
                [0] = self.f_box_OutputOrder_v2_109_Out_0,
                [1] = self.f_box_OutputOrder_v2_109_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|314897607");
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
                [0] = self.f_box_OutputOrder_v2_136_Out_0,
                [1] = self.f_box_OutputOrder_v2_136_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|323286962");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_123_A_eq_B,
    });
    l0 = self.box_GroupSizeListener_v5_124;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_85()
    local params;
    params = {
        -- Group,
        [0] = self.e_Kenny,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "1497799297",
    };
    return params;
end;

function export:OnEnter_box__UNI11_010_VultureKill_26()
    local params;
    params = {
        -- Mobile_Marker,
        [0] = "2103109047275301481",
        -- Objective,
        [1] = {
            section = "Objectives",
            item = "UNI11_010_B10_OBJ_KillVultures",
            id = "793622",
        },
        -- Vulture,
        [2] = "2103083914867261938",
    };
    return params;
end;

function export:OnEnter_box_BindMarkerOverHead_v2_25()
    local params;
    params = {
        -- BoneName,
        [0] = "Head",
        -- eMobileMarker,
        [1] = "2103109347809766497",
        -- eNPC,
        [2] = self.e_Kenny,
        -- fHeight,
        [3] = 0.45,
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V3_90()
    local params;
    params = {
        -- eNPC,
        [0] = self.e_Kenny,
        -- eQCA_STP,
        [1] = "2103388666796728280",
        -- oObjective,
        [2] = {
            section = "BRICK_Escort_NPC_To_Position",
            item = "BRICK_Escort_NPC_Talk",
            id = "426352",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|575966285");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|612073170");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_96_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI11_010_B10_OBJ_Speakwith",
            id = "789575",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_82()
    local params;
    params = {
        -- Group,
        [0] = self.e_Kenny,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "4020914178",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|640824453");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_69_Out,
    });
    params = {
        -- Entity,
        [0] = "2103109016679950865",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_124()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#6E0BB2BF",
    };
    return params;
end;

function export:OnEnter_box_SetLootGroup_3()
    local params;
    params = {
        -- LootGroup,
        [0] = "9015249290159166",
        -- Targets,
        [1] = "2103070501208365705",
    };
    return params;
end;

function export:OnEnter_box__UNI11_010_VultureLootMarker_21()
    local params;
    params = {
        -- b_VultureLooted,
        [0] = self.b_Vulture01_Looted,
        -- Objective,
        [1] = {
            section = "Objectives",
            item = "UNI11_010_B10_OBJ_Key",
            id = "786824",
        },
        -- Vulture,
        [2] = "2103083911339852055",
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_80()
    local params;
    params = {
        -- Group,
        [0] = self.e_Kenny,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "2034543670",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|663515996");
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
                [0] = self.f_box_OutputOrder_v2_63_Out_0,
                [1] = self.f_box_OutputOrder_v2_63_Out_1,
                [2] = self.f_box_OutputOrder_v2_63_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|675222358");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_30_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|684669181");
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
                [0] = self.f_box_OutputOrder_v2_68_Out_0,
                [1] = self.f_box_OutputOrder_v2_68_Out_1,
                [2] = self.f_box_OutputOrder_v2_68_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|713277780");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_92_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI11_010_B10_OBJ_Speakwith",
            id = "789575",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|719895208");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI11_010_B10_OBJ_KillVultures",
            id = "793622",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|791611412");
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
                [0] = self.f_box_OutputOrder_v2_102_Out_0,
                [1] = self.f_box_OutputOrder_v2_102_Out_1,
                [2] = self.f_box_OutputOrder_v2_102_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|830775821");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_13_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI11_010_B10_OBJ_KillVultures",
            id = "793622",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|868724586");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|888926838");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_87()
    local params;
    params = {
        -- targets,
        [0] = "2103553055132758551",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|905808447");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "uni11_010_allvulturesdead",
    };
    return params;
end;

function export:OnEnter_box_Switch_23()
    local params;
    DrawTextToScreen("Comment: Kenny Killed one", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Switch')-- Comment: Kenny Killed one");
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1008918323");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_40_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_89()
    local params;
    params = {
        -- targets,
        [0] = "2103553055132758551",
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_128()
    local params;
    params = {
        -- Vehicle,
        [0] = "2103028379841239174",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1035551928");
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
                [0] = self.f_box_OutputOrder_v2_133_Out_0,
                [1] = self.f_box_OutputOrder_v2_133_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_77()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.PlayerGroup,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103081108494099843",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1121824751");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_AcquireObject_v5_2()
    local params;
    params = {
        -- AmountRequired,
        [0] = 1,
        -- bRequiresObjective,
        [1] = true,
        -- CompletePreviousObjective,
        [2] = false,
        -- LootItemID,
        [3] = "9015220425795375",
        -- Objective,
        [5] = {
            section = "Objectives",
            item = "UNI11_010_B10_OBJ_Key",
            id = "786824",
        },
        -- ProtectItemOnSuccess,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box__UNI11_010_VultureKill_38()
    local params;
    params = {
        -- Mobile_Marker,
        [0] = "2103109046931368549",
        -- Objective,
        [1] = {
            section = "Objectives",
            item = "UNI11_010_B10_OBJ_KillVultures",
            id = "793622",
        },
        -- Vulture,
        [2] = "2103083911339852055",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_42()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#6E0BB2BF",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_1()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#6E0BB2BF",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1175245714");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_121_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105225294225883016",
        -- Group,
        [1] = "#134323B0",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_86()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103553055132758551",
    };
    return params;
end;

function export:OnEnter_box_ConversationListener_64()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- Entity,
        [1] = self.e_Kenny,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1269750744");
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
                [0] = self.f_box_OutputOrder_v2_57_Out_0,
                [1] = self.f_box_OutputOrder_v2_57_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_75()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103081108494099843",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_78()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#6E0BB2BF",
    };
    return params;
end;

function export:OnEnter_box__UNI11_010_MarkerBind_LootCheck_32()
    local params;
    params = {
        -- Kill_MobileMarker,
        [0] = "2103081257568061855",
        -- Vulture,
        [1] = "2103070501208365705",
        -- VultureSpawner,
        [2] = "2103070501204171395",
        -- VultureTarget,
        [3] = "2103510275161338654",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1347928691");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "orange",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "UNI11_010_B10 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box__UNI11_010_VultureLootMarker_33()
    local params;
    params = {
        -- b_VultureLooted,
        [0] = self.b_Vulture02_Looted,
        -- Objective,
        [1] = {
            section = "Objectives",
            item = "UNI11_010_B10_OBJ_Key",
            id = "786824",
        },
        -- Vulture,
        [2] = "2103083914867261938",
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_83()
    local params;
    params = {
        -- Group,
        [0] = self.e_Kenny,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "3001636724",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_52()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box__UNI11_010_MarkerBind_LootCheck_50()
    local params;
    params = {
        -- Kill_MobileMarker,
        [0] = "2103109047275301481",
        -- Vulture,
        [1] = "2103083914867261938",
        -- VultureSpawner,
        [2] = "2103083914863067628",
        -- VultureTarget,
        [3] = "2103510284183286562",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1514407202");
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
                [0] = self.f_box_OutputOrder_v2_73_Out_0,
                [1] = self.f_box_OutputOrder_v2_73_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_81()
    local params;
    params = {
        -- Group,
        [0] = self.e_Kenny,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "825436676",
    };
    return params;
end;

function export:OnEnter_box_Brick_AcquireObject_v5_41()
    local params;
    params = {
        -- AmountRequired,
        [0] = 1,
        -- bRequiresObjective,
        [1] = false,
        -- CompletePreviousObjective,
        [2] = false,
        -- LootItemID,
        [3] = "9015220425795375",
        -- ProtectItemOnSuccess,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1571178666");
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
                [0] = self.f_box_OutputOrder_v2_100_Out_0,
                [1] = self.f_box_OutputOrder_v2_100_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_84()
    local params;
    params = {
        -- Group,
        [0] = self.e_Kenny,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "46667098",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1614050378");
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
                [0] = self.f_box_OutputOrder_v2_58_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_74()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103109016679950865",
    };
    return params;
end;

function export:OnEnter_box__UNI11_010_VultureKill_19()
    local params;
    params = {
        -- Mobile_Marker,
        [0] = "2103081257568061855",
        -- Objective,
        [1] = {
            section = "Objectives",
            item = "UNI11_010_B10_OBJ_KillVultures",
            id = "793622",
        },
        -- Vulture,
        [2] = "2103070501208365705",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1725698766");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_91_Active,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_91_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015278263475376",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1729358986");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = self.o_FailReason,
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1756524272");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI11_010_B10_OBJ_Speakwith",
            id = "789575",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_71()
    local params, l0;
    DrawTextToScreen("Comment: B15 is the TalkTo Beat", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'GetActivityState_v2')-- Comment: B15 is the TalkTo Beat");
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1816161248");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_71_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015278263475376",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1845687857");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_88()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103553055132758551",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1905971466");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_18_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1948872275");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 6,
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
                [0] = self.f_box_OutputOrder_v2_76_Out_0,
                [1] = self.f_box_OutputOrder_v2_76_Out_1,
                [2] = self.f_box_OutputOrder_v2_76_Out_2,
                [3] = self.f_box_OutputOrder_v2_76_Out_3,
                [4] = self.f_box_OutputOrder_v2_76_Out_4,
                [5] = self.f_box_OutputOrder_v2_76_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_130()
    local params, l0;
    DrawTextToScreen("Comment: ZET-296229", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'VehicleModifier_v2')-- Comment: ZET-296229");
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1964962449");
    l0:SetConnections({
        -- OnSetExplosion,
        [17] = self.f_box_VehicleModifier_v2_130_OnSetExplosion,
    });
    params = {
        -- targets,
        [0] = "2103026258142075458",
    };
    return params;
end;

function export:OnEnter_box__UNI11_010_MarkerBind_LootCheck_39()
    local params;
    params = {
        -- Kill_MobileMarker,
        [0] = "2103109046931368549",
        -- Vulture,
        [1] = "2103083911339852055",
        -- VultureSpawner,
        [2] = "2103083911337754897",
        -- VultureTarget,
        [3] = "2103510284183286562",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|1996299427");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
                [2] = self.f_box_OutputOrder_v2_56_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__UNI11_010_VultureLootMarker_67()
    local params;
    params = {
        -- b_VultureLooted,
        [0] = self.b_Vulture03_Looted,
        -- Objective,
        [1] = {
            section = "Objectives",
            item = "UNI11_010_B10_OBJ_Key",
            id = "786824",
        },
        -- Vulture,
        [2] = "2103070501208365705",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2002692508");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
                [2] = self.f_box_OutputOrder_v2_10_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_134()
    local params;
    params = {
        -- Vehicle,
        [0] = "2103026258142075458",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2053377582");
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

function export:OnEnter_box_AddActivityObjective_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2054581845");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_5_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI11_010_B10_OBJ_KillVultures",
            id = "793622",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2054826115");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
                [2] = self.f_box_OutputOrder_v2_27_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2067493017");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_7_A_eq_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_7_A_ne_B,
    });
    l0 = self.box_GroupSizeListener_v5_42;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Switch_8()
    local params;
    DrawTextToScreen("Comment: We assume if Kenny didn't kill it, the player did", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Switch')-- Comment: We assume if Kenny didn't kill it, the player did");
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_010\\UNI11_010_B10.domino|@UNI11_010_B10|2123629200");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103509781313499626",
        -- Group,
        [1] = "#134323B0",
    };
    return params;
end;

function export:OnExit_box_SetOasis_131_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.o_FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_69_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Kenny = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_30_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_Vulture02_Looted = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_22_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_Vulture03_Looted = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_40_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_Vulture01_Looted = l0:GetDataOutValue(0);
end;

function export:OnExit_box_HealthListener_v6_78_Critical()
    local l0;
    l0 = self.box_HealthListener_v6_78;
    self.e_VultureKiller = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_78_Damaged()
    local l0;
    l0 = self.box_HealthListener_v6_78;
    self.e_VultureKiller = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_78_Downed()
    local l0;
    l0 = self.box_HealthListener_v6_78;
    self.e_VultureKiller = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_78_Healed()
    local l0;
    l0 = self.box_HealthListener_v6_78;
    self.e_VultureKiller = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_78_Killed()
    local l0;
    l0 = self.box_HealthListener_v6_78;
    self.e_VultureKiller = l0:GetDataOutValue(4);
end;

function export:OnExit_box_HealthListener_v6_78_Revived()
    local l0;
    l0 = self.box_HealthListener_v6_78;
    self.e_VultureKiller = l0:GetDataOutValue(4);
end;

function export:OnExit_box_GetPlayerGroup_v2_18_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.PlayerGroup = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
