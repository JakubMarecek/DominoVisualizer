LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_430/mis_430_b40.domino
-- User graph: MIS_430_B40
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
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/GetContextualStrategyUniqueGroup.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/IsEntityInGroup.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BombPlant.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_CarAlarm.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1709085205.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3507013784.bnk]], "CSoundResource");
        cboxRes:LoadResource([[325467589.bnk]], "CSoundResource");
        cboxRes:LoadResource([[73237267.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3746691003.bnk]], "CSoundResource");
        cboxRes:LoadResource([[entityarchetypeslibrary/9015347526960658.ark.fcb]], "CEntityArchetypeRes");
        cboxRes:LoadResource([[1989019435.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2684522763.bnk]], "CSoundResource");
        cboxRes:LoadResource([[371101532.bnk]], "CSoundResource");
        cboxRes:LoadResource([[459116608.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1194464466.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3584356036.bnk]], "CSoundResource");
        cboxRes:LoadResource([[214593656.bnk]], "CSoundResource");
        cboxRes:LoadResource([[236469685.bnk]], "CSoundResource");
        cboxRes:LoadResource([[525678938.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3730501160.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3800206316.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1844853098.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1432986668.bnk]], "CSoundResource");
        cboxRes:LoadResource([[614743414.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1966011895.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3527497638.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1186367769.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1854694784.bnk]], "CSoundResource");
        cboxRes:LoadResource([[83442243.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B40.MIS_430_B40.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/SpawnAI.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Spawn",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Spawned",
                delayed = true,
            },
            [3] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "EntitySpawner",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "mercsSpawned",
                type = "list",
            },
            [1] = {
                name = "othersSpawned",
                type = "list",
            },
            [2] = {
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v3.lua")] = {
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
                name = "OnAllInside",
                delayed = true,
            },
            [5] = {
                name = "OnEmpty",
                delayed = true,
            },
            [6] = {
                name = "OnOccupied",
                delayed = true,
            },
            [7] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 8,
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
                name = "requiresPawnsActive",
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
    metadataTable[GetPathID("Domino/System/VisibilityModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
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
                name = "players",
                type = "group",
            },
            [1] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BombPlant.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "GameOver",
                delayed = false,
            },
            [1] = {
                name = "PlantingFinished",
                delayed = false,
            },
            [2] = {
                name = "PlantingStarted",
                delayed = false,
            },
            [3] = {
                name = "PlantingStopped",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "BombUI_Loc",
                type = "entity",
            },
            [1] = {
                name = "C4",
                type = "entity",
            },
            [2] = {
                name = "Cooldown",
                type = "float",
            },
            [3] = {
                name = "FX",
                type = "entity",
            },
            [4] = {
                name = "Loot_STP",
                type = "entity",
            },
            [5] = {
                name = "ObjMarker",
                type = "entity",
            },
            [6] = {
                name = "SoundPoint_Bomb",
                type = "entity",
            },
            [7] = {
                name = "Trigger",
                type = "entity",
            },
        },
        dataInCount = 8,
        dataOut = {
            [0] = {
                name = "e_STP_Completed",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    self._name = "MIS_430_B40";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40";
    self.i_attackersLeft = 0;
    self.iGroupSizeReinforcements = 0;
    self.i_BombWaveLeft = 0;
    self.f_RandomDelay_BarrelExplosion = 0;
    self.g_WestCoverAttackers = nil;
    self.e_Sharky = nil;
    self.e_TrapUser = nil;
    self.box_Delay_v5_299 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_299;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_299");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|20098126");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_299_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_210 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|47567938");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_277 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_277;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_277");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|62432484");
    l0:SetConnections({
    });
    self.box_Brick_Defend_Object_CORE_v3_54 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Defend_Object.Brick_Defend_Object_CORE_v3.debug.lua");
    l0 = self.box_Brick_Defend_Object_CORE_v3_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Defend_Object_CORE_v3_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|65571599");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Defend_Object_CORE_v3_54_Fail,
        -- Success,
        [2] = self.f_box_Brick_Defend_Object_CORE_v3_54_Success,
        -- Waves,
        [3] = self.f_box_Brick_Defend_Object_CORE_v3_54_Waves,
    });
    self.box_Delay_v5_245 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_245;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_245");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|66961001");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_245_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_269 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_269;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_269");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|92092894");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_269_Enabled,
    });
    self.box_ExitZoneWarningListener_v3_16 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|106627851");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_16_FailingZoneEntered,
    });
    self.box_RequestPhoneCall_v2_266 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_266;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_266");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|109312548");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_266_Completed,
    });
    self.box_Random_289 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_289;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_289");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|116613663");
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
                [0] = self.f_box_Random_289_Output_0,
                [1] = self.f_box_Random_289_Output_1,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_298 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_298;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_298");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|143700939");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_298_Finished,
    });
    self.box_RequestPhoneCall_v2_265 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_265;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_265");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|145947797");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_265_Completed,
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|152638558");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_MIS_430_BombPlant_57 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BombPlant.debug.lua");
    l0 = self.box_MIS_430_BombPlant_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BombPlant_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|166846309");
    l0:SetConnections({
        -- GameOver,
        [0] = self.f_box_MIS_430_BombPlant_57_GameOver,
    });
    self.box_RequestPhoneCall_v2_259 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_259;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_259");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|167619237");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_259_Completed,
    });
    self.box_MultipleOR_90 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|192095655");
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
        [0] = self.f_box_MultipleOR_90_Out,
    });
    self.box_Delay_v5_21 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|197823450");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_21_TimeElapsed,
    });
    self.box_Brick_Defend_Object_CORE_v3_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Defend_Object.Brick_Defend_Object_CORE_v3.debug.lua");
    l0 = self.box_Brick_Defend_Object_CORE_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Defend_Object_CORE_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|217126579");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Defend_Object_CORE_v3_12_Fail,
        -- Waves,
        [3] = self.f_box_Brick_Defend_Object_CORE_v3_12_Waves,
    });
    self.box_Delay_v5_143 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|220026758");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_143_TimeElapsed,
    });
    self.box_StaticBreakableListener_44 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|228194781");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_44_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_44_OnBreak,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_44_OnDamage,
    });
    self.box_SpawnAI_162 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|255350844");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_322 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_322;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_322");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|260488461");
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
                [0] = self.f_box_OnceOnly_v3_322_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_107 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|263798506");
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
    self.box_MIS_430_SteamTrap_55 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|272529299");
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
    self.box_MultipleOR_315 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_315;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_315");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|293373187");
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
        [0] = self.f_box_MultipleOR_315_Out,
    });
    self.box_MIS_430_BarrelCatapult_65 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|343442406");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_65_Launched,
    });
    self.box_Delay_v5_318 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_318;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_318");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|350584524");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_318_TimeElapsed,
    });
    self.box_MultipleOR_296 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_296;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_296");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|350632992");
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
        [0] = self.f_box_MultipleOR_296_Out,
    });
    self.box_OnceOnly_v3_87 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|362949622");
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
                [0] = self.f_box_OnceOnly_v3_87_Out_0,
            },
            count = 1,
        },
    });
    self.box_RequestPhoneCall_v2_241 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_241;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_241");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|365786896");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_241_Completed,
    });
    self.box_PhoneCallExclusivityModifier_268 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_268;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_268");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|381977600");
    l0:SetConnections({
    });
    self.box_Delay_v5_94 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|389632695");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_94_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_243 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_243");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|399531409");
    l0:SetConnections({
    });
    self.box_Random_250 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_250");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|400714170");
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
                [0] = self.f_box_Random_250_Output_0,
                [1] = self.f_box_Random_250_Output_1,
                [2] = self.f_box_Random_250_Output_2,
                [3] = self.f_box_Random_250_Output_3,
            },
            count = 4,
        },
    });
    self.box_SpawnAI_164 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|402916185");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_164_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_164_Spawned,
    });
    self.box_Gate_v3_91 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|410612986");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_91_Out,
    });
    self.box_MultipleOR_295 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_295;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_295");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|440522993");
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
        [0] = self.f_box_MultipleOR_295_Out,
    });
    self.box_Delay_v5_215 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|445146176");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_215_TimeElapsed,
    });
    self.box_Delay_v5_182 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|450613954");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_182_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_60 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|453037606");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_249 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_249;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_249");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|457107607");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_249_Completed,
    });
    self.box_Delay_v5_59 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|477802196");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_59_TimeElapsed,
    });
    self.box_Delay_v5_195 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|508341594");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_195_TimeElapsed,
    });
    self.box_GroupSizeListener_v6_71 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|511375793");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_71_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_71_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_71_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_71_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_71_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_71_MemberSpawned,
    });
    self.box_MIS_430_BarrelCatapult_79 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|521764029");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_79_Launched,
    });
    self.box_RequestPhoneCall_v2_204 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|555247357");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_204_Completed,
    });
    self.box_Delay_v5_144 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|562105138");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_144_TimeElapsed,
    });
    self.box_SpawnAI_150 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|566916693");
    l0:SetConnections({
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|590572962");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_VisibilityModifier_10 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|613806324");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_10_Disabled,
    });
    self.box_RequestPhoneCall_v2_228 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|644120399");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_228_Completed,
    });
    self.box_RequestPhoneCall_v2_273 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_273;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_273");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|646627813");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_273_Completed,
    });
    self.box_MIS_430_SteamTrap_121 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|653931517");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_121_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_121_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_121_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_121_Out,
    });
    self.box_MultipleOR_300 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_300;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_300");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|662967184");
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
        [0] = self.f_box_MultipleOR_300_Out,
    });
    self.box_GroupSizeListener_v6_86 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|672169284");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_86_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_86_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_86_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_86_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_86_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_86_MemberSpawned,
    });
    self.box_Random_236 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|674697199");
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
                [0] = self.f_box_Random_236_Output_0,
                [1] = self.f_box_Random_236_Output_1,
                [2] = self.f_box_Random_236_Output_2,
                [3] = self.f_box_Random_236_Output_3,
                [4] = self.f_box_Random_236_Output_4,
                [5] = self.f_box_Random_236_Output_5,
                [6] = self.f_box_Random_236_Output_6,
                [7] = self.f_box_Random_236_Output_7,
            },
            count = 8,
        },
    });
    self.box_MIS_430_BarrelCatapult_75 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|676952849");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_75_Launched,
    });
    self.box_Delay_v5_179 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|688959891");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_179_TimeElapsed,
    });
    self.box_MIS_430_BarrelCatapult_14 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|692475219");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_14_Launched,
    });
    self.box_PhoneCallExclusivityModifier_230 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|694745857");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_231 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|713290704");
    l0:SetConnections({
    });
    self.box_Gate_v3_43 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|719713153");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_43_Out,
    });
    self.box_MultipleOR_102 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|722067028");
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
        [0] = self.f_box_MultipleOR_102_Out,
    });
    self.box_MultipleOR_225 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|724796571");
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
        [0] = self.f_box_MultipleOR_225_Out,
    });
    self.box_Delay_v5_145 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|727048692");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_145_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_2 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|727461145");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_6 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|761424149");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_6_Out,
    });
    self.box_PhoneCallExclusivityModifier_267 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_267;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_267");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|785366901");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_267_Enabled,
    });
    self.box_Gate_v3_35 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|810108103");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_35_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_35_Out,
    });
    self.box_PhoneCallExclusivityModifier_232 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_232");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|827056541");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_232_Enabled,
    });
    self.box_Gate_v3_27 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|829961637");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_27_Out,
    });
    self.box_PhoneCallExclusivityModifier_240 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_240;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_240");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|835974412");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_240_Enabled,
    });
    self.box_MultipleOR_291 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_291;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_291");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|846632737");
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
        [0] = self.f_box_MultipleOR_291_Out,
    });
    self.box_RequestPhoneCall_v2_272 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_272;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_272");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|850468562");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_272_Completed,
    });
    self.box_MIS_430_CarAlarm_23 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_CarAlarm.debug.lua");
    l0 = self.box_MIS_430_CarAlarm_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_CarAlarm_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|857335072");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_MIS_430_CarAlarm_23_Ended,
    });
    self.box_RequestPhoneCall_v2_263 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_263;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_263");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|874912242");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_263_Completed,
    });
    self.box_SpawnAI_Wave_v2_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|909355775");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_7_NextWave,
    });
    self.box_Delay_v5_120 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|917092408");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_120_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_226 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_226;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_226");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|939491648");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_226_Completed,
    });
    self.box_MultipleAND_v2_161 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|945021412");
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
        [0] = self.f_box_MultipleAND_v2_161_Out,
    });
    self.box_OnceOnly_v3_320 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_320;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_320");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|945281148");
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
                [0] = self.f_box_OnceOnly_v3_320_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_188 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|947015139");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_188_TimeElapsed,
    });
    self.box_MultipleOR_100 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|951467751");
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
        [0] = self.f_box_MultipleOR_100_Out,
    });
    self.box_RequestPhoneCall_v2_238 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_238;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_238");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|952986138");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_238_Completed,
    });
    self.box_PhoneCallExclusivityModifier_32 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|982459044");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_32_Enabled,
    });
    self.box_ProximityTrigger_v3_281 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_281;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_281");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1021462709");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_281_Enter,
    });
    self.box_RequestPhoneCall_v2_254 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_254;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_254");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1025454882");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_254_Completed,
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_254_Started,
    });
    self.box_GroupSizeListener_v6_109 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1028555685");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_109_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_109_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_109_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_109_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_109_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_109_MemberSpawned,
    });
    self.box_SpawnAI_167 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1037386642");
    l0:SetConnections({
    });
    self.box_CharacterLoadedIdListener_v2_117 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1049659468");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_117_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_117_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_117_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_117_LoadedIdReceived,
    });
    self.box_PhoneCallExclusivityModifier_235 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_235;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_235");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1051237519");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_235_Enabled,
    });
    self.box_RequestPhoneCall_v2_239 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_239;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_239");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1055613756");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_239_Completed,
    });
    self.box_MIS_430_SteamTrap_96 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1056969436");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_96_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_96_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_96_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_96_Out,
    });
    self.box_PhoneCallExclusivityModifier_205 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1061804463");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_257 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_257;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_257");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1069815227");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_257_Enabled,
    });
    self.box_Delay_v5_186 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1102033546");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_186_TimeElapsed,
    });
    self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1108366892");
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
        [0] = self.f_box_MultipleOR_22_Out,
    });
    self.box_CharacterLoadedIdListener_v2_132 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1111688194");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_132_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_132_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_132_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_132_LoadedIdReceived,
    });
    self.box_DisplayCustomUIMsg_v5_125 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1119125031");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_125_OnDisplay,
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v5_125_OnHide,
    });
    self.box_RequestPhoneCall_v2_256 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_256;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_256");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1123603476");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_256_Completed,
    });
    self.box_PhoneCallExclusivityModifier_261 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_261;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_261");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1128784141");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_262 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_262;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_262");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1131187209");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_262_Enabled,
    });
    self.box_Delay_v5_33 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1134409270");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_33_TimeElapsed,
    });
    self.box_MIS_430_BarrelCatapult_25 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1136100178");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_25_Launched,
    });
    self.box_Delay_v5_292 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_292;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_292");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1138923582");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_292_TimeElapsed,
    });
    self.box_Gate_v3_297 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_297;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_297");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1143964599");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_297_Out,
    });
    self.box_SpawnAI_169 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1145652532");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_260 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_260;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_260");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1159386027");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_260_Enabled,
    });
    self.box_PhoneCallExclusivityModifier_227 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_227;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1170936590");
    l0:SetConnections({
    });
    self.box_MIS_430_BombPlant_151 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BombPlant.debug.lua");
    l0 = self.box_MIS_430_BombPlant_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BombPlant_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1200779098");
    l0:SetConnections({
        -- GameOver,
        [0] = self.f_box_MIS_430_BombPlant_151_GameOver,
    });
    self.box_PhoneCallExclusivityModifier_255 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_255;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_255");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1205153474");
    l0:SetConnections({
    });
    self.box_Delay_v5_213 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1212465923");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_213_TimeElapsed,
    });
    self.box_Delay_v5_184 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1213141705");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_184_TimeElapsed,
    });
    self.box_SpawnAI_42 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1231329747");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_42_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_42_Spawned,
    });
    self.box_Delay_v5_190 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1235828491");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_190_TimeElapsed,
    });
    self.box_MIS_430_CarAlarm_49 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_CarAlarm.debug.lua");
    l0 = self.box_MIS_430_CarAlarm_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_CarAlarm_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1245845405");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_MIS_430_CarAlarm_49_Ended,
    });
    self.box_CharacterLoadedIdListener_v2_311 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_311;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_311");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1250055833");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_311_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_311_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_311_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_311_LoadedIdReceived,
    });
    self.box_SpawnAI_165 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1265715466");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_285 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_285;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_285");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1273876671");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_285_Enter,
    });
    self.box_MIS_430_BarrelCatapult_73 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1289157862");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_73_Launched,
    });
    self.box_PhoneCallExclusivityModifier_246 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_246;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_246");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1297964479");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_246_Enabled,
    });
    self.box_Delay_v5_192 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1301365820");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_192_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_222 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1310239780");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_222_Completed,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1316078201");
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
    self.box_OnceOnly_v3_8 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1329500762");
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
                [0] = self.f_box_OnceOnly_v3_8_Out_0,
            },
            count = 2,
        },
    });
    self.box_MIS_430_BarrelCatapult_76 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1333566257");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_76_Launched,
    });
    self.box_Delay_v5_95 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1349672241");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_95_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_242 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_242;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_242");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1360345234");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_242_Enabled,
    });
    self.box_PhoneCallExclusivityModifier_275 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_275;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_275");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1370214354");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_275_Enabled,
    });
    self.box_OnceOnly_v3_326 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_326;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_326");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1377408718");
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
                [0] = self.f_box_OnceOnly_v3_326_Out_0,
            },
            count = 1,
        },
    });
    self.box_PhoneCallExclusivityModifier_247 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_247;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_247");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1383078839");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_270 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_270;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_270");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1398240503");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_270_Enabled,
    });
    self.box_PhoneCallExclusivityModifier_258 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_258");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1410752468");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1444570629");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_Switch_166 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1445661711");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 9,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_166_Output_0,
                [1] = self.f_box_Switch_166_Output_1,
                [2] = self.f_box_Switch_166_Output_2,
                [3] = self.f_box_Switch_166_Output_3,
                [4] = self.f_box_Switch_166_Output_4,
                [5] = self.f_box_Switch_166_Output_5,
                [6] = self.f_box_Switch_166_Output_6,
                [7] = self.f_box_Switch_166_Output_7,
                [8] = self.f_box_Switch_166_Output_8,
            },
            count = 9,
        },
    });
    self.box_Delay_v5_126 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1456318253");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_126_TimeElapsed,
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1475656481");
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
        [0] = self.f_box_MultipleOR_53_Out,
    });
    self.box_Gate_v3_301 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_301;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_301");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1495647207");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_301_Out,
    });
    self.box_MultipleOR_323 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_323;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_323");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1509866255");
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
        [0] = self.f_box_MultipleOR_323_Out,
    });
    self.box_MIS_430_BarrelCatapult_62 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1519758393");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_62_Launched,
    });
    self.box_MIS_430_SteamTrap_88 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1537914771");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_88_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_88_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_88_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_88_Out,
    });
    self.box_PhoneCallExclusivityModifier_233 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_233");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1561090407");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_209 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1562108637");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_209_Completed,
    });
    self.box_OnceOnly_v3_72 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1569196607");
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
                [0] = self.f_box_OnceOnly_v3_72_Out_0,
            },
            count = 2,
        },
    });
    self.box_RequestPhoneCall_v2_211 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1569206834");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_211_Completed,
    });
    self.box_RequestPhoneCall_v2_229 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_229;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1576951432");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_229_Completed,
    });
    self.box_SpawnAI_Wave_v2_64 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1581445262");
    l0:SetConnections({
        -- LastWave_Cleanup,
        [1] = self.f_box_SpawnAI_Wave_v2_64_LastWave_Cleanup,
    });
    self.box_OnceOnly_v3_324 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_324;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_324");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1619078986");
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
                [0] = self.f_box_OnceOnly_v3_324_Out_0,
            },
            count = 2,
        },
    });
    self.box_PhoneCallExclusivityModifier_206 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1641565278");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_206_Enabled,
    });
    self.box_Delay_v5_123 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1661429830");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_123_TimeElapsed,
    });
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1669061861");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_276 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_276;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_276");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1674911463");
    l0:SetConnections({
    });
    self.box_MultipleOR_294 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_294;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_294");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1681119430");
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
        [0] = self.f_box_MultipleOR_294_Out,
    });
    self.box_PlayDialog_v6_302 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_302;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_302");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1690528906");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_302_Finished,
    });
    self.box_MultipleOR_84 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1709688490");
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
        [0] = self.f_box_MultipleOR_84_Out,
    });
    self.box_GroupSizeListener_v6_39 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1715777555");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_39_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_39_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_39_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_39_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_39_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_39_MemberSpawned,
    });
    self.box_Gate_v3_50 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1748666166");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_50_Out,
    });
    self.box_PhoneCallExclusivityModifier_223 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1753284448");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhoneCallExclusivityModifier_223_Disabled,
    });
    self.box_MIS_430_BarrelCatapult_74 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1766163180");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_74_Launched,
    });
    self.box_SpawnAI_152 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1768208465");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_264 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_264;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_264");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1774785386");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_264_Enabled,
    });
    self.box_Delay_v5_194 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1779823458");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_194_TimeElapsed,
    });
    self.box_StaticBreakableListener_48 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1815301773");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_48_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_48_OnBreak,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_48_OnDamage,
    });
    self.box_RequestPhoneCall_v2_234 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_234;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_234");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1822756466");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_234_Completed,
    });
    self.box_SpawnAI_156 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1827358126");
    l0:SetConnections({
    });
    self.box_Delay_v5_46 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1830518867");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_46_TimeElapsed,
    });
    self.box_Delay_v5_128 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1837125286");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_128_TimeElapsed,
    });
    self.box_OnceOnly_v3_220 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1857544371");
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
                [0] = self.f_box_OnceOnly_v3_220_Out_0,
            },
            count = 3,
        },
    });
    self.box_MultipleAND_v2_31 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1864028554");
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
        [0] = self.f_box_MultipleAND_v2_31_Out,
    });
    self.box_PhoneCallExclusivityModifier_248 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_248");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1872281927");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_248_Enabled,
    });
    self.box_MIS_430_CarAlarm_40 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_CarAlarm.debug.lua");
    l0 = self.box_MIS_430_CarAlarm_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_CarAlarm_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1873145182");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_MIS_430_CarAlarm_40_Ended,
    });
    self.box_Delay_v5_274 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_274;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_274");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1874247953");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_274_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_253 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_253;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_253");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1899413173");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_253_Enabled,
    });
    self.box_Delay_v5_303 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_303;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_303");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1900184795");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_303_TimeElapsed,
    });
    self.box_MIS_430_SteamTrap_37 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1900914816");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_37_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_37_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_37_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_37_Out,
    });
    self.box_Delay_v5_78 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1906901486");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_78_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_224 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_224;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1923545752");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_224_Enabled,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1927862699");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
    self.box_OnceOnly_v3_66 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1954741464");
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
                [0] = self.f_box_OnceOnly_v3_66_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_319 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_319;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_319");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1980072415");
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
        [0] = self.f_box_MultipleOR_319_Out,
    });
    self.box_Gate_v3_251 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_251;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_251");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1992796634");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_251_Out,
    });
    self.box_Music_Quest_v2_293 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_293;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_293");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2003523283");
    l0:SetConnections({
    });
    self.box_SpawnAI_160 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2017907348");
    l0:SetConnections({
    });
    self.box_Delay_v5_197 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2021201831");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_197_TimeElapsed,
    });
    self.box_MultipleOR_321 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_321;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_321");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2039951381");
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
        [0] = self.f_box_MultipleOR_321_Out,
    });
    self.box_SpawnAI_155 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2058637198");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_237 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_237");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2079878268");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_13 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2100967189");
    l0:SetConnections({
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2117383888");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_SpawnAI_163 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2129117960");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_163_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_163_Spawned,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|699506114", "699506114", "MIS_430_B40", "In", "box_OutputOrder_v2_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_103_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_63();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1482356349", "1482356349", "MIS_430_B40", "box_Simple_Node_103.Out", "box_EndActivityObjective_v2_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_104_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_18();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|310621699", "310621699", "MIS_430_B40", "box_Simple_Node_104.Out", "box_EndActivityObjective_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_252_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_27();
    l0 = self.box_Gate_v3_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1891588168", "1891588168", "MIS_430_B40", "box_Simple_Node_252.Out", "box_Gate_v3_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_140_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_SteamTrap_96();
    l0 = self.box_MIS_430_SteamTrap_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1575074007", "1575074007", "MIS_430_B40", "box_Simple_Node_140.Out", "box_MIS_430_SteamTrap_96.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_121();
    l0 = self.box_MIS_430_SteamTrap_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|302707247", "302707247", "MIS_430_B40", "box_Simple_Node_140.Out", "box_MIS_430_SteamTrap_121.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_37();
    l0 = self.box_MIS_430_SteamTrap_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|144389725", "144389725", "MIS_430_B40", "box_Simple_Node_140.Out", "box_MIS_430_SteamTrap_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_135_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_SteamTrap_55();
    l0 = self.box_MIS_430_SteamTrap_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1484007431", "1484007431", "MIS_430_B40", "box_Simple_Node_135.Out", "box_MIS_430_SteamTrap_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_88();
    l0 = self.box_MIS_430_SteamTrap_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1161821848", "1161821848", "MIS_430_B40", "box_Simple_Node_135.Out", "box_MIS_430_SteamTrap_88.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_139_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1297087560", "1297087560", "MIS_430_B40", "box_Simple_Node_139.Out", "box_OnceOnly_v3_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_68_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|306007239", "306007239", "MIS_430_B40", "box_Simple_Node_68.Out", "box_OutputOrder_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_70_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_35();
    l0 = self.box_Gate_v3_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|238140276", "238140276", "MIS_430_B40", "box_Simple_Node_70.Out", "box_Gate_v3_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_RandomFloat_v2_171();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|297537124", "297537124", "MIS_430_B40", "box_Simple_Node_70.Out", "box_RandomFloat_v2_171.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_136_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_SteamTrap_96();
    l0 = self.box_MIS_430_SteamTrap_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1575569458", "1575569458", "MIS_430_B40", "box_Simple_Node_136.Out", "box_MIS_430_SteamTrap_96.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_37();
    l0 = self.box_MIS_430_SteamTrap_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1275615521", "1275615521", "MIS_430_B40", "box_Simple_Node_136.Out", "box_MIS_430_SteamTrap_37.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_121();
    l0 = self.box_MIS_430_SteamTrap_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|148798931", "148798931", "MIS_430_B40", "box_Simple_Node_136.Out", "box_MIS_430_SteamTrap_121.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_134_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_SteamTrap_55();
    l0 = self.box_MIS_430_SteamTrap_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|100128892", "100128892", "MIS_430_B40", "box_Simple_Node_134.Out", "box_MIS_430_SteamTrap_55.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_88();
    l0 = self.box_MIS_430_SteamTrap_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|981690936", "981690936", "MIS_430_B40", "box_Simple_Node_134.Out", "box_MIS_430_SteamTrap_88.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_137_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_44();
    l0 = self.box_StaticBreakableListener_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1100685957", "1100685957", "MIS_430_B40", "box_Simple_Node_137.Out", "box_StaticBreakableListener_44.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_141_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_48();
    l0 = self.box_StaticBreakableListener_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|378427034", "378427034", "MIS_430_B40", "box_Simple_Node_141.Out", "box_StaticBreakableListener_48.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_118_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_50();
    l0 = self.box_Gate_v3_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|582122325", "582122325", "MIS_430_B40", "box_Simple_Node_118.Out", "box_Gate_v3_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_201_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_189();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|86024511", "86024511", "MIS_430_B40", "box_Simple_Node_201.Out", "box_OutputOrder_v2_189.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_279_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_251();
    l0 = self.box_Gate_v3_251;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1727273279", "1727273279", "MIS_430_B40", "box_Simple_Node_279.Out", "box_Gate_v3_251.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_69_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_297();
    l0 = self.box_Gate_v3_297;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2006658387", "2006658387", "MIS_430_B40", "box_Simple_Node_69.Out", "box_Gate_v3_297.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_294;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|298515524", "298515524", "MIS_430_B40", "box_Simple_Node_69.Out", "box_MultipleOR_294.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_295;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|320972216", "320972216", "MIS_430_B40", "box_Simple_Node_69.Out", "box_MultipleOR_295.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_300;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1284107458", "1284107458", "MIS_430_B40", "box_Simple_Node_69.Out", "box_MultipleOR_300.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_Gate_v3_50();
    l0 = self.box_Gate_v3_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2080658797", "2080658797", "MIS_430_B40", "box_Simple_Node_69.Out", "box_Gate_v3_50.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    l0 = self.box_OnceOnly_v3_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1139624972", "1139624972", "MIS_430_B40", "box_Simple_Node_69.Out", "box_OnceOnly_v3_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_Gate_v3_43();
    l0 = self.box_Gate_v3_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|524074293", "524074293", "MIS_430_B40", "box_Simple_Node_69.Out", "box_Gate_v3_43.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_114_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_124();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1685116066", "1685116066", "MIS_430_B40", "box_Simple_Node_114.Out", "box_OutputOrder_v2_124.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_98_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_91();
    l0 = self.box_Gate_v3_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1961098138", "1961098138", "MIS_430_B40", "box_Simple_Node_98.Out", "box_Gate_v3_91.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_280_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_91();
    l0 = self.box_Gate_v3_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|357777888", "357777888", "MIS_430_B40", "box_Simple_Node_280.Out", "box_Gate_v3_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|80708945", "80708945", "MIS_430_B40", "box_Simple_Node_61.Out", "box_OutputOrder_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_278_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_251();
    l0 = self.box_Gate_v3_251;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|226074865", "226074865", "MIS_430_B40", "box_Simple_Node_278.Out", "box_Gate_v3_251.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_309_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_293();
    l0 = self.box_Music_Quest_v2_293;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|64030572", "64030572", "MIS_430_B40", "box_Simple_Node_309.Out", "box_Music_Quest_v2_293.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_283_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_284();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|665816955", "665816955", "MIS_430_B40", "box_Simple_Node_283.Out", "box_OutputOrder_v2_284.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_119_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Defend_Object_CORE_v3_54();
    l0 = self.box_Brick_Defend_Object_CORE_v3_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2066223352", "2066223352", "MIS_430_B40", "box_Simple_Node_119.Out", "box_Brick_Defend_Object_CORE_v3_54.LastWave_Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- LastWave_Cleanup
    l0:Exec(1, params);
    params = self:OnEnter_box_Brick_Defend_Object_CORE_v3_12();
    l0 = self.box_Brick_Defend_Object_CORE_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1375090166", "1375090166", "MIS_430_B40", "box_Simple_Node_119.Out", "box_Brick_Defend_Object_CORE_v3_12.LastWave_Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- LastWave_Cleanup
    l0:Exec(1, params);
    l0 = self.box_MultipleOR_294;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|723319748", "723319748", "MIS_430_B40", "box_Simple_Node_119.Out", "box_MultipleOR_294.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_295;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1630206958", "1630206958", "MIS_430_B40", "box_Simple_Node_119.Out", "box_MultipleOR_295.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_80_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1077054126", "1077054126", "MIS_430_B40", "box_Simple_Node_80.Out", "box_Delay_v5_17.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_RandomFloat_v2_175();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|290378936", "290378936", "MIS_430_B40", "box_Simple_Node_80.Out", "box_RandomFloat_v2_175.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_170_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_301();
    l0 = self.box_Gate_v3_301;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|198274382", "198274382", "MIS_430_B40", "box_Simple_Node_170.Out", "box_Gate_v3_301.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_GroupSizeListener_v6_71();
    l0 = self.box_GroupSizeListener_v6_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|487525978", "487525978", "MIS_430_B40", "box_Simple_Node_170.Out", "box_GroupSizeListener_v6_71.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_RandomFloat_v2_172_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_172_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_120();
    l0 = self.box_Delay_v5_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|833919456", "833919456", "MIS_430_B40", "box_RandomFloat_v2_172.Out", "box_Delay_v5_120.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_299_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_297();
    l0 = self.box_Delay_v5_299;
    l1 = self.box_Gate_v3_297;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1634079676", "1634079676", "MIS_430_B40", "box_Delay_v5_299.TimeElapsed", "box_Gate_v3_297.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_18_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_31();
    l0 = self.box_MultipleAND_v2_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|975259074", "975259074", "MIS_430_B40", "box_EndActivityObjective_v2_18.Out", "box_MultipleAND_v2_31.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_54_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_328();
    l0 = self.box_Brick_Defend_Object_CORE_v3_54;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|819149009", "819149009", "MIS_430_B40", "box_Brick_Defend_Object_CORE_v3_54.Fail", "box_SetActivityObjectiveProgress_v2_328.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_54_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_118();
    l0 = self.box_Brick_Defend_Object_CORE_v3_54;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1950268327", "1950268327", "MIS_430_B40", "box_Brick_Defend_Object_CORE_v3_54.Success", "box_Simple_Node_118.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_54_Waves()
    local l0, l1;
    l0 = self.box_Brick_Defend_Object_CORE_v3_54;
    l1 = self.box_MultipleOR_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|370695137", "370695137", "MIS_430_B40", "box_Brick_Defend_Object_CORE_v3_54.Waves", "box_MultipleOR_102.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_245_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_27();
    l0 = self.box_Delay_v5_245;
    l1 = self.box_Gate_v3_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1085287336", "1085287336", "MIS_430_B40", "box_Delay_v5_245.TimeElapsed", "box_Gate_v3_27.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_314_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_313();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|155352163", "155352163", "MIS_430_B40", "box_OutputOrder_v2_314.Out", "box_IsEntityLoaded_v3_313.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_314_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_312();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|925880091", "925880091", "MIS_430_B40", "box_OutputOrder_v2_314.Out", "box_IsEntityLoaded_v3_312.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_269_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_263();
    l0 = self.box_PhoneCallExclusivityModifier_269;
    l1 = self.box_RequestPhoneCall_v2_263;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1454434444", "1454434444", "MIS_430_B40", "box_PhoneCallExclusivityModifier_269.Enabled", "box_RequestPhoneCall_v2_263.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_187_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_184();
    l0 = self.box_Delay_v5_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1077298166", "1077298166", "MIS_430_B40", "box_ParticleSystem_v3_187.Started", "box_Delay_v5_184.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ExitZoneWarningListener_v3_16_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_306();
    l0 = self.box_ExitZoneWarningListener_v3_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|912724873", "912724873", "MIS_430_B40", "box_ExitZoneWarningListener_v3_16.FailingZoneEntered", "box_OutputOrder_v2_306.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_266_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_266;
    l1 = self.box_PhoneCallExclusivityModifier_227;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|866844645", "866844645", "MIS_430_B40", "box_RequestPhoneCall_v2_266.Completed", "box_PhoneCallExclusivityModifier_227.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_Random_289_Output_0()
    local l0, l1;
    l0 = self.box_Random_289;
    l1 = self.box_PhoneCallExclusivityModifier_270;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|102768023", "102768023", "MIS_430_B40", "box_Random_289.Output", "box_PhoneCallExclusivityModifier_270.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_289_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_290();
    l0 = self.box_Random_289;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1002157231", "1002157231", "MIS_430_B40", "box_Random_289.Output", "box_OutputOrder_v2_290.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_214_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_220;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1061225585", "1061225585", "MIS_430_B40", "box_IsEntityLoaded_v3_214.True", "box_OnceOnly_v3_220.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_298_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_298;
    l1 = self.box_MultipleOR_296;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1410656889", "1410656889", "MIS_430_B40", "box_PlayDialog_v6_298.Finished", "box_MultipleOR_296.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_265_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_265;
    l1 = self.box_PhoneCallExclusivityModifier_261;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|895616503", "895616503", "MIS_430_B40", "box_RequestPhoneCall_v2_265.Completed", "box_PhoneCallExclusivityModifier_261.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_51();
    l0 = self.box_Delay_v5_41;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1909198115", "1909198115", "MIS_430_B40", "box_Delay_v5_41.TimeElapsed", "box_ParticleSystem_v3_51.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_BombPlant_57_GameOver()
    local l0, l1;
    l0 = self.box_MIS_430_BombPlant_57;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1232209850", "1232209850", "MIS_430_B40", "box_MIS_430_BombPlant_57.GameOver", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_259_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_238();
    l0 = self.box_RequestPhoneCall_v2_259;
    l1 = self.box_RequestPhoneCall_v2_238;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2088711006", "2088711006", "MIS_430_B40", "box_RequestPhoneCall_v2_259.Completed", "box_RequestPhoneCall_v2_238.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_63_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_31();
    l0 = self.box_MultipleAND_v2_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1574330340", "1574330340", "MIS_430_B40", "box_EndActivityObjective_v2_63.Out", "box_MultipleAND_v2_31.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleOR_90_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_130();
    l0 = self.box_MultipleOR_90;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|991334781", "991334781", "MIS_430_B40", "box_MultipleOR_90.Out", "box_MissionBlockLayer_130.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_21_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = self.box_Delay_v5_21;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|682959289", "682959289", "MIS_430_B40", "box_Delay_v5_21.TimeElapsed", "box_Simple_Node_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_12_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_327();
    l0 = self.box_Brick_Defend_Object_CORE_v3_12;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1701164084", "1701164084", "MIS_430_B40", "box_Brick_Defend_Object_CORE_v3_12.Fail", "box_SetActivityObjectiveProgress_v2_327.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_12_Waves()
    local l0, l1;
    l0 = self.box_Brick_Defend_Object_CORE_v3_12;
    l1 = self.box_MultipleOR_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1755089525", "1755089525", "MIS_430_B40", "box_Brick_Defend_Object_CORE_v3_12.Waves", "box_MultipleOR_102.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_143_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_75();
    l0 = self.box_Delay_v5_143;
    l1 = self.box_MIS_430_BarrelCatapult_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1621559135", "1621559135", "MIS_430_B40", "box_Delay_v5_143.TimeElapsed", "box_MIS_430_BarrelCatapult_75.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_CarAlarm_23();
    l0 = self.box_MIS_430_CarAlarm_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1129125477", "1129125477", "MIS_430_B40", "box_OutputOrder_v2_11.Out", "box_MIS_430_CarAlarm_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_CarAlarm_40();
    l0 = self.box_MIS_430_CarAlarm_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1527557845", "1527557845", "MIS_430_B40", "box_OutputOrder_v2_11.Out", "box_MIS_430_CarAlarm_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_CarAlarm_49();
    l0 = self.box_MIS_430_CarAlarm_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|733287218", "733287218", "MIS_430_B40", "box_OutputOrder_v2_11.Out", "box_MIS_430_CarAlarm_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_44_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_95();
    l0 = self.box_StaticBreakableListener_44;
    l1 = self.box_Delay_v5_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|733597221", "733597221", "MIS_430_B40", "box_StaticBreakableListener_44.Enabled", "box_Delay_v5_95.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_44_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_44;
    l1 = self.box_MultipleOR_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|10754810", "10754810", "MIS_430_B40", "box_StaticBreakableListener_44.OnBreak", "box_MultipleOR_100.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableListener_44_OnDamage()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_139();
    l0 = self.box_StaticBreakableListener_44;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1026413721", "1026413721", "MIS_430_B40", "box_StaticBreakableListener_44.OnDamage", "box_Simple_Node_139.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_201();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1266837263", "1266837263", "MIS_430_B40", "box_OutputOrder_v2_28.Out", "box_Simple_Node_201.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_68();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1001059952", "1001059952", "MIS_430_B40", "box_OutputOrder_v2_28.Out", "box_Simple_Node_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_15();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1406453571", "1406453571", "MIS_430_B40", "box_OutputOrder_v2_28.Out", "box_IsEntityLoaded_v3_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_322_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_161();
    l0 = self.box_OnceOnly_v3_322;
    l1 = self.box_MultipleAND_v2_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1194659982", "1194659982", "MIS_430_B40", "box_OnceOnly_v3_322.Out", "box_MultipleAND_v2_161.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleOR_107_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_108();
    l0 = self.box_MultipleOR_107;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1867954209", "1867954209", "MIS_430_B40", "box_MultipleOR_107.Out", "box_Compare_Integers_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_55_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_55_Activated();
    params = self:OnEnter_box_Simple_Node_252();
    l0 = self.box_MIS_430_SteamTrap_55;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1598600690", "1598600690", "MIS_430_B40", "box_MIS_430_SteamTrap_55.Activated", "box_Simple_Node_252.In", l0:GetLuaBox(), l1:GetLuaBox());
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

function export:f_box_OutputOrder_v2_290_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1481256147", "1481256147", "MIS_430_B40", "box_OutputOrder_v2_290.Out", "box_PhoneCallExclusivityModifier_206.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_290_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_292();
    l0 = self.box_Delay_v5_292;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|970833949", "970833949", "MIS_430_B40", "box_OutputOrder_v2_290.Out", "box_Delay_v5_292.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_315_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_315;
    l1 = self.box_PhoneCallExclusivityModifier_275;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|987364294", "987364294", "MIS_430_B40", "box_MultipleOR_315.Out", "box_PhoneCallExclusivityModifier_275.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_207_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_280();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1137404186", "1137404186", "MIS_430_B40", "box_OutputOrder_v2_207.Out", "box_Simple_Node_280.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_207_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_103();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1378927627", "1378927627", "MIS_430_B40", "box_OutputOrder_v2_207.Out", "box_Simple_Node_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_64();
    l0 = self.box_SpawnAI_Wave_v2_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2101377621", "2101377621", "MIS_430_B40", "box_OutputOrder_v2_83.Out", "box_SpawnAI_Wave_v2_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_83_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_82();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1807231958", "1807231958", "MIS_430_B40", "box_OutputOrder_v2_83.Out", "box_Print_v2_82.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_283();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1371666398", "1371666398", "MIS_430_B40", "box_OutputOrder_v2_83.Out", "box_Simple_Node_283.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_430_BarrelCatapult_65_Launched()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_172();
    l0 = self.box_MIS_430_BarrelCatapult_65;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|667584275", "667584275", "MIS_430_B40", "box_MIS_430_BarrelCatapult_65.Launched", "box_RandomFloat_v2_172.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_221_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_212();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1535191539", "1535191539", "MIS_430_B40", "box_OutputOrder_v2_221.Out", "box_ParticleSystem_v3_212.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_221_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_316();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1676924866", "1676924866", "MIS_430_B40", "box_OutputOrder_v2_221.Out", "box_EndActivityObjective_v2_316.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_221_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_318();
    l0 = self.box_Delay_v5_318;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1202199870", "1202199870", "MIS_430_B40", "box_OutputOrder_v2_221.Out", "box_Delay_v5_318.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_318_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_317();
    l0 = self.box_Delay_v5_318;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1320767022", "1320767022", "MIS_430_B40", "box_Delay_v5_318.TimeElapsed", "box_MissionBlockLayer_317.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_296_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_299();
    l0 = self.box_MultipleOR_296;
    l1 = self.box_Delay_v5_299;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1598777624", "1598777624", "MIS_430_B40", "box_MultipleOR_296.Out", "box_Delay_v5_299.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_87_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_180();
    l0 = self.box_OnceOnly_v3_87;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|82107382", "82107382", "MIS_430_B40", "box_OnceOnly_v3_87.Out", "box_OutputOrder_v2_180.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_241_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_241;
    l1 = self.box_PhoneCallExclusivityModifier_210;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|567189443", "567189443", "MIS_430_B40", "box_RequestPhoneCall_v2_241.Completed", "box_PhoneCallExclusivityModifier_210.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_94_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_93();
    l0 = self.box_Delay_v5_94;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|951609240", "951609240", "MIS_430_B40", "box_Delay_v5_94.TimeElapsed", "box_IsEntityLoaded_v3_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_250_Output_0()
    local l0, l1;
    l0 = self.box_Random_250;
    l1 = self.box_PhoneCallExclusivityModifier_246;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1113507351", "1113507351", "MIS_430_B40", "box_Random_250.Output", "box_PhoneCallExclusivityModifier_246.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_250_Output_1()
    local l0, l1;
    l0 = self.box_Random_250;
    l1 = self.box_PhoneCallExclusivityModifier_242;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1418710535", "1418710535", "MIS_430_B40", "box_Random_250.Output", "box_PhoneCallExclusivityModifier_242.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_250_Output_2()
    local l0, l1;
    l0 = self.box_Random_250;
    l1 = self.box_PhoneCallExclusivityModifier_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|830257341", "830257341", "MIS_430_B40", "box_Random_250.Output", "box_PhoneCallExclusivityModifier_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_250_Output_3()
    local l0, l1;
    l0 = self.box_Random_250;
    l1 = self.box_PhoneCallExclusivityModifier_240;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|769557212", "769557212", "MIS_430_B40", "box_Random_250.Output", "box_PhoneCallExclusivityModifier_240.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_SpawnAI_164_Fail()
    local l0, l1;
    l0 = self.box_SpawnAI_164;
    l1 = self.box_MultipleOR_323;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|934748193", "934748193", "MIS_430_B40", "box_SpawnAI_164.Fail", "box_MultipleOR_323.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_164_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_164;
    l1 = self.box_MultipleOR_323;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1848103459", "1848103459", "MIS_430_B40", "box_SpawnAI_164.Spawned", "box_MultipleOR_323.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_91_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_91;
    l1 = self.box_OnceOnly_v3_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1727888339", "1727888339", "MIS_430_B40", "box_Gate_v3_91.Out", "box_OnceOnly_v3_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_295_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_109();
    l0 = self.box_MultipleOR_295;
    l1 = self.box_GroupSizeListener_v6_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|626150174", "626150174", "MIS_430_B40", "box_MultipleOR_295.Out", "box_GroupSizeListener_v6_109.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_307_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_309();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1518517457", "1518517457", "MIS_430_B40", "box_OutputOrder_v2_307.Out", "box_Simple_Node_309.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_307_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_311();
    l0 = self.box_CharacterLoadedIdListener_v2_311;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|738046758", "738046758", "MIS_430_B40", "box_OutputOrder_v2_307.Out", "box_CharacterLoadedIdListener_v2_311.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_215_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_218();
    l0 = self.box_Delay_v5_215;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1152109920", "1152109920", "MIS_430_B40", "box_Delay_v5_215.TimeElapsed", "box_OutputOrder_v2_218.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_182_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_187();
    l0 = self.box_Delay_v5_182;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|862733667", "862733667", "MIS_430_B40", "box_Delay_v5_182.TimeElapsed", "box_ParticleSystem_v3_187.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_43();
    l0 = self.box_Gate_v3_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|871579444", "871579444", "MIS_430_B40", "box_OutputOrder_v2_77.Out", "box_Gate_v3_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1875787987", "1875787987", "MIS_430_B40", "box_OutputOrder_v2_77.Out", "box_Simple_Node_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_249_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_249;
    l1 = self.box_PhoneCallExclusivityModifier_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1022061173", "1022061173", "MIS_430_B40", "box_RequestPhoneCall_v2_249.Completed", "box_PhoneCallExclusivityModifier_2.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_59_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_CarAlarm_49();
    l0 = self.box_Delay_v5_59;
    l1 = self.box_MIS_430_CarAlarm_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|798162932", "798162932", "MIS_430_B40", "box_Delay_v5_59.TimeElapsed", "box_MIS_430_CarAlarm_49.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_195_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_198();
    l0 = self.box_Delay_v5_195;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1543958830", "1543958830", "MIS_430_B40", "box_Delay_v5_195.TimeElapsed", "box_ParticleSystem_v3_198.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_71_Enabled()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_71_Enabled();
    l0 = self.box_GroupSizeListener_v6_71;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1429789739", "1429789739", "MIS_430_B40", "box_GroupSizeListener_v6_71.Enabled", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_71_MemberAdded()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_71_MemberAdded();
    l0 = self.box_GroupSizeListener_v6_71;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1059294435", "1059294435", "MIS_430_B40", "box_GroupSizeListener_v6_71.MemberAdded", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v6_71_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_71_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_71_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_71_MemberRemoved();
    l0 = self.box_GroupSizeListener_v6_71;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1084018899", "1084018899", "MIS_430_B40", "box_GroupSizeListener_v6_71.MemberRemoved", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GroupSizeListener_v6_71_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_71_MemberSpawned();
end;

function export:f_box_MIS_430_BarrelCatapult_79_Launched()
    local l0, l1;
    l0 = self.box_MIS_430_BarrelCatapult_79;
    l1 = self.box_MultipleOR_225;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|65260263", "65260263", "MIS_430_B40", "box_MIS_430_BarrelCatapult_79.Launched", "box_MultipleOR_225.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AddActivityObjective_v2_24_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_39();
    l0 = self.box_GroupSizeListener_v6_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1312476648", "1312476648", "MIS_430_B40", "box_AddActivityObjective_v2_24.Out", "box_GroupSizeListener_v6_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_204_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_204;
    l1 = self.box_PhoneCallExclusivityModifier_205;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|617589068", "617589068", "MIS_430_B40", "box_RequestPhoneCall_v2_204.Completed", "box_PhoneCallExclusivityModifier_205.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_IsEntityLoaded_v3_38_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1370623788", "1370623788", "MIS_430_B40", "box_IsEntityLoaded_v3_38.False", "box_MultipleOR_100.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_38_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_101();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1326085585", "1326085585", "MIS_430_B40", "box_IsEntityLoaded_v3_38.True", "box_MissionBlockLayer_101.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_144_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_74();
    l0 = self.box_Delay_v5_144;
    l1 = self.box_MIS_430_BarrelCatapult_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|74203336", "74203336", "MIS_430_B40", "box_Delay_v5_144.TimeElapsed", "box_MIS_430_BarrelCatapult_74.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_CarAlarm_40();
    l0 = self.box_Delay_v5_29;
    l1 = self.box_MIS_430_CarAlarm_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1556631421", "1556631421", "MIS_430_B40", "box_Delay_v5_29.TimeElapsed", "box_MIS_430_CarAlarm_40.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_313_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_315;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1134711295", "1134711295", "MIS_430_B40", "box_IsEntityLoaded_v3_313.True", "box_MultipleOR_315.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_97_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_104();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1532229956", "1532229956", "MIS_430_B40", "box_IsEntityLoaded_v3_97.False", "box_Simple_Node_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_97_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Defend_Object_CORE_v3_12();
    l0 = self.box_Brick_Defend_Object_CORE_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1059715386", "1059715386", "MIS_430_B40", "box_IsEntityLoaded_v3_97.True", "box_Brick_Defend_Object_CORE_v3_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_VisibilityModifier_10_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_13();
    l0 = self.box_VisibilityModifier_10;
    l1 = self.box_VisibilityModifier_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1135232445", "1135232445", "MIS_430_B40", "box_VisibilityModifier_10.Disabled", "box_VisibilityModifier_13.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_218_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_158();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|258318601", "258318601", "MIS_430_B40", "box_OutputOrder_v2_218.Out", "box_IsEntityLoaded_v3_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_218_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_154();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1438508476", "1438508476", "MIS_430_B40", "box_OutputOrder_v2_218.Out", "box_IsEntityLoaded_v3_154.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_218_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_214();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1279096115", "1279096115", "MIS_430_B40", "box_OutputOrder_v2_218.Out", "box_IsEntityLoaded_v3_214.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_51_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_46();
    l0 = self.box_Delay_v5_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|769032001", "769032001", "MIS_430_B40", "box_ParticleSystem_v3_51.Started", "box_Delay_v5_46.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RequestPhoneCall_v2_228_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_228;
    l1 = self.box_PhoneCallExclusivityModifier_237;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1475408813", "1475408813", "MIS_430_B40", "box_RequestPhoneCall_v2_228.Completed", "box_PhoneCallExclusivityModifier_237.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_RequestPhoneCall_v2_273_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_273;
    l1 = self.box_PhoneCallExclusivityModifier_276;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|928439062", "928439062", "MIS_430_B40", "box_RequestPhoneCall_v2_273.Completed", "box_PhoneCallExclusivityModifier_276.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_ParticleSystem_v3_212_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_213();
    l0 = self.box_Delay_v5_213;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|816817729", "816817729", "MIS_430_B40", "box_ParticleSystem_v3_212.Started", "box_Delay_v5_213.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_99_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_103();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|795288062", "795288062", "MIS_430_B40", "box_IsEntityLoaded_v3_99.False", "box_Simple_Node_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_99_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Defend_Object_CORE_v3_54();
    l0 = self.box_Brick_Defend_Object_CORE_v3_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|326086177", "326086177", "MIS_430_B40", "box_IsEntityLoaded_v3_99.True", "box_Brick_Defend_Object_CORE_v3_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_MIS_430_SteamTrap_121_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_121_Activated();
    params = self:OnEnter_box_Simple_Node_252();
    l0 = self.box_MIS_430_SteamTrap_121;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1470787702", "1470787702", "MIS_430_B40", "box_MIS_430_SteamTrap_121.Activated", "box_Simple_Node_252.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_121_Active()
    self:OnExit_box_MIS_430_SteamTrap_121_Active();
end;

function export:f_box_MIS_430_SteamTrap_121_Inactive()
    self:OnExit_box_MIS_430_SteamTrap_121_Inactive();
end;

function export:f_box_MIS_430_SteamTrap_121_Out()
    self:OnExit_box_MIS_430_SteamTrap_121_Out();
end;

function export:f_box_MultipleOR_300_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_303();
    l0 = self.box_MultipleOR_300;
    l1 = self.box_Delay_v5_303;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|115918254", "115918254", "MIS_430_B40", "box_MultipleOR_300.Out", "box_Delay_v5_303.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v6_86_Enabled()
    self:OnExit_box_GroupSizeListener_v6_86_Enabled();
end;

function export:f_box_GroupSizeListener_v6_86_MemberAdded()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_86_MemberAdded();
    l0 = self.box_GroupSizeListener_v6_86;
    l1 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1958539156", "1958539156", "MIS_430_B40", "box_GroupSizeListener_v6_86.MemberAdded", "box_MultipleOR_84.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_86_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_86_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_86_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_86_MemberRemoved();
    l0 = self.box_GroupSizeListener_v6_86;
    l1 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|81936343", "81936343", "MIS_430_B40", "box_GroupSizeListener_v6_86.MemberRemoved", "box_MultipleOR_84.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v6_86_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_86_MemberSpawned();
end;

function export:f_box_Random_236_Output_0()
    local l0, l1;
    l0 = self.box_Random_236;
    l1 = self.box_PhoneCallExclusivityModifier_260;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|820527185", "820527185", "MIS_430_B40", "box_Random_236.Output", "box_PhoneCallExclusivityModifier_260.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_236_Output_1()
    local l0, l1;
    l0 = self.box_Random_236;
    l1 = self.box_PhoneCallExclusivityModifier_235;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|108352617", "108352617", "MIS_430_B40", "box_Random_236.Output", "box_PhoneCallExclusivityModifier_235.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_236_Output_2()
    local l0, l1;
    l0 = self.box_Random_236;
    l1 = self.box_PhoneCallExclusivityModifier_257;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|376907084", "376907084", "MIS_430_B40", "box_Random_236.Output", "box_PhoneCallExclusivityModifier_257.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_236_Output_3()
    local l0, l1;
    l0 = self.box_Random_236;
    l1 = self.box_PhoneCallExclusivityModifier_264;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|757250988", "757250988", "MIS_430_B40", "box_Random_236.Output", "box_PhoneCallExclusivityModifier_264.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_236_Output_4()
    local l0, l1;
    l0 = self.box_Random_236;
    l1 = self.box_PhoneCallExclusivityModifier_262;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|880145636", "880145636", "MIS_430_B40", "box_Random_236.Output", "box_PhoneCallExclusivityModifier_262.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_236_Output_5()
    local l0, l1;
    l0 = self.box_Random_236;
    l1 = self.box_PhoneCallExclusivityModifier_232;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|569353368", "569353368", "MIS_430_B40", "box_Random_236.Output", "box_PhoneCallExclusivityModifier_232.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_236_Output_6()
    local l0, l1;
    l0 = self.box_Random_236;
    l1 = self.box_PhoneCallExclusivityModifier_267;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|390669805", "390669805", "MIS_430_B40", "box_Random_236.Output", "box_PhoneCallExclusivityModifier_267.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_236_Output_7()
    local l0, l1;
    l0 = self.box_Random_236;
    l1 = self.box_PhoneCallExclusivityModifier_269;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|51627283", "51627283", "MIS_430_B40", "box_Random_236.Output", "box_PhoneCallExclusivityModifier_269.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_MIS_430_BarrelCatapult_75_Launched()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_178();
    l0 = self.box_MIS_430_BarrelCatapult_75;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|935444740", "935444740", "MIS_430_B40", "box_MIS_430_BarrelCatapult_75.Launched", "box_RandomFloat_v2_178.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_179_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_200();
    l0 = self.box_Delay_v5_179;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|316509772", "316509772", "MIS_430_B40", "box_Delay_v5_179.TimeElapsed", "box_OutputOrder_v2_200.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_BarrelCatapult_14_Launched()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_173();
    l0 = self.box_MIS_430_BarrelCatapult_14;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1068661660", "1068661660", "MIS_430_B40", "box_MIS_430_BarrelCatapult_14.Launched", "box_RandomFloat_v2_173.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_47_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_157();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|612006755", "612006755", "MIS_430_B40", "box_Compare_Integers_47.A_le_B", "box_OutputOrder_v2_157.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_312_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_315;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1853703874", "1853703874", "MIS_430_B40", "box_IsEntityLoaded_v3_312.True", "box_MultipleOR_315.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_154_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_220;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|876356988", "876356988", "MIS_430_B40", "box_IsEntityLoaded_v3_154.True", "box_OnceOnly_v3_220.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_83();
    l0 = self.box_Gate_v3_43;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1433227221", "1433227221", "MIS_430_B40", "box_Gate_v3_43.Out", "box_OutputOrder_v2_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_102_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_102;
    l1 = self.box_OnceOnly_v3_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|591715348", "591715348", "MIS_430_B40", "box_MultipleOR_102.Out", "box_OnceOnly_v3_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_225_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_251();
    l0 = self.box_MultipleOR_225;
    l1 = self.box_Gate_v3_251;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1097388872", "1097388872", "MIS_430_B40", "box_MultipleOR_225.Out", "box_Gate_v3_251.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_145_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_73();
    l0 = self.box_Delay_v5_145;
    l1 = self.box_MIS_430_BarrelCatapult_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1290253065", "1290253065", "MIS_430_B40", "box_Delay_v5_145.TimeElapsed", "box_MIS_430_BarrelCatapult_73.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_108_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|322920609", "322920609", "MIS_430_B40", "box_Compare_Integers_108.A_le_B", "box_OutputOrder_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_ActivityInitialized_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1587452629", "1587452629", "MIS_430_B40", "box_ActivityInitialized_6.Out", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_130_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_129();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2021419906", "2021419906", "MIS_430_B40", "box_MissionBlockLayer_130.Disabled", "box_MissionBlockLayer_129.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_267_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_259();
    l0 = self.box_PhoneCallExclusivityModifier_267;
    l1 = self.box_RequestPhoneCall_v2_259;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1238814310", "1238814310", "MIS_430_B40", "box_PhoneCallExclusivityModifier_267.Enabled", "box_RequestPhoneCall_v2_259.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_158_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_220;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1335437778", "1335437778", "MIS_430_B40", "box_IsEntityLoaded_v3_158.True", "box_OnceOnly_v3_220.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_BombPlant_57();
    l0 = self.box_MIS_430_BombPlant_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|663590306", "663590306", "MIS_430_B40", "box_OutputOrder_v2_56.Out", "box_MIS_430_BombPlant_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_24();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|418909173", "418909173", "MIS_430_B40", "box_OutputOrder_v2_56.Out", "box_AddActivityObjective_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_291;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|659360983", "659360983", "MIS_430_B40", "box_OutputOrder_v2_56.Out", "box_MultipleOR_291.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_56_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_BombPlant_151();
    l0 = self.box_MIS_430_BombPlant_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1272302716", "1272302716", "MIS_430_B40", "box_OutputOrder_v2_56.Out", "box_MIS_430_BombPlant_151.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_35_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_35;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|153362005", "153362005", "MIS_430_B40", "box_Gate_v3_35.Opened", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_35_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_35;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1676149092", "1676149092", "MIS_430_B40", "box_Gate_v3_35.Out", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PhoneCallExclusivityModifier_232_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_234();
    l0 = self.box_PhoneCallExclusivityModifier_232;
    l1 = self.box_RequestPhoneCall_v2_234;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1532004748", "1532004748", "MIS_430_B40", "box_PhoneCallExclusivityModifier_232.Enabled", "box_RequestPhoneCall_v2_234.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_208();
    l0 = self.box_Gate_v3_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|178056925", "178056925", "MIS_430_B40", "box_Gate_v3_27.Out", "box_OutputOrder_v2_208.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_240_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_209();
    l0 = self.box_PhoneCallExclusivityModifier_240;
    l1 = self.box_RequestPhoneCall_v2_209;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|98767598", "98767598", "MIS_430_B40", "box_PhoneCallExclusivityModifier_240.Enabled", "box_RequestPhoneCall_v2_209.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PawnInvincibleState_v2_20_OnUnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_325();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|683577868", "683577868", "MIS_430_B40", "box_PawnInvincibleState_v2_20.OnUnSet", "box_OutputOrder_v2_325.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_112_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_307();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|403928784", "403928784", "MIS_430_B40", "box_EndActivityObjective_v2_112.Out", "box_OutputOrder_v2_307.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_149_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_112();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2035059765", "2035059765", "MIS_430_B40", "box_OutputOrder_v2_149.Out", "box_EndActivityObjective_v2_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_149_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_170();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|623928598", "623928598", "MIS_430_B40", "box_OutputOrder_v2_149.Out", "box_Simple_Node_170.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_291_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_289();
    l0 = self.box_MultipleOR_291;
    l1 = self.box_Random_289;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1694531184", "1694531184", "MIS_430_B40", "box_MultipleOR_291.Out", "box_Random_289.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RequestPhoneCall_v2_272_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_272;
    l1 = self.box_PhoneCallExclusivityModifier_277;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1598018018", "1598018018", "MIS_430_B40", "box_RequestPhoneCall_v2_272.Completed", "box_PhoneCallExclusivityModifier_277.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_7();
    l0 = self.box_SpawnAI_Wave_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|502464901", "502464901", "MIS_430_B40", "box_OutputOrder_v2_34.Out", "box_SpawnAI_Wave_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_35();
    l0 = self.box_Gate_v3_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|124055944", "124055944", "MIS_430_B40", "box_OutputOrder_v2_34.Out", "box_Gate_v3_35.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_34_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_81();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|81477760", "81477760", "MIS_430_B40", "box_OutputOrder_v2_34.Out", "box_Print_v2_81.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_295;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1208248369", "1208248369", "MIS_430_B40", "box_OutputOrder_v2_34.Out", "box_MultipleOR_295.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MIS_430_CarAlarm_23_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_33();
    l0 = self.box_MIS_430_CarAlarm_23;
    l1 = self.box_Delay_v5_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|968475218", "968475218", "MIS_430_B40", "box_MIS_430_CarAlarm_23.Ended", "box_Delay_v5_33.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_325_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_309();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1711806522", "1711806522", "MIS_430_B40", "box_OutputOrder_v2_325.Out", "box_Simple_Node_309.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_325_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_146();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1791299770", "1791299770", "MIS_430_B40", "box_OutputOrder_v2_325.Out", "box_ActivityEnd_146.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_263_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_263;
    l1 = self.box_PhoneCallExclusivityModifier_258;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|47333114", "47333114", "MIS_430_B40", "box_RequestPhoneCall_v2_263.Completed", "box_PhoneCallExclusivityModifier_258.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_SetActivityObjectiveProgress_v2_327_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_202();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|78310329", "78310329", "MIS_430_B40", "box_SetActivityObjectiveProgress_v2_327.Out", "box_OutputOrder_v2_202.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_7_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = self.box_SpawnAI_Wave_v2_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|772223770", "772223770", "MIS_430_B40", "box_SpawnAI_Wave_v2_7.NextWave", "box_OutputOrder_v2_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_120_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_14();
    l0 = self.box_Delay_v5_120;
    l1 = self.box_MIS_430_BarrelCatapult_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|123583403", "123583403", "MIS_430_B40", "box_Delay_v5_120.TimeElapsed", "box_MIS_430_BarrelCatapult_14.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_159_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_168();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1336393891", "1336393891", "MIS_430_B40", "box_OutputOrder_v2_159.Out", "box_Compare_Integers_168.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_159_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_153();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1002048834", "1002048834", "MIS_430_B40", "box_OutputOrder_v2_159.Out", "box_Compare_Integers_153.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_226_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_226;
    l1 = self.box_PhoneCallExclusivityModifier_268;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|962629842", "962629842", "MIS_430_B40", "box_RequestPhoneCall_v2_226.Completed", "box_PhoneCallExclusivityModifier_268.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleAND_v2_161_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_71();
    l0 = self.box_MultipleAND_v2_161;
    l1 = self.box_GroupSizeListener_v6_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2121936803", "2121936803", "MIS_430_B40", "box_MultipleAND_v2_161.Out", "box_GroupSizeListener_v6_71.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_320_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_161();
    l0 = self.box_OnceOnly_v3_320;
    l1 = self.box_MultipleAND_v2_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|580063617", "580063617", "MIS_430_B40", "box_OnceOnly_v3_320.Out", "box_MultipleAND_v2_161.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Delay_v5_188_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_181();
    l0 = self.box_Delay_v5_188;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|797034068", "797034068", "MIS_430_B40", "box_Delay_v5_188.TimeElapsed", "box_ParticleSystem_v3_181.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_180_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_114();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|555370038", "555370038", "MIS_430_B40", "box_OutputOrder_v2_180.Out", "box_Simple_Node_114.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_180_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_224;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2095795524", "2095795524", "MIS_430_B40", "box_OutputOrder_v2_180.Out", "box_PhoneCallExclusivityModifier_224.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_180_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_61();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1578155064", "1578155064", "MIS_430_B40", "box_OutputOrder_v2_180.Out", "box_Simple_Node_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_180_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_215();
    l0 = self.box_Delay_v5_215;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|811454874", "811454874", "MIS_430_B40", "box_OutputOrder_v2_180.Out", "box_Delay_v5_215.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_180_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_293();
    l0 = self.box_Music_Quest_v2_293;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1102348678", "1102348678", "MIS_430_B40", "box_OutputOrder_v2_180.Out", "box_Music_Quest_v2_293.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_100_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_122();
    l0 = self.box_MultipleOR_100;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|604881217", "604881217", "MIS_430_B40", "box_MultipleOR_100.Out", "box_MissionBlockLayer_122.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_238_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_265();
    l0 = self.box_RequestPhoneCall_v2_238;
    l1 = self.box_RequestPhoneCall_v2_265;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1994492048", "1994492048", "MIS_430_B40", "box_RequestPhoneCall_v2_238.Completed", "box_RequestPhoneCall_v2_265.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_174_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_174_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_126();
    l0 = self.box_Delay_v5_126;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1446567428", "1446567428", "MIS_430_B40", "box_RandomFloat_v2_174.Out", "box_Delay_v5_126.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PhoneCallExclusivityModifier_32_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_241();
    l0 = self.box_PhoneCallExclusivityModifier_32;
    l1 = self.box_RequestPhoneCall_v2_241;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|997428868", "997428868", "MIS_430_B40", "box_PhoneCallExclusivityModifier_32.Enabled", "box_RequestPhoneCall_v2_241.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IsEntityInGroup_116_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1338082612", "1338082612", "MIS_430_B40", "box_IsEntityInGroup_116.True", "box_PhoneCallExclusivityModifier_248.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_ParticleSystem_v3_19_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_186();
    l0 = self.box_Delay_v5_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1739911714", "1739911714", "MIS_430_B40", "box_ParticleSystem_v3_19.Started", "box_Delay_v5_186.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_281_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_282();
    l0 = self.box_ProximityTrigger_v3_281;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1530035445", "1530035445", "MIS_430_B40", "box_ProximityTrigger_v3_281.Enter", "box_SetContextualStrategy_282.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_254_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_254;
    l1 = self.box_PhoneCallExclusivityModifier_255;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1018980810", "1018980810", "MIS_430_B40", "box_RequestPhoneCall_v2_254.Completed", "box_PhoneCallExclusivityModifier_255.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_RequestPhoneCall_v2_254_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_221();
    l0 = self.box_RequestPhoneCall_v2_254;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|123133031", "123133031", "MIS_430_B40", "box_RequestPhoneCall_v2_254.Started", "box_OutputOrder_v2_221.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_109_Enabled()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_109_Enabled();
    l0 = self.box_GroupSizeListener_v6_109;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1005093521", "1005093521", "MIS_430_B40", "box_GroupSizeListener_v6_109.Enabled", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_109_MemberAdded()
    self:OnExit_box_GroupSizeListener_v6_109_MemberAdded();
end;

function export:f_box_GroupSizeListener_v6_109_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_109_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_109_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_109_MemberRemoved();
    l0 = self.box_GroupSizeListener_v6_109;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|518645574", "518645574", "MIS_430_B40", "box_GroupSizeListener_v6_109.MemberRemoved", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v6_109_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_109_MemberSpawned();
end;

function export:f_box_ParticleSystem_v3_193_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_194();
    l0 = self.box_Delay_v5_194;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|12025859", "12025859", "MIS_430_B40", "box_ParticleSystem_v3_193.Started", "box_Delay_v5_194.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_117_LoadedIdReceived()
    local params, l0, l1;
    params = self:OnEnter_box_PawnInvincibleState_v2_131();
    l0 = self.box_CharacterLoadedIdListener_v2_117;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|444840661", "444840661", "MIS_430_B40", "box_CharacterLoadedIdListener_v2_117.LoadedIdReceived", "box_PawnInvincibleState_v2_131.SetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetInvincible
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_235_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_229();
    l0 = self.box_PhoneCallExclusivityModifier_235;
    l1 = self.box_RequestPhoneCall_v2_229;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1772633292", "1772633292", "MIS_430_B40", "box_PhoneCallExclusivityModifier_235.Enabled", "box_RequestPhoneCall_v2_229.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_239_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_239;
    l1 = self.box_PhoneCallExclusivityModifier_247;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|832904412", "832904412", "MIS_430_B40", "box_RequestPhoneCall_v2_239.Completed", "box_PhoneCallExclusivityModifier_247.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_MIS_430_SteamTrap_96_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_96_Activated();
    params = self:OnEnter_box_Simple_Node_252();
    l0 = self.box_MIS_430_SteamTrap_96;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|165781187", "165781187", "MIS_430_B40", "box_MIS_430_SteamTrap_96.Activated", "box_Simple_Node_252.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_96_Active()
    self:OnExit_box_MIS_430_SteamTrap_96_Active();
end;

function export:f_box_MIS_430_SteamTrap_96_Inactive()
    self:OnExit_box_MIS_430_SteamTrap_96_Inactive();
end;

function export:f_box_MIS_430_SteamTrap_96_Out()
    self:OnExit_box_MIS_430_SteamTrap_96_Out();
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|832933108", "832933108", "MIS_430_B40", "box_OutputOrder_v2_5.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
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
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1090057398", "1090057398", "MIS_430_B40", "box_OutputOrder_v2_5.Out", "box_Print_v2_1.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_86();
    l0 = self.box_GroupSizeListener_v6_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1603774967", "1603774967", "MIS_430_B40", "box_OutputOrder_v2_5.Out", "box_GroupSizeListener_v6_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_10();
    l0 = self.box_VisibilityModifier_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|926856005", "926856005", "MIS_430_B40", "box_OutputOrder_v2_5.Out", "box_VisibilityModifier_10.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_117();
    l0 = self.box_CharacterLoadedIdListener_v2_117;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2138844005", "2138844005", "MIS_430_B40", "box_OutputOrder_v2_5.Out", "box_CharacterLoadedIdListener_v2_117.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_257_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_228();
    l0 = self.box_PhoneCallExclusivityModifier_257;
    l1 = self.box_RequestPhoneCall_v2_228;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1710364075", "1710364075", "MIS_430_B40", "box_PhoneCallExclusivityModifier_257.Enabled", "box_RequestPhoneCall_v2_228.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_101_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_140();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2006396934", "2006396934", "MIS_430_B40", "box_MissionBlockLayer_101.Activated", "box_Simple_Node_140.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_200_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_109();
    l0 = self.box_GroupSizeListener_v6_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1207542672", "1207542672", "MIS_430_B40", "box_OutputOrder_v2_200.Out", "box_GroupSizeListener_v6_109.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_200_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_70();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1649633998", "1649633998", "MIS_430_B40", "box_OutputOrder_v2_200.Out", "box_Simple_Node_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_186_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_185();
    l0 = self.box_Delay_v5_186;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|994729105", "994729105", "MIS_430_B40", "box_Delay_v5_186.TimeElapsed", "box_ParticleSystem_v3_185.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_MultipleOR_22;
    l1 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1536346640", "1536346640", "MIS_430_B40", "box_MultipleOR_22.Out", "box_Delay_v5_21.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_132_LoadedIdReceived()
    local params, l0, l1;
    params = self:OnEnter_box_PawnInvincibleState_v2_20();
    l0 = self.box_CharacterLoadedIdListener_v2_132;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2009921337", "2009921337", "MIS_430_B40", "box_CharacterLoadedIdListener_v2_132.LoadedIdReceived", "box_PawnInvincibleState_v2_20.UnsetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnsetInvincible
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DisplayCustomUIMsg_v5_125_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_128();
    l0 = self.box_DisplayCustomUIMsg_v5_125;
    l1 = self.box_Delay_v5_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|544249893", "544249893", "MIS_430_B40", "box_DisplayCustomUIMsg_v5_125.OnDisplay", "box_Delay_v5_128.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_DisplayCustomUIMsg_v5_125_OnHide()
    local l0, l1;
    l0 = self.box_DisplayCustomUIMsg_v5_125;
    l1 = self.box_OnceOnly_v3_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1391513811", "1391513811", "MIS_430_B40", "box_DisplayCustomUIMsg_v5_125.OnHide", "box_OnceOnly_v3_72.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_RequestPhoneCall_v2_256_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_256;
    l1 = self.box_PhoneCallExclusivityModifier_230;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|976904256", "976904256", "MIS_430_B40", "box_RequestPhoneCall_v2_256.Completed", "box_PhoneCallExclusivityModifier_230.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_PhoneCallExclusivityModifier_262_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_266();
    l0 = self.box_PhoneCallExclusivityModifier_262;
    l1 = self.box_RequestPhoneCall_v2_266;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|610801582", "610801582", "MIS_430_B40", "box_PhoneCallExclusivityModifier_262.Enabled", "box_RequestPhoneCall_v2_266.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_33_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_CarAlarm_23();
    l0 = self.box_Delay_v5_33;
    l1 = self.box_MIS_430_CarAlarm_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|764978417", "764978417", "MIS_430_B40", "box_Delay_v5_33.TimeElapsed", "box_MIS_430_CarAlarm_23.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, params);
