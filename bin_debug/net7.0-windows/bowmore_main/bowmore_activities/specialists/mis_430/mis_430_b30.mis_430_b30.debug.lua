LUAC5R -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_430/mis_430_b30.domino
-- User graph: MIS_430_B30
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Defend_Object.Brick_Defend_Object_CORE_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/GetContextualStrategyUniqueGroup.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/IsEntityInGroup.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_CarAlarm.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1709085205.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3507013784.bnk]], "CSoundResource");
        cboxRes:LoadResource([[214593656.bnk]], "CSoundResource");
        cboxRes:LoadResource([[325467589.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1194464466.bnk]], "CSoundResource");
        cboxRes:LoadResource([[614743414.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3730501160.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3800206316.bnk]], "CSoundResource");
        cboxRes:LoadResource([[entityarchetypeslibrary/9015347526960658.ark.fcb]], "CEntityArchetypeRes");
        cboxRes:LoadResource([[1989019435.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2834729238.bnk]], "CSoundResource");
        cboxRes:LoadResource([[371101532.bnk]], "CSoundResource");
        cboxRes:LoadResource([[459116608.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1844853098.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1966011895.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3584356036.bnk]], "CSoundResource");
        cboxRes:LoadResource([[525678938.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3527497638.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1186367769.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1854694784.bnk]], "CSoundResource");
        cboxRes:LoadResource([[236469685.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B30.MIS_430_B30.debug.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Defend_Object.Brick_Defend_Object_CORE_v3.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "LastWave_Cleanup",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = false,
            },
            [3] = {
                name = "Waves",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "DisplayObjectHealthBar",
                type = "bool",
            },
            [2] = {
                name = "Entities_Group",
                type = "group",
            },
            [3] = {
                name = "Entity_Single",
                type = "entity",
            },
            [4] = {
                name = "IsGroup",
                type = "bool",
            },
            [5] = {
                name = "IsVehicle",
                type = "bool",
            },
            [6] = {
                name = "MinimumIntactRequired",
                type = "int",
            },
            [7] = {
                name = "Objective",
                type = "oasis",
            },
            [8] = {
                name = "ObjectiveMarker",
                type = "entity",
            },
            [9] = {
                name = "opt_ObjectiveFail",
                type = "oasis",
            },
        },
        dataInCount = 10,
        dataOut = {
            [0] = {
                name = "FailReason",
                type = "oasis",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua")] = {
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
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "LastWave_Cleanup",
                delayed = false,
            },
            [2] = {
                name = "NextWave",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AttackersAliveToNextWave",
                type = "int",
            },
            [1] = {
                name = "AttackerSpawner_1",
                type = "entity",
            },
            [2] = {
                name = "CoreNPCGroup",
                type = "group",
            },
            [3] = {
                name = "IsLastWave",
                type = "bool",
            },
            [4] = {
                name = "NextWaveOnTimerEnd",
                type = "bool",
            },
            [5] = {
                name = "opt_AttackerSpawner_2",
                type = "entity",
            },
            [6] = {
                name = "opt_AttackerSpawner_3",
                type = "entity",
            },
            [7] = {
                name = "opt_AttackerSpawner_4",
                type = "entity",
            },
            [8] = {
                name = "opt_AttackerSpawner_5",
                type = "entity",
            },
            [9] = {
                name = "RequestGroup_1",
                type = "string",
            },
            [10] = {
                name = "RequestGroup_2",
                type = "string",
            },
            [11] = {
                name = "RequestGroup_3",
                type = "string",
            },
            [12] = {
                name = "RequestGroup_4",
                type = "string",
            },
            [13] = {
                name = "RequestGroup_5",
                type = "string",
            },
            [14] = {
                name = "Timer",
                type = "float",
            },
        },
        dataInCount = 15,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CIN_Skip",
            },
            [1] = {
                name = "Start",
            },
            [2] = {
                name = "Start_Reset_MIS_Attacked",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Box_Skipped",
                delayed = false,
            },
            [1] = {
                name = "CIN_Skipped",
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
                name = "EntityId",
                type = "entity",
            },
            [1] = {
                name = "FadeOutType",
                type = "int",
            },
            [2] = {
                name = "MUS_MIS_Step",
                type = "int",
            },
            [3] = {
                name = "Priority",
                type = "int",
            },
            [4] = {
                name = "SoundType",
                type = "SoundType",
            },
            [5] = {
                name = "Stackable",
                type = "bool",
            },
            [6] = {
                name = "StartEvent",
                type = "Sound",
            },
            [7] = {
                name = "StopEvent",
                type = "Sound",
            },
            [8] = {
                name = "StopFadeOut",
                type = "float",
            },
            [9] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [10] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 11,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")] = {
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
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")] = {
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
                name = "Progress",
                type = "int",
            },
            [2] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener_v2.lua")] = {
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
                name = "EntityUnloaded",
                delayed = true,
            },
            [3] = {
                name = "LoadedIdReceived",
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
                name = "CharacterId",
                type = "genericdb",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "EntityId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/AI/GetContextualStrategyUniqueGroup.lua")] = {
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
                name = "contextualStrategyId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "OutGroup",
                type = "group",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "False",
                delayed = false,
            },
            [1] = {
                name = "True",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
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
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v6.lua")] = {
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
                name = "MemberDied",
                delayed = true,
            },
            [4] = {
                name = "MemberRemoved",
                delayed = true,
            },
            [5] = {
                name = "MemberSpawned",
                delayed = true,
            },
        },
        controlOutCount = 6,
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
    metadataTable[GetPathID("Domino/System/IsEntityLoaded_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "False",
                delayed = false,
            },
            [1] = {
                name = "True",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/MissionBlockLayer.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
            [2] = {
                name = "Disable",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [1] = {
                name = "missionLayerId",
                type = "missionblocklayer",
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
    metadataTable[GetPathID("Domino/System/PawnInvincibleState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetInvincible",
            },
            [1] = {
                name = "UnsetInvincible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSet",
                delayed = false,
            },
            [1] = {
                name = "OnUnSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PlayDialog_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CancelQueued",
            },
            [1] = {
                name = "PlayDialog",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "FinishedInterrupted",
                delayed = true,
            },
            [2] = {
                name = "QueueCancelled",
                delayed = false,
            },
            [3] = {
                name = "Queued",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "StartedPriorityFailed",
                delayed = true,
            },
            [6] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "RelevancyTime",
                type = "float",
            },
            [2] = {
                name = "ReplayIfInterrupted",
                type = "bool",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/RandomFloat_v2.lua")] = {
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
                name = "Max",
                type = "float",
            },
            [1] = {
                name = "Min",
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
    metadataTable[GetPathID("Domino/System/StaticBreakableListener.lua")] = {
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
                name = "OnBreak",
                delayed = true,
            },
            [3] = {
                name = "OnBreakAll",
                delayed = true,
            },
            [4] = {
                name = "OnDamage",
                delayed = true,
            },
            [5] = {
                name = "OnHit",
                delayed = true,
            },
            [6] = {
                name = "OnStateChanged",
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
                name = "entity",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "instigatorID",
                type = "entity",
            },
            [1] = {
                name = "stateID",
                type = "int",
            },
            [2] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/System/UI/DisplayCustomUIMsg_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "MessageId",
                type = "oasis",
            },
            [1] = {
                name = "MessageType",
                type = "int",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Launch",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Launched",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Amplitude",
                type = "float",
            },
            [1] = {
                name = "Archetype",
                type = "archetype",
            },
            [2] = {
                name = "AutoExplodes",
                type = "bool",
            },
            [3] = {
                name = "ExplosionDelay",
                type = "float",
            },
            [4] = {
                name = "Particle",
                type = "entity",
            },
            [5] = {
                name = "SpawnPosition",
                type = "entity",
            },
            [6] = {
                name = "Target",
                type = "entity",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_CarAlarm.debug.lua")] = {
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
                name = "Ended",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "CarLight_1",
                type = "entity",
            },
            [1] = {
                name = "CarLight_2",
                type = "entity",
            },
            [2] = {
                name = "Distance",
                type = "float",
            },
            [3] = {
                name = "RadiusTarget",
                type = "entity",
            },
            [4] = {
                name = "SoundPoint",
                type = "entity",
            },
            [5] = {
                name = "TriggererGroup",
                type = "group",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua")] = {
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
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Active",
                delayed = false,
            },
            [2] = {
                name = "Inactive",
                delayed = false,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "e_Stim",
                type = "entity",
            },
            [1] = {
                name = "e_TrapActivator",
                type = "entity",
            },
            [2] = {
                name = "e_Trigger",
                type = "entity",
            },
            [3] = {
                name = "e_VFX",
                type = "entity",
            },
            [4] = {
                name = "e_VFX_ActiveTrap",
                type = "entity",
            },
        },
        dataInCount = 5,
        dataOut = {
            [0] = {
                name = "e_WhoWalkedonTrap",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_430_B30";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30";
    self.i_attackersLeft = 0;
    self.f_RandomDelay_BarrelExplosion = 0;
    self.g_WestCoverAttackers = nil;
    self.e_TrapUser = nil;
    self.box_PhoneCallExclusivityModifier_172 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2995855");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_163 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|37115196");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_163_Completed,
    });
    self.box_SpawnAI_Wave_v2_42 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|39498227");
    l0:SetConnections({
        -- Cancelled,
        [0] = self.f_box_SpawnAI_Wave_v2_42_Cancelled,
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_42_NextWave,
    });
    self.box_Delay_v5_75 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|91522057");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_75_TimeElapsed,
    });
    self.box_Delay_v5_80 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|101180522");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_80_TimeElapsed,
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|101182271");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_Random_171 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|165419693");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 8,
        },
        dataIn = {
            [1] = 8,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_171_Output_0,
                [1] = self.f_box_Random_171_Output_1,
                [2] = self.f_box_Random_171_Output_2,
                [3] = self.f_box_Random_171_Output_3,
                [4] = self.f_box_Random_171_Output_4,
                [5] = self.f_box_Random_171_Output_5,
                [6] = self.f_box_Random_171_Output_6,
                [7] = self.f_box_Random_171_Output_7,
            },
            count = 8,
        },
    });
    self.box_RequestPhoneCall_v2_142 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|167549988");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_142_Completed,
    });
    self.box_MIS_430_BarrelCatapult_61 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|182548330");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_61_Launched,
    });
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|202199207");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_141 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|234243548");
    l0:SetConnections({
    });
    self.box_MultipleOR_87 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|242167751");
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
        [0] = self.f_box_MultipleOR_87_Out,
    });
    self.box_StaticBreakableListener_38 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|272441494");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_38_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_38_OnBreak,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_38_OnDamage,
    });
    self.box_PhoneCallExclusivityModifier_167 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|272690560");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_167_Enabled,
    });
    self.box_RequestPhoneCall_v2_191 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|275541415");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_191_Completed,
    });
    self.box_ActivityInitialized_6 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|284377980");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_6_Out,
    });
    self.box_Music_Quest_v2_186 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|307068930");
    l0:SetConnections({
    });
    self.box_Delay_v5_121 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|312736613");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_121_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_121_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_159 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|326704608");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhoneCallExclusivityModifier_159_Disabled,
    });
    self.box_MultipleOR_210 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|331377970");
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
        [0] = self.f_box_MultipleOR_210_Out,
    });
    self.box_Delay_v5_109 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|346634886");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_109_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_182 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|355434093");
    l0:SetConnections({
    });
    self.box_MultipleOR_44 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|356353106");
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
        [0] = self.f_box_MultipleOR_44_Out,
    });
    self.box_Delay_v5_102 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|364323496");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_102_TimeElapsed,
    });
    self.box_Delay_v5_155 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|368278003");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_155_TimeElapsed,
    });
    self.box_MIS_430_CarAlarm_39 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_CarAlarm.debug.lua");
    l0 = self.box_MIS_430_CarAlarm_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_CarAlarm_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|392914804");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_MIS_430_CarAlarm_39_Ended,
    });
    self.box_MIS_430_SteamTrap_104 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|416160751");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_104_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_104_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_104_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_104_Out,
    });
    self.box_PhoneCallExclusivityModifier_189 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|433910326");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_189_Enabled,
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|441907285");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_MIS_430_BarrelCatapult_18 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|562097052");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_18_Launched,
    });
    self.box_Delay_v5_132 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|562691713");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_132_TimeElapsed,
    });
    self.box_Delay_v5_221 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|564435293");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_221_TimeElapsed,
    });
    self.box_Brick_Defend_Object_CORE_v3_53 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Defend_Object.Brick_Defend_Object_CORE_v3.debug.lua");
    l0 = self.box_Brick_Defend_Object_CORE_v3_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Defend_Object_CORE_v3_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|566265289");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Defend_Object_CORE_v3_53_Fail,
        -- Success,
        [2] = self.f_box_Brick_Defend_Object_CORE_v3_53_Success,
        -- Waves,
        [3] = self.f_box_Brick_Defend_Object_CORE_v3_53_Waves,
    });
    self.box_Delay_v5_215 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|585501555");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_215_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_196 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|585646606");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_196_Enabled,
    });
    self.box_PhoneCallExclusivityModifier_157 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|601061927");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_157_Enabled,
    });
    self.box_RequestPhoneCall_v2_147 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|612841545");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_147_Completed,
    });
    self.box_PhoneCallExclusivityModifier_207 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|619715361");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_207_Enabled,
    });
    self.box_PhoneCallExclusivityModifier_201 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|652911926");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_201_Enabled,
    });
    self.box_Gate_v3_9 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|660812679");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_9_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_9_Out,
    });
    self.box_PhoneCallExclusivityModifier_166 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|676544427");
    l0:SetConnections({
    });
    self.box_Delay_v5_133 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|680265551");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_133_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_169 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|691434172");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_169_Completed,
    });
    self.box_MIS_430_BarrelCatapult_72 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|696905767");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_430_BarrelCatapult_72_Out,
    });
    self.box_PhoneCallExclusivityModifier_170 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|699661825");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_170_Enabled,
    });
    self.box_OnceOnly_v3_108 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|719755513");
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
    self.box_RequestPhoneCall_v2_176 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|761202980");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_176_Completed,
    });
    self.box_Delay_v5_11 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|770123970");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_11_TimeElapsed,
    });
    self.box_Delay_v5_51 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|774949093");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_51_TimeElapsed,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|791827492");
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
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_MultipleOR_97 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|796995459");
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
        [0] = self.f_box_MultipleOR_97_Out,
    });
    self.box_PhoneCallExclusivityModifier_181 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|797086689");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_181_Enabled,
    });
    self.box_PhoneCallExclusivityModifier_192 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|801288159");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_192_Enabled,
    });
    self.box_RequestPhoneCall_v2_164 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|809682536");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_164_Completed,
    });
    self.box_PhoneCallExclusivityModifier_140 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|810250107");
    l0:SetConnections({
    });
    self.box_Delay_v5_24 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|855959627");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_24_TimeElapsed,
    });
    self.box_Delay_v5_76 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|871500037");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_76_TimeElapsed,
    });
    self.box_Random_185 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|888069765");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
        },
        dataIn = {
            [1] = 4,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_185_Output_0,
                [1] = self.f_box_Random_185_Output_1,
                [2] = self.f_box_Random_185_Output_2,
                [3] = self.f_box_Random_185_Output_3,
            },
            count = 4,
        },
    });
    self.box_GroupSizeListener_v6_89 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|892312820");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_89_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_89_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_89_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_89_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_89_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_89_MemberSpawned,
    });
    self.box_RequestPhoneCall_v2_197 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|913016984");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_197_Completed,
    });
    self.box_Gate_v3_220 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|970480784");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_220_Out,
    });
    self.box_Delay_v5_130 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|970886574");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_130_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_208 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|981037001");
    l0:SetConnections({
    });
    self.box_Delay_v5_129 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|992199679");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_129_TimeElapsed,
    });
    self.box_MIS_430_SteamTrap_22 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1017761677");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_22_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_22_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_22_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_22_Out,
    });
    self.box_MIS_430_BarrelCatapult_13 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1032743815");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_13_Launched,
    });
    self.box_MultipleOR_206 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1049055630");
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
        [0] = self.f_box_MultipleOR_206_Out,
    });
    self.box_SpawnAI_Wave_v2_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1068379932");
    l0:SetConnections({
        -- Cancelled,
        [0] = self.f_box_SpawnAI_Wave_v2_7_Cancelled,
        -- LastWave_Cleanup,
        [1] = self.f_box_SpawnAI_Wave_v2_7_LastWave_Cleanup,
    });
    self.box_Delay_v5_23 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1068470904");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_23_TimeElapsed,
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1084652859");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_Delay_v5_135 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1094521493");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_135_TimeElapsed,
    });
    self.box_Gate_v3_21 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1099038305");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_21_Out,
    });
    self.box_GroupSizeListener_v6_98 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1110255014");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_98_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_98_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_98_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_98_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_98_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_98_MemberSpawned,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1133349090");
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_RequestPhoneCall_v2_195 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1140229428");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_195_Completed,
    });
    self.box_RequestPhoneCall_v2_174 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1156681848");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_174_Completed,
    });
    self.box_PhoneCallExclusivityModifier_162 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1157927625");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_168 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1157964137");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_149 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1164651397");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
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
                [0] = self.f_box_OnceOnly_v3_149_Out_0,
            },
            count = 3,
        },
    });
    self.box_RequestPhoneCall_v2_205 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1169033690");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_205_Completed,
    });
    self.box_PhoneCallExclusivityModifier_199 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1176219505");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_199_Enabled,
    });
    self.box_PhoneCallExclusivityModifier_200 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1186394837");
    l0:SetConnections({
    });
    self.box_MIS_430_BarrelCatapult_74 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1193724791");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_74_Launched,
    });
    self.box_PhoneCallExclusivityModifier_143 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1254022526");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_143_Enabled,
    });
    self.box_Delay_v5_71 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1269687468");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_71_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_198 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1279630082");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_198_Completed,
    });
    self.box_OnceOnly_v3_45 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1304725193");
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
                [0] = self.f_box_OnceOnly_v3_45_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1310093544");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_MultipleOR_160 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1349304343");
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
        [0] = self.f_box_MultipleOR_160_Out,
    });
    self.box_Delay_v5_179 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1363225251");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_179_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_161 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1387406638");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_161_Completed,
    });
    self.box_PlayDialog_v6_219 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1414362997");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_219_Finished,
    });
    self.box_CharacterLoadedIdListener_v2_35 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1430839145");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_35_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_35_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_35_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_35_LoadedIdReceived,
    });
    self.box_MIS_430_SteamTrap_55 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1438866596");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_55_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_55_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_55_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_55_Out,
    });
    self.box_RequestPhoneCall_v2_173 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1451760920");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_173_Completed,
    });
    self.box_Delay_v5_73 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1543592446");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_73_TimeElapsed,
    });
    self.box_Delay_v5_62 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1569135111");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_62_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_183 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1574472603");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_183_Enabled,
    });
    self.box_Delay_v5_43 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1576718828");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_43_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_194 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1578443165");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_194_Enabled,
    });
    self.box_MIS_430_BarrelCatapult_81 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1633775047");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_81_Launched,
    });
    self.box_Delay_v5_56 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1639771421");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_56_TimeElapsed,
    });
    self.box_Delay_v5_31 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1644384804");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_31_TimeElapsed,
    });
    self.box_MIS_430_SteamTrap_101 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1646101272");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_101_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_101_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_101_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_101_Out,
    });
    self.box_PhoneCallExclusivityModifier_177 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1689399421");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_145 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1711166413");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_145_Enabled,
    });
    self.box_PhoneCallExclusivityModifier_193 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1724571249");
    l0:SetConnections({
    });
    self.box_MIS_430_BarrelCatapult_77 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1728868067");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_77_Launched,
    });
    self.box_GroupSizeListener_v6_91 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1731241205");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_91_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_91_MemberAdded,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1742325405");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_MIS_430_SteamTrap_52 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1742381815");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_52_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_52_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_52_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_52_Out,
    });
    self.box_DisplayCustomUIMsg_v5_110 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1769515939");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_110_OnDisplay,
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v5_110_OnHide,
    });
    self.box_Gate_v3_60 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1772665199");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_60_Out,
    });
    self.box_MIS_430_BarrelCatapult_83 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1790843020");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_83_Launched,
    });
    self.box_StaticBreakableListener_105 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1833350498");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_105_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_105_OnBreak,
    });
    self.box_MultipleOR_218 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1838964519");
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
        [0] = self.f_box_MultipleOR_218_Out,
    });
    self.box_PhoneCallExclusivityModifier_190 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1840599370");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_165 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1842660652");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v6_214 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1873776361");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_214_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_214_MemberAdded,
    });
    self.box_PhoneCallExclusivityModifier_178 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1874810917");
    l0:SetConnections({
    });
    self.box_Gate_v3_28 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1964095607");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_28_Out,
    });
    self.box_MIS_430_CarAlarm_46 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_CarAlarm.debug.lua");
    l0 = self.box_MIS_430_CarAlarm_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_CarAlarm_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1981353549");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_MIS_430_CarAlarm_46_Ended,
    });
    self.box_Delay_v5_48 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1982605285");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_48_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_175 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1990657013");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_175_Completed,
    });
    self.box_MultipleOR_213 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1999113274");
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
        [0] = self.f_box_MultipleOR_213_Out,
    });
    self.box_Gate_v3_184 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2037512029");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_184_Out,
    });
    self.box_PhoneCallExclusivityModifier_148 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2041453445");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_148_Enabled,
    });
    self.box_MIS_430_CarAlarm_54 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_CarAlarm.debug.lua");
    l0 = self.box_MIS_430_CarAlarm_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_CarAlarm_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2072258771");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_MIS_430_CarAlarm_54_Ended,
    });
    self.box_MultipleOR_211 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2080001645");
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
        [0] = self.f_box_MultipleOR_211_Out,
    });
    self.box_RequestPhoneCall_v2_158 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2084965213");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_158_Completed,
    });
    self.box_RequestPhoneCall_v2_188 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2101079411");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_188_Completed,
    });
    self.box_ExitZoneWarningListener_v3_47 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2136117519");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_47_FailingZoneEntered,
    });
    self.box_MIS_430_BarrelCatapult_82 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2140209898");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_82_Launched,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|414373302", "414373302", "MIS_430_B30", "In", "box_OutputOrder_v2_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_187_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_184();
    l0 = self.box_Gate_v3_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|188191936", "188191936", "MIS_430_B30", "box_Simple_Node_187.Out", "box_Gate_v3_184.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_115_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_SteamTrap_55();
    l0 = self.box_MIS_430_SteamTrap_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1778469885", "1778469885", "MIS_430_B30", "box_Simple_Node_115.Out", "box_MIS_430_SteamTrap_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_101();
    l0 = self.box_MIS_430_SteamTrap_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1180101406", "1180101406", "MIS_430_B30", "box_Simple_Node_115.Out", "box_MIS_430_SteamTrap_101.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_104();
    l0 = self.box_MIS_430_SteamTrap_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2077040384", "2077040384", "MIS_430_B30", "box_Simple_Node_115.Out", "box_MIS_430_SteamTrap_104.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_114_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_SteamTrap_52();
    l0 = self.box_MIS_430_SteamTrap_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1053451170", "1053451170", "MIS_430_B30", "box_Simple_Node_114.Out", "box_MIS_430_SteamTrap_52.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_22();
    l0 = self.box_MIS_430_SteamTrap_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1429214500", "1429214500", "MIS_430_B30", "box_Simple_Node_114.Out", "box_MIS_430_SteamTrap_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_113_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|577419272", "577419272", "MIS_430_B30", "box_Simple_Node_113.Out", "box_OnceOnly_v3_108.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_66_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|312943557", "312943557", "MIS_430_B30", "box_Simple_Node_66.Out", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_68_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_9();
    l0 = self.box_Gate_v3_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2122467862", "2122467862", "MIS_430_B30", "box_Simple_Node_68.Out", "box_Gate_v3_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_RandomFloat_v2_124();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|273634438", "273634438", "MIS_430_B30", "box_Simple_Node_68.Out", "box_RandomFloat_v2_124.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_117_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_SteamTrap_55();
    l0 = self.box_MIS_430_SteamTrap_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|656738179", "656738179", "MIS_430_B30", "box_Simple_Node_117.Out", "box_MIS_430_SteamTrap_55.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_101();
    l0 = self.box_MIS_430_SteamTrap_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1127530451", "1127530451", "MIS_430_B30", "box_Simple_Node_117.Out", "box_MIS_430_SteamTrap_101.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_104();
    l0 = self.box_MIS_430_SteamTrap_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|830056952", "830056952", "MIS_430_B30", "box_Simple_Node_117.Out", "box_MIS_430_SteamTrap_104.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_111_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_SteamTrap_52();
    l0 = self.box_MIS_430_SteamTrap_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|80065164", "80065164", "MIS_430_B30", "box_Simple_Node_111.Out", "box_MIS_430_SteamTrap_52.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_22();
    l0 = self.box_MIS_430_SteamTrap_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1497166759", "1497166759", "MIS_430_B30", "box_Simple_Node_111.Out", "box_MIS_430_SteamTrap_22.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_118_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_105();
    l0 = self.box_StaticBreakableListener_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1843096447", "1843096447", "MIS_430_B30", "box_Simple_Node_118.Out", "box_StaticBreakableListener_105.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_119_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_38();
    l0 = self.box_StaticBreakableListener_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1062410579", "1062410579", "MIS_430_B30", "box_Simple_Node_119.Out", "box_StaticBreakableListener_38.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_95_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_37();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|348079964", "348079964", "MIS_430_B30", "box_Simple_Node_95.Out", "box_EndActivityObjective_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_94_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_21();
    l0 = self.box_Gate_v3_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1804663081", "1804663081", "MIS_430_B30", "box_Simple_Node_94.Out", "box_Gate_v3_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_223_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|312851998", "312851998", "MIS_430_B30", "box_Simple_Node_223.Out", "box_MultipleOR_218.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_100_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_50();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|124402442", "124402442", "MIS_430_B30", "box_Simple_Node_100.Out", "box_ParticleSystem_v3_50.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_139_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_28();
    l0 = self.box_Gate_v3_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1548594782", "1548594782", "MIS_430_B30", "box_Simple_Node_139.Out", "box_Gate_v3_28.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_67_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_60();
    l0 = self.box_Gate_v3_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|522014758", "522014758", "MIS_430_B30", "box_Simple_Node_67.Out", "box_Gate_v3_60.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_21();
    l0 = self.box_Gate_v3_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|37950837", "37950837", "MIS_430_B30", "box_Simple_Node_67.Out", "box_Gate_v3_21.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|793212920", "793212920", "MIS_430_B30", "box_Simple_Node_67.Out", "box_Delay_v5_41.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_65_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1764446265", "1764446265", "MIS_430_B30", "box_Simple_Node_65.Out", "box_OutputOrder_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_212_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_204();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1397116802", "1397116802", "MIS_430_B30", "box_Simple_Node_212.Out", "box_IsEntityLoaded_v3_204.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_93_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1264370703", "1264370703", "MIS_430_B30", "box_Simple_Node_93.Out", "box_OutputOrder_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_59_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_28();
    l0 = self.box_Gate_v3_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1493122114", "1493122114", "MIS_430_B30", "box_Simple_Node_59.Out", "box_Gate_v3_28.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_203_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_186();
    l0 = self.box_Music_Quest_v2_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|850701940", "850701940", "MIS_430_B30", "box_Simple_Node_203.Out", "box_Music_Quest_v2_186.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_99_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_220();
    l0 = self.box_Gate_v3_220;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1814088989", "1814088989", "MIS_430_B30", "box_Simple_Node_99.Out", "box_Gate_v3_220.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_9();
    l0 = self.box_Gate_v3_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|566885789", "566885789", "MIS_430_B30", "box_Simple_Node_99.Out", "box_Gate_v3_9.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Defend_Object_CORE_v3_53();
    l0 = self.box_Brick_Defend_Object_CORE_v3_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|104324201", "104324201", "MIS_430_B30", "box_Simple_Node_99.Out", "box_Brick_Defend_Object_CORE_v3_53.LastWave_Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- LastWave_Cleanup
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_78_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_11();
    l0 = self.box_Delay_v5_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|266966012", "266966012", "MIS_430_B30", "box_Simple_Node_78.Out", "box_Delay_v5_11.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_RandomFloat_v2_125();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|958896427", "958896427", "MIS_430_B30", "box_Simple_Node_78.Out", "box_RandomFloat_v2_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_122_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_111();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|679779714", "679779714", "MIS_430_B30", "box_OutputOrder_v2_122.Out", "box_Simple_Node_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_122_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_119();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|24408689", "24408689", "MIS_430_B30", "box_OutputOrder_v2_122.Out", "box_Simple_Node_119.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_163_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_163;
    l1 = self.box_PhoneCallExclusivityModifier_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|513577545", "513577545", "MIS_430_B30", "box_RequestPhoneCall_v2_163.Completed", "box_PhoneCallExclusivityModifier_172.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_SpawnAI_Wave_v2_42_Cancelled()
    local l0, l1;
    l0 = self.box_SpawnAI_Wave_v2_42;
    l1 = self.box_MultipleOR_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|985946000", "985946000", "MIS_430_B30", "box_SpawnAI_Wave_v2_42.Cancelled", "box_MultipleOR_211.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_Wave_v2_42_NextWave()
    local l0, l1;
    l0 = self.box_SpawnAI_Wave_v2_42;
    l1 = self.box_MultipleOR_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1473573854", "1473573854", "MIS_430_B30", "box_SpawnAI_Wave_v2_42.NextWave", "box_MultipleOR_211.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_32_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1552505127", "1552505127", "MIS_430_B30", "box_IsEntityLoaded_v3_32.False", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_32_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_106();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|279774283", "279774283", "MIS_430_B30", "box_IsEntityLoaded_v3_32.True", "box_MissionBlockLayer_106.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_75_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_82();
    l0 = self.box_Delay_v5_75;
    l1 = self.box_MIS_430_BarrelCatapult_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|720595622", "720595622", "MIS_430_B30", "box_Delay_v5_75.TimeElapsed", "box_MIS_430_BarrelCatapult_82.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_80_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_72();
    l0 = self.box_Delay_v5_80;
    l1 = self.box_MIS_430_BarrelCatapult_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1956791494", "1956791494", "MIS_430_B30", "box_Delay_v5_80.TimeElapsed", "box_MIS_430_BarrelCatapult_72.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_CarAlarm_39();
    l0 = self.box_Delay_v5_29;
    l1 = self.box_MIS_430_CarAlarm_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1385450826", "1385450826", "MIS_430_B30", "box_Delay_v5_29.TimeElapsed", "box_MIS_430_CarAlarm_39.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_123_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_123_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_51();
    l0 = self.box_Delay_v5_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|358197487", "358197487", "MIS_430_B30", "box_RandomFloat_v2_123.Out", "box_Delay_v5_51.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetPlayerGroup_v2_25_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_25_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_33();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2109219534", "2109219534", "MIS_430_B30", "box_GetPlayerGroup_v2_25.Out", "box_IsEntityInGroup_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_171_Output_0()
    local l0, l1;
    l0 = self.box_Random_171;
    l1 = self.box_PhoneCallExclusivityModifier_192;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|638583070", "638583070", "MIS_430_B30", "box_Random_171.Output", "box_PhoneCallExclusivityModifier_192.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_171_Output_1()
    local l0, l1;
    l0 = self.box_Random_171;
    l1 = self.box_PhoneCallExclusivityModifier_170;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|853141142", "853141142", "MIS_430_B30", "box_Random_171.Output", "box_PhoneCallExclusivityModifier_170.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_171_Output_2()
    local l0, l1;
    l0 = self.box_Random_171;
    l1 = self.box_PhoneCallExclusivityModifier_189;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1216384339", "1216384339", "MIS_430_B30", "box_Random_171.Output", "box_PhoneCallExclusivityModifier_189.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_171_Output_3()
    local l0, l1;
    l0 = self.box_Random_171;
    l1 = self.box_PhoneCallExclusivityModifier_196;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|39689622", "39689622", "MIS_430_B30", "box_Random_171.Output", "box_PhoneCallExclusivityModifier_196.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_171_Output_4()
    local l0, l1;
    l0 = self.box_Random_171;
    l1 = self.box_PhoneCallExclusivityModifier_194;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1417537847", "1417537847", "MIS_430_B30", "box_Random_171.Output", "box_PhoneCallExclusivityModifier_194.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_171_Output_5()
    local l0, l1;
    l0 = self.box_Random_171;
    l1 = self.box_PhoneCallExclusivityModifier_167;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1780698449", "1780698449", "MIS_430_B30", "box_Random_171.Output", "box_PhoneCallExclusivityModifier_167.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_171_Output_6()
    local l0, l1;
    l0 = self.box_Random_171;
    l1 = self.box_PhoneCallExclusivityModifier_199;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1202647636", "1202647636", "MIS_430_B30", "box_Random_171.Output", "box_PhoneCallExclusivityModifier_199.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_171_Output_7()
    local l0, l1;
    l0 = self.box_Random_171;
    l1 = self.box_PhoneCallExclusivityModifier_201;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1415365471", "1415365471", "MIS_430_B30", "box_Random_171.Output", "box_PhoneCallExclusivityModifier_201.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_RequestPhoneCall_v2_142_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_142;
    l1 = self.box_PhoneCallExclusivityModifier_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|572250836", "572250836", "MIS_430_B30", "box_RequestPhoneCall_v2_142.Completed", "box_PhoneCallExclusivityModifier_141.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_MIS_430_BarrelCatapult_61_Launched()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_123();
    l0 = self.box_MIS_430_BarrelCatapult_61;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1336933742", "1336933742", "MIS_430_B30", "box_MIS_430_BarrelCatapult_61.Launched", "box_RandomFloat_v2_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_26();
    l0 = self.box_Delay_v5_16;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1418965930", "1418965930", "MIS_430_B30", "box_Delay_v5_16.TimeElapsed", "box_ParticleSystem_v3_26.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_138_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_135();
    l0 = self.box_Delay_v5_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|731306100", "731306100", "MIS_430_B30", "box_ParticleSystem_v3_138.Started", "box_Delay_v5_135.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetActivityObjectiveProgress_v2_70_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_146();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|13800092", "13800092", "MIS_430_B30", "box_SetActivityObjectiveProgress_v2_70.Out", "box_OutputOrder_v2_146.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_131_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_132();
    l0 = self.box_Delay_v5_132;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1890615659", "1890615659", "MIS_430_B30", "box_ParticleSystem_v3_131.Started", "box_Delay_v5_132.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_87_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_88();
    l0 = self.box_MultipleOR_87;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|367908793", "367908793", "MIS_430_B30", "box_MultipleOR_87.Out", "box_Print_v2_88.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_38_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_43();
    l0 = self.box_StaticBreakableListener_38;
    l1 = self.box_Delay_v5_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1767972500", "1767972500", "MIS_430_B30", "box_StaticBreakableListener_38.Enabled", "box_Delay_v5_43.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_38_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_38;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2147163230", "2147163230", "MIS_430_B30", "box_StaticBreakableListener_38.OnBreak", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableListener_38_OnDamage()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_113();
    l0 = self.box_StaticBreakableListener_38;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1143655232", "1143655232", "MIS_430_B30", "box_StaticBreakableListener_38.OnDamage", "box_Simple_Node_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_167_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_169();
    l0 = self.box_PhoneCallExclusivityModifier_167;
    l1 = self.box_RequestPhoneCall_v2_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1624358477", "1624358477", "MIS_430_B30", "box_PhoneCallExclusivityModifier_167.Enabled", "box_RequestPhoneCall_v2_169.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_191_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_173();
    l0 = self.box_RequestPhoneCall_v2_191;
    l1 = self.box_RequestPhoneCall_v2_173;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|975360443", "975360443", "MIS_430_B30", "box_RequestPhoneCall_v2_191.Completed", "box_RequestPhoneCall_v2_173.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = self.box_ActivityInitialized_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|747335665", "747335665", "MIS_430_B30", "box_ActivityInitialized_6.Out", "box_OutputOrder_v2_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_156_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_152();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1151192058", "1151192058", "MIS_430_B30", "box_OutputOrder_v2_156.Out", "box_IsEntityLoaded_v3_152.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_156_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_154();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1921551873", "1921551873", "MIS_430_B30", "box_OutputOrder_v2_156.Out", "box_IsEntityLoaded_v3_154.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_156_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_150();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|132362937", "132362937", "MIS_430_B30", "box_OutputOrder_v2_156.Out", "box_IsEntityLoaded_v3_150.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_121_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_84();
    l0 = self.box_Delay_v5_121;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|435082142", "435082142", "MIS_430_B30", "box_Delay_v5_121.Started", "box_Print_v2_84.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_121_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_209();
    l0 = self.box_Delay_v5_121;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1680393488", "1680393488", "MIS_430_B30", "box_Delay_v5_121.TimeElapsed", "box_OutputOrder_v2_209.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_159_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_129();
    l0 = self.box_PhoneCallExclusivityModifier_159;
    l1 = self.box_Delay_v5_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|849276356", "849276356", "MIS_430_B30", "box_PhoneCallExclusivityModifier_159.Disabled", "box_Delay_v5_129.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_210_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_MultipleOR_210;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1230871531", "1230871531", "MIS_430_B30", "box_MultipleOR_210.Out", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_109_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_110();
    l0 = self.box_Delay_v5_109;
    l1 = self.box_DisplayCustomUIMsg_v5_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|539822369", "539822369", "MIS_430_B30", "box_Delay_v5_109.TimeElapsed", "box_DisplayCustomUIMsg_v5_110.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_90();
    l0 = self.box_MultipleOR_44;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1244757879", "1244757879", "MIS_430_B30", "box_MultipleOR_44.Out", "box_MissionBlockLayer_90.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_125_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_125_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_71();
    l0 = self.box_Delay_v5_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|893347325", "893347325", "MIS_430_B30", "box_RandomFloat_v2_125.Out", "box_Delay_v5_71.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_102_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_42();
    l0 = self.box_Delay_v5_102;
    l1 = self.box_SpawnAI_Wave_v2_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1531512465", "1531512465", "MIS_430_B30", "box_Delay_v5_102.TimeElapsed", "box_SpawnAI_Wave_v2_42.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_155_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_156();
    l0 = self.box_Delay_v5_155;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|933908941", "933908941", "MIS_430_B30", "box_Delay_v5_155.TimeElapsed", "box_OutputOrder_v2_156.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_CarAlarm_39_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_MIS_430_CarAlarm_39;
    l1 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1288214981", "1288214981", "MIS_430_B30", "box_MIS_430_CarAlarm_39.Ended", "box_Delay_v5_29.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_152_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_149;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1504967106", "1504967106", "MIS_430_B30", "box_IsEntityLoaded_v3_152.True", "box_OnceOnly_v3_149.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MIS_430_SteamTrap_104_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_104_Activated();
    params = self:OnEnter_box_Simple_Node_187();
    l0 = self.box_MIS_430_SteamTrap_104;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1344253846", "1344253846", "MIS_430_B30", "box_MIS_430_SteamTrap_104.Activated", "box_Simple_Node_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_104_Active()
    self:OnExit_box_MIS_430_SteamTrap_104_Active();
