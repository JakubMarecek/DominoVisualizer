LUAC4M -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_430/mis_430_b20.domino
-- User graph: MIS_430_B20
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
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
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
        cboxRes:LoadResource([[325467589.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1194464466.bnk]], "CSoundResource");
        cboxRes:LoadResource([[525678938.bnk]], "CSoundResource");
        cboxRes:LoadResource([[entityarchetypeslibrary/9015347526960658.ark.fcb]], "CEntityArchetypeRes");
        cboxRes:LoadResource([[1989019435.bnk]], "CSoundResource");
        cboxRes:LoadResource([[371101532.bnk]], "CSoundResource");
        cboxRes:LoadResource([[459116608.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1643191144.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3584356036.bnk]], "CSoundResource");
        cboxRes:LoadResource([[612552477.bnk]], "CSoundResource");
        cboxRes:LoadResource([[214593656.bnk]], "CSoundResource");
        cboxRes:LoadResource([[236469685.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3730501160.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3800206316.bnk]], "CSoundResource");
        cboxRes:LoadResource([[622854505.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1844853098.bnk]], "CSoundResource");
        cboxRes:LoadResource([[614743414.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1966011895.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3527497638.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1186367769.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1854694784.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1694352214.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B20.MIS_430_B20.debug.lua")] = {
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
    self._name = "MIS_430_B20";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20";
    self.i_attackersLeft = 0;
    self.f_RandomDelay_BarrelExplosion = 0;
    self.g_WestCoverAttackers = nil;
    self.e_Sharky = nil;
    self.e_TrapUser = nil;
    self.gp_Players = nil;
    self.box_PhoneCallExclusivityModifier_224 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_224;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|10360432");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_186 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|38126209");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_186_Completed,
    });
    self.box_PhoneCallExclusivityModifier_194 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|43960878");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_189 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|47620299");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_189_Completed,
    });
    self.box_GroupSizeListener_v6_87 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|63052553");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_87_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_87_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_87_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_87_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_87_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_87_MemberSpawned,
    });
    self.box_PhoneCallExclusivityModifier_208 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|76607256");
    l0:SetConnections({
    });
    self.box_Delay_v5_96 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|78516361");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_96_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_185 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|134083353");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_185_Enabled,
    });
    self.box_ProximityTrigger_v3_85 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|142559591");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_85_Enter,
    });
    self.box_RequestPhoneCall_v2_173 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|143670898");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_173_Completed,
    });
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|168651972");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
    self.box_MultipleOR_202 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|170092202");
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
        [0] = self.f_box_MultipleOR_202_Out,
    });
    self.box_PhoneCallExclusivityModifier_16 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|198387649");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_16_Enabled,
    });
    self.box_MIS_430_BarrelCatapult_52 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|231282777");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_430_BarrelCatapult_52_Out,
    });
    self.box_RequestPhoneCall_v2_163 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|247359166");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_163_Completed,
    });
    self.box_PhoneCallExclusivityModifier_181 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|252847003");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_181_Enabled,
    });
    self.box_Delay_v5_53 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|266490141");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_53_TimeElapsed,
    });
    self.box_OnceOnly_v3_154 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|273317778");
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
                [0] = self.f_box_OnceOnly_v3_154_Out_0,
            },
            count = 3,
        },
    });
    self.box_PhoneCallExclusivityModifier_187 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|303873665");
    l0:SetConnections({
    });
    self.box_MIS_430_BarrelCatapult_28 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|317709138");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_28_Launched,
    });
    self.box_PhoneCallExclusivityModifier_47 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|382981577");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_47_Enabled,
    });
    self.box_PhoneCallExclusivityModifier_210 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|387609491");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_210_Enabled,
    });
    self.box_OnceOnly_v3_118 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|404928916");
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
                [0] = self.f_box_OnceOnly_v3_118_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_128 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|425076830");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_128_TimeElapsed,
    });
    self.box_Delay_v5_11 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|459432325");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_11_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_166 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|487941017");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_200 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|491051709");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_200_Completed,
    });
    self.box_MIS_430_BarrelCatapult_80 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|539735980");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_430_BarrelCatapult_80_Out,
    });
    self.box_Delay_v5_90 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|573233867");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_90_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_81 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|603419215");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_81_Completed,
    });
    self.box_MIS_430_BarrelCatapult_50 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|612730796");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_50_Launched,
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|616836309");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_188 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|621009290");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_188_Enabled,
    });
    self.box_Delay_v5_140 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|629012866");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_140_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_203 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|634862925");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_169 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|635039239");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_169_Completed,
    });
    self.box_PhoneCallExclusivityModifier_178 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|656827396");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_178_Enabled,
    });
    self.box_Delay_v5_27 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|659850838");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_27_TimeElapsed,
    });
    self.box_Delay_v5_46 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|707942263");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_46_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_182 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|727924899");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_182_Completed,
    });
    self.box_ProximityTrigger_v3_220 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|729124353");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_220_Enter,
    });
    self.box_PhoneCallExclusivityModifier_192 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|742143722");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_192_Enabled,
    });
    self.box_RequestPhoneCall_v2_183 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|778055361");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_183_Completed,
    });
    self.box_Delay_v5_226 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_226;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_226");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|797260046");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_226_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_39 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|801682850");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_39_Enabled,
    });
    self.box_Gate_v3_7 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|830384098");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_7_Out,
    });
    self.box_DisplayCustomUIMsg_v5_48 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|875842550");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_48_OnDisplay,
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v5_48_OnHide,
    });
    self.box_PhoneCallExclusivityModifier_209 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|899557514");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_209_Enabled,
    });
    self.box_MIS_430_SteamTrap_139 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|906474192");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_139_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_139_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_139_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_139_Out,
    });
    self.box_MultipleOR_64 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|909049280");
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
        [0] = self.f_box_MultipleOR_64_Out,
    });
    self.box_Gate_v3_143 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|935450907");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_143_Out,
    });
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|977572752");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_ExitZoneWarningListener_v3_66 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|981967981");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_66_FailingZoneEntered,
    });
    self.box_PhoneCallExclusivityModifier_212 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|990178569");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhoneCallExclusivityModifier_212_Disabled,
    });
    self.box_MIS_430_BarrelCatapult_78 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|999006303");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_78_Launched,
    });
    self.box_PhoneCallExclusivityModifier_190 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1002795239");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_148 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1024455187");
    l0:SetConnections({
    });
    self.box_MIS_430_BarrelCatapult_74 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1055255312");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_74_Launched,
    });
    self.box_Delay_v5_211 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1067081604");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_211_TimeElapsed,
    });
    self.box_Gate_v3_54 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1067457424");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_54_Out,
    });
    self.box_Delay_v5_76 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1097988641");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_76_TimeElapsed,
    });
    self.box_Gate_v3_13 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1125751859");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_13_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_13_Out,
    });
    self.box_PhoneCallExclusivityModifier_43 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1131504894");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_162 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1139225554");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_162_Enabled,
    });
    self.box_MIS_430_BarrelCatapult_77 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1145441803");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_77_Launched,
    });
    self.box_Delay_v5_127 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1156989262");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_127_TimeElapsed,
    });
    self.box_MIS_430_CarAlarm_32 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_CarAlarm.debug.lua");
    l0 = self.box_MIS_430_CarAlarm_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_CarAlarm_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1157625258");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_MIS_430_CarAlarm_32_Ended,
    });
    self.box_MultipleOR_88 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1178148090");
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
        [0] = self.f_box_MultipleOR_88_Out,
    });
    self.box_Brick_Defend_Object_CORE_v3_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Defend_Object.Brick_Defend_Object_CORE_v3.debug.lua");
    l0 = self.box_Brick_Defend_Object_CORE_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Defend_Object_CORE_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1181492814");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_Brick_Defend_Object_CORE_v3_15_Fail,
        -- Started,
        [1] = self.f_box_Brick_Defend_Object_CORE_v3_15_Started,
        -- Success,
        [2] = self.f_box_Brick_Defend_Object_CORE_v3_15_Success,
        -- Waves,
        [3] = self.f_box_Brick_Defend_Object_CORE_v3_15_Waves,
    });
    self.box_StaticBreakableListener_101 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1197352646");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_101_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_101_OnBreak,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_101_OnDamage,
    });
    self.box_Delay_v5_124 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1210544710");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_124_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_198 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1215801850");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_198_Enabled,
    });
    self.box_PhoneCallExclusivityModifier_175 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1230976076");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_175_Enabled,
    });
    self.box_Delay_v5_133 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1260378796");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_133_TimeElapsed,
    });
    self.box_Delay_v5_49 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1263470912");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_49_TimeElapsed,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1334165018");
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
    self.box_Delay_v5_59 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1340581191");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_59_TimeElapsed,
    });
    self.box_SpawnAI_Wave_v2_73 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1342672146");
    l0:SetConnections({
        -- LastWave_Cleanup,
        [1] = self.f_box_SpawnAI_Wave_v2_73_LastWave_Cleanup,
    });
    self.box_Delay_v5_138 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1346471321");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_138_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_171 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1348219531");
    l0:SetConnections({
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1353571243");
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
    self.box_Random_201 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1354737197");
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
                [0] = self.f_box_Random_201_Output_0,
                [1] = self.f_box_Random_201_Output_1,
                [2] = self.f_box_Random_201_Output_2,
                [3] = self.f_box_Random_201_Output_3,
                [4] = self.f_box_Random_201_Output_4,
                [5] = self.f_box_Random_201_Output_5,
                [6] = self.f_box_Random_201_Output_6,
                [7] = self.f_box_Random_201_Output_7,
            },
            count = 8,
        },
    });
    self.box_RequestPhoneCall_v2_40 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1356291052");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_40_Completed,
    });
    self.box_PlayDialog_v6_219 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1367137629");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_219_Finished,
    });
    self.box_RequestPhoneCall_v2_199 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1376362606");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_199_Completed,
    });
    self.box_StaticBreakableListener_55 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1387643208");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_55_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_55_OnBreak,
    });
    self.box_Delay_v5_36 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1393374869");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_36_TimeElapsed,
    });
    self.box_Delay_v5_21 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1401151422");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_21_TimeElapsed,
    });
    self.box_Gate_v3_227 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_227;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1404440051");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_227_Out,
    });
    self.box_RequestPhoneCall_v2_204 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1416890265");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_204_Completed,
    });
    self.box_RequestPhoneCall_v2_176 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1425324284");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_176_Completed,
    });
    self.box_Delay_v5_137 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1426366754");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_137_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_207 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1466986649");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_207_Enabled,
    });
    self.box_Random_25 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1473736984");
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
                [0] = self.f_box_Random_25_Output_0,
                [1] = self.f_box_Random_25_Output_1,
                [2] = self.f_box_Random_25_Output_2,
                [3] = self.f_box_Random_25_Output_3,
            },
            count = 4,
        },
    });
    self.box_MIS_430_SteamTrap_141 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1481424494");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_141_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_141_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_141_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_141_Out,
    });
    self.box_RequestPhoneCall_v2_197 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1483869376");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_197_Completed,
    });
    self.box_OnceOnly_v3_29 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1494278037");
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
                [0] = self.f_box_OnceOnly_v3_29_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_75 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1510672931");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_75_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_167 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1515063302");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_168 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1530291165");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhoneCallExclusivityModifier_168_Disabled,
    });
    self.box_CharacterLoadedIdListener_v2_98 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1531276923");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_98_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_98_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_98_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_98_LoadedIdReceived,
    });
    self.box_Delay_v5_45 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1534889250");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_45_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_205 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1567171386");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_205_Enabled,
    });
    self.box_PhoneCallExclusivityModifier_191 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1581119950");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_191_Enabled,
    });
    self.box_MIS_430_BarrelCatapult_38 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_BarrelCatapult.debug.lua");
    l0 = self.box_MIS_430_BarrelCatapult_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_BarrelCatapult_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1621445725");
    l0:SetConnections({
        -- Launched,
        [0] = self.f_box_MIS_430_BarrelCatapult_38_Launched,
    });
    self.box_PhoneCallExclusivityModifier_180 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1624107898");
    l0:SetConnections({
    });
    self.box_MultipleOR_228 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1653689548");
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
        [0] = self.f_box_MultipleOR_228_Out,
    });
    self.box_PhoneCallExclusivityModifier_51 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1658658475");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_196 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1666867494");
    l0:SetConnections({
    });
    self.box_MIS_430_CarAlarm_23 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_CarAlarm.debug.lua");
    l0 = self.box_MIS_430_CarAlarm_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_CarAlarm_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1682513572");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_MIS_430_CarAlarm_23_Ended,
    });
    self.box_RequestPhoneCall_v2_170 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1682580421");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_170_Completed,
    });
    self.box_RequestPhoneCall_v2_193 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1698796097");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_193_Completed,
    });
    self.box_Delay_v5_131 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1726216305");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_131_TimeElapsed,
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1754429789");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_Delay_v5_79 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1762483441");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_79_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_177 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1774022445");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_184 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1791321227");
    l0:SetConnections({
    });
    self.box_Delay_v5_135 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1794314323");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_135_TimeElapsed,
    });
    self.box_MIS_430_SteamTrap_146 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1804615606");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_146_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_146_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_146_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_146_Out,
    });
    self.box_MultipleOR_60 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1807481265");
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
        [0] = self.f_box_MultipleOR_60_Out,
    });
    self.box_OnceOnly_v3_157 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1823588933");
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
                [0] = self.f_box_OnceOnly_v3_157_Out_0,
            },
            count = 2,
        },
    });
    self.box_RequestPhoneCall_v2_195 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1844126787");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_195_Completed,
    });
    self.box_MIS_430_SteamTrap_142 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1854902694");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_142_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_142_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_142_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_142_Out,
    });
    self.box_MIS_430_CarAlarm_24 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_CarAlarm.debug.lua");
    l0 = self.box_MIS_430_CarAlarm_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_CarAlarm_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1859646560");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_MIS_430_CarAlarm_24_Ended,
    });
    self.box_PhoneCallExclusivityModifier_174 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1922959277");
    l0:SetConnections({
    });
    self.box_Delay_v5_97 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1945450442");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_97_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_206 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1971404313");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_206_Completed,
    });
    self.box_PhoneCallExclusivityModifier_165 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2021394626");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_165_Enabled,
    });
    self.box_RequestPhoneCall_v2_179 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2036409903");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_179_Completed,
    });
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2040107214");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box_PhoneCallExclusivityModifier_172 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2071587275");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_172_Enabled,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2090429219");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_Delay_v5_14 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2104653713");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_14_TimeElapsed,
    });
    self.box_SpawnAI_Wave_v2_84 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2108620470");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_84_NextWave,
    });
    self.box_RequestPhoneCall_v2_164 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2118686793");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_164_Completed,
    });
    self.box_OnceOnly_v3_160 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2130816228");
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
                [0] = self.f_box_OnceOnly_v3_160_Out_0,
            },
            count = 2,
        },
    });
    self.box_MIS_430_SteamTrap_26 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2133757850");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_26_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_26_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_26_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_26_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|318060646", "318060646", "MIS_430_B20", "In", "box_OutputOrder_v2_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_143();
    l0 = self.box_Gate_v3_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1606408314", "1606408314", "MIS_430_B20", "box_Simple_Node_33.Out", "box_Gate_v3_143.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_110_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_SteamTrap_26();
    l0 = self.box_MIS_430_SteamTrap_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|515886581", "515886581", "MIS_430_B20", "box_Simple_Node_110.Out", "box_MIS_430_SteamTrap_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_146();
    l0 = self.box_MIS_430_SteamTrap_146;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|715157572", "715157572", "MIS_430_B20", "box_Simple_Node_110.Out", "box_MIS_430_SteamTrap_146.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_139();
    l0 = self.box_MIS_430_SteamTrap_139;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|259496734", "259496734", "MIS_430_B20", "box_Simple_Node_110.Out", "box_MIS_430_SteamTrap_139.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_112_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_SteamTrap_141();
    l0 = self.box_MIS_430_SteamTrap_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1131910452", "1131910452", "MIS_430_B20", "box_Simple_Node_112.Out", "box_MIS_430_SteamTrap_141.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_142();
    l0 = self.box_MIS_430_SteamTrap_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|446144907", "446144907", "MIS_430_B20", "box_Simple_Node_112.Out", "box_MIS_430_SteamTrap_142.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_109_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|362243660", "362243660", "MIS_430_B20", "box_Simple_Node_109.Out", "box_OnceOnly_v3_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_71_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2054471398", "2054471398", "MIS_430_B20", "box_Simple_Node_71.Out", "box_OutputOrder_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_72_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_13();
    l0 = self.box_Gate_v3_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2053575642", "2053575642", "MIS_430_B20", "box_Simple_Node_72.Out", "box_Gate_v3_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_RandomFloat_v2_119();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1595753222", "1595753222", "MIS_430_B20", "box_Simple_Node_72.Out", "box_RandomFloat_v2_119.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_111_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_SteamTrap_139();
    l0 = self.box_MIS_430_SteamTrap_139;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1811434643", "1811434643", "MIS_430_B20", "box_Simple_Node_111.Out", "box_MIS_430_SteamTrap_139.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_26();
    l0 = self.box_MIS_430_SteamTrap_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1653855155", "1653855155", "MIS_430_B20", "box_Simple_Node_111.Out", "box_MIS_430_SteamTrap_26.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_146();
    l0 = self.box_MIS_430_SteamTrap_146;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|792603921", "792603921", "MIS_430_B20", "box_Simple_Node_111.Out", "box_MIS_430_SteamTrap_146.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_113_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_SteamTrap_142();
    l0 = self.box_MIS_430_SteamTrap_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1345997065", "1345997065", "MIS_430_B20", "box_Simple_Node_113.Out", "box_MIS_430_SteamTrap_142.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_141();
    l0 = self.box_MIS_430_SteamTrap_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|848490820", "848490820", "MIS_430_B20", "box_Simple_Node_113.Out", "box_MIS_430_SteamTrap_141.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_106_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_101();
    l0 = self.box_StaticBreakableListener_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1111922457", "1111922457", "MIS_430_B20", "box_Simple_Node_106.Out", "box_StaticBreakableListener_101.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_107_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_55();
    l0 = self.box_StaticBreakableListener_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1129489279", "1129489279", "MIS_430_B20", "box_Simple_Node_107.Out", "box_StaticBreakableListener_55.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_95_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|665910021", "665910021", "MIS_430_B20", "box_Simple_Node_95.Out", "box_EndActivityObjective_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_94_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_7();
    l0 = self.box_Gate_v3_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|868957", "868957", "MIS_430_B20", "box_Simple_Node_94.Out", "box_Gate_v3_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_229_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_228;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|533074259", "533074259", "MIS_430_B20", "box_Simple_Node_229.Out", "box_MultipleOR_228.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_92_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_22();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1564161135", "1564161135", "MIS_430_B20", "box_Simple_Node_92.Out", "box_ParticleSystem_v3_22.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_144_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_54();
    l0 = self.box_Gate_v3_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|524332892", "524332892", "MIS_430_B20", "box_Simple_Node_144.Out", "box_Gate_v3_54.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_69_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_11();
    l0 = self.box_Delay_v5_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|916383158", "916383158", "MIS_430_B20", "box_Simple_Node_69.Out", "box_Delay_v5_11.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Gate_v3_7();
    l0 = self.box_Gate_v3_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|794211501", "794211501", "MIS_430_B20", "box_Simple_Node_69.Out", "box_Gate_v3_7.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_222_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_221();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1539063499", "1539063499", "MIS_430_B20", "box_Simple_Node_222.Out", "box_OutputOrder_v2_221.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_70_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_104();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1715536683", "1715536683", "MIS_430_B20", "box_Simple_Node_70.Out", "box_OutputOrder_v2_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_216_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_37();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1333461596", "1333461596", "MIS_430_B20", "box_Simple_Node_216.Out", "box_IsEntityLoaded_v3_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_93_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1340354865", "1340354865", "MIS_430_B20", "box_Simple_Node_93.Out", "box_OutputOrder_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_145_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_54();
    l0 = self.box_Gate_v3_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1138474493", "1138474493", "MIS_430_B20", "box_Simple_Node_145.Out", "box_Gate_v3_54.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_215_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_148();
    l0 = self.box_Music_Quest_v2_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1257709149", "1257709149", "MIS_430_B20", "box_Simple_Node_215.Out", "box_Music_Quest_v2_148.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_227();
    l0 = self.box_Gate_v3_227;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|414625516", "414625516", "MIS_430_B20", "box_Simple_Node_10.Out", "box_Gate_v3_227.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Brick_Defend_Object_CORE_v3_15();
    l0 = self.box_Brick_Defend_Object_CORE_v3_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1933546884", "1933546884", "MIS_430_B20", "box_Simple_Node_10.Out", "box_Brick_Defend_Object_CORE_v3_15.LastWave_Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- LastWave_Cleanup
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_13();
    l0 = self.box_Gate_v3_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1389474048", "1389474048", "MIS_430_B20", "box_Simple_Node_10.Out", "box_Gate_v3_13.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_82_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_158();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|821409378", "821409378", "MIS_430_B20", "box_Simple_Node_82.Out", "box_OutputOrder_v2_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1248226725", "1248226725", "MIS_430_B20", "box_Simple_Node_82.Out", "box_Delay_v5_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RequestPhoneCall_v2_186_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_186;
    l1 = self.box_PhoneCallExclusivityModifier_187;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2003653308", "2003653308", "MIS_430_B20", "box_RequestPhoneCall_v2_186.Completed", "box_PhoneCallExclusivityModifier_187.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_RequestPhoneCall_v2_189_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_189;
    l1 = self.box_PhoneCallExclusivityModifier_190;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|567822566", "567822566", "MIS_430_B20", "box_RequestPhoneCall_v2_189.Completed", "box_PhoneCallExclusivityModifier_190.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_GroupSizeListener_v6_87_Enabled()
    self:OnExit_box_GroupSizeListener_v6_87_Enabled();