end;

function export:f_box_MIS_430_BarrelCatapult_25_Launched()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_174();
    l0 = self.box_MIS_430_BarrelCatapult_25;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2074099905", "2074099905", "MIS_430_B40", "box_MIS_430_BarrelCatapult_25.Launched", "box_RandomFloat_v2_174.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_292_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_292;
    l1 = self.box_MultipleOR_291;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1695006241", "1695006241", "MIS_430_B40", "box_Delay_v5_292.TimeElapsed", "box_MultipleOR_291.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_297_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_298();
    l0 = self.box_Gate_v3_297;
    l1 = self.box_PlayDialog_v6_298;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1693677164", "1693677164", "MIS_430_B40", "box_Gate_v3_297.Out", "box_PlayDialog_v6_298.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_176_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_176_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_144();
    l0 = self.box_Delay_v5_144;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1342496641", "1342496641", "MIS_430_B40", "box_RandomFloat_v2_176.Out", "box_Delay_v5_144.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PhoneCallExclusivityModifier_260_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_256();
    l0 = self.box_PhoneCallExclusivityModifier_260;
    l1 = self.box_RequestPhoneCall_v2_256;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1113558587", "1113558587", "MIS_430_B40", "box_PhoneCallExclusivityModifier_260.Enabled", "box_RequestPhoneCall_v2_256.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_127_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_135();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1791805687", "1791805687", "MIS_430_B40", "box_MissionBlockLayer_127.Activated", "box_Simple_Node_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_93_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|611251692", "611251692", "MIS_430_B40", "box_IsEntityLoaded_v3_93.False", "box_MultipleOR_90.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_93_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_127();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1927745838", "1927745838", "MIS_430_B40", "box_IsEntityLoaded_v3_93.True", "box_MissionBlockLayer_127.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_430_BombPlant_151_GameOver()
    local l0, l1;
    l0 = self.box_MIS_430_BombPlant_151;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1969704227", "1969704227", "MIS_430_B40", "box_MIS_430_BombPlant_151.GameOver", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_213_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_308();
    l0 = self.box_Delay_v5_213;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|775386496", "775386496", "MIS_430_B40", "box_Delay_v5_213.TimeElapsed", "box_OutputOrder_v2_308.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_184_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_183();
    l0 = self.box_Delay_v5_184;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1945765383", "1945765383", "MIS_430_B40", "box_Delay_v5_184.TimeElapsed", "box_ParticleSystem_v3_183.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_157_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_39();
    l0 = self.box_GroupSizeListener_v6_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2085708955", "2085708955", "MIS_430_B40", "box_OutputOrder_v2_157.Out", "box_GroupSizeListener_v6_39.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_157_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_111();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1929640895", "1929640895", "MIS_430_B40", "box_OutputOrder_v2_157.Out", "box_OutputOrder_v2_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_42_Fail()
    local l0, l1;
    l0 = self.box_SpawnAI_42;
    l1 = self.box_MultipleOR_321;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|878238417", "878238417", "MIS_430_B40", "box_SpawnAI_42.Fail", "box_MultipleOR_321.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_42_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_42;
    l1 = self.box_MultipleOR_321;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1274054724", "1274054724", "MIS_430_B40", "box_SpawnAI_42.Spawned", "box_MultipleOR_321.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_190_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_191();
    l0 = self.box_Delay_v5_190;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|746033215", "746033215", "MIS_430_B40", "box_Delay_v5_190.TimeElapsed", "box_ParticleSystem_v3_191.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_CarAlarm_49_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_59();
    l0 = self.box_MIS_430_CarAlarm_49;
    l1 = self.box_Delay_v5_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|697270252", "697270252", "MIS_430_B40", "box_MIS_430_CarAlarm_49.Ended", "box_Delay_v5_59.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_311_LoadedIdReceived()
    local params, l0, l1;
    params = self:OnEnter_box_PawnInvincibleState_v2_310();
    l0 = self.box_CharacterLoadedIdListener_v2_311;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|940605795", "940605795", "MIS_430_B40", "box_CharacterLoadedIdListener_v2_311.LoadedIdReceived", "box_PawnInvincibleState_v2_310.UnsetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnsetInvincible
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_129_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_147();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|433654648", "433654648", "MIS_430_B40", "box_MissionBlockLayer_129.Activated", "box_OutputOrder_v2_147.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_168_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_166();
    l0 = self.box_Switch_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|603549305", "603549305", "MIS_430_B40", "box_Compare_Integers_168.A_lt_B", "box_Switch_166.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_RandomFloat_v2_175_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_175_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_76();
    l0 = self.box_MIS_430_BarrelCatapult_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1840760769", "1840760769", "MIS_430_B40", "box_RandomFloat_v2_175.Out", "box_MIS_430_BarrelCatapult_76.Launch", clone:GetLuaBox(), l0:GetLuaBox());
    -- Launch
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_285_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_286();
    l0 = self.box_ProximityTrigger_v3_285;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1754034952", "1754034952", "MIS_430_B40", "box_ProximityTrigger_v3_285.Enter", "box_SetContextualStrategy_286.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetContextualStrategyUniqueGroup_217_Out()
    local params, l0;
    self:OnExit_box_GetContextualStrategyUniqueGroup_217_Out();
    l0 = Boxes[GetPathID("Domino/System/AI/GetContextualStrategyUniqueGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_219();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|454750420", "454750420", "MIS_430_B40", "box_GetContextualStrategyUniqueGroup_217.Out", "box_SetContextualStrategy_219.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_15_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_30();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1988048003", "1988048003", "MIS_430_B40", "box_IsEntityLoaded_v3_15.True", "box_IsEntityLoaded_v3_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_430_BarrelCatapult_73_Launched()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_176();
    l0 = self.box_MIS_430_BarrelCatapult_73;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|600164332", "600164332", "MIS_430_B40", "box_MIS_430_BarrelCatapult_73.Launched", "box_RandomFloat_v2_176.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_185_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_182();
    l0 = self.box_Delay_v5_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|64144045", "64144045", "MIS_430_B40", "box_ParticleSystem_v3_185.Started", "box_Delay_v5_182.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PhoneCallExclusivityModifier_246_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_211();
    l0 = self.box_PhoneCallExclusivityModifier_246;
    l1 = self.box_RequestPhoneCall_v2_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|65309109", "65309109", "MIS_430_B40", "box_PhoneCallExclusivityModifier_246.Enabled", "box_RequestPhoneCall_v2_211.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_192_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_193();
    l0 = self.box_Delay_v5_192;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2144381950", "2144381950", "MIS_430_B40", "box_Delay_v5_192.TimeElapsed", "box_ParticleSystem_v3_193.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_196_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_195();
    l0 = self.box_Delay_v5_195;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|885911136", "885911136", "MIS_430_B40", "box_ParticleSystem_v3_196.Started", "box_Delay_v5_195.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RequestPhoneCall_v2_222_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_222;
    l1 = self.box_PhoneCallExclusivityModifier_223;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1676128554", "1676128554", "MIS_430_B40", "box_RequestPhoneCall_v2_222.Completed", "box_PhoneCallExclusivityModifier_223.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|889403120", "889403120", "MIS_430_B40", "box_MultipleOR_3.Out", "box_ActivityInitialized_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OnceOnly_v3_8_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_314();
    l0 = self.box_OnceOnly_v3_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|936423838", "936423838", "MIS_430_B40", "box_OnceOnly_v3_8.Out", "box_OutputOrder_v2_314.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_BarrelCatapult_76_Launched()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_145();
    l0 = self.box_MIS_430_BarrelCatapult_76;
    l1 = self.box_Delay_v5_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|271592057", "271592057", "MIS_430_B40", "box_MIS_430_BarrelCatapult_76.Launched", "box_Delay_v5_145.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_95_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_38();
    l0 = self.box_Delay_v5_95;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|806210632", "806210632", "MIS_430_B40", "box_Delay_v5_95.TimeElapsed", "box_IsEntityLoaded_v3_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_124_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_44();
    l0 = self.box_StaticBreakableListener_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1950244702", "1950244702", "MIS_430_B40", "box_OutputOrder_v2_124.Out", "box_StaticBreakableListener_44.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_124_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_48();
    l0 = self.box_StaticBreakableListener_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1141452054", "1141452054", "MIS_430_B40", "box_OutputOrder_v2_124.Out", "box_StaticBreakableListener_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_242_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_239();
    l0 = self.box_PhoneCallExclusivityModifier_242;
    l1 = self.box_RequestPhoneCall_v2_239;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1094426765", "1094426765", "MIS_430_B40", "box_PhoneCallExclusivityModifier_242.Enabled", "box_RequestPhoneCall_v2_239.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_275_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_273();
    l0 = self.box_PhoneCallExclusivityModifier_275;
    l1 = self.box_RequestPhoneCall_v2_273;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|688987169", "688987169", "MIS_430_B40", "box_PhoneCallExclusivityModifier_275.Enabled", "box_RequestPhoneCall_v2_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_326_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_115();
    l0 = self.box_OnceOnly_v3_326;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|90207869", "90207869", "MIS_430_B40", "box_OnceOnly_v3_326.Out", "box_GetPlayerGroup_v2_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_89_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_148();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|124324016", "124324016", "MIS_430_B40", "box_MissionBlockLayer_89.Activated", "box_OutputOrder_v2_148.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_306_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_309();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|77051501", "77051501", "MIS_430_B40", "box_OutputOrder_v2_306.Out", "box_Simple_Node_309.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_306_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_58();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2090829292", "2090829292", "MIS_430_B40", "box_OutputOrder_v2_306.Out", "box_ActivityRetry_v2_58.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_282_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_288();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|308177836", "308177836", "MIS_430_B40", "box_SetContextualStrategy_282.Out", "box_SetContextualStrategy_288.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_148_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|918252108", "918252108", "MIS_430_B40", "box_OutputOrder_v2_148.Out", "box_Simple_Node_136.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_148_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_137();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1374582676", "1374582676", "MIS_430_B40", "box_OutputOrder_v2_148.Out", "box_Simple_Node_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_270_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_272();
    l0 = self.box_PhoneCallExclusivityModifier_270;
    l1 = self.box_RequestPhoneCall_v2_272;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|46292291", "46292291", "MIS_430_B40", "box_PhoneCallExclusivityModifier_270.Enabled", "box_RequestPhoneCall_v2_272.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IsEntityInGroup_244_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_326;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1054930371", "1054930371", "MIS_430_B40", "box_IsEntityInGroup_244.False", "box_OnceOnly_v3_326.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityInGroup_244_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_250();
    l0 = self.box_Random_250;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|106932582", "106932582", "MIS_430_B40", "box_IsEntityInGroup_244.True", "box_Random_250.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_RandomFloat_v2_171_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_171_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_65();
    l0 = self.box_MIS_430_BarrelCatapult_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1473207336", "1473207336", "MIS_430_B40", "box_RandomFloat_v2_171.Out", "box_MIS_430_BarrelCatapult_65.Launch", clone:GetLuaBox(), l0:GetLuaBox());
    -- Launch
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_284_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_281();
    l0 = self.box_ProximityTrigger_v3_281;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2038142019", "2038142019", "MIS_430_B40", "box_OutputOrder_v2_284.Out", "box_ProximityTrigger_v3_281.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_284_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_285();
    l0 = self.box_ProximityTrigger_v3_285;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|481661332", "481661332", "MIS_430_B40", "box_OutputOrder_v2_284.Out", "box_ProximityTrigger_v3_285.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_111_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_163();
    l0 = self.box_SpawnAI_163;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1267224246", "1267224246", "MIS_430_B40", "box_OutputOrder_v2_111.Out", "box_SpawnAI_163.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_111_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_42();
    l0 = self.box_SpawnAI_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1410482361", "1410482361", "MIS_430_B40", "box_OutputOrder_v2_111.Out", "box_SpawnAI_42.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_111_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_164();
    l0 = self.box_SpawnAI_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2028703750", "2028703750", "MIS_430_B40", "box_OutputOrder_v2_111.Out", "box_SpawnAI_164.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_208_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_244();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|993287558", "993287558", "MIS_430_B40", "box_OutputOrder_v2_208.Out", "box_IsEntityInGroup_244.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_208_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_27();
    l0 = self.box_Gate_v3_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2113931064", "2113931064", "MIS_430_B40", "box_OutputOrder_v2_208.Out", "box_Gate_v3_27.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_208_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_245();
    l0 = self.box_Delay_v5_245;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|681681691", "681681691", "MIS_430_B40", "box_OutputOrder_v2_208.Out", "box_Delay_v5_245.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PawnInvincibleState_v2_310_OnUnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_110();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1892612284", "1892612284", "MIS_430_B40", "box_PawnInvincibleState_v2_310.OnUnSet", "box_ActivityEnd_110.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|241619728", "241619728", "MIS_430_B40", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|366410880", "366410880", "MIS_430_B40", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_166_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_160();
    l0 = self.box_Switch_166;
    l1 = self.box_SpawnAI_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|376510010", "376510010", "MIS_430_B40", "box_Switch_166.Output", "box_SpawnAI_160.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Switch_166_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_152();
    l0 = self.box_Switch_166;
    l1 = self.box_SpawnAI_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1174705325", "1174705325", "MIS_430_B40", "box_Switch_166.Output", "box_SpawnAI_152.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Switch_166_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_156();
    l0 = self.box_Switch_166;
    l1 = self.box_SpawnAI_156;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1184367528", "1184367528", "MIS_430_B40", "box_Switch_166.Output", "box_SpawnAI_156.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Switch_166_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_162();
    l0 = self.box_Switch_166;
    l1 = self.box_SpawnAI_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|341367678", "341367678", "MIS_430_B40", "box_Switch_166.Output", "box_SpawnAI_162.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Switch_166_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_167();
    l0 = self.box_Switch_166;
    l1 = self.box_SpawnAI_167;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|919936076", "919936076", "MIS_430_B40", "box_Switch_166.Output", "box_SpawnAI_167.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Switch_166_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_150();
    l0 = self.box_Switch_166;
    l1 = self.box_SpawnAI_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|971926189", "971926189", "MIS_430_B40", "box_Switch_166.Output", "box_SpawnAI_150.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Switch_166_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_165();
    l0 = self.box_Switch_166;
    l1 = self.box_SpawnAI_165;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2056875253", "2056875253", "MIS_430_B40", "box_Switch_166.Output", "box_SpawnAI_165.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Switch_166_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_155();
    l0 = self.box_Switch_166;
    l1 = self.box_SpawnAI_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|49815787", "49815787", "MIS_430_B40", "box_Switch_166.Output", "box_SpawnAI_155.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Switch_166_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_169();
    l0 = self.box_Switch_166;
    l1 = self.box_SpawnAI_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|761601356", "761601356", "MIS_430_B40", "box_Switch_166.Output", "box_SpawnAI_169.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_126_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_62();
    l0 = self.box_Delay_v5_126;
    l1 = self.box_MIS_430_BarrelCatapult_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1520150179", "1520150179", "MIS_430_B40", "box_Delay_v5_126.TimeElapsed", "box_MIS_430_BarrelCatapult_62.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_36_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1474178592", "1474178592", "MIS_430_B40", "box_ParticleSystem_v3_36.Started", "box_Delay_v5_41.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_159();
    l0 = self.box_MultipleOR_53;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1887617786", "1887617786", "MIS_430_B40", "box_MultipleOR_53.Out", "box_OutputOrder_v2_159.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_301_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_302();
    l0 = self.box_Gate_v3_301;
    l1 = self.box_PlayDialog_v6_302;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|407456707", "407456707", "MIS_430_B40", "box_Gate_v3_301.Out", "box_PlayDialog_v6_302.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_323_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_323;
    l1 = self.box_OnceOnly_v3_324;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1536327629", "1536327629", "MIS_430_B40", "box_MultipleOR_323.Out", "box_OnceOnly_v3_324.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionBlockLayer_122_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_89();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|319724574", "319724574", "MIS_430_B40", "box_MissionBlockLayer_122.Disabled", "box_MissionBlockLayer_89.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_430_BarrelCatapult_62_Launched()
    local l0, l1;
    l0 = self.box_MIS_430_BarrelCatapult_62;
    l1 = self.box_MultipleOR_225;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|313561456", "313561456", "MIS_430_B40", "box_MIS_430_BarrelCatapult_62.Launched", "box_MultipleOR_225.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetContextualStrategy_288_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_281();
    l0 = self.box_ProximityTrigger_v3_281;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1923012569", "1923012569", "MIS_430_B40", "box_SetContextualStrategy_288.Out", "box_ProximityTrigger_v3_281.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_99();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2033477214", "2033477214", "MIS_430_B40", "box_OutputOrder_v2_45.Out", "box_IsEntityLoaded_v3_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_97();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1335875972", "1335875972", "MIS_430_B40", "box_OutputOrder_v2_45.Out", "box_IsEntityLoaded_v3_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_16();
    l0 = self.box_ExitZoneWarningListener_v3_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1157140760", "1157140760", "MIS_430_B40", "box_OutputOrder_v2_45.Out", "box_ExitZoneWarningListener_v3_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MIS_430_SteamTrap_88_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_88_Activated();
    params = self:OnEnter_box_Simple_Node_252();
    l0 = self.box_MIS_430_SteamTrap_88;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1375227865", "1375227865", "MIS_430_B40", "box_MIS_430_SteamTrap_88.Activated", "box_Simple_Node_252.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_88_Active()
    self:OnExit_box_MIS_430_SteamTrap_88_Active();
end;

function export:f_box_MIS_430_SteamTrap_88_Inactive()
    self:OnExit_box_MIS_430_SteamTrap_88_Inactive();
end;

function export:f_box_MIS_430_SteamTrap_88_Out()
    self:OnExit_box_MIS_430_SteamTrap_88_Out();
end;

function export:f_box_IsEntityLoaded_v3_30_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_98();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1850195092", "1850195092", "MIS_430_B40", "box_IsEntityLoaded_v3_30.True", "box_Simple_Node_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_209_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_209;
    l1 = self.box_PhoneCallExclusivityModifier_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|390575069", "390575069", "MIS_430_B40", "box_RequestPhoneCall_v2_209.Completed", "box_PhoneCallExclusivityModifier_60.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_OnceOnly_v3_72_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_125();
    l0 = self.box_OnceOnly_v3_72;
    l1 = self.box_DisplayCustomUIMsg_v5_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1830362710", "1830362710", "MIS_430_B40", "box_OnceOnly_v3_72.Out", "box_DisplayCustomUIMsg_v5_125.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_RequestPhoneCall_v2_211_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_211;
    l1 = self.box_PhoneCallExclusivityModifier_243;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1646657064", "1646657064", "MIS_430_B40", "box_RequestPhoneCall_v2_211.Completed", "box_PhoneCallExclusivityModifier_243.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_RequestPhoneCall_v2_229_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_229;
    l1 = self.box_PhoneCallExclusivityModifier_231;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|990025439", "990025439", "MIS_430_B40", "box_RequestPhoneCall_v2_229.Completed", "box_PhoneCallExclusivityModifier_231.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_SpawnAI_Wave_v2_64_LastWave_Cleanup()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_119();
    l0 = self.box_SpawnAI_Wave_v2_64;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1591012303", "1591012303", "MIS_430_B40", "box_SpawnAI_Wave_v2_64.LastWave_Cleanup", "box_Simple_Node_119.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_153_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_149();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|207461963", "207461963", "MIS_430_B40", "box_Compare_Integers_153.A_le_B", "box_OutputOrder_v2_149.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_324_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_161();
    l0 = self.box_OnceOnly_v3_324;
    l1 = self.box_MultipleAND_v2_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|436197414", "436197414", "MIS_430_B40", "box_OnceOnly_v3_324.Out", "box_MultipleAND_v2_161.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_OutputOrder_v2_147_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_134();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|665324110", "665324110", "MIS_430_B40", "box_OutputOrder_v2_147.Out", "box_Simple_Node_134.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_147_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_141();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1348024449", "1348024449", "MIS_430_B40", "box_OutputOrder_v2_147.Out", "box_Simple_Node_141.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_177_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_177_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_143();
    l0 = self.box_Delay_v5_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1742871387", "1742871387", "MIS_430_B40", "box_RandomFloat_v2_177.Out", "box_Delay_v5_143.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PhoneCallExclusivityModifier_206_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_204();
    l0 = self.box_PhoneCallExclusivityModifier_206;
    l1 = self.box_RequestPhoneCall_v2_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1663005907", "1663005907", "MIS_430_B40", "box_PhoneCallExclusivityModifier_206.Enabled", "box_RequestPhoneCall_v2_204.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_123_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_25();
    l0 = self.box_Delay_v5_123;
    l1 = self.box_MIS_430_BarrelCatapult_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|121635010", "121635010", "MIS_430_B40", "box_Delay_v5_123.TimeElapsed", "box_MIS_430_BarrelCatapult_25.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_70();
    l0 = self.box_Delay_v5_17;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|249414476", "249414476", "MIS_430_B40", "box_Delay_v5_17.TimeElapsed", "box_Simple_Node_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_294_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_35();
    l0 = self.box_MultipleOR_294;
    l1 = self.box_Gate_v3_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1241147190", "1241147190", "MIS_430_B40", "box_MultipleOR_294.Out", "box_Gate_v3_35.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_308_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_309();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|376303942", "376303942", "MIS_430_B40", "box_OutputOrder_v2_308.Out", "box_Simple_Node_309.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_308_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_52();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1299803989", "1299803989", "MIS_430_B40", "box_OutputOrder_v2_308.Out", "box_ActivityRetry_v2_52.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_302_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_302;
    l1 = self.box_MultipleOR_300;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1005547608", "1005547608", "MIS_430_B40", "box_PlayDialog_v6_302.Finished", "box_MultipleOR_300.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RandomFloat_v2_173_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_173_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_123();
    l0 = self.box_Delay_v5_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|232752743", "232752743", "MIS_430_B40", "box_RandomFloat_v2_173.Out", "box_Delay_v5_123.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_84_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_85();
    l0 = self.box_MultipleOR_84;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1202518121", "1202518121", "MIS_430_B40", "box_MultipleOR_84.Out", "box_Print_v2_85.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_39_Enabled()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_39_Enabled();
    l0 = self.box_GroupSizeListener_v6_39;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1083324353", "1083324353", "MIS_430_B40", "box_GroupSizeListener_v6_39.Enabled", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_39_MemberAdded()
    self:OnExit_box_GroupSizeListener_v6_39_MemberAdded();
end;

function export:f_box_GroupSizeListener_v6_39_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_39_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_39_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_39_MemberRemoved();
    l0 = self.box_GroupSizeListener_v6_39;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|768326329", "768326329", "MIS_430_B40", "box_GroupSizeListener_v6_39.MemberRemoved", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v6_39_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_39_MemberSpawned();
end;

function export:f_box_Gate_v3_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_132();
    l0 = self.box_Gate_v3_50;
    l1 = self.box_CharacterLoadedIdListener_v2_132;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|457025532", "457025532", "MIS_430_B40", "box_Gate_v3_50.Out", "box_CharacterLoadedIdListener_v2_132.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetActivityObjectiveProgress_v2_328_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_207();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1463266509", "1463266509", "MIS_430_B40", "box_SetActivityObjectiveProgress_v2_328.Out", "box_OutputOrder_v2_207.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_223_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_179();
    l0 = self.box_PhoneCallExclusivityModifier_223;
    l1 = self.box_Delay_v5_179;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2098366794", "2098366794", "MIS_430_B40", "box_PhoneCallExclusivityModifier_223.Disabled", "box_Delay_v5_179.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MIS_430_BarrelCatapult_74_Launched()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_177();
    l0 = self.box_MIS_430_BarrelCatapult_74;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|215829284", "215829284", "MIS_430_B40", "box_MIS_430_BarrelCatapult_74.Launched", "box_RandomFloat_v2_177.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_264_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_226();
    l0 = self.box_PhoneCallExclusivityModifier_264;
    l1 = self.box_RequestPhoneCall_v2_226;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|604758052", "604758052", "MIS_430_B40", "box_PhoneCallExclusivityModifier_264.Enabled", "box_RequestPhoneCall_v2_226.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_194_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_196();
    l0 = self.box_Delay_v5_194;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|385257428", "385257428", "MIS_430_B40", "box_Delay_v5_194.TimeElapsed", "box_ParticleSystem_v3_196.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_198_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_197();
    l0 = self.box_Delay_v5_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|359332851", "359332851", "MIS_430_B40", "box_ParticleSystem_v3_198.Started", "box_Delay_v5_197.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_48_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_94();
    l0 = self.box_StaticBreakableListener_48;
    l1 = self.box_Delay_v5_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|742636547", "742636547", "MIS_430_B40", "box_StaticBreakableListener_48.Enabled", "box_Delay_v5_94.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_48_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_48;
    l1 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|534320623", "534320623", "MIS_430_B40", "box_StaticBreakableListener_48.OnBreak", "box_MultipleOR_90.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableListener_48_OnDamage()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_139();
    l0 = self.box_StaticBreakableListener_48;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1113707329", "1113707329", "MIS_430_B40", "box_StaticBreakableListener_48.OnDamage", "box_Simple_Node_139.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_234_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_234;
    l1 = self.box_PhoneCallExclusivityModifier_233;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|848679421", "848679421", "MIS_430_B40", "box_RequestPhoneCall_v2_234.Completed", "box_PhoneCallExclusivityModifier_233.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_46_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_19();
    l0 = self.box_Delay_v5_46;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2123510493", "2123510493", "MIS_430_B40", "box_Delay_v5_46.TimeElapsed", "box_ParticleSystem_v3_19.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_128_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_125();
    l0 = self.box_Delay_v5_128;
    l1 = self.box_DisplayCustomUIMsg_v5_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|468865705", "468865705", "MIS_430_B40", "box_Delay_v5_128.TimeElapsed", "box_DisplayCustomUIMsg_v5_125.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_220_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetContextualStrategyUniqueGroup_217();
    l0 = self.box_OnceOnly_v3_220;
    l1 = Boxes[GetPathID("Domino/System/AI/GetContextualStrategyUniqueGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|448862069", "448862069", "MIS_430_B40", "box_OnceOnly_v3_220.Out", "box_GetContextualStrategyUniqueGroup_217.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_69();
    l0 = self.box_MultipleAND_v2_31;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|222383374", "222383374", "MIS_430_B40", "box_MultipleAND_v2_31.Out", "box_Simple_Node_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_115_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_115_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_116();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|868343780", "868343780", "MIS_430_B40", "box_GetPlayerGroup_v2_115.Out", "box_IsEntityInGroup_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_248_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_249();
    l0 = self.box_PhoneCallExclusivityModifier_248;
    l1 = self.box_RequestPhoneCall_v2_249;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|617080074", "617080074", "MIS_430_B40", "box_PhoneCallExclusivityModifier_248.Enabled", "box_RequestPhoneCall_v2_249.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MIS_430_CarAlarm_40_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_MIS_430_CarAlarm_40;
    l1 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1833497965", "1833497965", "MIS_430_B40", "box_MIS_430_CarAlarm_40.Ended", "box_Delay_v5_29.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_274_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_278();
    l0 = self.box_Delay_v5_274;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1982978769", "1982978769", "MIS_430_B40", "box_Delay_v5_274.TimeElapsed", "box_Simple_Node_278.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_202_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_280();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1639149112", "1639149112", "MIS_430_B40", "box_OutputOrder_v2_202.Out", "box_Simple_Node_280.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_202_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_104();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|268948100", "268948100", "MIS_430_B40", "box_OutputOrder_v2_202.Out", "box_Simple_Node_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_253_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_254();
    l0 = self.box_PhoneCallExclusivityModifier_253;
    l1 = self.box_RequestPhoneCall_v2_254;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|377747162", "377747162", "MIS_430_B40", "box_PhoneCallExclusivityModifier_253.Enabled", "box_RequestPhoneCall_v2_254.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_303_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_301();
    l0 = self.box_Delay_v5_303;
    l1 = self.box_Gate_v3_301;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1435346175", "1435346175", "MIS_430_B40", "box_Delay_v5_303.TimeElapsed", "box_Gate_v3_301.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MIS_430_SteamTrap_37_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_37_Activated();
    params = self:OnEnter_box_Simple_Node_252();
    l0 = self.box_MIS_430_SteamTrap_37;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1054435670", "1054435670", "MIS_430_B40", "box_MIS_430_SteamTrap_37.Activated", "box_Simple_Node_252.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_37_Active()
    self:OnExit_box_MIS_430_SteamTrap_37_Active();
end;

function export:f_box_MIS_430_SteamTrap_37_Inactive()
    self:OnExit_box_MIS_430_SteamTrap_37_Inactive();
end;

function export:f_box_MIS_430_SteamTrap_37_Out()
    self:OnExit_box_MIS_430_SteamTrap_37_Out();
end;

function export:f_box_Delay_v5_78_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_79();
    l0 = self.box_Delay_v5_78;
    l1 = self.box_MIS_430_BarrelCatapult_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|333554226", "333554226", "MIS_430_B40", "box_Delay_v5_78.TimeElapsed", "box_MIS_430_BarrelCatapult_79.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_PhoneCallExclusivityModifier_224_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_222();
    l0 = self.box_PhoneCallExclusivityModifier_224;
    l1 = self.box_RequestPhoneCall_v2_222;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|940340675", "940340675", "MIS_430_B40", "box_PhoneCallExclusivityModifier_224.Enabled", "box_RequestPhoneCall_v2_222.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_9_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_9;
    l1 = self.box_PhoneCallExclusivityModifier_253;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1218667144", "1218667144", "MIS_430_B40", "box_MultipleOR_9.Out", "box_PhoneCallExclusivityModifier_253.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_OnceOnly_v3_66_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_OnceOnly_v3_66;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1298111042", "1298111042", "MIS_430_B40", "box_OnceOnly_v3_66.Out", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_319_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_319;
    l1 = self.box_OnceOnly_v3_320;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|706474045", "706474045", "MIS_430_B40", "box_MultipleOR_319.Out", "box_OnceOnly_v3_320.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetContextualStrategy_287_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_285();
    l0 = self.box_ProximityTrigger_v3_285;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1702964415", "1702964415", "MIS_430_B40", "box_SetContextualStrategy_287.Out", "box_ProximityTrigger_v3_285.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_251_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_271();
    l0 = self.box_Gate_v3_251;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1768767127", "1768767127", "MIS_430_B40", "box_Gate_v3_251.Out", "box_OutputOrder_v2_271.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_189_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_36();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|276834523", "276834523", "MIS_430_B40", "box_OutputOrder_v2_189.Out", "box_ParticleSystem_v3_36.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_189_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_188();
    l0 = self.box_Delay_v5_188;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|726131406", "726131406", "MIS_430_B40", "box_OutputOrder_v2_189.Out", "box_Delay_v5_188.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_197_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_199();
    l0 = self.box_Delay_v5_197;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|29299586", "29299586", "MIS_430_B40", "box_Delay_v5_197.TimeElapsed", "box_ParticleSystem_v3_199.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_271_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_236();
    l0 = self.box_Random_236;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|320106237", "320106237", "MIS_430_B40", "box_OutputOrder_v2_271.Out", "box_Random_236.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_271_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_279();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|353205559", "353205559", "MIS_430_B40", "box_OutputOrder_v2_271.Out", "box_Simple_Node_279.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_271_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_274();
    l0 = self.box_Delay_v5_274;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|965447655", "965447655", "MIS_430_B40", "box_OutputOrder_v2_271.Out", "box_Delay_v5_274.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_321_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_321;
    l1 = self.box_OnceOnly_v3_322;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2033870007", "2033870007", "MIS_430_B40", "box_MultipleOR_321.Out", "box_OnceOnly_v3_322.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RandomFloat_v2_178_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_178_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_78();
    l0 = self.box_Delay_v5_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2066502423", "2066502423", "MIS_430_B40", "box_RandomFloat_v2_178.Out", "box_Delay_v5_78.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_191_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_192();
    l0 = self.box_Delay_v5_192;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1835878470", "1835878470", "MIS_430_B40", "box_ParticleSystem_v3_191.Started", "box_Delay_v5_192.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_181_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_190();
    l0 = self.box_Delay_v5_190;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1575511917", "1575511917", "MIS_430_B40", "box_ParticleSystem_v3_181.Started", "box_Delay_v5_190.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetContextualStrategy_286_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_287();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1333826458", "1333826458", "MIS_430_B40", "box_SetContextualStrategy_286.Out", "box_SetContextualStrategy_287.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_47();
    l0 = self.box_MultipleOR_26;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1599283885", "1599283885", "MIS_430_B40", "box_MultipleOR_26.Out", "box_Compare_Integers_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_163_Fail()
    local l0, l1;
    l0 = self.box_SpawnAI_163;
    l1 = self.box_MultipleOR_319;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2132393843", "2132393843", "MIS_430_B40", "box_SpawnAI_163.Fail", "box_MultipleOR_319.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_163_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_163;
    l1 = self.box_MultipleOR_319;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1645285547", "1645285547", "MIS_430_B40", "box_SpawnAI_163.Spawned", "box_MultipleOR_319.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@FailedObjA");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_103_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@FailedObjB");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_104_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_252()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_252");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_ActivatedTrap_Bark");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_252_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_ActivateTrapsTurbine_A");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_140_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_ActivateTrapsTurbine_B");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_135_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_ActivateWarning");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_139_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_CarAlarms");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_68_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_Catapult");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_70_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_DeactivateTrapsTurbine_A");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_136_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_DeactivateTrapsTurbine_B");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_134_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_DisableListener_A");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_137_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_DisableListener_B");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_141_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_End_Success_B40");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_118_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_Flares_B40");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_201_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_279()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_279");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_NoBarksShouldPlay");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_279_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_Pumps Destroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_69_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_Setup_3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_114_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_SharkyCanSayLine");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_98_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_280()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_280");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_SoundLosingTurbines");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_280_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_StartSetup_B40");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_61_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_278()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_278");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_StartSharkyBarksAgain");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_278_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_309()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_309");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_StopMusic");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_309_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_283()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_283");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_TruckInTrigger");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_283_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@n_WaveCleanup_B40");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_119_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@nCatapult_Style2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_80_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|@StopListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_170_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|7496995");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_172_Out,
    });
    params = {
        -- Max,
        [0] = 25,
        -- Min,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_299()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|57679736");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_18_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_430_B40_b_OBJ_Defend",
            id = "962628",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Defend_Object_CORE_v3_54()
    local params;
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- DisplayObjectHealthBar,
        [1] = true,
        -- Entities_Group,
        [2] = "#57251069",
        -- Entity_Single,
        [3] = "2106663202673672012",
        -- IsGroup,
        [4] = false,
        -- IsVehicle,
        [5] = false,
        -- MinimumIntactRequired,
        [6] = 1,
        -- Objective,
        [7] = {
            section = "Objectives",
            item = "MIS_430_B40_a_OBJ_Defend",
            id = "962627",
        },
        -- ObjectiveMarker,
        [8] = "2106663239891828559",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_245()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_314()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_314");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|87568017");
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
                [0] = self.f_box_OutputOrder_v2_314_Out_0,
                [1] = self.f_box_OutputOrder_v2_314_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|97400793");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_187_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108901661316493252",
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_16()
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