end;

function export:f_box_MIS_430_SteamTrap_104_Inactive()
    self:OnExit_box_MIS_430_SteamTrap_104_Inactive();
end;

function export:f_box_MIS_430_SteamTrap_104_Out()
    self:OnExit_box_MIS_430_SteamTrap_104_Out();
end;

function export:f_box_OutputOrder_v2_63_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_47();
    l0 = self.box_ExitZoneWarningListener_v3_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|221511963", "221511963", "MIS_430_B30", "box_OutputOrder_v2_63.Out", "box_ExitZoneWarningListener_v3_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_49();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1195999987", "1195999987", "MIS_430_B30", "box_OutputOrder_v2_63.Out", "box_IsEntityLoaded_v3_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_63_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_65();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|682339401", "682339401", "MIS_430_B30", "box_OutputOrder_v2_63.Out", "box_Simple_Node_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_189_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_163();
    l0 = self.box_PhoneCallExclusivityModifier_189;
    l1 = self.box_RequestPhoneCall_v2_163;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|32807457", "32807457", "MIS_430_B30", "box_PhoneCallExclusivityModifier_189.Enabled", "box_RequestPhoneCall_v2_163.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_2();
    l0 = self.box_Delay_v5_41;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|121854992", "121854992", "MIS_430_B30", "box_Delay_v5_41.TimeElapsed", "box_ActivityEnd_2.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_26_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_58();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|117589327", "117589327", "MIS_430_B30", "box_ParticleSystem_v3_26.Started", "box_ParticleSystem_v3_58.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_127_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_127_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_75();
    l0 = self.box_Delay_v5_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1385649695", "1385649695", "MIS_430_B30", "box_RandomFloat_v2_127.Out", "box_Delay_v5_75.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MIS_430_BarrelCatapult_18_Launched()
    local l0, l1;
    l0 = self.box_MIS_430_BarrelCatapult_18;
    l1 = self.box_MultipleOR_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1943051380", "1943051380", "MIS_430_B30", "box_MIS_430_BarrelCatapult_18.Launched", "box_MultipleOR_160.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_132_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_138();
    l0 = self.box_Delay_v5_132;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1533567473", "1533567473", "MIS_430_B30", "box_Delay_v5_132.TimeElapsed", "box_ParticleSystem_v3_138.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_150_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_149;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1863093704", "1863093704", "MIS_430_B30", "box_IsEntityLoaded_v3_150.True", "box_OnceOnly_v3_149.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_221_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_220();
    l0 = self.box_Delay_v5_221;
    l1 = self.box_Gate_v3_220;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1563871895", "1563871895", "MIS_430_B30", "box_Delay_v5_221.TimeElapsed", "box_Gate_v3_220.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_53_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_70();
    l0 = self.box_Brick_Defend_Object_CORE_v3_53;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|559366557", "559366557", "MIS_430_B30", "box_Brick_Defend_Object_CORE_v3_53.Fail", "box_SetActivityObjectiveProgress_v2_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_53_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_94();
    l0 = self.box_Brick_Defend_Object_CORE_v3_53;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|903205062", "903205062", "MIS_430_B30", "box_Brick_Defend_Object_CORE_v3_53.Success", "box_Simple_Node_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_53_Waves()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_128();
    l0 = self.box_Brick_Defend_Object_CORE_v3_53;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|276878974", "276878974", "MIS_430_B30", "box_Brick_Defend_Object_CORE_v3_53.Waves", "box_OutputOrder_v2_128.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_215_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_7();
    l0 = self.box_Delay_v5_215;
    l1 = self.box_SpawnAI_Wave_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1281262879", "1281262879", "MIS_430_B30", "box_Delay_v5_215.TimeElapsed", "box_SpawnAI_Wave_v2_7.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_PhoneCallExclusivityModifier_196_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_161();
    l0 = self.box_PhoneCallExclusivityModifier_196;
    l1 = self.box_RequestPhoneCall_v2_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|305396734", "305396734", "MIS_430_B30", "box_PhoneCallExclusivityModifier_196.Enabled", "box_RequestPhoneCall_v2_161.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_58_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_136();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1269019114", "1269019114", "MIS_430_B30", "box_ParticleSystem_v3_58.Started", "box_ParticleSystem_v3_136.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_157_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_158();
    l0 = self.box_PhoneCallExclusivityModifier_157;
    l1 = self.box_RequestPhoneCall_v2_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1909446381", "1909446381", "MIS_430_B30", "box_PhoneCallExclusivityModifier_157.Enabled", "box_RequestPhoneCall_v2_158.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_136_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_133();
    l0 = self.box_Delay_v5_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|24964734", "24964734", "MIS_430_B30", "box_ParticleSystem_v3_136.Started", "box_Delay_v5_133.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RequestPhoneCall_v2_147_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_147;
    l1 = self.box_PhoneCallExclusivityModifier_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1273618824", "1273618824", "MIS_430_B30", "box_RequestPhoneCall_v2_147.Completed", "box_PhoneCallExclusivityModifier_177.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_PhoneCallExclusivityModifier_207_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_205();
    l0 = self.box_PhoneCallExclusivityModifier_207;
    l1 = self.box_RequestPhoneCall_v2_205;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2046146318", "2046146318", "MIS_430_B30", "box_PhoneCallExclusivityModifier_207.Enabled", "box_RequestPhoneCall_v2_205.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_201_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_195();
    l0 = self.box_PhoneCallExclusivityModifier_201;
    l1 = self.box_RequestPhoneCall_v2_195;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|18445116", "18445116", "MIS_430_B30", "box_PhoneCallExclusivityModifier_201.Enabled", "box_RequestPhoneCall_v2_195.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_9_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_9;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|849169969", "849169969", "MIS_430_B30", "box_Gate_v3_9.Opened", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_9_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_9;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|838081970", "838081970", "MIS_430_B30", "box_Gate_v3_9.Out", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_133_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_134();
    l0 = self.box_Delay_v5_133;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|954427364", "954427364", "MIS_430_B30", "box_Delay_v5_133.TimeElapsed", "box_ParticleSystem_v3_134.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_105();
    l0 = self.box_StaticBreakableListener_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2099816258", "2099816258", "MIS_430_B30", "box_OutputOrder_v2_20.Out", "box_StaticBreakableListener_105.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_38();
    l0 = self.box_StaticBreakableListener_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|143831939", "143831939", "MIS_430_B30", "box_OutputOrder_v2_20.Out", "box_StaticBreakableListener_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_169_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_169;
    l1 = self.box_PhoneCallExclusivityModifier_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|790549080", "790549080", "MIS_430_B30", "box_RequestPhoneCall_v2_169.Completed", "box_PhoneCallExclusivityModifier_168.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_MIS_430_BarrelCatapult_72_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_76();
    l0 = self.box_MIS_430_BarrelCatapult_72;
    l1 = self.box_Delay_v5_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|136059235", "136059235", "MIS_430_B30", "box_MIS_430_BarrelCatapult_72.Out", "box_Delay_v5_76.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PhoneCallExclusivityModifier_170_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_164();
    l0 = self.box_PhoneCallExclusivityModifier_170;
    l1 = self.box_RequestPhoneCall_v2_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|328706066", "328706066", "MIS_430_B30", "box_PhoneCallExclusivityModifier_170.Enabled", "box_RequestPhoneCall_v2_164.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_108_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_110();
    l0 = self.box_OnceOnly_v3_108;
    l1 = self.box_DisplayCustomUIMsg_v5_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|120814430", "120814430", "MIS_430_B30", "box_OnceOnly_v3_108.Out", "box_DisplayCustomUIMsg_v5_110.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_RequestPhoneCall_v2_176_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_176;
    l1 = self.box_PhoneCallExclusivityModifier_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|414778187", "414778187", "MIS_430_B30", "box_RequestPhoneCall_v2_176.Completed", "box_PhoneCallExclusivityModifier_182.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_11_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_68();
    l0 = self.box_Delay_v5_11;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1347123765", "1347123765", "MIS_430_B30", "box_Delay_v5_11.TimeElapsed", "box_Simple_Node_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_51_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_13();
    l0 = self.box_Delay_v5_51;
    l1 = self.box_MIS_430_BarrelCatapult_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|928951096", "928951096", "MIS_430_B30", "box_Delay_v5_51.TimeElapsed", "box_MIS_430_BarrelCatapult_13.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_MultipleOR_12;
    l1 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|249960263", "249960263", "MIS_430_B30", "box_MultipleOR_12.Out", "box_Delay_v5_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IsEntityInGroup_144_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2136282560", "2136282560", "MIS_430_B30", "box_IsEntityInGroup_144.False", "box_OnceOnly_v3_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityInGroup_144_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_185();
    l0 = self.box_Random_185;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|601713317", "601713317", "MIS_430_B30", "box_IsEntityInGroup_144.True", "box_Random_185.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_42();
    l0 = self.box_SpawnAI_Wave_v2_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|441980787", "441980787", "MIS_430_B30", "box_OutputOrder_v2_14.Out", "box_SpawnAI_Wave_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_9();
    l0 = self.box_Gate_v3_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1799465531", "1799465531", "MIS_430_B30", "box_OutputOrder_v2_14.Out", "box_Gate_v3_9.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_14_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|442627839", "442627839", "MIS_430_B30", "box_OutputOrder_v2_14.Out", "box_MultipleOR_206.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_14_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_91();
    l0 = self.box_GroupSizeListener_v6_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|149479000", "149479000", "MIS_430_B30", "box_OutputOrder_v2_14.Out", "box_GroupSizeListener_v6_91.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_97_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_96();
    l0 = self.box_MultipleOR_97;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1327640621", "1327640621", "MIS_430_B30", "box_MultipleOR_97.Out", "box_Compare_Integers_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_181_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_175();
    l0 = self.box_PhoneCallExclusivityModifier_181;
    l1 = self.box_RequestPhoneCall_v2_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|581340165", "581340165", "MIS_430_B30", "box_PhoneCallExclusivityModifier_181.Enabled", "box_RequestPhoneCall_v2_175.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_192_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_188();
    l0 = self.box_PhoneCallExclusivityModifier_192;
    l1 = self.box_RequestPhoneCall_v2_188;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1867896959", "1867896959", "MIS_430_B30", "box_PhoneCallExclusivityModifier_192.Enabled", "box_RequestPhoneCall_v2_188.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_164_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_164;
    l1 = self.box_PhoneCallExclusivityModifier_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|440962841", "440962841", "MIS_430_B30", "box_RequestPhoneCall_v2_164.Completed", "box_PhoneCallExclusivityModifier_166.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_24_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_59();
    l0 = self.box_Delay_v5_24;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2096379328", "2096379328", "MIS_430_B30", "box_Delay_v5_24.TimeElapsed", "box_Simple_Node_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_146_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_212();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2050265912", "2050265912", "MIS_430_B30", "box_OutputOrder_v2_146.Out", "box_Simple_Node_212.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_146_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1975620435", "1975620435", "MIS_430_B30", "box_OutputOrder_v2_146.Out", "box_Simple_Node_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_76_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_81();
    l0 = self.box_Delay_v5_76;
    l1 = self.box_MIS_430_BarrelCatapult_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|617193444", "617193444", "MIS_430_B30", "box_Delay_v5_76.TimeElapsed", "box_MIS_430_BarrelCatapult_81.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_40_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_115();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|252932259", "252932259", "MIS_430_B30", "box_MissionBlockLayer_40.Activated", "box_Simple_Node_115.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_185_Output_0()
    local l0, l1;
    l0 = self.box_Random_185;
    l1 = self.box_PhoneCallExclusivityModifier_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1425398974", "1425398974", "MIS_430_B30", "box_Random_185.Output", "box_PhoneCallExclusivityModifier_143.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_185_Output_1()
    local l0, l1;
    l0 = self.box_Random_185;
    l1 = self.box_PhoneCallExclusivityModifier_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|832981674", "832981674", "MIS_430_B30", "box_Random_185.Output", "box_PhoneCallExclusivityModifier_148.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_185_Output_2()
    local l0, l1;
    l0 = self.box_Random_185;
    l1 = self.box_PhoneCallExclusivityModifier_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1702758490", "1702758490", "MIS_430_B30", "box_Random_185.Output", "box_PhoneCallExclusivityModifier_181.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_185_Output_3()
    local l0, l1;
    l0 = self.box_Random_185;
    l1 = self.box_PhoneCallExclusivityModifier_183;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1270660553", "1270660553", "MIS_430_B30", "box_Random_185.Output", "box_PhoneCallExclusivityModifier_183.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_GroupSizeListener_v6_89_Enabled()
    self:OnExit_box_GroupSizeListener_v6_89_Enabled();