end;

function export:f_box_GroupSizeListener_v6_87_MemberAdded()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_87_MemberAdded();
    l0 = self.box_GroupSizeListener_v6_87;
    l1 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|14964317", "14964317", "MIS_430_B20", "box_GroupSizeListener_v6_87.MemberAdded", "box_MultipleOR_88.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_87_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_87_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_87_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_87_MemberRemoved();
    l0 = self.box_GroupSizeListener_v6_87;
    l1 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1402976826", "1402976826", "MIS_430_B20", "box_GroupSizeListener_v6_87.MemberRemoved", "box_MultipleOR_88.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v6_87_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_87_MemberSpawned();
end;

function export:f_box_IsEntityInGroup_223_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|426320253", "426320253", "MIS_430_B20", "box_IsEntityInGroup_223.False", "box_OnceOnly_v3_118.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityInGroup_223_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_25();
    l0 = self.box_Random_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|535239336", "535239336", "MIS_430_B20", "box_IsEntityInGroup_223.True", "box_Random_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_96_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_74();
    l0 = self.box_Delay_v5_96;
    l1 = self.box_MIS_430_BarrelCatapult_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|641089353", "641089353", "MIS_430_B20", "box_Delay_v5_96.TimeElapsed", "box_MIS_430_BarrelCatapult_74.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_102_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_111();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|526530827", "526530827", "MIS_430_B20", "box_OutputOrder_v2_102.Out", "box_Simple_Node_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_106();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2118474366", "2118474366", "MIS_430_B20", "box_OutputOrder_v2_102.Out", "box_Simple_Node_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_104_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_101();
    l0 = self.box_StaticBreakableListener_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1047110971", "1047110971", "MIS_430_B20", "box_OutputOrder_v2_104.Out", "box_StaticBreakableListener_101.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_104_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_55();
    l0 = self.box_StaticBreakableListener_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|72936083", "72936083", "MIS_430_B20", "box_OutputOrder_v2_104.Out", "box_StaticBreakableListener_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_185_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_183();
    l0 = self.box_PhoneCallExclusivityModifier_185;
    l1 = self.box_RequestPhoneCall_v2_183;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1901459254", "1901459254", "MIS_430_B20", "box_PhoneCallExclusivityModifier_185.Enabled", "box_RequestPhoneCall_v2_183.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_85_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_217();
    l0 = self.box_ProximityTrigger_v3_85;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1530035445", "1530035445", "MIS_430_B20", "box_ProximityTrigger_v3_85.Enter", "box_SetContextualStrategy_217.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_173_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_173;
    l1 = self.box_PhoneCallExclusivityModifier_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1775113725", "1775113725", "MIS_430_B20", "box_RequestPhoneCall_v2_173.Completed", "box_PhoneCallExclusivityModifier_171.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_20();
    l0 = self.box_Delay_v5_19;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1041166065", "1041166065", "MIS_430_B20", "box_Delay_v5_19.TimeElapsed", "box_ParticleSystem_v3_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_202_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_54();
    l0 = self.box_MultipleOR_202;
    l1 = self.box_Gate_v3_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|845067231", "845067231", "MIS_430_B20", "box_MultipleOR_202.Out", "box_Gate_v3_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_16_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_81();
    l0 = self.box_PhoneCallExclusivityModifier_16;
    l1 = self.box_RequestPhoneCall_v2_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|640017139", "640017139", "MIS_430_B20", "box_PhoneCallExclusivityModifier_16.Enabled", "box_RequestPhoneCall_v2_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_123_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_123_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_77();
    l0 = self.box_MIS_430_BarrelCatapult_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|322432744", "322432744", "MIS_430_B20", "box_RandomFloat_v2_123.Out", "box_MIS_430_BarrelCatapult_77.Launch", clone:GetLuaBox(), l0:GetLuaBox());
    -- Launch
    l0:Exec(0, params);