function export:OnEnter_box_RequestPhoneCall_v2_266()
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

function export:OnEnter_box_Random_289()
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

function export:OnEnter_box_IsEntityLoaded_v3_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|143009867");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_214_True,
    });
    params = {
        -- entityId,
        [0] = "2106648218036093307",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_298()
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

function export:OnEnter_box_RequestPhoneCall_v2_265()
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

function export:OnEnter_box_Delay_v5_41()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BombPlant_57()
    local params;
    params = {
        -- BombUI Loc,
        [0] = "2109744378292496602",
        -- C4,
        [1] = "2109743833995569280",
        -- Cooldown,
        [2] = 5,
        -- Loot_STP,
        [4] = "2109744779448293663",
        -- ObjMarker,
        [5] = "2109746608668167029",
        -- SoundPoint_Bomb,
        [6] = "2109743877320632467",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_259()
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

function export:OnEnter_box_EndActivityObjective_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|171592132");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_63_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_430_B40_a_OBJ_Defend",
            id = "962627",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_21()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 50,
    };
    return params;
end;

function export:OnEnter_box_Brick_Defend_Object_CORE_v3_12()
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
            item = "MIS_430_B40_b_OBJ_Defend",
            id = "962628",
        },
        -- ObjectiveMarker,
        [8] = "2106665324072944910",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_143()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|220663424");
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

