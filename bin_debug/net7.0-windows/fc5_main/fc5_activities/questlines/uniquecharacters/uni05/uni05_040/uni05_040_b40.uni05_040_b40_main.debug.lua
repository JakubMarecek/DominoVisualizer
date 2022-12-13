LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni05/uni05_040/uni05_040_b40.domino
-- User graph: UNI05_040_B40_main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FishingListener.lua");
        cboxRes:RegisterBox("Domino/System/FishingModifier.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProtectedLootItemModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1430308387.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3445682905.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1307625740.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3298199411.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1634681572.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3601520000.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI05/UNI05_040/UNI05_040_B40.UNI05_040_B40_main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua")] = {
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
                name = "FailingZoneEntered",
                delayed = true,
            },
            [1] = {
                name = "WarningZoneEntered",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bShowUI",
                type = "bool",
            },
            [1] = {
                name = "CoopFailRequiresAllPlayer",
                type = "bool",
            },
            [2] = {
                name = "FailingZoneTrigger",
                type = "entity",
            },
            [3] = {
                name = "WarningZoneTrigger",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "CurrentWarnedPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/CompareStrings.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_contains_B",
                delayed = false,
            },
            [1] = {
                name = "A_eq_B",
                delayed = false,
            },
            [2] = {
                name = "A_ncontains_B",
                delayed = false,
            },
            [3] = {
                name = "A_neq_B",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "A",
                type = "string",
            },
            [1] = {
                name = "B",
                type = "string",
            },
            [2] = {
                name = "IgnoreCase",
                type = "bool",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/FishingListener.lua")] = {
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
                name = "Bite",
                delayed = true,
            },
            [1] = {
                name = "Cancelled",
                delayed = true,
            },
            [2] = {
                name = "CastFail",
                delayed = true,
            },
            [3] = {
                name = "CastSuccess",
                delayed = true,
            },
            [4] = {
                name = "Caught",
                delayed = true,
            },
            [5] = {
                name = "CaughtBass",
                delayed = true,
            },
            [6] = {
                name = "CaughtSalmon",
                delayed = true,
            },
            [7] = {
                name = "CaughtSturgeon",
                delayed = true,
            },
            [8] = {
                name = "CaughtTrout",
                delayed = true,
            },
            [9] = {
                name = "Disabled",
                delayed = false,
            },
            [10] = {
                name = "Enabled",
                delayed = false,
            },
            [11] = {
                name = "Escaped",
                delayed = true,
            },
            [12] = {
                name = "Hooked",
                delayed = true,
            },
            [13] = {
                name = "Started",
                delayed = true,
            },
            [14] = {
                name = "Stopped",
                delayed = true,
            },
        },
        controlOutCount = 15,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "interruptOnDamage",
                type = "bool",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "Fisherman",
                type = "entity",
            },
            [1] = {
                name = "FishName",
                type = "string",
            },
            [2] = {
                name = "Weight",
                type = "float",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/System/FishingModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ForceBite",
            },
            [1] = {
                name = "ForceLineBreak",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "ForcedBite",
                delayed = false,
            },
            [1] = {
                name = "ForcedLineBreak",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "fishArchetype",
                type = "archetype",
            },
            [1] = {
                name = "fishForceBiteTimer",
                type = "float",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/Player/PhoneCallExclusivityModifier.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/RequestPhoneCall_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Canceled",
                delayed = true,
            },
            [1] = {
                name = "Completed",
                delayed = true,
            },
            [2] = {
                name = "Failed",
                delayed = true,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
            [4] = {
                name = "Pending",
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
                name = "CustomRingInSound",
                type = "Sound",
            },
            [1] = {
                name = "CustomRingOutSound",
                type = "Sound",
            },
            [2] = {
                name = "Delay",
                type = "float",
            },
            [3] = {
                name = "NoDeadair",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ProtectedLootItemModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "AddProtectedLootItem",
            },
            [1] = {
                name = "RemoveProtectedLootItem",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "LootItemID",
                type = "genericdb",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "RequiredQuantity",
                type = "int",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Random.lua")] = {
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
            [1] = {
                name = "Probability",
                type = "float",
                dynamicType = 1,
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/RemoveEntity_v2.lua")] = {
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
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI05_040_B40_main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main";
    self.ePlayer = nil;
    self.eFish = nil;
    self.bFirstFail = true;
    self.Fish_Name = "";
    self.playerGroup = nil;
    self.e_Host = nil;
    self.e_Client = nil;
    self.player_that_caught_fish = nil;
    self.Fisher_Man = nil;
    self.box_RequestPhoneCall_v2_59 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|10165539");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_59_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_59_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_59_Failed,
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_59_Started,
    });
    self.box_Random_17 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|44038635");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
            [1] = 2,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_17_Output_0,
                [1] = self.f_box_Random_17_Output_1,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_44 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|54330654");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_44_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_44_TimeElapsed,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|140969369");
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_CoopActivePlayers_30 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|141204594");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_30_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_30_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_30_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_30_TwoPlayers,
    });
    self.box_Random_58 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|202927831");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
            [1] = 2,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_58_Output_0,
                [1] = self.f_box_Random_58_Output_1,
            },
            count = 2,
        },
    });
    self.box_RequestPhoneCall_v2_24 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|303712105");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_19 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|305882511");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_19_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_19_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_19_Failed,
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_19_Started,
    });
    self.box_PhoneCallExclusivityModifier_41 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|325063224");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_41_Enabled,
    });
    self.box_OnceOnly_v3_61 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|332234925");
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
    self.box_PhoneCallExclusivityModifier_18 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|387018395");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_18_Enabled,
    });
    self.box_RequestPhoneCall_v2_23 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|443311906");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_23_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_23_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_23_Failed,
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_23_Started,
    });
    self.box_OnceOnly_v3_45 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|463214066");
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
                [0] = self.f_box_OnceOnly_v3_45_Out_0,
            },
            count = 2,
        },
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|495150189");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_EntityStatusListener_14 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|551159996");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_14_Loaded,
    });
    self.box_OnceOnly_v3_40 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|555283021");
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
                [0] = self.f_box_OnceOnly_v3_40_Out_0,
            },
            count = 2,
        },
    });
    self.box_FishingListener_28 = cbox:CreateBox("Domino/System/FishingListener.lua");
    l0 = self.box_FishingListener_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FishingListener_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|598654836");
    l0:SetConnections({
        -- Bite,
        [0] = self.f_box_FishingListener_28_Bite,
        -- Cancelled,
        [1] = self.f_box_FishingListener_28_Cancelled,
        -- CastFail,
        [2] = self.f_box_FishingListener_28_CastFail,
        -- CastSuccess,
        [3] = self.f_box_FishingListener_28_CastSuccess,
        -- Caught,
        [4] = self.f_box_FishingListener_28_Caught,
        -- CaughtBass,
        [5] = self.f_box_FishingListener_28_CaughtBass,
        -- CaughtSalmon,
        [6] = self.f_box_FishingListener_28_CaughtSalmon,
        -- CaughtSturgeon,
        [7] = self.f_box_FishingListener_28_CaughtSturgeon,
        -- CaughtTrout,
        [8] = self.f_box_FishingListener_28_CaughtTrout,
        -- Disabled,
        [9] = self.f_box_FishingListener_28_Disabled,
        -- Enabled,
        [10] = self.f_box_FishingListener_28_Enabled,
        -- Escaped,
        [11] = self.f_box_FishingListener_28_Escaped,
        -- Hooked,
        [12] = self.f_box_FishingListener_28_Hooked,
        -- Started,
        [13] = self.f_box_FishingListener_28_Started,
        -- Stopped,
        [14] = self.f_box_FishingListener_28_Stopped,
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|624480319");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_MultipleOR_47 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|718616887");
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
        [0] = self.f_box_MultipleOR_47_Out,
    });
    self.box_Delay_v5_9 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|739284078");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_9_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_32 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|745967549");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_32_Enabled,
    });
    self.box_PhoneCallExclusivityModifier_39 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|761474555");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_39_Enabled,
    });
    self.box_PhoneCallExclusivityModifier_42 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|805961879");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_42_Enabled,
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|974594694");
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
        [0] = self.f_box_MultipleOR_46_Out,
    });
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1042137152");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_MultipleOR_65 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1044184201");
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
        [0] = self.f_box_MultipleOR_65_Out,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1080800424");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box_ProtectedLootItemModifier_v3_53 = cbox:CreateBox("Domino/System/ProtectedLootItemModifier_v3.lua");
    l0 = self.box_ProtectedLootItemModifier_v3_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProtectedLootItemModifier_v3_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1092856496");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ProtectedLootItemModifier_v3_53_Added,
    });
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1110184173");
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
        [0] = self.f_box_MultipleOR_43_Out,
    });
    self.box_ProtectedLootItemModifier_v3_67 = cbox:CreateBox("Domino/System/ProtectedLootItemModifier_v3.lua");
    l0 = self.box_ProtectedLootItemModifier_v3_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProtectedLootItemModifier_v3_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1154754291");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ProtectedLootItemModifier_v3_67_Added,
    });
    self.box_MultipleOR_49 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1195231004");
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
        [0] = self.f_box_MultipleOR_49_Out,
    });
    self.box_Delay_v5_56 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1468766369");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_56_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_38 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1566261162");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_38_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_38_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_38_Failed,
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_38_Started,
    });
    self.box_RemoveEntity_v2_15 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1580659998");
    l0:SetConnections({
    });
    self.box_MultipleOR_50 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1609145351");
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
        [0] = self.f_box_MultipleOR_50_Out,
    });
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1782763489");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_ProtectedLootItemModifier_v3_62 = cbox:CreateBox("Domino/System/ProtectedLootItemModifier_v3.lua");
    l0 = self.box_ProtectedLootItemModifier_v3_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProtectedLootItemModifier_v3_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1818251335");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ProtectedLootItemModifier_v3_62_Added,
    });
    self.box_RequestPhoneCall_v2_57 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1827617897");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_48 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1865485062");
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
                [0] = self.f_box_OnceOnly_v3_48_Out_0,
            },
            count = 2,
        },
    });
    self.box_PhoneCallExclusivityModifier_34 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1870039362");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_34_Enabled,
    });
    self.box_Gate_v3_33 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1886083585");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_33_Out,
    });
    self.box_ExitZoneWarningListener_v3_21 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|2094609961");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_21_FailingZoneEntered,
        -- WarningZoneEntered,
        [1] = self.f_box_ExitZoneWarningListener_v3_21_WarningZoneEntered,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1295166780", "1295166780", "UNI05_040_B40_main", "In", "box_ActivityAcknowledgeGate_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|664087201", "664087201", "UNI05_040_B40_main", "OnLeaveZone", "box_MultipleOR_8.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_37_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_33();
    l0 = self.box_Gate_v3_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1186560751", "1186560751", "UNI05_040_B40_main", "box_Simple_Node_37.Out", "box_Gate_v3_33.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_36_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_33();
    l0 = self.box_Gate_v3_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1433685153", "1433685153", "UNI05_040_B40_main", "box_Simple_Node_36.Out", "box_Gate_v3_33.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_66_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_FishingListener_28();
    l0 = self.box_FishingListener_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|285975521", "285975521", "UNI05_040_B40_main", "box_Simple_Node_66.Out", "box_FishingListener_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_27();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|2003278768", "2003278768", "UNI05_040_B40_main", "box_Simple_Node_29.Out", "box_ActivityObjectiveMarkerModifier_v3_27.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_59_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_59;
    l1 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1486019631", "1486019631", "UNI05_040_B40_main", "box_RequestPhoneCall_v2_59.Canceled", "box_MultipleOR_47.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_59_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_59;
    l1 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1137772924", "1137772924", "UNI05_040_B40_main", "box_RequestPhoneCall_v2_59.Completed", "box_MultipleOR_47.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_59_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_59;
    l1 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1966641582", "1966641582", "UNI05_040_B40_main", "box_RequestPhoneCall_v2_59.Failed", "box_MultipleOR_47.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_59_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_RequestPhoneCall_v2_59;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|152775189", "152775189", "UNI05_040_B40_main", "box_RequestPhoneCall_v2_59.Started", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_17_Output_0()
    local l0, l1;
    l0 = self.box_Random_17;
    l1 = self.box_PhoneCallExclusivityModifier_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1477528376", "1477528376", "UNI05_040_B40_main", "box_Random_17.Output", "box_PhoneCallExclusivityModifier_41.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_17_Output_1()
    local l0, l1;
    l0 = self.box_Random_17;
    l1 = self.box_PhoneCallExclusivityModifier_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1993840969", "1993840969", "UNI05_040_B40_main", "box_Random_17.Output", "box_PhoneCallExclusivityModifier_42.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Delay_v5_44_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_44;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|984384396", "984384396", "UNI05_040_B40_main", "box_Delay_v5_44.Stopped", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_44_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_44;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|492272545", "492272545", "UNI05_040_B40_main", "box_Delay_v5_44.TimeElapsed", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1020287906", "1020287906", "UNI05_040_B40_main", "box_MultipleOR_2.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_CoopActivePlayers_30_OnePlayer()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_30_OnePlayer();
    params = self:OnEnter_box_ProtectedLootItemModifier_v3_53();
    l0 = self.box_CoopActivePlayers_30;
    l1 = self.box_ProtectedLootItemModifier_v3_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|2023776107", "2023776107", "UNI05_040_B40_main", "box_CoopActivePlayers_30.OnePlayer", "box_ProtectedLootItemModifier_v3_53.AddProtectedLootItem", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddProtectedLootItem
    l1:Exec(0, params);