end;

function export:f_box_MIS_430_BarrelCatapult_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_121();
    l0 = self.box_MIS_430_BarrelCatapult_52;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|633511429", "633511429", "MIS_430_B20", "box_MIS_430_BarrelCatapult_52.Out", "box_RandomFloat_v2_121.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_99_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_110();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|653976171", "653976171", "MIS_430_B20", "box_MissionBlockLayer_99.Activated", "box_Simple_Node_110.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_103_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_112();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|120423281", "120423281", "MIS_430_B20", "box_MissionBlockLayer_103.Activated", "box_Simple_Node_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_163_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_163;
    l1 = self.box_PhoneCallExclusivityModifier_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1103283596", "1103283596", "MIS_430_B20", "box_RequestPhoneCall_v2_163.Completed", "box_PhoneCallExclusivityModifier_166.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_PhoneCallExclusivityModifier_181_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_182();
    l0 = self.box_PhoneCallExclusivityModifier_181;
    l1 = self.box_RequestPhoneCall_v2_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|528053375", "528053375", "MIS_430_B20", "box_PhoneCallExclusivityModifier_181.Enabled", "box_RequestPhoneCall_v2_182.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_53_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_52();
    l0 = self.box_Delay_v5_53;
    l1 = self.box_MIS_430_BarrelCatapult_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1350133078", "1350133078", "MIS_430_B20", "box_Delay_v5_53.TimeElapsed", "box_MIS_430_BarrelCatapult_52.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_154_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetContextualStrategyUniqueGroup_126();
    l0 = self.box_OnceOnly_v3_154;
    l1 = Boxes[GetPathID("Domino/System/AI/GetContextualStrategyUniqueGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|625431084", "625431084", "MIS_430_B20", "box_OnceOnly_v3_154.Out", "box_GetContextualStrategyUniqueGroup_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_132_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_133();
    l0 = self.box_Delay_v5_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1718709384", "1718709384", "MIS_430_B20", "box_ParticleSystem_v3_132.Started", "box_Delay_v5_133.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MIS_430_BarrelCatapult_28_Launched()
    local l0, l1;
    l0 = self.box_MIS_430_BarrelCatapult_28;
    l1 = self.box_MultipleOR_202;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1348320531", "1348320531", "MIS_430_B20", "box_MIS_430_BarrelCatapult_28.Launched", "box_MultipleOR_202.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EndActivityObjective_v2_8_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_91();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1469137770", "1469137770", "MIS_430_B20", "box_EndActivityObjective_v2_8.Out", "box_OutputOrder_v2_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_108_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|613619709", "613619709", "MIS_430_B20", "box_IsEntityLoaded_v3_108.False", "box_Simple_Node_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_108_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Defend_Object_CORE_v3_15();
    l0 = self.box_Brick_Defend_Object_CORE_v3_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|436128696", "436128696", "MIS_430_B20", "box_IsEntityLoaded_v3_108.True", "box_Brick_Defend_Object_CORE_v3_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_PhoneCallExclusivityModifier_47_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_195();
    l0 = self.box_PhoneCallExclusivityModifier_47;
    l1 = self.box_RequestPhoneCall_v2_195;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1872152743", "1872152743", "MIS_430_B20", "box_PhoneCallExclusivityModifier_47.Enabled", "box_RequestPhoneCall_v2_195.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_210_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_170();
    l0 = self.box_PhoneCallExclusivityModifier_210;
    l1 = self.box_RequestPhoneCall_v2_170;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1414439073", "1414439073", "MIS_430_B20", "box_PhoneCallExclusivityModifier_210.Enabled", "box_RequestPhoneCall_v2_170.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_118_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_65();
    l0 = self.box_OnceOnly_v3_118;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1796521265", "1796521265", "MIS_430_B20", "box_OnceOnly_v3_118.Out", "box_GetPlayerGroup_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_128_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_130();
    l0 = self.box_Delay_v5_128;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|834539278", "834539278", "MIS_430_B20", "box_Delay_v5_128.TimeElapsed", "box_ParticleSystem_v3_130.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_11_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = self.box_Delay_v5_11;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|784337795", "784337795", "MIS_430_B20", "box_Delay_v5_11.TimeElapsed", "box_ActivityEnd_4.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_200_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_200;
    l1 = self.box_PhoneCallExclusivityModifier_196;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2058812525", "2058812525", "MIS_430_B20", "box_RequestPhoneCall_v2_200.Completed", "box_PhoneCallExclusivityModifier_196.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_IsEntityInGroup_89_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|268640679", "268640679", "MIS_430_B20", "box_IsEntityInGroup_89.True", "box_PhoneCallExclusivityModifier_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_MIS_430_BarrelCatapult_80_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_79();
    l0 = self.box_MIS_430_BarrelCatapult_80;
    l1 = self.box_Delay_v5_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1735918169", "1735918169", "MIS_430_B20", "box_MIS_430_BarrelCatapult_80.Out", "box_Delay_v5_79.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_147_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_216();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2098814003", "2098814003", "MIS_430_B20", "box_OutputOrder_v2_147.Out", "box_Simple_Node_216.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_147_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1165418977", "1165418977", "MIS_430_B20", "box_OutputOrder_v2_147.Out", "box_Simple_Node_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_90_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_42();
    l0 = self.box_Delay_v5_90;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1234951320", "1234951320", "MIS_430_B20", "box_Delay_v5_90.TimeElapsed", "box_IsEntityLoaded_v3_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_81_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_81;
    l1 = self.box_PhoneCallExclusivityModifier_224;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|229149134", "229149134", "MIS_430_B20", "box_RequestPhoneCall_v2_81.Completed", "box_PhoneCallExclusivityModifier_224.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_MIS_430_BarrelCatapult_50_Launched()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_53();
    l0 = self.box_MIS_430_BarrelCatapult_50;
    l1 = self.box_Delay_v5_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1567239051", "1567239051", "MIS_430_B20", "box_MIS_430_BarrelCatapult_50.Launched", "box_Delay_v5_53.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_28();
    l0 = self.box_Delay_v5_41;
    l1 = self.box_MIS_430_BarrelCatapult_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|139512540", "139512540", "MIS_430_B20", "box_Delay_v5_41.TimeElapsed", "box_MIS_430_BarrelCatapult_28.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_PhoneCallExclusivityModifier_188_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_186();
    l0 = self.box_PhoneCallExclusivityModifier_188;
    l1 = self.box_RequestPhoneCall_v2_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|331928574", "331928574", "MIS_430_B20", "box_PhoneCallExclusivityModifier_188.Enabled", "box_RequestPhoneCall_v2_186.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_140_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_145();
    l0 = self.box_Delay_v5_140;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1571098958", "1571098958", "MIS_430_B20", "box_Delay_v5_140.TimeElapsed", "box_Simple_Node_145.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_169_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_213();
    l0 = self.box_RequestPhoneCall_v2_169;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|292956366", "292956366", "MIS_430_B20", "box_RequestPhoneCall_v2_169.Completed", "box_OutputOrder_v2_213.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_161_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1591820978", "1591820978", "MIS_430_B20", "box_OutputOrder_v2_161.Out", "box_OnceOnly_v3_160.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_161_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_96();
    l0 = self.box_Delay_v5_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|275726585", "275726585", "MIS_430_B20", "box_OutputOrder_v2_161.Out", "box_Delay_v5_96.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PhoneCallExclusivityModifier_178_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_179();
    l0 = self.box_PhoneCallExclusivityModifier_178;
    l1 = self.box_RequestPhoneCall_v2_179;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|933727129", "933727129", "MIS_430_B20", "box_PhoneCallExclusivityModifier_178.Enabled", "box_RequestPhoneCall_v2_179.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_27_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_CarAlarm_24();
    l0 = self.box_Delay_v5_27;
    l1 = self.box_MIS_430_CarAlarm_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|946216616", "946216616", "MIS_430_B20", "box_Delay_v5_27.TimeElapsed", "box_MIS_430_CarAlarm_24.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_46_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_CarAlarm_32();
    l0 = self.box_Delay_v5_46;
    l1 = self.box_MIS_430_CarAlarm_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|62769314", "62769314", "MIS_430_B20", "box_Delay_v5_46.TimeElapsed", "box_MIS_430_CarAlarm_32.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_182_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_182;
    l1 = self.box_PhoneCallExclusivityModifier_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|939064479", "939064479", "MIS_430_B20", "box_RequestPhoneCall_v2_182.Completed", "box_PhoneCallExclusivityModifier_180.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_ProximityTrigger_v3_220_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_218();
    l0 = self.box_ProximityTrigger_v3_220;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1754034952", "1754034952", "MIS_430_B20", "box_ProximityTrigger_v3_220.Enter", "box_SetContextualStrategy_218.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_192_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_193();
    l0 = self.box_PhoneCallExclusivityModifier_192;
    l1 = self.box_RequestPhoneCall_v2_193;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|275210813", "275210813", "MIS_430_B20", "box_PhoneCallExclusivityModifier_192.Enabled", "box_RequestPhoneCall_v2_193.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_217_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_85();
    l0 = self.box_ProximityTrigger_v3_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1923012569", "1923012569", "MIS_430_B20", "box_SetContextualStrategy_217.Out", "box_ProximityTrigger_v3_85.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_223();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1185590535", "1185590535", "MIS_430_B20", "box_OutputOrder_v2_35.Out", "box_IsEntityInGroup_223.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_143();
    l0 = self.box_Gate_v3_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1215150446", "1215150446", "MIS_430_B20", "box_OutputOrder_v2_35.Out", "box_Gate_v3_143.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_35_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_49();
    l0 = self.box_Delay_v5_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1500973235", "1500973235", "MIS_430_B20", "box_OutputOrder_v2_35.Out", "box_Delay_v5_49.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RequestPhoneCall_v2_183_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_183;
    l1 = self.box_PhoneCallExclusivityModifier_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|719064850", "719064850", "MIS_430_B20", "box_RequestPhoneCall_v2_183.Completed", "box_PhoneCallExclusivityModifier_184.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_ParticleSystem_v3_20_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|105761382", "105761382", "MIS_430_B20", "box_ParticleSystem_v3_20.Started", "box_Delay_v5_21.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_130_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_131();
    l0 = self.box_Delay_v5_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|436032912", "436032912", "MIS_430_B20", "box_ParticleSystem_v3_130.Started", "box_Delay_v5_131.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_226_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_227();
    l0 = self.box_Delay_v5_226;
    l1 = self.box_Gate_v3_227;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1151489858", "1151489858", "MIS_430_B20", "box_Delay_v5_226.TimeElapsed", "box_Gate_v3_227.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_39_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_40();
    l0 = self.box_PhoneCallExclusivityModifier_39;
    l1 = self.box_RequestPhoneCall_v2_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|97740075", "97740075", "MIS_430_B20", "box_PhoneCallExclusivityModifier_39.Enabled", "box_RequestPhoneCall_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_67_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_108();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|100432300", "100432300", "MIS_430_B20", "box_OutputOrder_v2_67.Out", "box_IsEntityLoaded_v3_108.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_70();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1301468438", "1301468438", "MIS_430_B20", "box_OutputOrder_v2_67.Out", "box_Simple_Node_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_66();
    l0 = self.box_ExitZoneWarningListener_v3_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1167967077", "1167967077", "MIS_430_B20", "box_OutputOrder_v2_67.Out", "box_ExitZoneWarningListener_v3_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_11();
    l0 = self.box_Gate_v3_7;
    l1 = self.box_Delay_v5_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|400468968", "400468968", "MIS_430_B20", "box_Gate_v3_7.Out", "box_Delay_v5_11.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_58_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1881665896", "1881665896", "MIS_430_B20", "box_IsEntityLoaded_v3_58.True", "box_OnceOnly_v3_154.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_DisplayCustomUIMsg_v5_48_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_DisplayCustomUIMsg_v5_48;
    l1 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2089934707", "2089934707", "MIS_430_B20", "box_DisplayCustomUIMsg_v5_48.OnDisplay", "box_Delay_v5_30.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_DisplayCustomUIMsg_v5_48_OnHide()
    local l0, l1;
    l0 = self.box_DisplayCustomUIMsg_v5_48;
    l1 = self.box_OnceOnly_v3_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|594873096", "594873096", "MIS_430_B20", "box_DisplayCustomUIMsg_v5_48.OnHide", "box_OnceOnly_v3_29.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_PhoneCallExclusivityModifier_209_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_169();
    l0 = self.box_PhoneCallExclusivityModifier_209;
    l1 = self.box_RequestPhoneCall_v2_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|159141463", "159141463", "MIS_430_B20", "box_PhoneCallExclusivityModifier_209.Enabled", "box_RequestPhoneCall_v2_169.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MIS_430_SteamTrap_139_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_139_Activated();
    params = self:OnEnter_box_Simple_Node_33();
    l0 = self.box_MIS_430_SteamTrap_139;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|532048582", "532048582", "MIS_430_B20", "box_MIS_430_SteamTrap_139.Activated", "box_Simple_Node_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_139_Active()
    self:OnExit_box_MIS_430_SteamTrap_139_Active();
end;

function export:f_box_MIS_430_SteamTrap_139_Inactive()
    self:OnExit_box_MIS_430_SteamTrap_139_Inactive();
end;

function export:f_box_MIS_430_SteamTrap_139_Out()
    self:OnExit_box_MIS_430_SteamTrap_139_Out();
end;

function export:f_box_MultipleOR_64_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_57();
    l0 = self.box_MultipleOR_64;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|351631619", "351631619", "MIS_430_B20", "box_MultipleOR_64.Out", "box_MissionBlockLayer_57.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_143_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = self.box_Gate_v3_143;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1081136794", "1081136794", "MIS_430_B20", "box_Gate_v3_143.Out", "box_OutputOrder_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_48();
    l0 = self.box_Delay_v5_30;
    l1 = self.box_DisplayCustomUIMsg_v5_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|989931151", "989931151", "MIS_430_B20", "box_Delay_v5_30.TimeElapsed", "box_DisplayCustomUIMsg_v5_48.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_ExitZoneWarningListener_v3_66_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_214();
    l0 = self.box_ExitZoneWarningListener_v3_66;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1596654537", "1596654537", "MIS_430_B20", "box_ExitZoneWarningListener_v3_66.FailingZoneEntered", "box_OutputOrder_v2_214.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_212_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_211();
    l0 = self.box_PhoneCallExclusivityModifier_212;
    l1 = self.box_Delay_v5_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1156643790", "1156643790", "MIS_430_B20", "box_PhoneCallExclusivityModifier_212.Disabled", "box_Delay_v5_211.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MIS_430_BarrelCatapult_78_Launched()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_161();
    l0 = self.box_MIS_430_BarrelCatapult_78;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|663503858", "663503858", "MIS_430_B20", "box_MIS_430_BarrelCatapult_78.Launched", "box_OutputOrder_v2_161.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_121_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_121_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|882890263", "882890263", "MIS_430_B20", "box_RandomFloat_v2_121.Out", "box_Delay_v5_41.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MissionBlockLayer_63_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_117();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|899916932", "899916932", "MIS_430_B20", "box_MissionBlockLayer_63.Activated", "box_OutputOrder_v2_117.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_120_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_120_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_97();
    l0 = self.box_Delay_v5_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|30941648", "30941648", "MIS_430_B20", "box_RandomFloat_v2_120.Out", "box_Delay_v5_97.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MIS_430_BarrelCatapult_74_Launched()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_76();
    l0 = self.box_MIS_430_BarrelCatapult_74;
    l1 = self.box_Delay_v5_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|128985597", "128985597", "MIS_430_B20", "box_MIS_430_BarrelCatapult_74.Launched", "box_Delay_v5_76.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_211_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_211;
    l1 = self.box_PhoneCallExclusivityModifier_210;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1929574875", "1929574875", "MIS_430_B20", "box_Delay_v5_211.TimeElapsed", "box_PhoneCallExclusivityModifier_210.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Gate_v3_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_Gate_v3_54;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|957991816", "957991816", "MIS_430_B20", "box_Gate_v3_54.Out", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_213_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_212;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|110027667", "110027667", "MIS_430_B20", "box_OutputOrder_v2_213.Out", "box_PhoneCallExclusivityModifier_212.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_213_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_148();
    l0 = self.box_Music_Quest_v2_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1824254478", "1824254478", "MIS_430_B20", "box_OutputOrder_v2_213.Out", "box_Music_Quest_v2_148.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_76_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_80();
    l0 = self.box_Delay_v5_76;
    l1 = self.box_MIS_430_BarrelCatapult_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1746404149", "1746404149", "MIS_430_B20", "box_Delay_v5_76.TimeElapsed", "box_MIS_430_BarrelCatapult_80.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_13_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_13;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2001129588", "2001129588", "MIS_430_B20", "box_Gate_v3_13.Opened", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_13_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_13;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1772727280", "1772727280", "MIS_430_B20", "box_Gate_v3_13.Out", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PhoneCallExclusivityModifier_162_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_163();
    l0 = self.box_PhoneCallExclusivityModifier_162;
    l1 = self.box_RequestPhoneCall_v2_163;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1323834508", "1323834508", "MIS_430_B20", "box_PhoneCallExclusivityModifier_162.Enabled", "box_RequestPhoneCall_v2_163.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MIS_430_BarrelCatapult_77_Launched()
    local l0, l1;
    l0 = self.box_MIS_430_BarrelCatapult_77;
    l1 = self.box_MultipleOR_202;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1359776167", "1359776167", "MIS_430_B20", "box_MIS_430_BarrelCatapult_77.Launched", "box_MultipleOR_202.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_127_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_129();
    l0 = self.box_Delay_v5_127;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|61779288", "61779288", "MIS_430_B20", "box_Delay_v5_127.TimeElapsed", "box_ParticleSystem_v3_129.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_CarAlarm_32_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_46();
    l0 = self.box_MIS_430_CarAlarm_32;
    l1 = self.box_Delay_v5_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|982208140", "982208140", "MIS_430_B20", "box_MIS_430_CarAlarm_32.Ended", "box_Delay_v5_46.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_151_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2066663579", "2066663579", "MIS_430_B20", "box_IsEntityLoaded_v3_151.True", "box_OnceOnly_v3_154.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_88_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_86();
    l0 = self.box_MultipleOR_88;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|177775619", "177775619", "MIS_430_B20", "box_MultipleOR_88.Out", "box_Print_v2_86.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_15_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_150();
    l0 = self.box_Brick_Defend_Object_CORE_v3_15;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|890685636", "890685636", "MIS_430_B20", "box_Brick_Defend_Object_CORE_v3_15.Fail", "box_SetActivityObjectiveProgress_v2_150.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_15_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_138();
    l0 = self.box_Brick_Defend_Object_CORE_v3_15;
    l1 = self.box_Delay_v5_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|248370937", "248370937", "MIS_430_B20", "box_Brick_Defend_Object_CORE_v3_15.Started", "box_Delay_v5_138.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_15_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_94();
    l0 = self.box_Brick_Defend_Object_CORE_v3_15;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|906678526", "906678526", "MIS_430_B20", "box_Brick_Defend_Object_CORE_v3_15.Success", "box_Simple_Node_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Defend_Object_CORE_v3_15_Waves()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_137();
    l0 = self.box_Brick_Defend_Object_CORE_v3_15;
    l1 = self.box_Delay_v5_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1272551697", "1272551697", "MIS_430_B20", "box_Brick_Defend_Object_CORE_v3_15.Waves", "box_Delay_v5_137.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_101_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_90();
    l0 = self.box_StaticBreakableListener_101;
    l1 = self.box_Delay_v5_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|159626038", "159626038", "MIS_430_B20", "box_StaticBreakableListener_101.Enabled", "box_Delay_v5_90.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_101_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_101;
    l1 = self.box_MultipleOR_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|27171899", "27171899", "MIS_430_B20", "box_StaticBreakableListener_101.OnBreak", "box_MultipleOR_64.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableListener_101_OnDamage()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_109();
    l0 = self.box_StaticBreakableListener_101;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|776425270", "776425270", "MIS_430_B20", "box_StaticBreakableListener_101.OnDamage", "box_Simple_Node_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_221_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_85();
    l0 = self.box_ProximityTrigger_v3_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2038142019", "2038142019", "MIS_430_B20", "box_OutputOrder_v2_221.Out", "box_ProximityTrigger_v3_85.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_221_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_220();
    l0 = self.box_ProximityTrigger_v3_220;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|481661332", "481661332", "MIS_430_B20", "box_OutputOrder_v2_221.Out", "box_ProximityTrigger_v3_220.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_124_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_153();
    l0 = self.box_Delay_v5_124;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1898477990", "1898477990", "MIS_430_B20", "box_Delay_v5_124.TimeElapsed", "box_OutputOrder_v2_153.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_198_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_197();
    l0 = self.box_PhoneCallExclusivityModifier_198;
    l1 = self.box_RequestPhoneCall_v2_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|419195802", "419195802", "MIS_430_B20", "box_PhoneCallExclusivityModifier_198.Enabled", "box_RequestPhoneCall_v2_197.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_175_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_176();
    l0 = self.box_PhoneCallExclusivityModifier_175;
    l1 = self.box_RequestPhoneCall_v2_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|553236054", "553236054", "MIS_430_B20", "box_PhoneCallExclusivityModifier_175.Enabled", "box_RequestPhoneCall_v2_176.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_133_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_134();
    l0 = self.box_Delay_v5_133;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1597912208", "1597912208", "MIS_430_B20", "box_Delay_v5_133.TimeElapsed", "box_ParticleSystem_v3_134.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_49_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_143();
    l0 = self.box_Delay_v5_49;
    l1 = self.box_Gate_v3_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1109221827", "1109221827", "MIS_430_B20", "box_Delay_v5_49.TimeElapsed", "box_Gate_v3_143.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1701248373", "1701248373", "MIS_430_B20", "box_MultipleOR_6.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_59_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_61();
    l0 = self.box_Delay_v5_59;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|581962607", "581962607", "MIS_430_B20", "box_Delay_v5_59.TimeElapsed", "box_IsEntityLoaded_v3_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_73_LastWave_Cleanup()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_10();
    l0 = self.box_SpawnAI_Wave_v2_73;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1948470165", "1948470165", "MIS_430_B20", "box_SpawnAI_Wave_v2_73.LastWave_Cleanup", "box_Simple_Node_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_138_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_93();
    l0 = self.box_Delay_v5_138;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|847875908", "847875908", "MIS_430_B20", "box_Delay_v5_138.TimeElapsed", "box_Simple_Node_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_MultipleOR_12;
    l1 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|875880958", "875880958", "MIS_430_B20", "box_MultipleOR_12.Out", "box_Delay_v5_17.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_201_Output_0()
    local l0, l1;
    l0 = self.box_Random_201;
    l1 = self.box_PhoneCallExclusivityModifier_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|263604267", "263604267", "MIS_430_B20", "box_Random_201.Output", "box_PhoneCallExclusivityModifier_172.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_201_Output_1()
    local l0, l1;
    l0 = self.box_Random_201;
    l1 = self.box_PhoneCallExclusivityModifier_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|631224955", "631224955", "MIS_430_B20", "box_Random_201.Output", "box_PhoneCallExclusivityModifier_175.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_201_Output_2()
    local l0, l1;
    l0 = self.box_Random_201;
    l1 = self.box_PhoneCallExclusivityModifier_178;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1587076244", "1587076244", "MIS_430_B20", "box_Random_201.Output", "box_PhoneCallExclusivityModifier_178.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_201_Output_3()
    local l0, l1;
    l0 = self.box_Random_201;
    l1 = self.box_PhoneCallExclusivityModifier_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|39265681", "39265681", "MIS_430_B20", "box_Random_201.Output", "box_PhoneCallExclusivityModifier_181.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_201_Output_4()
    local l0, l1;
    l0 = self.box_Random_201;
    l1 = self.box_PhoneCallExclusivityModifier_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1395913734", "1395913734", "MIS_430_B20", "box_Random_201.Output", "box_PhoneCallExclusivityModifier_39.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_201_Output_5()
    local l0, l1;
    l0 = self.box_Random_201;
    l1 = self.box_PhoneCallExclusivityModifier_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|988654944", "988654944", "MIS_430_B20", "box_Random_201.Output", "box_PhoneCallExclusivityModifier_47.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_201_Output_6()
    local l0, l1;
    l0 = self.box_Random_201;
    l1 = self.box_PhoneCallExclusivityModifier_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1358846902", "1358846902", "MIS_430_B20", "box_Random_201.Output", "box_PhoneCallExclusivityModifier_198.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_201_Output_7()
    local l0, l1;
    l0 = self.box_Random_201;
    l1 = self.box_PhoneCallExclusivityModifier_205;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1995873469", "1995873469", "MIS_430_B20", "box_Random_201.Output", "box_PhoneCallExclusivityModifier_205.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_RequestPhoneCall_v2_40_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_40;
    l1 = self.box_PhoneCallExclusivityModifier_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1472064980", "1472064980", "MIS_430_B20", "box_RequestPhoneCall_v2_40.Completed", "box_PhoneCallExclusivityModifier_43.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_201();
    l0 = self.box_Random_201;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|759281985", "759281985", "MIS_430_B20", "box_OutputOrder_v2_56.Out", "box_Random_201.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_144();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|803009297", "803009297", "MIS_430_B20", "box_OutputOrder_v2_56.Out", "box_Simple_Node_144.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_140();
    l0 = self.box_Delay_v5_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|179674722", "179674722", "MIS_430_B20", "box_OutputOrder_v2_56.Out", "box_Delay_v5_140.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_219_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_219;
    l1 = self.box_MultipleOR_228;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|923568996", "923568996", "MIS_430_B20", "box_PlayDialog_v6_219.Finished", "box_MultipleOR_228.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_199_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_200();
    l0 = self.box_RequestPhoneCall_v2_199;
    l1 = self.box_RequestPhoneCall_v2_200;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1227423271", "1227423271", "MIS_430_B20", "box_RequestPhoneCall_v2_199.Completed", "box_RequestPhoneCall_v2_200.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_55_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_59();
    l0 = self.box_StaticBreakableListener_55;
    l1 = self.box_Delay_v5_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|418460186", "418460186", "MIS_430_B20", "box_StaticBreakableListener_55.Enabled", "box_Delay_v5_59.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_55_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_55;
    l1 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1112586350", "1112586350", "MIS_430_B20", "box_StaticBreakableListener_55.OnBreak", "box_MultipleOR_60.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_36_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_62();
    l0 = self.box_Delay_v5_36;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|108165903", "108165903", "MIS_430_B20", "box_Delay_v5_36.TimeElapsed", "box_ActivityEnd_62.EndNoSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndNoSave
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_42_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1328205317", "1328205317", "MIS_430_B20", "box_IsEntityLoaded_v3_42.False", "box_MultipleOR_64.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_42_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_99();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|284684167", "284684167", "MIS_430_B20", "box_IsEntityLoaded_v3_42.True", "box_MissionBlockLayer_99.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_21_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_18();
    l0 = self.box_Delay_v5_21;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|878153256", "878153256", "MIS_430_B20", "box_Delay_v5_21.TimeElapsed", "box_ParticleSystem_v3_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_227_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_219();
    l0 = self.box_Gate_v3_227;
    l1 = self.box_PlayDialog_v6_219;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1620816952", "1620816952", "MIS_430_B20", "box_Gate_v3_227.Out", "box_PlayDialog_v6_219.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_92();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1946417914", "1946417914", "MIS_430_B20", "box_OutputOrder_v2_9.Out", "box_Simple_Node_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_71();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|98770809", "98770809", "MIS_430_B20", "box_OutputOrder_v2_9.Out", "box_Simple_Node_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_150_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_147();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|832059354", "832059354", "MIS_430_B20", "box_SetActivityObjectiveProgress_v2_150.Out", "box_OutputOrder_v2_147.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_204_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_204;
    l1 = self.box_PhoneCallExclusivityModifier_203;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1466994903", "1466994903", "MIS_430_B20", "box_RequestPhoneCall_v2_204.Completed", "box_PhoneCallExclusivityModifier_203.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_SetContextualStrategy_218_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_220();
    l0 = self.box_ProximityTrigger_v3_220;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1702964415", "1702964415", "MIS_430_B20", "box_SetContextualStrategy_218.Out", "box_ProximityTrigger_v3_220.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_RequestPhoneCall_v2_176_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_176;
    l1 = self.box_PhoneCallExclusivityModifier_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1610107965", "1610107965", "MIS_430_B20", "box_RequestPhoneCall_v2_176.Completed", "box_PhoneCallExclusivityModifier_174.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_137_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_137;
    l1 = self.box_PhoneCallExclusivityModifier_209;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1850441017", "1850441017", "MIS_430_B20", "box_Delay_v5_137.TimeElapsed", "box_PhoneCallExclusivityModifier_209.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|807939690", "807939690", "MIS_430_B20", "box_OutputOrder_v2_1.Out", "box_ActivityAcknowledgeGate_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2126451203", "2126451203", "MIS_430_B20", "box_OutputOrder_v2_1.Out", "box_Print_v2_3.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_87();
    l0 = self.box_GroupSizeListener_v6_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|410532652", "410532652", "MIS_430_B20", "box_OutputOrder_v2_1.Out", "box_GroupSizeListener_v6_87.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_98();
    l0 = self.box_CharacterLoadedIdListener_v2_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1987393329", "1987393329", "MIS_430_B20", "box_OutputOrder_v2_1.Out", "box_CharacterLoadedIdListener_v2_98.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_207_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_206();
    l0 = self.box_PhoneCallExclusivityModifier_207;
    l1 = self.box_RequestPhoneCall_v2_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|991867134", "991867134", "MIS_430_B20", "box_PhoneCallExclusivityModifier_207.Enabled", "box_RequestPhoneCall_v2_206.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_25_Output_0()
    local l0, l1;
    l0 = self.box_Random_25;
    l1 = self.box_PhoneCallExclusivityModifier_185;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1304940891", "1304940891", "MIS_430_B20", "box_Random_25.Output", "box_PhoneCallExclusivityModifier_185.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_25_Output_1()
    local l0, l1;
    l0 = self.box_Random_25;
    l1 = self.box_PhoneCallExclusivityModifier_188;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|953737113", "953737113", "MIS_430_B20", "box_Random_25.Output", "box_PhoneCallExclusivityModifier_188.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_25_Output_2()
    local l0, l1;
    l0 = self.box_Random_25;
    l1 = self.box_PhoneCallExclusivityModifier_191;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|490136660", "490136660", "MIS_430_B20", "box_Random_25.Output", "box_PhoneCallExclusivityModifier_191.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_25_Output_3()
    local l0, l1;
    l0 = self.box_Random_25;
    l1 = self.box_PhoneCallExclusivityModifier_192;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1433922589", "1433922589", "MIS_430_B20", "box_Random_25.Output", "box_PhoneCallExclusivityModifier_192.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_MIS_430_SteamTrap_141_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_141_Activated();
    params = self:OnEnter_box_Simple_Node_33();
    l0 = self.box_MIS_430_SteamTrap_141;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|429600761", "429600761", "MIS_430_B20", "box_MIS_430_SteamTrap_141.Activated", "box_Simple_Node_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_141_Active()
    self:OnExit_box_MIS_430_SteamTrap_141_Active();
end;

function export:f_box_MIS_430_SteamTrap_141_Inactive()
    self:OnExit_box_MIS_430_SteamTrap_141_Inactive();
end;

function export:f_box_MIS_430_SteamTrap_141_Out()
    self:OnExit_box_MIS_430_SteamTrap_141_Out();
end;

function export:f_box_RequestPhoneCall_v2_197_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_199();
    l0 = self.box_RequestPhoneCall_v2_197;
    l1 = self.box_RequestPhoneCall_v2_199;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|286624600", "286624600", "MIS_430_B20", "box_RequestPhoneCall_v2_197.Completed", "box_RequestPhoneCall_v2_199.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_29_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_48();
    l0 = self.box_OnceOnly_v3_29;
    l1 = self.box_DisplayCustomUIMsg_v5_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|852619520", "852619520", "MIS_430_B20", "box_OnceOnly_v3_29.Out", "box_DisplayCustomUIMsg_v5_48.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGroup_v2_65_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_65_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_89();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|952228168", "952228168", "MIS_430_B20", "box_GetPlayerGroup_v2_65.Out", "box_IsEntityInGroup_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_75_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_122();
    l0 = self.box_Delay_v5_75;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2126061288", "2126061288", "MIS_430_B20", "box_Delay_v5_75.TimeElapsed", "box_RandomFloat_v2_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetContextualStrategyUniqueGroup_126_Out()
    local params, l0;
    self:OnExit_box_GetContextualStrategyUniqueGroup_126_Out();
    l0 = Boxes[GetPathID("Domino/System/AI/GetContextualStrategyUniqueGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_125();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1991086035", "1991086035", "MIS_430_B20", "box_GetContextualStrategyUniqueGroup_126.Out", "box_SetContextualStrategy_125.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_168_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_83();
    l0 = self.box_PhoneCallExclusivityModifier_168;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1616608341", "1616608341", "MIS_430_B20", "box_PhoneCallExclusivityModifier_168.Disabled", "box_OutputOrder_v2_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_98_LoadedIdReceived()
    local params, l0, l1;
    params = self:OnEnter_box_PawnInvincibleState_v2_100();
    l0 = self.box_CharacterLoadedIdListener_v2_98;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|499051287", "499051287", "MIS_430_B20", "box_CharacterLoadedIdListener_v2_98.LoadedIdReceived", "box_PawnInvincibleState_v2_100.SetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetInvincible
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_45_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_CarAlarm_23();
    l0 = self.box_Delay_v5_45;
    l1 = self.box_MIS_430_CarAlarm_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|29582835", "29582835", "MIS_430_B20", "box_Delay_v5_45.TimeElapsed", "box_MIS_430_CarAlarm_23.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_31_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_63();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|163071218", "163071218", "MIS_430_B20", "box_MissionBlockLayer_31.Disabled", "box_MissionBlockLayer_63.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_205_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_204();
    l0 = self.box_PhoneCallExclusivityModifier_205;
    l1 = self.box_RequestPhoneCall_v2_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2139848565", "2139848565", "MIS_430_B20", "box_PhoneCallExclusivityModifier_205.Enabled", "box_RequestPhoneCall_v2_204.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_119_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_119_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_38();
    l0 = self.box_MIS_430_BarrelCatapult_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|73508674", "73508674", "MIS_430_B20", "box_RandomFloat_v2_119.Out", "box_MIS_430_BarrelCatapult_38.Launch", clone:GetLuaBox(), l0:GetLuaBox());
    -- Launch
    l0:Exec(0, params);
end;

function export:f_box_PhoneCallExclusivityModifier_191_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_189();
    l0 = self.box_PhoneCallExclusivityModifier_191;
    l1 = self.box_RequestPhoneCall_v2_189;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1302781589", "1302781589", "MIS_430_B20", "box_PhoneCallExclusivityModifier_191.Enabled", "box_RequestPhoneCall_v2_189.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MIS_430_BarrelCatapult_38_Launched()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_120();
    l0 = self.box_MIS_430_BarrelCatapult_38;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|927880004", "927880004", "MIS_430_B20", "box_MIS_430_BarrelCatapult_38.Launched", "box_RandomFloat_v2_120.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_152_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1506954275", "1506954275", "MIS_430_B20", "box_IsEntityLoaded_v3_152.True", "box_OnceOnly_v3_154.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_228_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_226();
    l0 = self.box_MultipleOR_228;
    l1 = self.box_Delay_v5_226;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1788186350", "1788186350", "MIS_430_B20", "box_MultipleOR_228.Out", "box_Delay_v5_226.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MIS_430_CarAlarm_23_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_45();
    l0 = self.box_MIS_430_CarAlarm_23;
    l1 = self.box_Delay_v5_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1276304466", "1276304466", "MIS_430_B20", "box_MIS_430_CarAlarm_23.Ended", "box_Delay_v5_45.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_RequestPhoneCall_v2_170_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_170;
    l1 = self.box_PhoneCallExclusivityModifier_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|490015911", "490015911", "MIS_430_B20", "box_RequestPhoneCall_v2_170.Completed", "box_PhoneCallExclusivityModifier_168.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_RequestPhoneCall_v2_193_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_193;
    l1 = self.box_PhoneCallExclusivityModifier_194;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2037663363", "2037663363", "MIS_430_B20", "box_RequestPhoneCall_v2_193.Completed", "box_PhoneCallExclusivityModifier_194.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_ParticleSystem_v3_18_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_127();
    l0 = self.box_Delay_v5_127;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1012030291", "1012030291", "MIS_430_B20", "box_ParticleSystem_v3_18.Started", "box_Delay_v5_127.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_91_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_69();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1118094009", "1118094009", "MIS_430_B20", "box_OutputOrder_v2_91.Out", "box_Simple_Node_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|234576331", "234576331", "MIS_430_B20", "box_OutputOrder_v2_91.Out", "box_Delay_v5_36.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_131_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_132();
    l0 = self.box_Delay_v5_131;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1567713472", "1567713472", "MIS_430_B20", "box_Delay_v5_131.TimeElapsed", "box_ParticleSystem_v3_132.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_214_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_215();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|776484808", "776484808", "MIS_430_B20", "box_OutputOrder_v2_214.Out", "box_Simple_Node_215.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_214_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_68();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1902792820", "1902792820", "MIS_430_B20", "box_OutputOrder_v2_214.Out", "box_ActivityRetry_v2_68.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|20925184", "20925184", "MIS_430_B20", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1877333134", "1877333134", "MIS_430_B20", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_79_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_123();
    l0 = self.box_Delay_v5_79;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|425212541", "425212541", "MIS_430_B20", "box_Delay_v5_79.TimeElapsed", "box_RandomFloat_v2_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_122_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_122_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_78();
    l0 = self.box_MIS_430_BarrelCatapult_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2095659534", "2095659534", "MIS_430_B20", "box_RandomFloat_v2_122.Out", "box_MIS_430_BarrelCatapult_78.Launch", clone:GetLuaBox(), l0:GetLuaBox());
    -- Launch
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_135_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_136();
    l0 = self.box_Delay_v5_135;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1863069127", "1863069127", "MIS_430_B20", "box_Delay_v5_135.TimeElapsed", "box_ParticleSystem_v3_136.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_146_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_146_Activated();
    params = self:OnEnter_box_Simple_Node_33();
    l0 = self.box_MIS_430_SteamTrap_146;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1090135171", "1090135171", "MIS_430_B20", "box_MIS_430_SteamTrap_146.Activated", "box_Simple_Node_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_146_Active()
    self:OnExit_box_MIS_430_SteamTrap_146_Active();
end;

function export:f_box_MIS_430_SteamTrap_146_Inactive()
    self:OnExit_box_MIS_430_SteamTrap_146_Inactive();
end;

function export:f_box_MIS_430_SteamTrap_146_Out()
    self:OnExit_box_MIS_430_SteamTrap_146_Out();
end;

function export:f_box_MultipleOR_60_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_31();
    l0 = self.box_MultipleOR_60;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1642867431", "1642867431", "MIS_430_B20", "box_MultipleOR_60.Out", "box_MissionBlockLayer_31.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_57_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_44();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|224448268", "224448268", "MIS_430_B20", "box_MissionBlockLayer_57.Disabled", "box_MissionBlockLayer_44.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_157_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_157;
    l1 = self.box_PhoneCallExclusivityModifier_165;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|151951970", "151951970", "MIS_430_B20", "box_OnceOnly_v3_157.Out", "box_PhoneCallExclusivityModifier_165.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_CarAlarm_23();
    l0 = self.box_MIS_430_CarAlarm_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1360394532", "1360394532", "MIS_430_B20", "box_OutputOrder_v2_34.Out", "box_MIS_430_CarAlarm_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_CarAlarm_24();
    l0 = self.box_MIS_430_CarAlarm_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1210366906", "1210366906", "MIS_430_B20", "box_OutputOrder_v2_34.Out", "box_MIS_430_CarAlarm_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_34_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_CarAlarm_32();
    l0 = self.box_MIS_430_CarAlarm_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1516948635", "1516948635", "MIS_430_B20", "box_OutputOrder_v2_34.Out", "box_MIS_430_CarAlarm_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_RequestPhoneCall_v2_195_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_195;
    l1 = self.box_PhoneCallExclusivityModifier_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|866313124", "866313124", "MIS_430_B20", "box_RequestPhoneCall_v2_195.Completed", "box_PhoneCallExclusivityModifier_51.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_MIS_430_SteamTrap_142_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_142_Activated();
    params = self:OnEnter_box_Simple_Node_33();
    l0 = self.box_MIS_430_SteamTrap_142;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1426870432", "1426870432", "MIS_430_B20", "box_MIS_430_SteamTrap_142.Activated", "box_Simple_Node_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_142_Active()
    self:OnExit_box_MIS_430_SteamTrap_142_Active();
end;

function export:f_box_MIS_430_SteamTrap_142_Inactive()
    self:OnExit_box_MIS_430_SteamTrap_142_Inactive();
end;

function export:f_box_MIS_430_SteamTrap_142_Out()
    self:OnExit_box_MIS_430_SteamTrap_142_Out();
end;

function export:f_box_MIS_430_CarAlarm_24_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_27();
    l0 = self.box_MIS_430_CarAlarm_24;
    l1 = self.box_Delay_v5_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|397040740", "397040740", "MIS_430_B20", "box_MIS_430_CarAlarm_24.Ended", "box_Delay_v5_27.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_37_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_207;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1012856594", "1012856594", "MIS_430_B20", "box_IsEntityLoaded_v3_37.True", "box_PhoneCallExclusivityModifier_207.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_MissionBlockLayer_44_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_102();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|748191513", "748191513", "MIS_430_B20", "box_MissionBlockLayer_44.Activated", "box_OutputOrder_v2_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_22_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|535289271", "535289271", "MIS_430_B20", "box_ParticleSystem_v3_22.Started", "box_Delay_v5_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_97_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_430_BarrelCatapult_50();
    l0 = self.box_Delay_v5_97;
    l1 = self.box_MIS_430_BarrelCatapult_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1549015428", "1549015428", "MIS_430_B20", "box_Delay_v5_97.TimeElapsed", "box_MIS_430_BarrelCatapult_50.Launch", l0:GetLuaBox(), l1:GetLuaBox());
    -- Launch
    l1:Exec(0, params);
end;

function export:f_box_RequestPhoneCall_v2_206_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_206;
    l1 = self.box_PhoneCallExclusivityModifier_208;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1869860560", "1869860560", "MIS_430_B20", "box_RequestPhoneCall_v2_206.Completed", "box_PhoneCallExclusivityModifier_208.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_158_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2034614195", "2034614195", "MIS_430_B20", "box_OutputOrder_v2_158.Out", "box_OnceOnly_v3_157.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_158_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_75();
    l0 = self.box_Delay_v5_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1652966745", "1652966745", "MIS_430_B20", "box_OutputOrder_v2_158.Out", "box_Delay_v5_75.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PhoneCallExclusivityModifier_165_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_164();
    l0 = self.box_PhoneCallExclusivityModifier_165;
    l1 = self.box_RequestPhoneCall_v2_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1799810813", "1799810813", "MIS_430_B20", "box_PhoneCallExclusivityModifier_165.Enabled", "box_RequestPhoneCall_v2_164.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_179_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_179;
    l1 = self.box_PhoneCallExclusivityModifier_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1102783844", "1102783844", "MIS_430_B20", "box_RequestPhoneCall_v2_179.Completed", "box_PhoneCallExclusivityModifier_177.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_82();
    l0 = self.box_Delay_v5_17;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|695985315", "695985315", "MIS_430_B20", "box_Delay_v5_17.TimeElapsed", "box_Simple_Node_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_117_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_113();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|363676444", "363676444", "MIS_430_B20", "box_OutputOrder_v2_117.Out", "box_Simple_Node_113.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_117_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_107();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1139178799", "1139178799", "MIS_430_B20", "box_OutputOrder_v2_117.Out", "box_Simple_Node_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_172_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_173();
    l0 = self.box_PhoneCallExclusivityModifier_172;
    l1 = self.box_RequestPhoneCall_v2_173;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1442581462", "1442581462", "MIS_430_B20", "box_PhoneCallExclusivityModifier_172.Enabled", "box_RequestPhoneCall_v2_173.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_83_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_84();
    l0 = self.box_SpawnAI_Wave_v2_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1899396913", "1899396913", "MIS_430_B20", "box_OutputOrder_v2_83.Out", "box_SpawnAI_Wave_v2_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_83_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_82();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|753965454", "753965454", "MIS_430_B20", "box_OutputOrder_v2_83.Out", "box_Simple_Node_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_222();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1349517423", "1349517423", "MIS_430_B20", "box_OutputOrder_v2_83.Out", "box_Simple_Node_222.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_13();
    l0 = self.box_Gate_v3_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2130567227", "2130567227", "MIS_430_B20", "box_OutputOrder_v2_83.Out", "box_Gate_v3_13.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_83_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_124();
    l0 = self.box_Delay_v5_124;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|618417323", "618417323", "MIS_430_B20", "box_OutputOrder_v2_83.Out", "box_Delay_v5_124.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_83_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_229();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|545100843", "545100843", "MIS_430_B20", "box_OutputOrder_v2_83.Out", "box_Simple_Node_229.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_67();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1150522911", "1150522911", "MIS_430_B20", "box_ActivityInitialized_2.Out", "box_OutputOrder_v2_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_14_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_72();
    l0 = self.box_Delay_v5_14;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|710037844", "710037844", "MIS_430_B20", "box_Delay_v5_14.TimeElapsed", "box_Simple_Node_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_84_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_73();
    l0 = self.box_SpawnAI_Wave_v2_84;
    l1 = self.box_SpawnAI_Wave_v2_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|980219026", "980219026", "MIS_430_B20", "box_SpawnAI_Wave_v2_84.NextWave", "box_SpawnAI_Wave_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_134_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_135();
    l0 = self.box_Delay_v5_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1766634598", "1766634598", "MIS_430_B20", "box_ParticleSystem_v3_134.Started", "box_Delay_v5_135.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RequestPhoneCall_v2_164_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_164;
    l1 = self.box_PhoneCallExclusivityModifier_167;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|129405440", "129405440", "MIS_430_B20", "box_RequestPhoneCall_v2_164.Completed", "box_PhoneCallExclusivityModifier_167.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_OnceOnly_v3_160_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_160;
    l1 = self.box_PhoneCallExclusivityModifier_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1159793372", "1159793372", "MIS_430_B20", "box_OnceOnly_v3_160.Out", "box_PhoneCallExclusivityModifier_162.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_MIS_430_SteamTrap_26_Activated()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_26_Activated();
    params = self:OnEnter_box_Simple_Node_33();
    l0 = self.box_MIS_430_SteamTrap_26;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1724135704", "1724135704", "MIS_430_B20", "box_MIS_430_SteamTrap_26.Activated", "box_Simple_Node_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_26_Active()
    self:OnExit_box_MIS_430_SteamTrap_26_Active();
end;

function export:f_box_MIS_430_SteamTrap_26_Inactive()
    self:OnExit_box_MIS_430_SteamTrap_26_Inactive();
end;

function export:f_box_MIS_430_SteamTrap_26_Out()
    self:OnExit_box_MIS_430_SteamTrap_26_Out();
end;

function export:f_box_ParticleSystem_v3_129_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_128();
    l0 = self.box_Delay_v5_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|15215384", "15215384", "MIS_430_B20", "box_ParticleSystem_v3_129.Started", "box_Delay_v5_128.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IsEntityLoaded_v3_61_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1456109374", "1456109374", "MIS_430_B20", "box_IsEntityLoaded_v3_61.False", "box_MultipleOR_60.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_61_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_103();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|679916373", "679916373", "MIS_430_B20", "box_IsEntityLoaded_v3_61.True", "box_MissionBlockLayer_103.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_153_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_151();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1099824571", "1099824571", "MIS_430_B20", "box_OutputOrder_v2_153.Out", "box_IsEntityLoaded_v3_151.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_153_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_152();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|776648299", "776648299", "MIS_430_B20", "box_OutputOrder_v2_153.Out", "box_IsEntityLoaded_v3_152.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_153_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_58();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1924161919", "1924161919", "MIS_430_B20", "box_OutputOrder_v2_153.Out", "box_IsEntityLoaded_v3_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_ActivatedTrap_Bark");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_33_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_ActivateTrapsTurbine_A");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_110_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_ActivateTrapsTurbine_B");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_112_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_ActivateWarning");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_109_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_CarAlarms");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_71_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_Catapult");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_72_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_DeactivateTrapsTurbine_A");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_111_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_DeactivateTrapsTurbine_B");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_113_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_DisableListener_A");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_106_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_DisableListener_B");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_107_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_End_Fail_B20");
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_End_Success_B20");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_94_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_EnemyBarks");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_229_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_Flares_B20");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_92_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_NoBarksShouldPlay");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_144_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_Pumps Destroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_69_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_QuadInTrigger");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_222_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_Setup_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_70_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_216()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_SoundLosingTurbines");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_216_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_StartSetup_B20");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_93_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_StartSharkyBarksAgain");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_145_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_StopMusic");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_215_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@n_WaveCleanup_B20");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|@nCatapult_Style2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_82_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_186()
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