function export:OnEnter_box_StaticBreakableListener_44()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2106663202673672012",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|249435907");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
                [2] = self.f_box_OutputOrder_v2_28_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_162()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108820997823044615",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_55()
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

function export:OnEnter_box_OutputOrder_v2_290()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_290");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|291572182");
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
                [0] = self.f_box_OutputOrder_v2_290_Out_0,
                [1] = self.f_box_OutputOrder_v2_290_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|299092112");
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
                [0] = self.f_box_OutputOrder_v2_207_Out_0,
                [1] = self.f_box_OutputOrder_v2_207_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|305265865");
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
                [0] = self.f_box_OutputOrder_v2_83_Out_0,
                [1] = self.f_box_OutputOrder_v2_83_Out_1,
                [2] = self.f_box_OutputOrder_v2_83_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_65()
    local params;
    params = {
        -- Amplitude,
        [0] = 2000,
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
        [6] = "2106799928970853742",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|345507574");
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
                [0] = self.f_box_OutputOrder_v2_221_Out_0,
                [1] = self.f_box_OutputOrder_v2_221_Out_1,
                [2] = self.f_box_OutputOrder_v2_221_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_318()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_241()
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

function export:OnEnter_box_ActivityRetry_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|384321808");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Fail",
            item = "MIS_430_SharkyDied",
            id = "1028694",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_94()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|393699933");
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
        [8] = "Wave 6  should spawn",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Random_250()
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

function export:OnEnter_box_SpawnAI_164()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2106843360724530953",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_91()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_307()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_307");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|440775403");
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
                [0] = self.f_box_OutputOrder_v2_307_Out_0,
                [1] = self.f_box_OutputOrder_v2_307_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_215()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_182()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|452423407");
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
                [0] = self.f_box_OutputOrder_v2_77_Out_0,
                [1] = self.f_box_OutputOrder_v2_77_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_249()
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