end;

function export:f_box_GroupSizeListener_v6_89_MemberAdded()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_89_MemberAdded();
    l0 = self.box_GroupSizeListener_v6_89;
    l1 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|99056197", "99056197", "MIS_430_B30", "box_GroupSizeListener_v6_89.MemberAdded", "box_MultipleOR_87.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_89_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_89_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_89_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_89_MemberRemoved();
    l0 = self.box_GroupSizeListener_v6_89;
    l1 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1112272540", "1112272540", "MIS_430_B30", "box_GroupSizeListener_v6_89.MemberRemoved", "box_MultipleOR_87.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v6_89_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_89_MemberSpawned();
end;

function export:f_box_IsEntityLoaded_v3_204_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_207;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|596612975", "596612975", "MIS_430_B30", "box_IsEntityLoaded_v3_204.True", "box_PhoneCallExclusivityModifier_207.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_202_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_203();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2099124809", "2099124809", "MIS_430_B30", "box_OutputOrder_v2_202.Out", "box_Simple_Node_203.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_202_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_64();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2037532634", "2037532634", "MIS_430_B30", "box_OutputOrder_v2_202.Out", "box_ActivityRetry_v2_64.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_197_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_197;
    l1 = self.box_PhoneCallExclusivityModifier_193;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|207728116", "207728116", "MIS_430_B30", "box_RequestPhoneCall_v2_197.Completed", "box_PhoneCallExclusivityModifier_193.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_Compare_Integers_96_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_210;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|580935514", "580935514", "MIS_430_B30", "box_Compare_Integers_96.A_le_B", "box_MultipleOR_210.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionBlockLayer_34_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_103();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1373050251", "1373050251", "MIS_430_B30", "box_MissionBlockLayer_34.Activated", "box_OutputOrder_v2_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_86_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_7();
    l0 = self.box_SpawnAI_Wave_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|598466238", "598466238", "MIS_430_B30", "box_OutputOrder_v2_86.Out", "box_SpawnAI_Wave_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_86_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_214();
    l0 = self.box_GroupSizeListener_v6_214;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|671121634", "671121634", "MIS_430_B30", "box_OutputOrder_v2_86.Out", "box_GroupSizeListener_v6_214.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_86_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_85();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1001388839", "1001388839", "MIS_430_B30", "box_OutputOrder_v2_86.Out", "box_Print_v2_85.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_67();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1731229846", "1731229846", "MIS_430_B30", "box_OutputOrder_v2_15.Out", "box_Simple_Node_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_27();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1085239891", "1085239891", "MIS_430_B30", "box_OutputOrder_v2_15.Out", "box_ActivityEnd_27.EndNoSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndNoSave
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_220_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_219();
    l0 = self.box_Gate_v3_220;
    l1 = self.box_PlayDialog_v6_219;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2030971501", "2030971501", "MIS_430_B30", "box_Gate_v3_220.Out", "box_PlayDialog_v6_219.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_130_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_131();
    l0 = self.box_Delay_v5_130;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|514198324", "514198324", "MIS_430_B30", "box_Delay_v5_130.TimeElapsed", "box_ParticleSystem_v3_131.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_129_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_79();
    l0 = self.box_Delay_v5_129;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1686836626", "1686836626", "MIS_430_B30", "box_Delay_v5_129.TimeElapsed", "box_OutputOrder_v2_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_22_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_22_Activated();
    params = self:OnEnter_box_Simple_Node_187();
    l0 = self.box_MIS_430_SteamTrap_22;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1334765570", "1334765570", "MIS_430_B30", "box_MIS_430_SteamTrap_22.Activated", "box_Simple_Node_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_22_Active()
    self:OnExit_box_MIS_430_SteamTrap_22_Active();