function export:OnEnter_box_RequestPhoneCall_v2_189()
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

function export:OnEnter_box_GroupSizeListener_v6_87()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#EBA442B1",
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|78158724");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityInGroup_223_False,
        -- True,
        [1] = self.f_box_IsEntityInGroup_223_True,
    });
    params = {
        -- Entity,
        [0] = self.e_TrapUser,
        -- Group,
        [1] = "#EBA442B1",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_96()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|107374790");
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
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|113078874");
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
                [0] = self.f_box_OutputOrder_v2_104_Out_0,
                [1] = self.f_box_OutputOrder_v2_104_Out_1,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_85()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "2108998309050866770",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109016214102647648",
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
        [5] = "325467589",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_19()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|205560212");
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

function export:OnEnter_box_ActivityRetry_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|217492121");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_52()
    local params;
    params = {
        -- Amplitude,
        [0] = 1700,
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
        [6] = "2106799928429788522",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|237260499");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_99_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "27160309022500288",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|245052558");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_103_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "54181906786865724",
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
        [5] = "622854505",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_53()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|279783930");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_132_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108900679195041671",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_28()
    local params;
    params = {
        -- Amplitude,
        [0] = 1800,
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
        [6] = "2106801952598801815",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|319372886");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_8_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_430_B20_a_OBJ_Defend",
            id = "960696",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|367944993");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_108_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_108_True,
    });
    params = {
        -- entityId,
        [0] = "2106663202673672012",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_128()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|457705213");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2106649887673165262",
        -- Group,
        [1] = self.g_WestCoverAttackers,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_11()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_200()
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

function export:OnEnter_box_IsEntityInGroup_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|491100259");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_89_True,
    });
    params = {
        -- Entity,
        [0] = self.e_TrapUser,
        -- Group,
        [1] = self._sld_PlayerGroup_box_GetPlayerGroup_v2_65,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_80()
    local params;
    params = {
        -- Amplitude,
        [0] = 1700,
        -- Archetype,
        [1] = "9015347526960658",
        -- AutoExplodes,
        [2] = true,
        -- ExplosionDelay,
        [3] = 3.5,
        -- Particle,
        [4] = "2108900442875378533",
        -- SpawnPosition,
        [5] = "2106799932559080818",
        -- Target,
        [6] = "2106799928429788522",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|557758147");
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
                [0] = self.f_box_OutputOrder_v2_147_Out_0,
                [1] = self.f_box_OutputOrder_v2_147_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_90()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_81()
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

function export:OnEnter_box_MIS_430_BarrelCatapult_50()
    local params;
    params = {
        -- Amplitude,
        [0] = 1800,
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

function export:OnEnter_box_Delay_v5_41()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_140()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|631777806");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108900687562678155",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_169()
    local params;
    params = {
        -- Delay,
        [2] = 1,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1643191144",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|635969689");
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
                [0] = self.f_box_OutputOrder_v2_161_Out_0,
                [1] = self.f_box_OutputOrder_v2_161_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_27()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_46()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_182()
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

function export:OnEnter_box_ProximityTrigger_v3_220()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "2109014633495939460",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109016226507301729",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_217()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|749554216");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_217_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2106649887673165262",
        -- Group,
        [1] = "2108998309050866770",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|766434498");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
                [2] = self.f_box_OutputOrder_v2_35_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_183()
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

function export:OnEnter_box_ParticleSystem_v3_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|782815523");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_20_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2106802084755016540",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|790665920");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_130_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108900559294566375",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_226()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|813516294");
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
                [0] = self.f_box_OutputOrder_v2_67_Out_0,
                [1] = self.f_box_OutputOrder_v2_67_Out_1,
                [2] = self.f_box_OutputOrder_v2_67_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_7()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|856368719");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_58_True,
    });
    params = {
        -- entityId,
        [0] = "2106648218036093307",
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_48()
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

function export:OnEnter_box_MIS_430_SteamTrap_139()
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

function export:OnEnter_box_Gate_v3_143()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_30()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_66()
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

function export:OnEnter_box_MIS_430_BarrelCatapult_78()
    local params;
    params = {
        -- Amplitude,
        [0] = 1750,
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
        [6] = "2106799928429788522",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_148()
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

function export:OnEnter_box_RandomFloat_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1037655836");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_121_Out,
    });
    params = {
        -- Max,
        [0] = 25,
        -- Min,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1038571441");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_63_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "45174707532116349",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1038581881");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_120_Out,
    });
    params = {
        -- Max,
        [0] = 25,
        -- Min,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_74()
    local params;
    params = {
        -- Amplitude,
        [0] = 1800,
        -- Archetype,
        [1] = "9015347526960658",
        -- AutoExplodes,
        [2] = true,
        -- ExplosionDelay,
        [3] = 3.5,
        -- Particle,
        [4] = "2108900442875378533",
        -- SpawnPosition,
        [5] = "2106801815805771102",
        -- Target,
        [6] = "2106801952598801815",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_211()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_54()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_213()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1067827349");
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
                [0] = self.f_box_OutputOrder_v2_213_Out_0,
                [1] = self.f_box_OutputOrder_v2_213_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_76()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_13()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1144632112");
    l0:SetConnections({
    });
    l0 = self.box_CharacterLoadedIdListener_v2_98;
    params = {
        -- Pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_77()
    local params;
    params = {
        -- Amplitude,
        [0] = 1800,
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
        [6] = "2106801952598801815",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_127()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_CarAlarm_32()
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

function export:OnEnter_box_IsEntityLoaded_v3_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1162601615");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_151_True,
    });
    params = {
        -- entityId,
        [0] = "2109016473266606925",
    };
    return params;
end;

function export:OnEnter_box_Brick_Defend_Object_CORE_v3_15()
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
            item = "MIS_430_B20_a_OBJ_Defend",
            id = "960696",
        },
        -- ObjectiveMarker,
        [8] = "2106663239891828559",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_101()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2106663202673672012",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1199968375");
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
                [0] = self.f_box_OutputOrder_v2_221_Out_0,
                [1] = self.f_box_OutputOrder_v2_221_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_124()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 80,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_133()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_49()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_59()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_73()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2108196468461409062",
        -- CoreNPCGroup,
        [2] = "#EBA442B1",
        -- IsLastWave,
        [3] = true,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2108817136781644293",
        -- opt_AttackerSpawner_3,
        [6] = "2108817239242199881",
        -- opt_AttackerSpawner_5,
        [8] = "2108817258043167683",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_138()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Random_201()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 8,
        },
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_40()
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

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1365709776");
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