function export:OnEnter_box_Delay_v5_59()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_317()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_317");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|484700920");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160300303949546",
        -- missionLayerId,
        [1] = "27160322997520503",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|500836187");
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

function export:OnEnter_box_Delay_v5_195()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_71()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#EBA442B1",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_79()
    local params;
    params = {
        -- Amplitude,
        [0] = 2200,
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

function export:OnEnter_box_AddActivityObjective_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|541915266");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_24_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_430_B20_c_OBJ_Prevent",
            id = "960700",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_204()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3746691003",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|555249906");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_38_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_38_True,
    });
    params = {
        -- entityId,
        [0] = "2106663202673672012",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_144()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_150()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108821089399381564",
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

function export:OnEnter_box_IsEntityLoaded_v3_313()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_313");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|605598155");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_313_True,
    });
    params = {
        -- entityId,
        [0] = "2106663202673672012",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|608124290");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_97_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_97_True,
    });
    params = {
        -- entityId,
        [0] = "2106649748548098372",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_10()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109743833995569280",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_218()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|616231359");
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
                [0] = self.f_box_OutputOrder_v2_218_Out_0,
                [1] = self.f_box_OutputOrder_v2_218_Out_1,
                [2] = self.f_box_OutputOrder_v2_218_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|624869759");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_51_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2106802092837440360",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_228()
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