end;

function export:f_box_CoopActivePlayers_30_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_4();
    l0 = self.box_CoopActivePlayers_30;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1264419279", "1264419279", "UNI05_040_B40_main", "box_CoopActivePlayers_30.PlayerAdded", "box_Simple_Node_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_30_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_30_TwoPlayers();
    params = self:OnEnter_box_Compare_Entity_51();
    l0 = self.box_CoopActivePlayers_30;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1412456340", "1412456340", "UNI05_040_B40_main", "box_CoopActivePlayers_30.TwoPlayers", "box_Compare_Entity_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_58_Output_0()
    local l0, l1;
    l0 = self.box_Random_58;
    l1 = self.box_PhoneCallExclusivityModifier_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1049759800", "1049759800", "UNI05_040_B40_main", "box_Random_58.Output", "box_PhoneCallExclusivityModifier_18.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_58_Output_1()
    local l0, l1;
    l0 = self.box_Random_58;
    l1 = self.box_PhoneCallExclusivityModifier_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1453675718", "1453675718", "UNI05_040_B40_main", "box_Random_58.Output", "box_PhoneCallExclusivityModifier_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_RequestPhoneCall_v2_19_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_19;
    l1 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1252749458", "1252749458", "UNI05_040_B40_main", "box_RequestPhoneCall_v2_19.Canceled", "box_MultipleOR_50.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_19_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_19;
    l1 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1002717560", "1002717560", "UNI05_040_B40_main", "box_RequestPhoneCall_v2_19.Completed", "box_MultipleOR_50.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_19_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_19;
    l1 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|505706657", "505706657", "UNI05_040_B40_main", "box_RequestPhoneCall_v2_19.Failed", "box_MultipleOR_50.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_19_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_RequestPhoneCall_v2_19;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1911522663", "1911522663", "UNI05_040_B40_main", "box_RequestPhoneCall_v2_19.Started", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_41_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_23();
    l0 = self.box_PhoneCallExclusivityModifier_41;
    l1 = self.box_RequestPhoneCall_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|575397905", "575397905", "UNI05_040_B40_main", "box_PhoneCallExclusivityModifier_41.Enabled", "box_RequestPhoneCall_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_61_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Random_58();
    l0 = self.box_OnceOnly_v3_61;
    l1 = self.box_Random_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|515438866", "515438866", "UNI05_040_B40_main", "box_OnceOnly_v3_61.Out", "box_Random_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PhoneCallExclusivityModifier_18_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_57();
    l0 = self.box_PhoneCallExclusivityModifier_18;
    l1 = self.box_RequestPhoneCall_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|222504408", "222504408", "UNI05_040_B40_main", "box_PhoneCallExclusivityModifier_18.Enabled", "box_RequestPhoneCall_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_23_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_23;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1754089195", "1754089195", "UNI05_040_B40_main", "box_RequestPhoneCall_v2_23.Canceled", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_23_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_23;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1614387041", "1614387041", "UNI05_040_B40_main", "box_RequestPhoneCall_v2_23.Completed", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_23_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_23;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|565458642", "565458642", "UNI05_040_B40_main", "box_RequestPhoneCall_v2_23.Failed", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_23_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_RequestPhoneCall_v2_23;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1670698204", "1670698204", "UNI05_040_B40_main", "box_RequestPhoneCall_v2_23.Started", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_45_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = self.box_OnceOnly_v3_45;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|96535199", "96535199", "UNI05_040_B40_main", "box_OnceOnly_v3_45.Out", "box_ActivityEnd_5.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_10();
    l0 = self.box_ActivityInitialized_3;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|126505294", "126505294", "UNI05_040_B40_main", "box_ActivityInitialized_3.Out", "box_GetPlayerGroup_v2_10.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_14();
    l0 = self.box_EntityStatusListener_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|2071476538", "2071476538", "UNI05_040_B40_main", "box_OutputOrder_v2_71.Out", "box_EntityStatusListener_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_71_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|715028824", "715028824", "UNI05_040_B40_main", "box_OutputOrder_v2_71.Out", "box_Delay_v5_20.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_14_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_15();
    l0 = self.box_EntityStatusListener_14;
    l1 = self.box_RemoveEntity_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|971107023", "971107023", "UNI05_040_B40_main", "box_EntityStatusListener_14.Loaded", "box_RemoveEntity_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_40_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_71();
    l0 = self.box_OnceOnly_v3_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1357224114", "1357224114", "UNI05_040_B40_main", "box_OnceOnly_v3_40.Out", "box_OutputOrder_v2_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FishingListener_28_Bite()
    self:OnExit_box_FishingListener_28_Bite();