end;

function export:f_box_MIS_430_SteamTrap_22_Inactive()
    self:OnExit_box_MIS_430_SteamTrap_22_Inactive();
end;

function export:f_box_MIS_430_SteamTrap_22_Out()
    self:OnExit_box_MIS_430_SteamTrap_22_Out();
end;

function export:f_box_MIS_430_BarrelCatapult_13_Launched()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_23();
    l0 = self.box_MIS_430_BarrelCatapult_13;
    l1 = self.box_Delay_v5_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1699913624", "1699913624", "MIS_430_B30", "box_MIS_430_BarrelCatapult_13.Launched", "box_Delay_v5_23.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MissionBlockLayer_90_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_34();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1514775041", "1514775041", "MIS_430_B30", "box_MissionBlockLayer_90.Disabled", "box_MissionBlockLayer_34.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_206_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_98();
    l0 = self.box_MultipleOR_206;
    l1 = self.box_GroupSizeListener_v6_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|272849612", "272849612", "MIS_430_B30", "box_MultipleOR_206.Out", "box_GroupSizeListener_v6_98.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_Wave_v2_7_Cancelled()
    local l0, l1;
    l0 = self.box_SpawnAI_Wave_v2_7;
    l1 = self.box_MultipleOR_213;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|721682661", "721682661", "MIS_430_B30", "box_SpawnAI_Wave_v2_7.Cancelled", "box_MultipleOR_213.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_Wave_v2_7_LastWave_Cleanup()
    local l0, l1;
    l0 = self.box_SpawnAI_Wave_v2_7;
    l1 = self.box_MultipleOR_213;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1041313592", "1041313592", "MIS_430_B30", "box_SpawnAI_Wave_v2_7.LastWave_Cleanup", "box_MultipleOR_213.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_23_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_18();
    l0 = self.box_Delay_v5_23;
    l1 = self.box_MIS_430_BarrelCatapult_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1331690223", "1331690223", "MIS_430_B30", "box_Delay_v5_23.TimeElapsed", "box_MIS_430_BarrelCatapult_18.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_79_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_98();
    l0 = self.box_GroupSizeListener_v6_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|429637160", "429637160", "MIS_430_B30", "box_OutputOrder_v2_79.Out", "box_GroupSizeListener_v6_98.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_79_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_78();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2078653183", "2078653183", "MIS_430_B30", "box_OutputOrder_v2_79.Out", "box_Simple_Node_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_79_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_121();
    l0 = self.box_Delay_v5_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|299177624", "299177624", "MIS_430_B30", "box_OutputOrder_v2_79.Out", "box_Delay_v5_121.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_79_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_223();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|606494485", "606494485", "MIS_430_B30", "box_OutputOrder_v2_79.Out", "box_Simple_Node_223.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_78();
    l0 = self.box_Delay_v5_8;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1173453630", "1173453630", "MIS_430_B30", "box_Delay_v5_8.TimeElapsed", "box_Simple_Node_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_135_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_137();
    l0 = self.box_Delay_v5_135;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2130642232", "2130642232", "MIS_430_B30", "box_Delay_v5_135.TimeElapsed", "box_ParticleSystem_v3_137.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_Gate_v3_21;
    l1 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|663809978", "663809978", "MIS_430_B30", "box_Gate_v3_21.Out", "box_Delay_v5_41.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v6_98_Enabled()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_98_Enabled();
    l0 = self.box_GroupSizeListener_v6_98;
    l1 = self.box_MultipleOR_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|688269138", "688269138", "MIS_430_B30", "box_GroupSizeListener_v6_98.Enabled", "box_MultipleOR_97.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_98_MemberAdded()
    self:OnExit_box_GroupSizeListener_v6_98_MemberAdded();