function export:OnEnter_box_RequestPhoneCall_v2_273()
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

function export:OnEnter_box_ParticleSystem_v3_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|647666994");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_212_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108929078127000500",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|650576215");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_99_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_99_True,
    });
    params = {
        -- entityId,
        [0] = "2106663202673672012",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_121()
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

function export:OnEnter_box_GroupSizeListener_v6_86()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#EBA442B1",
    };
    return params;
end;

function export:OnEnter_box_Random_236()
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

function export:OnEnter_box_MIS_430_BarrelCatapult_75()
    local params;
    params = {
        -- Amplitude,
        [0] = 1500,
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

function export:OnEnter_box_Delay_v5_179()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_14()
    local params;
    params = {
        -- Amplitude,
        [0] = 2000,
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
        [6] = "2106799926588489062",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|696529209");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_47_A_le_B,
    });
    params = {
        -- A,
        [0] = self.i_attackersLeft,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_312()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_312");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|696983066");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_312_True,
    });
    params = {
        -- entityId,
        [0] = "2106649748548098372",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|710716637");
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

function export:OnEnter_box_Gate_v3_43()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_145()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|727850692");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_108_A_le_B,
    });
    params = {
        -- A,
        [0] = self.i_attackersLeft,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|784750978");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_130_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "54181906786865724",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|790701476");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|791232799");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_158_True,
    });
    params = {
        -- entityId,
        [0] = "2109016473266606925",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|799560474");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
                [2] = self.f_box_OutputOrder_v2_56_Out_2,
                [3] = self.f_box_OutputOrder_v2_56_Out_3,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_35()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_27()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|840841173");
    l0:SetConnections({
        -- OnUnSet,
        [1] = self.f_box_PawnInvincibleState_v2_20_OnUnSet,
    });
    l0 = self.box_CharacterLoadedIdListener_v2_132;
    params = {
        -- Pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|844875580");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_112_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_430_B20_c_OBJ_Prevent",
            id = "960700",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|845375800");
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
                [0] = self.f_box_OutputOrder_v2_149_Out_0,
                [1] = self.f_box_OutputOrder_v2_149_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_272()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "83442243",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|853836792");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
                [2] = self.f_box_OutputOrder_v2_34_Out_2,
                [3] = self.f_box_OutputOrder_v2_34_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_430_CarAlarm_23()
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

function export:OnEnter_box_ActivityEnd_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|869245916");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_325()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_325");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|873494448");
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
                [0] = self.f_box_OutputOrder_v2_325_Out_0,
                [1] = self.f_box_OutputOrder_v2_325_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_263()
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

function export:OnEnter_box_SetActivityObjectiveProgress_v2_327()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_327");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|877363679");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_327_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_430_B40_b_OBJ_Defend",
            id = "962628",
        },
        -- Progress,
        [1] = 0,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_7()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 1,
        -- AttackerSpawner_1,
        [1] = "2108820701902312734",
        -- CoreNPCGroup,
        [2] = "#EBA442B1",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2106706904328752435",
        -- opt_AttackerSpawner_3,
        [6] = "2109015024690293679",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_120()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|917237854");
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
                [0] = self.f_box_OutputOrder_v2_159_Out_0,
                [1] = self.f_box_OutputOrder_v2_159_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_226()
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