end;

function export:f_box_FishingListener_28_Caught()
    self:OnExit_box_FishingListener_28_Caught();
end;

function export:f_box_FishingListener_28_CaughtBass()
    self:OnExit_box_FishingListener_28_CaughtBass();
end;

function export:f_box_FishingListener_28_CaughtSalmon()
    self:OnExit_box_FishingListener_28_CaughtSalmon();
end;

function export:f_box_FishingListener_28_CaughtSturgeon()
    local l0, l1;
    self:OnExit_box_FishingListener_28_CaughtSturgeon();
    l0 = self.box_FishingListener_28;
    l1 = self.box_OnceOnly_v3_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1555600516", "1555600516", "UNI05_040_B40_main", "box_FishingListener_28.CaughtSturgeon", "box_OnceOnly_v3_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_FishingListener_28_CaughtTrout()
    self:OnExit_box_FishingListener_28_CaughtTrout();
end;

function export:f_box_FishingListener_28_Escaped()
    local params, l0, l1;
    self:OnExit_box_FishingListener_28_Escaped();
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_FishingListener_28;
    l1 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1369473704", "1369473704", "UNI05_040_B40_main", "box_FishingListener_28.Escaped", "box_Delay_v5_6.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_FishingListener_28_Hooked()
    self:OnExit_box_FishingListener_28_Hooked();
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = self.box_Delay_v5_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|129422685", "129422685", "UNI05_040_B40_main", "box_Delay_v5_20.TimeElapsed", "box_OutputOrder_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_37();
    l0 = self.box_MultipleOR_47;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|242481105", "242481105", "UNI05_040_B40_main", "box_MultipleOR_47.Out", "box_Simple_Node_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_9_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_9;
    l1 = self.box_CoopActivePlayers_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1399591877", "1399591877", "UNI05_040_B40_main", "box_Delay_v5_9.TimeElapsed", "box_CoopActivePlayers_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_PhoneCallExclusivityModifier_32_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_24();
    l0 = self.box_PhoneCallExclusivityModifier_32;
    l1 = self.box_RequestPhoneCall_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|991974083", "991974083", "UNI05_040_B40_main", "box_PhoneCallExclusivityModifier_32.Enabled", "box_RequestPhoneCall_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_39_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_59();
    l0 = self.box_PhoneCallExclusivityModifier_39;
    l1 = self.box_RequestPhoneCall_v2_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|620060009", "620060009", "UNI05_040_B40_main", "box_PhoneCallExclusivityModifier_39.Enabled", "box_RequestPhoneCall_v2_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_42_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_19();
    l0 = self.box_PhoneCallExclusivityModifier_42;
    l1 = self.box_RequestPhoneCall_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|888189947", "888189947", "UNI05_040_B40_main", "box_PhoneCallExclusivityModifier_42.Enabled", "box_RequestPhoneCall_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_56();
    l0 = self.box_Delay_v5_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|845031528", "845031528", "UNI05_040_B40_main", "box_EndActivityObjective_v2_31.Out", "box_Delay_v5_56.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_46_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_46;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|756860916", "756860916", "UNI05_040_B40_main", "box_MultipleOR_46.Out", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_12_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_17();
    l0 = self.box_Random_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|623463772", "623463772", "UNI05_040_B40_main", "box_Compare_Boolean_12.A_is_False", "box_Random_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_12_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_16();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|968328831", "968328831", "UNI05_040_B40_main", "box_Compare_Boolean_12.A_is_True", "box_SetBoolean_v2_16.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_66();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1561808935", "1561808935", "UNI05_040_B40_main", "box_OutputOrder_v2_11.Out", "box_Simple_Node_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_9();
    l0 = self.box_Delay_v5_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1140477457", "1140477457", "UNI05_040_B40_main", "box_OutputOrder_v2_11.Out", "box_Delay_v5_9.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|60547162", "60547162", "UNI05_040_B40_main", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1542806150", "1542806150", "UNI05_040_B40_main", "box_ActivityAcknowledgeGate_1.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_65_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_65;
    l1 = self.box_OnceOnly_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|675871840", "675871840", "UNI05_040_B40_main", "box_MultipleOR_65.Out", "box_OnceOnly_v3_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_22();
    l0 = self.box_MultipleOR_8;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|9627537", "9627537", "UNI05_040_B40_main", "box_MultipleOR_8.Out", "box_ActivityRetry_22.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProtectedLootItemModifier_v3_53_Added()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_63();
    l0 = self.box_ProtectedLootItemModifier_v3_53;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1329185688", "1329185688", "UNI05_040_B40_main", "box_ProtectedLootItemModifier_v3_53.Added", "box_SetActivityFact_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_43_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_43;
    l1 = self.box_OnceOnly_v3_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1864363004", "1864363004", "UNI05_040_B40_main", "box_MultipleOR_43.Out", "box_OnceOnly_v3_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetActivityFact_60_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|947968780", "947968780", "UNI05_040_B40_main", "box_SetActivityFact_60.Out", "box_MultipleOR_65.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ProtectedLootItemModifier_v3_67_Added()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_68();
    l0 = self.box_ProtectedLootItemModifier_v3_67;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1234257132", "1234257132", "UNI05_040_B40_main", "box_ProtectedLootItemModifier_v3_67.Added", "box_SetActivityFact_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_49_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_37();
    l0 = self.box_MultipleOR_49;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1642792667", "1642792667", "UNI05_040_B40_main", "box_MultipleOR_49.Out", "box_Simple_Node_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_51_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_FishingModifier_52();
    l0 = Boxes[GetPathID("Domino/System/FishingModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1903917677", "1903917677", "UNI05_040_B40_main", "box_Compare_Entity_51.Equal", "box_FishingModifier_52.ForceLineBreak", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceLineBreak
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_51_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_FishingModifier_64();
    l0 = Boxes[GetPathID("Domino/System/FishingModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1004590780", "1004590780", "UNI05_040_B40_main", "box_Compare_Entity_51.NotEqual", "box_FishingModifier_64.ForceLineBreak", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceLineBreak
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_13_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_FishingListener_28();
    l0 = self.box_FishingListener_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1931561233", "1931561233", "UNI05_040_B40_main", "box_AddActivityObjective_v2_13.Out", "box_FishingListener_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Strings_35_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_33();
    l0 = self.box_Gate_v3_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|921670726", "921670726", "UNI05_040_B40_main", "box_Compare_Strings_35.A_eq_B", "box_Gate_v3_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_SetActivityFact_68_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1536248956", "1536248956", "UNI05_040_B40_main", "box_SetActivityFact_68.Out", "box_MultipleOR_65.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_56_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_56;
    l1 = self.box_PhoneCallExclusivityModifier_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1332060805", "1332060805", "UNI05_040_B40_main", "box_Delay_v5_56.TimeElapsed", "box_PhoneCallExclusivityModifier_34.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_GetPlayerGroup_v2_10_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1942434967", "1942434967", "UNI05_040_B40_main", "box_GetPlayerGroup_v2_10.Out", "box_OutputOrder_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_38_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_38;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|843406559", "843406559", "UNI05_040_B40_main", "box_RequestPhoneCall_v2_38.Canceled", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_38_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_44();
    l0 = self.box_RequestPhoneCall_v2_38;
    l1 = self.box_Delay_v5_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|3294817", "3294817", "UNI05_040_B40_main", "box_RequestPhoneCall_v2_38.Completed", "box_Delay_v5_44.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_RequestPhoneCall_v2_38_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_38;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|654067874", "654067874", "UNI05_040_B40_main", "box_RequestPhoneCall_v2_38.Failed", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_38_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_44();
    l0 = self.box_RequestPhoneCall_v2_38;
    l1 = self.box_Delay_v5_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|352599777", "352599777", "UNI05_040_B40_main", "box_RequestPhoneCall_v2_38.Started", "box_Delay_v5_44.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_37();
    l0 = self.box_MultipleOR_50;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1318124519", "1318124519", "UNI05_040_B40_main", "box_MultipleOR_50.Out", "box_Simple_Node_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_63_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1048032832", "1048032832", "UNI05_040_B40_main", "box_SetActivityFact_63.Out", "box_MultipleOR_65.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_FishingModifier_64_ForcedLineBreak()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FishingModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProtectedLootItemModifier_v3_62();
    l0 = self.box_ProtectedLootItemModifier_v3_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1600067353", "1600067353", "UNI05_040_B40_main", "box_FishingModifier_64.ForcedLineBreak", "box_ProtectedLootItemModifier_v3_62.AddProtectedLootItem", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddProtectedLootItem
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Strings_35();
    l0 = self.box_Delay_v5_6;
    l1 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1844298952", "1844298952", "UNI05_040_B40_main", "box_Delay_v5_6.TimeElapsed", "box_Compare_Strings_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProtectedLootItemModifier_v3_62_Added()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_60();
    l0 = self.box_ProtectedLootItemModifier_v3_62;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|212639053", "212639053", "UNI05_040_B40_main", "box_ProtectedLootItemModifier_v3_62.Added", "box_SetActivityFact_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_48_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_OnceOnly_v3_48;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|121917333", "121917333", "UNI05_040_B40_main", "box_OnceOnly_v3_48.Out", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_34_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_38();
    l0 = self.box_PhoneCallExclusivityModifier_34;
    l1 = self.box_RequestPhoneCall_v2_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|679962232", "679962232", "UNI05_040_B40_main", "box_PhoneCallExclusivityModifier_34.Enabled", "box_RequestPhoneCall_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_12();
    l0 = self.box_Gate_v3_33;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|888021748", "888021748", "UNI05_040_B40_main", "box_Gate_v3_33.Out", "box_Compare_Boolean_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FishingModifier_52_ForcedLineBreak()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FishingModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProtectedLootItemModifier_v3_67();
    l0 = self.box_ProtectedLootItemModifier_v3_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|2125587385", "2125587385", "UNI05_040_B40_main", "box_FishingModifier_52.ForcedLineBreak", "box_ProtectedLootItemModifier_v3_67.AddProtectedLootItem", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddProtectedLootItem
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_13();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|632552195", "632552195", "UNI05_040_B40_main", "box_OutputOrder_v2_7.Out", "box_AddActivityObjective_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_21();
    l0 = self.box_ExitZoneWarningListener_v3_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|505551620", "505551620", "UNI05_040_B40_main", "box_OutputOrder_v2_7.Out", "box_ExitZoneWarningListener_v3_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_29();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1891373501", "1891373501", "UNI05_040_B40_main", "box_OutputOrder_v2_25.Out", "box_Simple_Node_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_31();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|178341586", "178341586", "UNI05_040_B40_main", "box_OutputOrder_v2_25.Out", "box_EndActivityObjective_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_16_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_16_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|416539458", "416539458", "UNI05_040_B40_main", "box_SetBoolean_v2_16.Out", "box_PhoneCallExclusivityModifier_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_ExitZoneWarningListener_v3_21_FailingZoneEntered()
    local l0, l1;
    l0 = self.box_ExitZoneWarningListener_v3_21;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1851328352", "1851328352", "UNI05_040_B40_main", "box_ExitZoneWarningListener_v3_21.FailingZoneEntered", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ExitZoneWarningListener_v3_21_WarningZoneEntered()
    local l0, l1;
    l0 = self.box_ExitZoneWarningListener_v3_21;
    l1 = self.box_OnceOnly_v3_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1878486911", "1878486911", "UNI05_040_B40_main", "box_ExitZoneWarningListener_v3_21.WarningZoneEntered", "box_OnceOnly_v3_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|@Convo_Ended");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_37_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|@Convo_Started");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_36_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|@Disable_Fish_Listener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_66_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|@Jump_FishingOver");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_29_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_59()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1307625740",
    };
    return params;
end;

function export:OnEnter_box_Random_17()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_44()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Random_58()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_24()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1430308387",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_19()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3601520000",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_23()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3445682905",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|530420682");
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
                [0] = self.f_box_OutputOrder_v2_71_Out_0,
                [1] = self.f_box_OutputOrder_v2_71_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_14()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101577499157740358",
    };
    return params;