function export:OnEnter_box_RequestPhoneCall_v2_199()
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

function export:OnEnter_box_StaticBreakableListener_55()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2106649748548098372",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_36()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 7,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1396291334");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_42_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_42_True,
    });
    params = {
        -- entityId,
        [0] = "2106663202673672012",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_21()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_227()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1404754563");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1410172988");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_150_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_430_B20_a_OBJ_Defend",
            id = "960696",
        },
        -- Progress,
        [1] = 0,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1411751184");
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
        [8] = "MIS_430_B20 script is running.",
        -- useTimeTag,
        [9] = true,
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
        [5] = "459116608",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_218()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1419323123");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_218_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2106649887673165262",
        -- Group,
        [1] = "2109014633495939460",
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
        [5] = "1709085205",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_137()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 12,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1450885223");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1451794131");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
                [2] = self.f_box_OutputOrder_v2_1_Out_2,
                [3] = self.f_box_OutputOrder_v2_1_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Random_25()
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

function export:OnEnter_box_MIS_430_SteamTrap_141()
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
        [5] = "236469685",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1500872452");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_65_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_75()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_GetContextualStrategyUniqueGroup_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetContextualStrategyUniqueGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetContextualStrategyUniqueGroup_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1524004784");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetContextualStrategyUniqueGroup_126_Out,
    });
    params = {
        -- contextualStrategyId,
        [0] = "2107092544868341050",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_98()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015196386540318",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_45()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1547476472");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_31_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "54181906786865724",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1569803446");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_119_Out,
    });
    params = {
        -- Max,
        [0] = 25,
        -- Min,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_BarrelCatapult_38()
    local params;
    params = {
        -- Amplitude,
        [0] = 1750,
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
        [6] = "2106799928429788522",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1643430785");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_152_True,
    });
    params = {
        -- entityId,
        [0] = "2109016475781092195",
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

function export:OnEnter_box_RequestPhoneCall_v2_170()
    local params;
    params = {
        -- Delay,
        [2] = 1,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1694352214",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_193()
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

function export:OnEnter_box_ParticleSystem_v3_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1700340738");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_18_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2106802085686152030",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1724521800");
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
                [0] = self.f_box_OutputOrder_v2_91_Out_0,
                [1] = self.f_box_OutputOrder_v2_91_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_131()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1734284490");
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
                [0] = self.f_box_OutputOrder_v2_214_Out_0,
                [1] = self.f_box_OutputOrder_v2_214_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1736020864");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_79()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1775815550");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_122_Out,
    });
    params = {
        -- Max,
        [0] = 25,
        -- Min,
        [1] = 15,
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

function export:OnEnter_box_MIS_430_SteamTrap_146()
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

function export:OnEnter_box_MissionBlockLayer_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1815154228");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_57_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "27160309022500288",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1843299849");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
                [2] = self.f_box_OutputOrder_v2_34_Out_2,
            },
            count = 3,
        },
    });
    params = {
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
        [5] = "1966011895",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_142()
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

function export:OnEnter_box_MIS_430_CarAlarm_24()
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

function export:OnEnter_box_IsEntityLoaded_v3_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1890294844");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_37_True,
    });
    params = {
        -- entityId,
        [0] = "2106649748548098372",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1890609706");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_44_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "36167508277255094",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|1911079306");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_22_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2106802078396451672",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_97()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_206()
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