function export:OnEnter_box_MultipleAND_v2_161()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_188()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|950858849");
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
                [0] = self.f_box_OutputOrder_v2_180_Out_0,
                [1] = self.f_box_OutputOrder_v2_180_Out_1,
                [2] = self.f_box_OutputOrder_v2_180_Out_2,
                [3] = self.f_box_OutputOrder_v2_180_Out_3,
                [4] = self.f_box_OutputOrder_v2_180_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_238()
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

function export:OnEnter_box_RandomFloat_v2_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|958354640");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_174_Out,
    });
    params = {
        -- Max,
        [0] = 25,
        -- Min,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|998153204");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_116_True,
    });
    params = {
        -- Entity,
        [0] = self.e_TrapUser,
        -- Group,
        [1] = self._sld_PlayerGroup_box_GetPlayerGroup_v2_115,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|999573528");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_19_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2106802093930056554",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_281()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "2109015426930343564",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109015742828548433",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1023030298");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2106706858717793367",
        -- Group,
        [1] = self.g_WestCoverAttackers,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_254()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1432986668",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_109()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#EBA442B1",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_167()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108821042572074293",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1045445774");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_193_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108901726160433139",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_117()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015196386540318",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_239()
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

function export:OnEnter_box_MIS_430_SteamTrap_96()
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

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1057132583");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
                [3] = self.f_box_OutputOrder_v2_5_Out_3,
                [4] = self.f_box_OutputOrder_v2_5_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1086606619");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_101_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "27160309022500288",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1088455155");
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
                [0] = self.f_box_OutputOrder_v2_200_Out_0,
                [1] = self.f_box_OutputOrder_v2_200_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_186()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_132()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015196386540318",
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_125()
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