end;

function export:OnEnter_box_FishingListener_28()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- interruptOnDamage,
        [1] = false,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_9()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|763310434");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2102699439654182156",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI05_040_B040B_CatchDoc",
            id = "502116",
        },
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|908274375");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_31_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI05_040_B040B_CatchDoc",
            id = "502116",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|971170793");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1008027307");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_12_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_12_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bFirstFail,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1013813325");
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

function export:OnEnter_box_ProtectedLootItemModifier_v3_53()
    local params;
    params = {
        -- LootItemID,
        [0] = "9015292644306574",
        -- pawns,
        [1] = self.e_Host,
        -- RequiredQuantity,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1148218270");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_60_Out,
    });
    params = {
        -- Fact,
        [0] = "CLIENT_HAS_FISH",
    };
    return params;
end;

function export:OnEnter_box_ProtectedLootItemModifier_v3_67()
    local params;
    params = {
        -- LootItemID,
        [0] = "9015292644306574",
        -- pawns,
        [1] = self.e_Host,
        -- RequiredQuantity,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1194568202");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1402206626");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_51_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_51_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.e_Host,
        -- Entity2,
        [1] = self.Fisher_Man,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1406404889");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_13_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI05_040_B040B_CatchDoc",
            id = "502116",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1407174862");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_35_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.Fish_Name,
        -- B,
        [1] = "Sturgeon_Pallid_Russian",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1416902828");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_68_Out,
    });
    params = {
        -- Fact,
        [0] = "HOST_HAS_FISH",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_56()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1565833525");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_38()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3298199411",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_15()
    local params;
    params = {
        -- Group,
        [0] = "2101577499157740358",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1582313142");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1673306189");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_63_Out,
    });
    params = {
        -- Fact,
        [0] = "HOST_HAS_FISH",
    };
    return params;