end;

function export:f_box_GroupSizeListener_v6_98_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_98_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_98_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_98_MemberRemoved();
    l0 = self.box_GroupSizeListener_v6_98;
    l1 = self.box_MultipleOR_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1994601722", "1994601722", "MIS_430_B30", "box_GroupSizeListener_v6_98.MemberRemoved", "box_MultipleOR_97.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v6_98_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_98_MemberSpawned();
end;

function export:f_box_OutputOrder_v2_209_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1538735196", "1538735196", "MIS_430_B30", "box_OutputOrder_v2_209.Out", "box_MultipleOR_206.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_209_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_210;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|14485738", "14485738", "MIS_430_B30", "box_OutputOrder_v2_209.Out", "box_MultipleOR_210.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_154_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_149;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1931045963", "1931045963", "MIS_430_B30", "box_IsEntityLoaded_v3_154.True", "box_OnceOnly_v3_149.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_107();
    l0 = self.box_MultipleOR_17;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1980380436", "1980380436", "MIS_430_B30", "box_MultipleOR_17.Out", "box_MissionBlockLayer_107.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_195_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_195;
    l1 = self.box_PhoneCallExclusivityModifier_190;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1204331861", "1204331861", "MIS_430_B30", "box_RequestPhoneCall_v2_195.Completed", "box_PhoneCallExclusivityModifier_190.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_RequestPhoneCall_v2_174_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_174;
    l1 = self.box_PhoneCallExclusivityModifier_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|239905431", "239905431", "MIS_430_B30", "box_RequestPhoneCall_v2_174.Completed", "box_PhoneCallExclusivityModifier_140.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_OnceOnly_v3_149_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetContextualStrategyUniqueGroup_151();
    l0 = self.box_OnceOnly_v3_149;
    l1 = Boxes[GetPathID("Domino/System/AI/GetContextualStrategyUniqueGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|6864304", "6864304", "MIS_430_B30", "box_OnceOnly_v3_149.Out", "box_GetContextualStrategyUniqueGroup_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_205_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_205;
    l1 = self.box_PhoneCallExclusivityModifier_208;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|879009513", "879009513", "MIS_430_B30", "box_RequestPhoneCall_v2_205.Completed", "box_PhoneCallExclusivityModifier_208.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_IsEntityLoaded_v3_19_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1897408962", "1897408962", "MIS_430_B30", "box_IsEntityLoaded_v3_19.False", "box_MultipleOR_44.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_19_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_40();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1903666903", "1903666903", "MIS_430_B30", "box_IsEntityLoaded_v3_19.True", "box_MissionBlockLayer_40.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_50_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|247821461", "247821461", "MIS_430_B30", "box_ParticleSystem_v3_50.Started", "box_Delay_v5_16.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PhoneCallExclusivityModifier_199_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_191();
    l0 = self.box_PhoneCallExclusivityModifier_199;
    l1 = self.box_RequestPhoneCall_v2_191;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1266185541", "1266185541", "MIS_430_B30", "box_PhoneCallExclusivityModifier_199.Enabled", "box_RequestPhoneCall_v2_191.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_134_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_130();
    l0 = self.box_Delay_v5_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1922911365", "1922911365", "MIS_430_B30", "box_ParticleSystem_v3_134.Started", "box_Delay_v5_130.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MIS_430_BarrelCatapult_74_Launched()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_73();
    l0 = self.box_MIS_430_BarrelCatapult_74;
    l1 = self.box_Delay_v5_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1123634288", "1123634288", "MIS_430_B30", "box_MIS_430_BarrelCatapult_74.Launched", "box_Delay_v5_73.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_RandomFloat_v2_126_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_126_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_80();
    l0 = self.box_Delay_v5_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1228627733", "1228627733", "MIS_430_B30", "box_RandomFloat_v2_126.Out", "box_Delay_v5_80.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PhoneCallExclusivityModifier_143_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_142();
    l0 = self.box_PhoneCallExclusivityModifier_143;
    l1 = self.box_RequestPhoneCall_v2_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1926158148", "1926158148", "MIS_430_B30", "box_PhoneCallExclusivityModifier_143.Enabled", "box_RequestPhoneCall_v2_142.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_71_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_83();
    l0 = self.box_Delay_v5_71;
    l1 = self.box_MIS_430_BarrelCatapult_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|216676465", "216676465", "MIS_430_B30", "box_Delay_v5_71.TimeElapsed", "box_MIS_430_BarrelCatapult_83.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_RequestPhoneCall_v2_198_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_198;
    l1 = self.box_PhoneCallExclusivityModifier_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1423433041", "1423433041", "MIS_430_B30", "box_RequestPhoneCall_v2_198.Completed", "box_PhoneCallExclusivityModifier_162.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_IsEntityInGroup_33_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|285173917", "285173917", "MIS_430_B30", "box_IsEntityInGroup_33.True", "box_PhoneCallExclusivityModifier_145.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OnceOnly_v3_45_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_25();
    l0 = self.box_OnceOnly_v3_45;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1756883163", "1756883163", "MIS_430_B30", "box_OnceOnly_v3_45.Out", "box_GetPlayerGroup_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1317514841", "1317514841", "MIS_430_B30", "box_MultipleOR_3.Out", "box_ActivityInitialized_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_160_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_28();
    l0 = self.box_MultipleOR_160;
    l1 = self.box_Gate_v3_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|941405775", "941405775", "MIS_430_B30", "box_MultipleOR_160.Out", "box_Gate_v3_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_179_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_184();
    l0 = self.box_Delay_v5_179;
    l1 = self.box_Gate_v3_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|652466274", "652466274", "MIS_430_B30", "box_Delay_v5_179.TimeElapsed", "box_Gate_v3_184.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_RequestPhoneCall_v2_161_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_161;
    l1 = self.box_PhoneCallExclusivityModifier_200;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|654047559", "654047559", "MIS_430_B30", "box_RequestPhoneCall_v2_161.Completed", "box_PhoneCallExclusivityModifier_200.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_PlayDialog_v6_219_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_219;
    l1 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|964060254", "964060254", "MIS_430_B30", "box_PlayDialog_v6_219.Finished", "box_MultipleOR_218.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CharacterLoadedIdListener_v2_35_LoadedIdReceived()
    local params, l0, l1;
    params = self:OnEnter_box_PawnInvincibleState_v2_36();
    l0 = self.box_CharacterLoadedIdListener_v2_35;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2130476450", "2130476450", "MIS_430_B30", "box_CharacterLoadedIdListener_v2_35.LoadedIdReceived", "box_PawnInvincibleState_v2_36.SetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetInvincible
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|601281853", "601281853", "MIS_430_B30", "box_OutputOrder_v2_5.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1857845943", "1857845943", "MIS_430_B30", "box_OutputOrder_v2_5.Out", "box_Print_v2_1.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_89();
    l0 = self.box_GroupSizeListener_v6_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1893078554", "1893078554", "MIS_430_B30", "box_OutputOrder_v2_5.Out", "box_GroupSizeListener_v6_89.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_35();
    l0 = self.box_CharacterLoadedIdListener_v2_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|35350010", "35350010", "MIS_430_B30", "box_OutputOrder_v2_5.Out", "box_CharacterLoadedIdListener_v2_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MIS_430_SteamTrap_55_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_55_Activated();
    params = self:OnEnter_box_Simple_Node_187();
    l0 = self.box_MIS_430_SteamTrap_55;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1745627142", "1745627142", "MIS_430_B30", "box_MIS_430_SteamTrap_55.Activated", "box_Simple_Node_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_55_Active()
    self:OnExit_box_MIS_430_SteamTrap_55_Active();
end;

function export:f_box_MIS_430_SteamTrap_55_Inactive()
    self:OnExit_box_MIS_430_SteamTrap_55_Inactive();
end;

function export:f_box_MIS_430_SteamTrap_55_Out()
    self:OnExit_box_MIS_430_SteamTrap_55_Out();
end;

function export:f_box_RequestPhoneCall_v2_173_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_197();
    l0 = self.box_RequestPhoneCall_v2_173;
    l1 = self.box_RequestPhoneCall_v2_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1562804760", "1562804760", "MIS_430_B30", "box_RequestPhoneCall_v2_173.Completed", "box_RequestPhoneCall_v2_197.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|407186188", "407186188", "MIS_430_B30", "box_OutputOrder_v2_30.Out", "box_Simple_Node_100.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_66();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1013782092", "1013782092", "MIS_430_B30", "box_OutputOrder_v2_30.Out", "box_Simple_Node_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetContextualStrategyUniqueGroup_151_Out()
    local params, l0;
    self:OnExit_box_GetContextualStrategyUniqueGroup_151_Out();
    l0 = Boxes[GetPathID("Domino/System/AI/GetContextualStrategyUniqueGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_153();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1790245096", "1790245096", "MIS_430_B30", "box_GetContextualStrategyUniqueGroup_151.Out", "box_SetContextualStrategy_153.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_103_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_117();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|899315180", "899315180", "MIS_430_B30", "box_OutputOrder_v2_103.Out", "box_Simple_Node_117.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_103_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_118();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|340829908", "340829908", "MIS_430_B30", "box_OutputOrder_v2_103.Out", "box_Simple_Node_118.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_73_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_77();
    l0 = self.box_Delay_v5_73;
    l1 = self.box_MIS_430_BarrelCatapult_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1507395199", "1507395199", "MIS_430_B30", "box_Delay_v5_73.TimeElapsed", "box_MIS_430_BarrelCatapult_77.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_62_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_74();
    l0 = self.box_Delay_v5_62;
    l1 = self.box_MIS_430_BarrelCatapult_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1250302545", "1250302545", "MIS_430_B30", "box_Delay_v5_62.TimeElapsed", "box_MIS_430_BarrelCatapult_74.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_PhoneCallExclusivityModifier_183_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_147();
    l0 = self.box_PhoneCallExclusivityModifier_183;
    l1 = self.box_RequestPhoneCall_v2_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|349572797", "349572797", "MIS_430_B30", "box_PhoneCallExclusivityModifier_183.Enabled", "box_RequestPhoneCall_v2_147.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_43_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_32();
    l0 = self.box_Delay_v5_43;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1303397119", "1303397119", "MIS_430_B30", "box_Delay_v5_43.TimeElapsed", "box_IsEntityLoaded_v3_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_194_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_198();
    l0 = self.box_PhoneCallExclusivityModifier_194;
    l1 = self.box_RequestPhoneCall_v2_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1275297564", "1275297564", "MIS_430_B30", "box_PhoneCallExclusivityModifier_194.Enabled", "box_RequestPhoneCall_v2_198.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_107_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_92();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|488339925", "488339925", "MIS_430_B30", "box_MissionBlockLayer_107.Disabled", "box_MissionBlockLayer_92.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_430_BarrelCatapult_81_Launched()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_127();
    l0 = self.box_MIS_430_BarrelCatapult_81;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1666498057", "1666498057", "MIS_430_B30", "box_MIS_430_BarrelCatapult_81.Launched", "box_RandomFloat_v2_127.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_56_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_CarAlarm_46();
    l0 = self.box_Delay_v5_56;
    l1 = self.box_MIS_430_CarAlarm_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1423263685", "1423263685", "MIS_430_B30", "box_Delay_v5_56.TimeElapsed", "box_MIS_430_CarAlarm_46.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_37_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1852712846", "1852712846", "MIS_430_B30", "box_EndActivityObjective_v2_37.Out", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_31_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_CarAlarm_54();
    l0 = self.box_Delay_v5_31;
    l1 = self.box_MIS_430_CarAlarm_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1868126143", "1868126143", "MIS_430_B30", "box_Delay_v5_31.TimeElapsed", "box_MIS_430_CarAlarm_54.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, params);
end;

function export:f_box_MIS_430_SteamTrap_101_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_101_Activated();
    params = self:OnEnter_box_Simple_Node_187();
    l0 = self.box_MIS_430_SteamTrap_101;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1732811183", "1732811183", "MIS_430_B30", "box_MIS_430_SteamTrap_101.Activated", "box_Simple_Node_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_101_Active()
    self:OnExit_box_MIS_430_SteamTrap_101_Active();
end;

function export:f_box_MIS_430_SteamTrap_101_Inactive()
    self:OnExit_box_MIS_430_SteamTrap_101_Inactive();
end;

function export:f_box_MIS_430_SteamTrap_101_Out()
    self:OnExit_box_MIS_430_SteamTrap_101_Out();
end;

function export:f_box_IsEntityLoaded_v3_49_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|69179995", "69179995", "MIS_430_B30", "box_IsEntityLoaded_v3_49.False", "box_Simple_Node_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_49_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Defend_Object_CORE_v3_53();
    l0 = self.box_Brick_Defend_Object_CORE_v3_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1704044856", "1704044856", "MIS_430_B30", "box_IsEntityLoaded_v3_49.True", "box_Brick_Defend_Object_CORE_v3_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_PhoneCallExclusivityModifier_145_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_174();
    l0 = self.box_PhoneCallExclusivityModifier_145;
    l1 = self.box_RequestPhoneCall_v2_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1025186057", "1025186057", "MIS_430_B30", "box_PhoneCallExclusivityModifier_145.Enabled", "box_RequestPhoneCall_v2_174.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MIS_430_BarrelCatapult_77_Launched()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_126();
    l0 = self.box_MIS_430_BarrelCatapult_77;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|601095256", "601095256", "MIS_430_B30", "box_MIS_430_BarrelCatapult_77.Launched", "box_RandomFloat_v2_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_91_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_102();
    l0 = self.box_GroupSizeListener_v6_91;
    l1 = self.box_Delay_v5_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1147203435", "1147203435", "MIS_430_B30", "box_GroupSizeListener_v6_91.Enabled", "box_Delay_v5_102.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v6_91_MemberAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_102();
    l0 = self.box_GroupSizeListener_v6_91;
    l1 = self.box_Delay_v5_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|229328506", "229328506", "MIS_430_B30", "box_GroupSizeListener_v6_91.MemberAdded", "box_Delay_v5_102.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1096805767", "1096805767", "MIS_430_B30", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2092736781", "2092736781", "MIS_430_B30", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MIS_430_SteamTrap_52_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_52_Activated();
    params = self:OnEnter_box_Simple_Node_187();
    l0 = self.box_MIS_430_SteamTrap_52;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2097178327", "2097178327", "MIS_430_B30", "box_MIS_430_SteamTrap_52.Activated", "box_Simple_Node_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_52_Active()
    self:OnExit_box_MIS_430_SteamTrap_52_Active();
end;

function export:f_box_MIS_430_SteamTrap_52_Inactive()
    self:OnExit_box_MIS_430_SteamTrap_52_Inactive();
end;

function export:f_box_MIS_430_SteamTrap_52_Out()
    self:OnExit_box_MIS_430_SteamTrap_52_Out();
end;

function export:f_box_DisplayCustomUIMsg_v5_110_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_109();
    l0 = self.box_DisplayCustomUIMsg_v5_110;
    l1 = self.box_Delay_v5_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2104605067", "2104605067", "MIS_430_B30", "box_DisplayCustomUIMsg_v5_110.OnDisplay", "box_Delay_v5_109.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_DisplayCustomUIMsg_v5_110_OnHide()
    local l0, l1;
    l0 = self.box_DisplayCustomUIMsg_v5_110;
    l1 = self.box_OnceOnly_v3_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1438673588", "1438673588", "MIS_430_B30", "box_DisplayCustomUIMsg_v5_110.OnHide", "box_OnceOnly_v3_108.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_Gate_v3_60_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_86();
    l0 = self.box_Gate_v3_60;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|393346312", "393346312", "MIS_430_B30", "box_Gate_v3_60.Out", "box_OutputOrder_v2_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_BarrelCatapult_83_Launched()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_62();
    l0 = self.box_MIS_430_BarrelCatapult_83;
    l1 = self.box_Delay_v5_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2102628372", "2102628372", "MIS_430_B30", "box_MIS_430_BarrelCatapult_83.Launched", "box_Delay_v5_62.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_105_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_48();
    l0 = self.box_StaticBreakableListener_105;
    l1 = self.box_Delay_v5_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1911254602", "1911254602", "MIS_430_B30", "box_StaticBreakableListener_105.Enabled", "box_Delay_v5_48.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_105_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_105;
    l1 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|461825771", "461825771", "MIS_430_B30", "box_StaticBreakableListener_105.OnBreak", "box_MultipleOR_44.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_218_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_221();
    l0 = self.box_MultipleOR_218;
    l1 = self.box_Delay_v5_221;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|931357019", "931357019", "MIS_430_B30", "box_MultipleOR_218.Out", "box_Delay_v5_221.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_128_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_93();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|614500800", "614500800", "MIS_430_B30", "box_OutputOrder_v2_128.Out", "box_Simple_Node_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_128_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1190986044", "1190986044", "MIS_430_B30", "box_OutputOrder_v2_128.Out", "box_PhoneCallExclusivityModifier_157.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_128_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_155();
    l0 = self.box_Delay_v5_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1509926868", "1509926868", "MIS_430_B30", "box_OutputOrder_v2_128.Out", "box_Delay_v5_155.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_128_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_186();
    l0 = self.box_Music_Quest_v2_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2131671978", "2131671978", "MIS_430_B30", "box_OutputOrder_v2_128.Out", "box_Music_Quest_v2_186.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_106_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_114();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1721972428", "1721972428", "MIS_430_B30", "box_MissionBlockLayer_106.Activated", "box_Simple_Node_114.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_214_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_215();
    l0 = self.box_GroupSizeListener_v6_214;
    l1 = self.box_Delay_v5_215;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|694562318", "694562318", "MIS_430_B30", "box_GroupSizeListener_v6_214.Enabled", "box_Delay_v5_215.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v6_214_MemberAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_215();
    l0 = self.box_GroupSizeListener_v6_214;
    l1 = self.box_Delay_v5_215;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1082461271", "1082461271", "MIS_430_B30", "box_GroupSizeListener_v6_214.MemberAdded", "box_Delay_v5_215.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_CarAlarm_54();
    l0 = self.box_MIS_430_CarAlarm_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1310470791", "1310470791", "MIS_430_B30", "box_OutputOrder_v2_10.Out", "box_MIS_430_CarAlarm_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_CarAlarm_39();
    l0 = self.box_MIS_430_CarAlarm_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|605836822", "605836822", "MIS_430_B30", "box_OutputOrder_v2_10.Out", "box_MIS_430_CarAlarm_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_CarAlarm_46();
    l0 = self.box_MIS_430_CarAlarm_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|199238133", "199238133", "MIS_430_B30", "box_OutputOrder_v2_10.Out", "box_MIS_430_CarAlarm_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_180_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_144();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1289237798", "1289237798", "MIS_430_B30", "box_OutputOrder_v2_180.Out", "box_IsEntityInGroup_144.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_180_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_184();
    l0 = self.box_Gate_v3_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1626186098", "1626186098", "MIS_430_B30", "box_OutputOrder_v2_180.Out", "box_Gate_v3_184.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_180_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_179();
    l0 = self.box_Delay_v5_179;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|443128322", "443128322", "MIS_430_B30", "box_OutputOrder_v2_180.Out", "box_Delay_v5_179.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Gate_v3_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = self.box_Gate_v3_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1325028402", "1325028402", "MIS_430_B30", "box_Gate_v3_28.Out", "box_OutputOrder_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_92_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_122();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|783494134", "783494134", "MIS_430_B30", "box_MissionBlockLayer_92.Activated", "box_OutputOrder_v2_122.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_430_CarAlarm_46_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_56();
    l0 = self.box_MIS_430_CarAlarm_46;
    l1 = self.box_Delay_v5_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1892518263", "1892518263", "MIS_430_B30", "box_MIS_430_CarAlarm_46.Ended", "box_Delay_v5_56.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_48_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_19();
    l0 = self.box_Delay_v5_48;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1178935084", "1178935084", "MIS_430_B30", "box_Delay_v5_48.TimeElapsed", "box_IsEntityLoaded_v3_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_175_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_175;
    l1 = self.box_PhoneCallExclusivityModifier_178;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2054888257", "2054888257", "MIS_430_B30", "box_RequestPhoneCall_v2_175.Completed", "box_PhoneCallExclusivityModifier_178.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_213_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_99();
    l0 = self.box_MultipleOR_213;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|870676394", "870676394", "MIS_430_B30", "box_MultipleOR_213.Out", "box_Simple_Node_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_184_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_180();
    l0 = self.box_Gate_v3_184;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1411588307", "1411588307", "MIS_430_B30", "box_Gate_v3_184.Out", "box_OutputOrder_v2_180.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_148_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_176();
    l0 = self.box_PhoneCallExclusivityModifier_148;
    l1 = self.box_RequestPhoneCall_v2_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|82699522", "82699522", "MIS_430_B30", "box_PhoneCallExclusivityModifier_148.Enabled", "box_RequestPhoneCall_v2_176.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_124_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_124_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_61();
    l0 = self.box_MIS_430_BarrelCatapult_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1275635211", "1275635211", "MIS_430_B30", "box_RandomFloat_v2_124.Out", "box_MIS_430_BarrelCatapult_61.Launch", clone:GetLuaBox(), l0:GetLuaBox());
    -- Launch
    l0:Exec(0, params);
end;

function export:f_box_MIS_430_CarAlarm_54_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_MIS_430_CarAlarm_54;
    l1 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|14867053", "14867053", "MIS_430_B30", "box_MIS_430_CarAlarm_54.Ended", "box_Delay_v5_31.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_211_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_60();
    l0 = self.box_MultipleOR_211;
    l1 = self.box_Gate_v3_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|796868282", "796868282", "MIS_430_B30", "box_MultipleOR_211.Out", "box_Gate_v3_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_158_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_158;
    l1 = self.box_PhoneCallExclusivityModifier_159;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|774738850", "774738850", "MIS_430_B30", "box_RequestPhoneCall_v2_158.Completed", "box_PhoneCallExclusivityModifier_159.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_RequestPhoneCall_v2_188_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_188;
    l1 = self.box_PhoneCallExclusivityModifier_165;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1053167441", "1053167441", "MIS_430_B30", "box_RequestPhoneCall_v2_188.Completed", "box_PhoneCallExclusivityModifier_165.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_171();
    l0 = self.box_Random_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1653475534", "1653475534", "MIS_430_B30", "box_OutputOrder_v2_57.Out", "box_Random_171.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_57_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_139();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1672008950", "1672008950", "MIS_430_B30", "box_OutputOrder_v2_57.Out", "box_Simple_Node_139.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_24();
    l0 = self.box_Delay_v5_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|166131301", "166131301", "MIS_430_B30", "box_OutputOrder_v2_57.Out", "box_Delay_v5_24.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ExitZoneWarningListener_v3_47_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_202();
    l0 = self.box_ExitZoneWarningListener_v3_47;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1517389095", "1517389095", "MIS_430_B30", "box_ExitZoneWarningListener_v3_47.FailingZoneEntered", "box_OutputOrder_v2_202.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_BarrelCatapult_82_Launched()
    local l0, l1;
    l0 = self.box_MIS_430_BarrelCatapult_82;
    l1 = self.box_MultipleOR_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1471737117", "1471737117", "MIS_430_B30", "box_MIS_430_BarrelCatapult_82.Launched", "box_MultipleOR_160.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_ActivatedTrap_Bark");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_187_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_ActivateTrapsTurbine_A");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_115_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_ActivateTrapsTurbine_B");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_114_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_ActivateWarning");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_113_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_CarAlarms");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_66_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_Catapult");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_68_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_DeactivateTrapsTurbine_A");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_117_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_DeactivateTrapsTurbine_B");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_111_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_DisableListener_A");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_118_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_DisableListener_B");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_119_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_End_Fail_B30");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_95_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_End_Success_B30");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_94_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_EnemyBarks");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_223_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_Flares_B30");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_100_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_NoBarksShouldPlay");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_139_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_Pumps Destroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_67_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_Setup_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_65_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_SoundLosingTurbines");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_212_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_StartSetup_B30");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_93_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_StartSharkyBarksAgain");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_59_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_StopMusic");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_203_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@n_WaveCleanup_B30");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_99_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|@nCatapult_Style2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_78_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|6122385");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 22,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Wave 3  should spawn",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|34544084");
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
                [0] = self.f_box_OutputOrder_v2_122_Out_0,
                [1] = self.f_box_OutputOrder_v2_122_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_163()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1854694784",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_42()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 2,
        -- AttackerSpawner_1,
        [1] = "2106665248720175259",
        -- CoreNPCGroup,
        [2] = "#EBA442B1",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2106665253824643270",
        -- opt_AttackerSpawner_3,
        [6] = "2106665259289821511",
        -- opt_AttackerSpawner_5,
        [8] = "2106665262699790737",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|58083211");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_32_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_32_True,
    });
    params = {
        -- entityId,
        [0] = "2106649748548098372",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_75()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_80()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_29()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|108611750");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_123_Out,
    });
    params = {
        -- Max,
        [0] = 25,
        -- Min,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|110635812");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_25_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|115300341");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|134585636");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "MIS_430_B30 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|140895459");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108901402532130672",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|154492524");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "pink",
        -- duration,
        [3] = 3,
        -- int,
        [6] = self.i_attackersLeft,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Attackers Remaining :",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Random_171()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 8,
        },
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_142()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "371101532",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_61()
    local params;
    params = {
        -- Amplitude,
        [0] = 2300,
        -- Archetype,
        [1] = "9015347526960658",
        -- AutoExplodes,
        [2] = true,
        -- ExplosionDelay,
        [3] = self.f_RandomDelay_BarrelExplosion,
        -- Particle,
        [4] = "2108900442875378533",
        -- SpawnPosition,
        [5] = "2106799932559080818",
        -- Target,
        [6] = "2106802389601225635",
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

function export:OnEnter_box_ParticleSystem_v3_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|208528080");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_138_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108901402532130674",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|212745154");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_70_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_430_B30_b_OBJ_Defend2",
            id = "960699",
        },
        -- Progress,
        [1] = 0,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|212864176");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_131_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108901402530033518",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_38()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2106649748548098372",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_191()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "236469685",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|288107730");
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
                [0] = self.f_box_OutputOrder_v2_156_Out_0,
                [1] = self.f_box_OutputOrder_v2_156_Out_1,
                [2] = self.f_box_OutputOrder_v2_156_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_186()
    local params;
    params = {
        -- EntityId,
        [0] = "2109609358131220249",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 1,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1844853098",
        -- StopEvent,
        [7] = "1194464466",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_121()
    local params;
    DrawTextToScreen("Comment: FAILSAFE TIMER 1", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Delay_v5')-- Comment: FAILSAFE TIMER 1");
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_109()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|360182964");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_125_Out,
    });
    params = {
        -- Max,
        [0] = 25,
        -- Min,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_102()
    local params;
    DrawTextToScreen("Comment: FAILSAFE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Delay_v5')-- Comment: FAILSAFE");
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_155()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_CarAlarm_39()
    local params;
    params = {
        -- CarLight_1,
        [0] = "2107522547911234867",
        -- CarLight_2,
        [1] = "2107522547909137709",
        -- Distance,
        [2] = 12,
        -- RadiusTarget,
        [3] = "2107522547913332023",
        -- SoundPoint,
        [4] = "2107522547911234865",
        -- TriggererGroup,
        [5] = "#EBA442B1",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|399185419");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_152_True,
    });
    params = {
        -- entityId,
        [0] = "2109016473266606925",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_104()
    local params;
    params = {
        -- e_Stim,
        [0] = "2106802855183652413",
        -- e_TrapActivator,
        [1] = "2106663202673672012",
        -- e_Trigger,
        [2] = "2106661740958721684",
        -- e_VFX,
        [3] = "2108914538763009542",
        -- e_VFX_ActiveTrap,
        [4] = "2108927236015923431",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|431465865");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 5,
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
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_41()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|464532841");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_26_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2106802089387625314",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|499674517");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_127_Out,
    });
    params = {
        -- Max,
        [0] = 25,
        -- Min,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_18()
    local params;
    params = {
        -- Amplitude,
        [0] = 2200,
        -- Archetype,
        [1] = "9015347526960658",
        -- AutoExplodes,
        [2] = true,
        -- ExplosionDelay,
        [3] = 5,
        -- Particle,
        [4] = "2108900442875378533",
        -- SpawnPosition,
        [5] = "2106799932559080818",
        -- Target,
        [6] = "2106799926588489062",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_132()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|564307015");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_150_True,
    });
    params = {
        -- entityId,
        [0] = "2106648218036093307",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_221()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_Brick_Defend_Object_CORE_v3_53()
    local params;
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- DisplayObjectHealthBar,
        [1] = true,
        -- Entities_Group,
        [2] = "#57251069",
        -- Entity_Single,
        [3] = "2106649748548098372",
        -- IsGroup,
        [4] = false,
        -- IsVehicle,
        [5] = false,
        -- MinimumIntactRequired,
        [6] = 1,
        -- Objective,
        [7] = {
            section = "Objectives",
            item = "MIS_430_B30_b_OBJ_Defend2",
            id = "960699",
        },
        -- ObjectiveMarker,
        [8] = "2106665324072944910",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_215()
    local params;
    DrawTextToScreen("Comment: FAILSAFE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Delay_v5')-- Comment: FAILSAFE");
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|598123187");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_58_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2106802089872067428",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|605114391");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_136_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108901378305830762",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_147()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "214593656",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_9()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_133()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|683042309");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_169()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1966011895",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_72()
    local params;
    params = {
        -- Amplitude,
        [0] = 2300,
        -- Archetype,
        [1] = "9015347526960658",
        -- AutoExplodes,
        [2] = true,
        -- ExplosionDelay,
        [3] = self.f_RandomDelay_BarrelExplosion,
        -- Particle,
        [4] = "2108900442875378533",
        -- SpawnPosition,
        [5] = "2106799932559080818",
        -- Target,
        [6] = "2108236547777109752",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_176()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1186367769",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_11()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 60,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_51()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|792670801");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityInGroup_144_False,
        -- True,
        [1] = self.f_box_IsEntityInGroup_144_True,
    });
    params = {
        -- Entity,
        [0] = self.e_TrapUser,
        -- Group,
        [1] = "#EBA442B1",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|793352678");
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

function export:OnEnter_box_RequestPhoneCall_v2_164()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1709085205",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_24()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|860581947");
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
                [0] = self.f_box_OutputOrder_v2_146_Out_0,
                [1] = self.f_box_OutputOrder_v2_146_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|870676332");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_76()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|877863779");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_40_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "27160309022500288",
    };
    return params;