function export:OnEnter_box_RequestPhoneCall_v2_256()
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

function export:OnEnter_box_Delay_v5_33()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_25()
    local params;
    params = {
        -- Amplitude,
        [0] = 1500,
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
        [6] = "2106801952598801815",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_292()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 200,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_297()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_169()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108821144489467751",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1151107475");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_176_Out,
    });
    params = {
        -- Max,
        [0] = 25,
        -- Min,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_316()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_316");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1178390457");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_430_B20_c_OBJ_Prevent",
            id = "960700",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1186549852");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_127_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "54181906786865724",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1198445847");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_93_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_93_True,
    });
    params = {
        -- entityId,
        [0] = "2106649748548098372",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BombPlant_151()
    local params;
    params = {
        -- BombUI Loc,
        [0] = "2109746513065298792",
        -- C4,
        [1] = "2109746519826516843",
        -- Cooldown,
        [2] = 5,
        -- Loot_STP,
        [4] = "2109746513056910176",
        -- ObjMarker,
        [5] = "2109746621022489469",
        -- SoundPoint_Bomb,
        [6] = "2109746524020820845",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_213()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_184()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_157()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1223620004");
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
                [0] = self.f_box_OutputOrder_v2_157_Out_0,
                [1] = self.f_box_OutputOrder_v2_157_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_42()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2106843354227553940",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1231849006");
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
        [8] = "Wave 5  should spawn",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_190()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_CarAlarm_49()
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

function export:OnEnter_box_CharacterLoadedIdListener_v2_311()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015196386540318",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1250607136");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_129_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "45174707532116349",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1253502052");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_168_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.i_BombWaveLeft,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1257051510");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_175_Out,
    });
    params = {
        -- Max,
        [0] = 25,
        -- Min,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_165()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108821117220200174",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_285()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "2109015024707070908",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109015805961212309",
    };
    return params;
end;

function export:OnEnter_box_GetContextualStrategyUniqueGroup_217()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetContextualStrategyUniqueGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetContextualStrategyUniqueGroup_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1278423606");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetContextualStrategyUniqueGroup_217_Out,
    });
    params = {
        -- contextualStrategyId,
        [0] = "2107092544868341050",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1285993600");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_15_True,
    });
    params = {
        -- entityId,
        [0] = "2106663202673672012",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_73()
    local params;
    params = {
        -- Amplitude,
        [0] = 2000,
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

function export:OnEnter_box_ParticleSystem_v3_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1290637205");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_185_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108901645225045954",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_192()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1304562410");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_196_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108901773061140497",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_222()
    local params;
    params = {
        -- Delay,
        [2] = 0.5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2684522763",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_76()
    local params;
    params = {
        -- Amplitude,
        [0] = 2000,
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
        [6] = "2106799928970853742",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_95()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1357895953");
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
                [0] = self.f_box_OutputOrder_v2_124_Out_0,
                [1] = self.f_box_OutputOrder_v2_124_Out_1,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1381798129");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_89_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "36167508277255094",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_306()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_306");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1386223074");
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
                [0] = self.f_box_OutputOrder_v2_306_Out_0,
                [1] = self.f_box_OutputOrder_v2_306_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_282()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_282");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1389615713");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_282_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2106706858717793367",
        -- Group,
        [1] = "2109015426932440718",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1390142147");
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
                [0] = self.f_box_OutputOrder_v2_148_Out_0,
                [1] = self.f_box_OutputOrder_v2_148_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_244()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_244");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1398264076");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityInGroup_244_False,
        -- True,
        [1] = self.f_box_IsEntityInGroup_244_True,
    });
    params = {
        -- Entity,
        [0] = self.e_TrapUser,
        -- Group,
        [1] = "#EBA442B1",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1402575395");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_171_Out,
    });
    params = {
        -- Max,
        [0] = 25,
        -- Min,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_284()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_284");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1407603804");
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
                [0] = self.f_box_OutputOrder_v2_284_Out_0,
                [1] = self.f_box_OutputOrder_v2_284_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1411116047");
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
                [1] = self.f_box_OutputOrder_v2_111_Out_1,
                [2] = self.f_box_OutputOrder_v2_111_Out_2,
                [3] = self.f_box_OutputOrder_v2_111_Out_3,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1414172286");
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
                [0] = self.f_box_OutputOrder_v2_208_Out_0,
                [1] = self.f_box_OutputOrder_v2_208_Out_1,
                [2] = self.f_box_OutputOrder_v2_208_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_310()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_310");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1440422881");
    l0:SetConnections({
        -- OnUnSet,
        [1] = self.f_box_PawnInvincibleState_v2_310_OnUnSet,
    });
    l0 = self.box_CharacterLoadedIdListener_v2_311;
    params = {
        -- Pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Switch_166()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_126()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1467052035");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_36_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2106802090826271590",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1491029739");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_301()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1516366186");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_122_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "27160309022500288",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_62()
    local params;
    params = {
        -- Amplitude,
        [0] = 1500,
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

function export:OnEnter_box_SetContextualStrategy_288()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_288");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1535480379");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_288_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2106706858717793367",
        -- Group,
        [1] = "2109015426934537872",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1537522076");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
                [2] = self.f_box_OutputOrder_v2_45_Out_2,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_88()
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

function export:OnEnter_box_ParticleSystem_v3_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1539789343");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108901664432861126",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1544199522");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_30_True,
    });
    params = {
        -- entityId,
        [0] = "2106649748548098372",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_209()
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

function export:OnEnter_box_RequestPhoneCall_v2_211()
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

function export:OnEnter_box_RequestPhoneCall_v2_229()
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

function export:OnEnter_box_SpawnAI_Wave_v2_64()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2106706914067926531",
        -- CoreNPCGroup,
        [2] = "#EBA442B1",
        -- IsLastWave,
        [3] = true,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2109854761940436565",
        -- opt_AttackerSpawner_3,
        [6] = "2106706921011596925",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1599118802");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_153_A_le_B,
    });
    params = {
        -- A,
        [0] = self.i_BombWaveLeft,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1620148585");
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
                [0] = self.f_box_OutputOrder_v2_147_Out_0,
                [1] = self.f_box_OutputOrder_v2_147_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1629235066");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_177_Out,
    });
    params = {
        -- Max,
        [0] = 25,
        -- Min,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_123()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_17()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 60,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_308()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_308");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1685475515");
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
                [0] = self.f_box_OutputOrder_v2_308_Out_0,
                [1] = self.f_box_OutputOrder_v2_308_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_302()
    local params;
    params = {
        -- Group,
        [0] = "#771DDBD2",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "73237267",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1708267544");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_173_Out,
    });
    params = {
        -- Max,
        [0] = 25,
        -- Min,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_39()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#EBA442B1",
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1723494237");
    l0:SetConnections({
    });
    l0 = self.box_CharacterLoadedIdListener_v2_117;
    params = {
        -- Pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_50()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_328()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_328");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1752986084");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_328_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_430_B40_a_OBJ_Defend",
            id = "962627",
        },
        -- Progress,
        [1] = 0,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1757523902");
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
        [8] = "MIS_430_B40 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_74()
    local params;
    params = {
        -- Amplitude,
        [0] = 1500,
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
        [6] = "2106801952598801815",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_152()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108820899560987371",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_194()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1793041879");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_198_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108901773061140495",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_48()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2106649748548098372",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_234()
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

function export:OnEnter_box_SpawnAI_156()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108820978531343297",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_46()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_128()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_31()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1869252962");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_115_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_430_CarAlarm_40()
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

function export:OnEnter_box_Delay_v5_274()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1876002193");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108901773063237651",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1884790026");
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

function export:OnEnter_box_Delay_v5_303()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 60,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_37()
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

function export:OnEnter_box_Delay_v5_78()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_287()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_287");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|1984116658");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_287_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2106706858717793367",
        -- Group,
        [1] = "2109015077748239394",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_251()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_293()
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

function export:OnEnter_box_OutputOrder_v2_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2005162133");
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
                [0] = self.f_box_OutputOrder_v2_189_Out_0,
                [1] = self.f_box_OutputOrder_v2_189_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_160()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2106843363815733067",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_197()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_271()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_271");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2030304621");
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
                [0] = self.f_box_OutputOrder_v2_271_Out_0,
                [1] = self.f_box_OutputOrder_v2_271_Out_1,
                [2] = self.f_box_OutputOrder_v2_271_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2041680023");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_178_Out,
    });
    params = {
        -- Max,
        [0] = 25,
        -- Min,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2056738187");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_191_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108901726160433137",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_155()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108821135159238452",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2072543300");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_181_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108901726162530293",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_286()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_286");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B40.domino|@MIS_430_B40|2100034297");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_286_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2106706858717793367",
        -- Group,
        [1] = "2109015024707070908",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_13()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109746519826516843",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_163()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2106843350022764118",
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_172_Out()
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

function export:OnExit_box_GroupSizeListener_v6_71_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_71;
    self.i_BombWaveLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_71_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_71;
    self.i_BombWaveLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_71_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_71;
    self.i_BombWaveLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_71_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_71;
    self.i_BombWaveLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_71_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_71;
    self.i_BombWaveLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_MIS_430_SteamTrap_121_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_121;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_121_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_121;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_121_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_121;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_121_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_121;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_86_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_86;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_86_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_86;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_86_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_86;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_86_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_86;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_86_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_86;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_RandomFloat_v2_174_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self.f_RandomDelay_BarrelExplosion = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_109_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_109;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_109_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_109;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_109_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_109;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_109_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_109;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_109_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_109;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_MIS_430_SteamTrap_96_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_96;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_96_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_96;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_96_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_96;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_96_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_96;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_176_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self.f_RandomDelay_BarrelExplosion = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_175_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self.f_RandomDelay_BarrelExplosion = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetContextualStrategyUniqueGroup_217_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetContextualStrategyUniqueGroup.lua")];
    self.g_WestCoverAttackers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_171_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self.f_RandomDelay_BarrelExplosion = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_88_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_88;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_88_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_88;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_88_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_88;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_88_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_88;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_177_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self.f_RandomDelay_BarrelExplosion = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_173_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self.f_RandomDelay_BarrelExplosion = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_39_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_39;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_39_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_39;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_39_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_39;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_39_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_39;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_39_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_39;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPlayerGroup_v2_115_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self._sld_PlayerGroup_box_GetPlayerGroup_v2_115 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_37_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_37;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_37_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_37;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_37_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_37;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_37_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_37;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_178_Out()
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