function export:OnEnter_box_OutputOrder_v2_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2020522890");
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
                [0] = self.f_box_OutputOrder_v2_158_Out_0,
                [1] = self.f_box_OutputOrder_v2_158_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_179()
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

function export:OnEnter_box_Delay_v5_17()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 50,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2044152570");
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
                [0] = self.f_box_OutputOrder_v2_117_Out_0,
                [1] = self.f_box_OutputOrder_v2_117_Out_1,
            },
            count = 3,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2089006817");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 7,
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
                [3] = self.f_box_OutputOrder_v2_83_Out_3,
                [4] = self.f_box_OutputOrder_v2_83_Out_4,
                [5] = self.f_box_OutputOrder_v2_83_Out_5,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2099876528");
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

function export:OnEnter_box_Delay_v5_14()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 60,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_84()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 3,
        -- AttackerSpawner_1,
        [1] = "2108998209633278907",
        -- CoreNPCGroup,
        [2] = "#EBA442B1",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2106648199134461522",
        -- opt_AttackerSpawner_3,
        [6] = "2106648218027704688",
        -- opt_AttackerSpawner_5,
        [8] = "2106648237160022545",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2117093942");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_134_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108900674057019263",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_164()
    local params;
    params = {
        -- Delay,
        [2] = 1,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "612552477",
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_26()
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

function export:OnEnter_box_ParticleSystem_v3_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2137813317");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_129_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108900558038372325",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2143768862");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_61_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_61_True,
    });
    params = {
        -- entityId,
        [0] = "2106649748548098372",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B20.domino|@MIS_430_B20|2147459984");
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
                [0] = self.f_box_OutputOrder_v2_153_Out_0,
                [1] = self.f_box_OutputOrder_v2_153_Out_1,
                [2] = self.f_box_OutputOrder_v2_153_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_GroupSizeListener_v6_87_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_87;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_87_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_87;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_87_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_87;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_87_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_87;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_87_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_87;
    self.i_attackersLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_RandomFloat_v2_123_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self.f_RandomDelay_BarrelExplosion = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_139_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_139;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_139_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_139;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_139_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_139;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_139_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_139;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_121_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self.f_RandomDelay_BarrelExplosion = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_120_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self.f_RandomDelay_BarrelExplosion = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_141_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_141;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_141_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_141;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_141_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_141;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_141_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_141;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_65_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self._sld_PlayerGroup_box_GetPlayerGroup_v2_65 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetContextualStrategyUniqueGroup_126_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetContextualStrategyUniqueGroup.lua")];
    self.g_WestCoverAttackers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_119_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self.f_RandomDelay_BarrelExplosion = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_122_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self.f_RandomDelay_BarrelExplosion = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_146_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_146;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_146_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_146;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_146_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_146;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_146_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_146;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_142_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_142;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_142_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_142;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_142_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_142;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_142_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_142;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_26_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_26;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_26_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_26;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_26_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_26;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_26_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_26;
    self.e_TrapUser = l0:GetDataOutValue(0);
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