end;

function export:OnEnter_box_Random_185()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 4,
        },
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_89()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#EBA442B1",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_204()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|902502503");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_204_True,
    });
    params = {
        -- entityId,
        [0] = "2106663202673672012",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|909440844");
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
                [0] = self.f_box_OutputOrder_v2_202_Out_0,
                [1] = self.f_box_OutputOrder_v2_202_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_197()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1989019435",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|928326954");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_96_A_le_B,
    });
    params = {
        -- A,
        [0] = self.i_attackersLeft,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|936557160");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_34_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "36167508277255094",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|949838129");
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
                [0] = self.f_box_OutputOrder_v2_86_Out_0,
                [1] = self.f_box_OutputOrder_v2_86_Out_1,
                [2] = self.f_box_OutputOrder_v2_86_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|960701918");
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

function export:OnEnter_box_Gate_v3_220()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_130()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_129()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1004836049");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 22,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Wave 4  should spawn",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_22()
    local params;
    params = {
        -- e_Stim,
        [0] = "2106843529683685668",
        -- e_TrapActivator,
        [1] = "2106652274521545100",
        -- e_Trigger,
        [2] = "2106665024033406950",
        -- e_VFX,
        [3] = "2108914567223459340",
        -- e_VFX_ActiveTrap,
        [4] = "2108927183014600929",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_13()
    local params;
    params = {
        -- Amplitude,
        [0] = 2100,
        -- Archetype,
        [1] = "9015347526960658",
        -- AutoExplodes,
        [2] = true,
        -- ExplosionDelay,
        [3] = self.f_RandomDelay_BarrelExplosion,
        -- Particle,
        [4] = "2108900442875378533",
        -- SpawnPosition,
        [5] = "2106801815805771102",
        -- Target,
        [6] = "2106799926588489062",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1045725522");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_90_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "27160309022500288",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1054397784");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_7()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2106665291395122031",
        -- CoreNPCGroup,
        [2] = "#EBA442B1",
        -- IsLastWave,
        [3] = true,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2106665295430042520",
        -- opt_AttackerSpawner_3,
        [6] = "2106665304254858315",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_23()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1076190988");
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
                [0] = self.f_box_OutputOrder_v2_79_Out_0,
                [1] = self.f_box_OutputOrder_v2_79_Out_1,
                [2] = self.f_box_OutputOrder_v2_79_Out_2,
                [3] = self.f_box_OutputOrder_v2_79_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_8()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 50,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_135()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_21()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_98()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#EBA442B1",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1119579159");
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
                [0] = self.f_box_OutputOrder_v2_209_Out_0,
                [1] = self.f_box_OutputOrder_v2_209_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1125485753");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_154_True,
    });
    params = {
        -- entityId,
        [0] = "2109016475781092195",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_195()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "459116608",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_174()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3584356036",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_205()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "614743414",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1173404048");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_19_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_19_True,
    });
    params = {
        -- entityId,
        [0] = "2106663202673672012",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1174595491");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_50_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2106802087586171744",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1177401391");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_134_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108901383917809516",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_74()
    local params;
    params = {
        -- Amplitude,
        [0] = 2100,
        -- Archetype,
        [1] = "9015347526960658",
        -- AutoExplodes,
        [2] = true,
        -- ExplosionDelay,
        [3] = 3,
        -- Particle,
        [4] = "2108900442875378533",
        -- SpawnPosition,
        [5] = "2106801815805771102",
        -- Target,
        [6] = "2106799926588489062",
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1207174832");
    l0:SetConnections({
    });
    l0 = self.box_CharacterLoadedIdListener_v2_35;
    params = {
        -- Pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1217509709");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_126_Out,
    });
    params = {
        -- Max,
        [0] = 25,
        -- Min,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_71()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_198()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3507013784",
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1288124392");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_33_True,
    });
    params = {
        -- Entity,
        [0] = self.e_TrapUser,
        -- Group,
        [1] = self._sld_PlayerGroup_box_GetPlayerGroup_v2_25,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_179()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_161()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3730501160",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_219()
    local params;
    params = {
        -- Group,
        [0] = "#771DDBD2",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3527497638",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_35()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015196386540318",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1436735167");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
                [3] = self.f_box_OutputOrder_v2_5_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_55()
    local params;
    params = {
        -- e_Stim,
        [0] = "2106843534330974504",
        -- e_TrapActivator,
        [1] = "2106652274521545100",
        -- e_Trigger,
        [2] = "2106677013904375719",
        -- e_VFX,
        [3] = "2108914572388744718",
        -- e_VFX_ActiveTrap,
        [4] = "2108927240514314473",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_173()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "525678938",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1466460011");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2106665173000405034",
        -- Group,
        [1] = self.g_WestCoverAttackers,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1473550794");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetContextualStrategyUniqueGroup_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetContextualStrategyUniqueGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetContextualStrategyUniqueGroup_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1511343981");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetContextualStrategyUniqueGroup_151_Out,
    });
    params = {
        -- contextualStrategyId,
        [0] = "2107092544868341050",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1520397252");
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
                [0] = self.f_box_OutputOrder_v2_103_Out_0,
                [1] = self.f_box_OutputOrder_v2_103_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_73()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_62()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_43()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1608224425");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_107_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "54181906786865724",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_81()
    local params;
    params = {
        -- Amplitude,
        [0] = 2200,
        -- Archetype,
        [1] = "9015347526960658",
        -- AutoExplodes,
        [2] = true,
        -- ExplosionDelay,
        [3] = 4,
        -- Particle,
        [4] = "2108900442875378533",
        -- SpawnPosition,
        [5] = "2106799932559080818",
        -- Target,
        [6] = "2108236547777109752",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_56()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1644008147");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_37_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_430_B30_b_OBJ_Defend2",
            id = "960699",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_31()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_101()
    local params;
    params = {
        -- e_Stim,
        [0] = "2106843519122428188",
        -- e_TrapActivator,
        [1] = "2106663202673672012",
        -- e_Trigger,
        [2] = "2106663293459382121",
        -- e_VFX,
        [3] = "2108914553034128904",
        -- e_VFX_ActiveTrap,
        [4] = "2108927232352198885",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1703218156");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_49_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_49_True,
    });
    params = {
        -- entityId,
        [0] = "2106649748548098372",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_77()
    local params;
    params = {
        -- Amplitude,
        [0] = 2200,
        -- Archetype,
        [1] = "9015347526960658",
        -- AutoExplodes,
        [2] = true,
        -- ExplosionDelay,
        [3] = 4.5,
        -- Particle,
        [4] = "2108900442875378533",
        -- SpawnPosition,
        [5] = "2106799932559080818",
        -- Target,
        [6] = "2106799926588489062",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_91()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#EBA442B1",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_52()
    local params;
    params = {
        -- e_Stim,
        [0] = "2106843523748745504",
        -- e_TrapActivator,
        [1] = "2106649748548098372",
        -- e_Trigger,
        [2] = "2106664761186861020",
        -- e_VFX,
        [3] = "2108914562850897418",
        -- e_VFX_ActiveTrap,
        [4] = "2108927228719931619",
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_110()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Warnings",
            item = "MIS_430_B20_WARN_Turbine",
            id = "960703",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_60()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_83()
    local params;
    params = {
        -- Amplitude,
        [0] = 2300,
        -- Archetype,
        [1] = "9015347526960658",
        -- AutoExplodes,
        [2] = true,
        -- ExplosionDelay,
        [3] = self.f_RandomDelay_BarrelExplosion,
        -- Particle,
        [4] = "2108900442875378533",
        -- SpawnPosition,
        [5] = "2106799932559080818",
        -- Target,
        [6] = "2108236303909793860",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_105()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2106663202673672012",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1860071664");
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
                [0] = self.f_box_OutputOrder_v2_128_Out_0,
                [1] = self.f_box_OutputOrder_v2_128_Out_1,
                [2] = self.f_box_OutputOrder_v2_128_Out_2,
                [3] = self.f_box_OutputOrder_v2_128_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1867308219");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_106_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "54181906786865724",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_214()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#EBA442B1",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1882034098");
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

function export:OnEnter_box_OutputOrder_v2_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1950051416");
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
                [0] = self.f_box_OutputOrder_v2_180_Out_0,
                [1] = self.f_box_OutputOrder_v2_180_Out_1,
                [2] = self.f_box_OutputOrder_v2_180_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_28()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|1977612264");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_92_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "45174707532116349",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_CarAlarm_46()
    local params;
    params = {
        -- CarLight_1,
        [0] = "2107522556440352065",
        -- CarLight_2,
        [1] = "2107522556442449219",
        -- Distance,
        [2] = 20,
        -- RadiusTarget,
        [3] = "2107522556442449223",
        -- SoundPoint,
        [4] = "2107522556440352063",
        -- TriggererGroup,
        [5] = "#EBA442B1",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_48()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_175()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3800206316",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_184()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2065484643");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_124_Out,
    });
    params = {
        -- Max,
        [0] = 25,
        -- Min,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_CarAlarm_54()
    local params;
    params = {
        -- CarLight_1,
        [0] = "2107522050162690635",
        -- CarLight_2,
        [1] = "2107522060184980045",
        -- Distance,
        [2] = 12,
        -- RadiusTarget,
        [3] = "2107522121570716271",
        -- SoundPoint,
        [4] = "2107521989187996211",
        -- TriggererGroup,
        [5] = "#EBA442B1",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_158()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2834729238",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_188()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "325467589",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B30.domino|@MIS_430_B30|2124327333");
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
                [0] = self.f_box_OutputOrder_v2_57_Out_0,
                [1] = self.f_box_OutputOrder_v2_57_Out_1,
                [2] = self.f_box_OutputOrder_v2_57_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_47()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = true,
        -- FailingZoneTrigger,
        [2] = "2107643296626004333",
        -- WarningZoneTrigger,
        [3] = "2107643286289142124",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_82()
    local params;
    params = {
        -- Amplitude,
        [0] = 2300,
        -- Archetype,
        [1] = "9015347526960658",
        -- AutoExplodes,
        [2] = true,
        -- ExplosionDelay,
        [3] = self.f_RandomDelay_BarrelExplosion,
        -- Particle,
        [4] = "2108900442875378533",
        -- SpawnPosition,
        [5] = "2106801815805771102",
        -- Target,
        [6] = "2108236303909793860",
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_123_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self.f_RandomDelay_BarrelExplosion = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_25_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self._sld_PlayerGroup_box_GetPlayerGroup_v2_25 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_125_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self.f_RandomDelay_BarrelExplosion = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_104_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_104;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_104_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_104;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_104_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_104;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_104_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_104;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_127_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self.f_RandomDelay_BarrelExplosion = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_89_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_89;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_89_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_89;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_89_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_89;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_89_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_89;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_89_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_89;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_MIS_430_SteamTrap_22_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_22;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_22_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_22;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_22_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_22;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_22_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_22;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_98_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_98;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_98_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_98;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_98_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_98;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_98_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_98;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_98_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_98;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_RandomFloat_v2_126_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self.f_RandomDelay_BarrelExplosion = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_55_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_55;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_55_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_55;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_55_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_55;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_55_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_55;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetContextualStrategyUniqueGroup_151_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetContextualStrategyUniqueGroup.lua")];
    self.g_WestCoverAttackers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_101_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_101;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_101_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_101;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_101_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_101;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_101_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_101;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_52_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_52;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_52_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_52;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_52_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_52;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_52_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_52;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_124_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self.f_RandomDelay_BarrelExplosion = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