end;

function export:OnEnter_box_FishingModifier_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FishingModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FishingModifier_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1704814268");
    l0:SetConnections({
        -- ForcedLineBreak,
        [1] = self.f_box_FishingModifier_64_ForcedLineBreak,
    });
    params = {
        -- fishForceBiteTimer,
        [1] = 1,
        -- pawns,
        [2] = self.e_Host,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_ProtectedLootItemModifier_v3_62()
    local params;
    params = {
        -- LootItemID,
        [0] = "9015292644306574",
        -- pawns,
        [1] = self.e_Client,
        -- RequiredQuantity,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_57()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1634681572",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_33()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_FishingModifier_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FishingModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FishingModifier_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|1981221751");
    l0:SetConnections({
        -- ForcedLineBreak,
        [1] = self.f_box_FishingModifier_52_ForcedLineBreak,
    });
    params = {
        -- fishForceBiteTimer,
        [1] = 1,
        -- pawns,
        [2] = self.e_Client,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|2056787925");
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

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|2059901456");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI05\\UNI05_040\\UNI05_040_B40.domino|@UNI05_040_B40_main|2069005426");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_21()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2104438332078438557",
        -- WarningZoneTrigger,
        [3] = "2104438339647060126",
    };
    return params;
end;

function export:OnExit_box_CoopActivePlayers_30_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_30;
    self.e_Host = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_30_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_30;
    self.e_Host = l0:GetDataOutValue(0);
    self.e_Client = l0:GetDataOutValue(1);
end;

function export:OnExit_box_FishingListener_28_Bite()
    local l0;
    l0 = self.box_FishingListener_28;
    self.Fish_Name = l0:GetDataOutValue(1);
end;

function export:OnExit_box_FishingListener_28_Caught()
    local l0;
    l0 = self.box_FishingListener_28;
    self.Fish_Name = l0:GetDataOutValue(1);
    self.Fisher_Man = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FishingListener_28_CaughtBass()
    local l0;
    l0 = self.box_FishingListener_28;
    self.Fish_Name = l0:GetDataOutValue(1);
    self.Fisher_Man = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FishingListener_28_CaughtSalmon()
    local l0;
    l0 = self.box_FishingListener_28;
    self.Fish_Name = l0:GetDataOutValue(1);
    self.Fisher_Man = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FishingListener_28_CaughtSturgeon()
    local l0;
    l0 = self.box_FishingListener_28;
    self.Fish_Name = l0:GetDataOutValue(1);
    self.Fisher_Man = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FishingListener_28_CaughtTrout()
    local l0;
    l0 = self.box_FishingListener_28;
    self.Fish_Name = l0:GetDataOutValue(1);
    self.Fisher_Man = l0:GetDataOutValue(0);
end;

function export:OnExit_box_FishingListener_28_Escaped()
    local l0;
    l0 = self.box_FishingListener_28;
    self.Fish_Name = l0:GetDataOutValue(1);
end;

function export:OnExit_box_FishingListener_28_Hooked()
    local l0;
    l0 = self.box_FishingListener_28;
    self.Fish_Name = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPlayerGroup_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.playerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bFirstFail = l0:GetDataOutValue(0);
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
