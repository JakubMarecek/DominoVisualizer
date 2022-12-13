LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni35/uni35_030/uni35_030_b20.domino
-- User graph: UNI35_030_B20_siege
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Endure_Waves.Brick_Endure_CORE_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v2.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
        cboxRes:RegisterBox("Domino/System/UnlockDoor.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_030/UNI35_030_B10.RemoveNPCs.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2069660599.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3268609932.bnk]], "CSoundResource");
        cboxRes:LoadResource([[961758510.bnk]], "CSoundResource");
        cboxRes:LoadResource([[602994297.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1708373578.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2540576941.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3636457693.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3796511576.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1004243865.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2814837937.bnk]], "CSoundResource");
        cboxRes:LoadResource([[272370895.bnk]], "CSoundResource");
        cboxRes:LoadResource([[419427389.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_030/UNI35_030_B20.UNI35_030_B20_siege.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Endure_Waves.Brick_Endure_CORE_v3.debug.lua")] = {
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
                name = "Out",
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
                name = "Attacker_Group",
                type = "group",
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
                name = "FailArea",
                type = "entity",
            },
            [4] = {
                name = "Marker",
                type = "entity",
            },
            [5] = {
                name = "Objective",
                type = "oasis",
            },
            [6] = {
                name = "opt_ObjectiveFail",
                type = "oasis",
            },
            [7] = {
                name = "WarningArea",
                type = "entity",
            },
        },
        dataInCount = 8,
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
                name = "WaitForMusicStatePriorityOver",
                type = "int",
            },
            [10] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [11] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 12,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")] = {
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
                name = "ActivityAbortAndFastTravelEnabled",
                type = "bool",
            },
            [1] = {
                name = "SleepingCampEnabled",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/ContextualActionListener.lua")] = {
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
                name = "Available",
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
                name = "End",
                delayed = true,
            },
            [4] = {
                name = "Interrupt",
                delayed = true,
            },
            [5] = {
                name = "Markup1",
                delayed = true,
            },
            [6] = {
                name = "Markup2",
                delayed = true,
            },
            [7] = {
                name = "Select",
                delayed = true,
            },
            [8] = {
                name = "Start",
                delayed = true,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "CallForceNormalEnd",
            },
            [1] = {
                name = "CallInterrupt",
            },
            [2] = {
                name = "Disable",
            },
            [3] = {
                name = "Enable",
            },
            [4] = {
                name = "Use",
            },
        },
        controlInCount = 5,
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
                name = "ForceNormalEndCalled",
                delayed = false,
            },
            [3] = {
                name = "InterruptCalled",
                delayed = false,
            },
            [4] = {
                name = "UseCalled",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
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
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/IsPawnAlive_v2.lua")] = {
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
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/LookAtTrigger_v2.lua")] = {
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
                name = "EnterFOV",
                delayed = true,
            },
            [3] = {
                name = "LeaveFOV",
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
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "LookingPawn",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/ProximityRadiusListener_v3.lua")] = {
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
                name = "AllFar",
                delayed = true,
            },
            [1] = {
                name = "AllNear",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Enabled",
                delayed = false,
            },
            [4] = {
                name = "SomeoneFar",
                delayed = true,
            },
            [5] = {
                name = "SomeoneNear",
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
                name = "Entities",
                type = "group",
            },
            [2] = {
                name = "farZone",
                type = "float",
            },
            [3] = {
                name = "id2",
                type = "entity",
            },
            [4] = {
                name = "nearZone",
                type = "float",
            },
            [5] = {
                name = "use2d",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "currentEntity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/StaticBreakableBreaker.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Destroy",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceState",
            },
            [3] = {
                name = "NextState",
            },
            [4] = {
                name = "SetDamageable",
            },
            [5] = {
                name = "SetUnDamageable",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "DamageableChanged",
                delayed = false,
            },
            [1] = {
                name = "Destroyed",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "StateChanged",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "entity",
                type = "entity",
            },
            [1] = {
                name = "forcedStateId",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/DisplayCustomUIMsg_v4.lua")] = {
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
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UnlockDoor.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Unlock",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Unlocked",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "door",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_030/UNI35_030_B10.RemoveNPCs.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI35_030_B20_siege";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege";
    self.ObjectiveStatus = false;
    self.FriendlyPlayers = nil;
    self.e_CultistTakesIt = nil;
    self.e_CultistDropsIt = nil;
    self.box_OnceOnly_v3_48 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|73533388");
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
    self.box_Delay_v5_31 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|89645477");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_31_TimeElapsed,
    });
    self.box_EntityStatusListener_66 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|105019636");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_66_Loaded,
    });
    self.box_OnceOnly_v3_74 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|163045097");
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
                [0] = self.f_box_OnceOnly_v3_74_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_36 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|165347965");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_36_Out,
    });
    self.box_SpawnAI_Wave_v2_52 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|205954396");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_52_NextWave,
    });
    self.box_PlayDialog_v6_80 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|232590368");
    l0:SetConnections({
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|235202395");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_29_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_SpawnAI_34 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|309109709");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_34_Out,
    });
    self.box_PlayDialog_v6_46 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|314946798");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_58 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|358561134");
    l0:SetConnections({
    });
    self.box_SpawnAI_20 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|412744697");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_20_Out,
    });
    self.box_Random_55 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|591316169");
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
                [0] = self.f_box_Random_55_Output_0,
                [1] = self.f_box_Random_55_Output_1,
                [2] = self.f_box_Random_55_Output_2,
                [3] = self.f_box_Random_55_Output_3,
            },
            count = 4,
        },
    });
    self.box_DisplayCustomUIMsg_v4_30 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
    l0 = self.box_DisplayCustomUIMsg_v4_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v4_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|701831351");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v4_30_OnDisplay,
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v4_30_OnHide,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|706634147");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_ActivityAcknowledgeGate_23 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|803850926");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_23_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_23_Reloaded,
    });
    self.box_Delay_v5_53 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|837408373");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_53_TimeElapsed,
    });
    self.box_Delay_v5_89 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|925112890");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_89_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_4 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|961164168");
    l0:SetConnections({
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_4_OnEmpty,
    });
    self.box_HealthListener_v6_49 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|969839223");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_49_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_49_Killed,
    });
    self.box_PlayDialog_v6_57 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|972079858");
    l0:SetConnections({
    });
    self.box_Delay_v5_84 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1038670607");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_84_TimeElapsed,
    });
    self.box_Delay_v5_68 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1064589690");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_68_TimeElapsed,
    });
    self.box_EntityStatusListener_79 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1078228050");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_79_Loaded,
    });
    self.box_MultipleOR_106 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1088729165");
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
        [0] = self.f_box_MultipleOR_106_Out,
    });
    self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1160020934");
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
        [0] = self.f_box_MultipleOR_38_Out,
    });
    self.box_SpawnAI_Wave_v2_63 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1187093808");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_63_NextWave,
    });
    self.box_PlayDialog_v6_65 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1216098447");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_35 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1238791328");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_35_Out,
    });
    self.box_EntityStatusListener_81 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1272724191");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_81_Loaded,
    });
    self.box_ProximityRadiusListener_v3_105 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1279214158");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_105_AllFar,
    });
    self.box_PlayDialog_v6_54 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1314828411");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_43 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1345132613");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_43_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_43_FinishedInterrupted,
    });
    self.box_ProximityTrigger_v2_3 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1370399857");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_3_OnOccupied,
    });
    self.box_PlayDialog_v6_82 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1460639571");
    l0:SetConnections({
    });
    self.box_SpawnAI_Wave_v2_75 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1494021283");
    l0:SetConnections({
        -- LastWave_Cleanup,
        [1] = self.f_box_SpawnAI_Wave_v2_75_LastWave_Cleanup,
    });
    self.box_MultipleOR_77 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1534116744");
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
        [0] = self.f_box_MultipleOR_77_Out,
    });
    self.box_ExitZoneWarningListener_v3_69 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1544452851");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_69_FailingZoneEntered,
    });
    self.box_RemoveNPCs_61 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_030/UNI35_030_B10.RemoveNPCs.debug.lua");
    l0 = self.box_RemoveNPCs_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveNPCs_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1584238189");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_27 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1610951387");
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
                [0] = self.f_box_OnceOnly_v3_27_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityRadiusListener_v3_83 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1624652288");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_83_SomeoneNear,
    });
    self.box_ContextualActionListener_11 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1637180376");
    l0:SetConnections({
        -- Available,
        [0] = self.f_box_ContextualActionListener_11_Available,
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_11_Disabled,
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_11_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_11_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_11_Interrupt,
        -- Markup1,
        [5] = self.f_box_ContextualActionListener_11_Markup1,
        -- Markup2,
        [6] = self.f_box_ContextualActionListener_11_Markup2,
        -- Select,
        [7] = self.f_box_ContextualActionListener_11_Select,
        -- Start,
        [8] = self.f_box_ContextualActionListener_11_Start,
    });
    self.box_ContextualActionListener_16 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1818731507");
    l0:SetConnections({
        -- Available,
        [0] = self.f_box_ContextualActionListener_16_Available,
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_16_Disabled,
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_16_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_16_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_16_Interrupt,
        -- Markup1,
        [5] = self.f_box_ContextualActionListener_16_Markup1,
        -- Markup2,
        [6] = self.f_box_ContextualActionListener_16_Markup2,
        -- Select,
        [7] = self.f_box_ContextualActionListener_16_Select,
        -- Start,
        [8] = self.f_box_ContextualActionListener_16_Start,
    });
    self.box_PlayDialog_v6_56 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1824573798");
    l0:SetConnections({
    });
    self.box_SpawnAI_Wave_v2_41 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1828640038");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_41_NextWave,
    });
    self.box_Brick_Endure_CORE_v3_40 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Endure_Waves.Brick_Endure_CORE_v3.debug.lua");
    l0 = self.box_Brick_Endure_CORE_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Endure_CORE_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1849206800");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_Brick_Endure_CORE_v3_40_Out,
        -- Success,
        [2] = self.f_box_Brick_Endure_CORE_v3_40_Success,
        -- Waves,
        [3] = self.f_box_Brick_Endure_CORE_v3_40_Waves,
    });
    self.box_PlayDialog_v6_50 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1882171302");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_95 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1889089459");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_39 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1902334542");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_39_Killed,
    });
    self.box_SpawnAI_Wave_v2_42 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1934113893");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_42_NextWave,
    });
    self.box_Delay_v5_78 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1955934612");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_78_TimeElapsed,
    });
    self.box_LookAtTrigger_v2_104 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1995233258");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_LookAtTrigger_v2_104_Disabled,
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_104_EnterFOV,
        -- LeaveFOV,
        [3] = self.f_box_LookAtTrigger_v2_104_LeaveFOV,
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|2091057869");
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
        [0] = self.f_box_MultipleOR_32_Out,
    });
    self.box_SpawnAI_21 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|2113887319");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_21_Out,
    });
    self.box_PlayDialog_v6_60 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|2119499766");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_60_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_60_FinishedInterrupted,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|184636207", "184636207", "UNI35_030_B20_siege", "In", "box_OutputOrder_v2_24.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_96_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_88();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|300940596", "300940596", "UNI35_030_B20_siege", "box_Simple_Node_96.Out", "box_OutputOrder_v2_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_IsPawnAlive_v2_45();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|2056711611", "2056711611", "UNI35_030_B20_siege", "box_Simple_Node_96.Out", "box_IsPawnAlive_v2_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_71_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1550431253", "1550431253", "UNI35_030_B20_siege", "box_Simple_Node_71.Out", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_55();
    l0 = self.box_Random_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|2038841862", "2038841862", "UNI35_030_B20_siege", "box_OutputOrder_v2_59.Out", "box_Random_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_30();
    l0 = self.box_DisplayCustomUIMsg_v4_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|727742351", "727742351", "UNI35_030_B20_siege", "box_OutputOrder_v2_59.Out", "box_DisplayCustomUIMsg_v4_30.Display", clone:GetLuaBox(), l0:GetLuaBox());
    -- Display
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_59_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_11();
    l0 = self.box_ContextualActionListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|862132785", "862132785", "UNI35_030_B20_siege", "box_OutputOrder_v2_59.Out", "box_ContextualActionListener_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_59_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_49();
    l0 = self.box_HealthListener_v6_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1136174404", "1136174404", "UNI35_030_B20_siege", "box_OutputOrder_v2_59.Out", "box_HealthListener_v6_49.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_59_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v2_100();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|271153215", "271153215", "UNI35_030_B20_siege", "box_OutputOrder_v2_59.Out", "box_IsPawnAlive_v2_100.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v2_101_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_102();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|2088824421", "2088824421", "UNI35_030_B20_siege", "box_IsPawnAlive_v2_101.True", "box_SetContextualStrategy_102.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_2_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_4();
    l0 = self.box_ProximityTrigger_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|375753504", "375753504", "UNI35_030_B20_siege", "box_UseContextualActionModifier_v3_2.Disabled", "box_ProximityTrigger_v2_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_48_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_42();
    l0 = self.box_OnceOnly_v3_48;
    l1 = self.box_SpawnAI_Wave_v2_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|2141451468", "2141451468", "UNI35_030_B20_siege", "box_OnceOnly_v3_48.Out", "box_SpawnAI_Wave_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_31_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_96();
    l0 = self.box_Delay_v5_31;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1218231424", "1218231424", "UNI35_030_B20_siege", "box_Delay_v5_31.TimeElapsed", "box_Simple_Node_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_66_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_39();
    l0 = self.box_EntityStatusListener_66;
    l1 = self.box_HealthListener_v6_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|2010379667", "2010379667", "UNI35_030_B20_siege", "box_EntityStatusListener_66.Loaded", "box_HealthListener_v6_39.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_74_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_52();
    l0 = self.box_OnceOnly_v3_74;
    l1 = self.box_SpawnAI_Wave_v2_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1254630079", "1254630079", "UNI35_030_B20_siege", "box_OnceOnly_v3_74.Out", "box_SpawnAI_Wave_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_36_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_36;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|453573911", "453573911", "UNI35_030_B20_siege", "box_SpawnAI_36.Out", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetContextualStrategy_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|863608093", "863608093", "UNI35_030_B20_siege", "box_SetContextualStrategy_62.Out", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_52_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = self.box_SpawnAI_Wave_v2_52;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|282816644", "282816644", "UNI35_030_B20_siege", "box_SpawnAI_Wave_v2_52.NextWave", "box_OutputOrder_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_26();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1227358118", "1227358118", "UNI35_030_B20_siege", "box_OutputOrder_v2_24.Out", "box_Print_v2_26.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|977803714", "977803714", "UNI35_030_B20_siege", "box_OutputOrder_v2_24.Out", "box_ActivityAcknowledgeGate_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Delay_v5_29_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_IsPawnAlive_v2_101();
    l0 = self.box_Delay_v5_29;
    l1 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|933051917", "933051917", "UNI35_030_B20_siege", "box_Delay_v5_29.Stopped", "box_IsPawnAlive_v2_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_29;
    l1 = self.box_OnceOnly_v3_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|146360120", "146360120", "UNI35_030_B20_siege", "box_Delay_v5_29.TimeElapsed", "box_OnceOnly_v3_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_85_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_86();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|715576970", "715576970", "UNI35_030_B20_siege", "box_UseContextualActionModifier_v3_85.Disabled", "box_UseContextualActionModifier_v3_86.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_36();
    l0 = self.box_SpawnAI_34;
    l1 = self.box_SpawnAI_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|931188117", "931188117", "UNI35_030_B20_siege", "box_SpawnAI_34.Out", "box_SpawnAI_36.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_9_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_92();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|251286385", "251286385", "UNI35_030_B20_siege", "box_UseContextualActionModifier_v3_9.Disabled", "box_UseContextualActionModifier_v3_92.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UnlockDoor_7_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_17();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|503493977", "503493977", "UNI35_030_B20_siege", "box_UnlockDoor_7.Unlocked", "box_UnlockDoor_17.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_21();
    l0 = self.box_SpawnAI_20;
    l1 = self.box_SpawnAI_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1694451642", "1694451642", "UNI35_030_B20_siege", "box_SpawnAI_20.Out", "box_SpawnAI_21.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_1_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_71();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1516008791", "1516008791", "UNI35_030_B20_siege", "box_UseContextualActionModifier_v3_1.Enabled", "box_Simple_Node_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_55_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_54();
    l0 = self.box_Random_55;
    l1 = self.box_PlayDialog_v6_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1740491280", "1740491280", "UNI35_030_B20_siege", "box_Random_55.Output", "box_PlayDialog_v6_54.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_55_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_56();
    l0 = self.box_Random_55;
    l1 = self.box_PlayDialog_v6_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|963040532", "963040532", "UNI35_030_B20_siege", "box_Random_55.Output", "box_PlayDialog_v6_56.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_55_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_57();
    l0 = self.box_Random_55;
    l1 = self.box_PlayDialog_v6_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1225523591", "1225523591", "UNI35_030_B20_siege", "box_Random_55.Output", "box_PlayDialog_v6_57.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_55_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_58();
    l0 = self.box_Random_55;
    l1 = self.box_PlayDialog_v6_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|747741272", "747741272", "UNI35_030_B20_siege", "box_Random_55.Output", "box_PlayDialog_v6_58.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_DisplayCustomUIMsg_v4_30_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_DisplayCustomUIMsg_v4_30;
    l1 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1224512850", "1224512850", "UNI35_030_B20_siege", "box_DisplayCustomUIMsg_v4_30.OnDisplay", "box_Delay_v5_29.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_DisplayCustomUIMsg_v4_30_OnHide()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_DisplayCustomUIMsg_v4_30;
    l1 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1545285965", "1545285965", "UNI35_030_B20_siege", "box_DisplayCustomUIMsg_v4_30.OnHide", "box_Delay_v5_29.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_3();
    l0 = self.box_MultipleOR_25;
    l1 = self.box_ProximityTrigger_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|2034728281", "2034728281", "UNI35_030_B20_siege", "box_MultipleOR_25.Out", "box_ProximityTrigger_v2_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityForceAndLockTracking_76_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_22();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|66395543", "66395543", "UNI35_030_B20_siege", "box_ActivityForceAndLockTracking_76.Enabled", "box_GetPlayerGroup_v2_22.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_18_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_12();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|8645241", "8645241", "UNI35_030_B20_siege", "box_StaticBreakableBreaker_18.Out", "box_StaticBreakableBreaker_12.SetDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDamageable
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_23_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_23;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1292213916", "1292213916", "UNI35_030_B20_siege", "box_ActivityAcknowledgeGate_23.Acknowledged", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_23_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_20();
    l0 = self.box_ActivityAcknowledgeGate_23;
    l1 = self.box_SpawnAI_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1173181598", "1173181598", "UNI35_030_B20_siege", "box_ActivityAcknowledgeGate_23.Reloaded", "box_SpawnAI_20.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_63();
    l0 = self.box_SpawnAI_Wave_v2_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1629796464", "1629796464", "UNI35_030_B20_siege", "box_OutputOrder_v2_51.Out", "box_SpawnAI_Wave_v2_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_53();
    l0 = self.box_Delay_v5_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|281858269", "281858269", "UNI35_030_B20_siege", "box_OutputOrder_v2_51.Out", "box_Delay_v5_53.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_51_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_9();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|216336059", "216336059", "UNI35_030_B20_siege", "box_OutputOrder_v2_51.Out", "box_UseContextualActionModifier_v3_9.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_53_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_50();
    l0 = self.box_Delay_v5_53;
    l1 = self.box_PlayDialog_v6_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|612125474", "612125474", "UNI35_030_B20_siege", "box_Delay_v5_53.TimeElapsed", "box_PlayDialog_v6_50.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_93_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_91();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1545740291", "1545740291", "UNI35_030_B20_siege", "box_UseContextualActionModifier_v3_93.Disabled", "box_UseContextualActionModifier_v3_91.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_89_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_90();
    l0 = self.box_Delay_v5_89;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|449962097", "449962097", "UNI35_030_B20_siege", "box_Delay_v5_89.TimeElapsed", "box_UseContextualActionModifier_v3_90.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|561264561", "561264561", "UNI35_030_B20_siege", "box_OutputOrder_v2_44.Out", "box_OnceOnly_v3_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_46();
    l0 = self.box_PlayDialog_v6_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1158357737", "1158357737", "UNI35_030_B20_siege", "box_OutputOrder_v2_44.Out", "box_PlayDialog_v6_46.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_4_OnEmpty()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_1();
    l0 = self.box_ProximityTrigger_v2_4;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|318810883", "318810883", "UNI35_030_B20_siege", "box_ProximityTrigger_v2_4.OnEmpty", "box_UseContextualActionModifier_v3_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_49_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_49;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|405739342", "405739342", "UNI35_030_B20_siege", "box_HealthListener_v6_49.Downed", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_HealthListener_v6_49_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_49;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|684471198", "684471198", "UNI35_030_B20_siege", "box_HealthListener_v6_49.Killed", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Delay_v5_84_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_80();
    l0 = self.box_Delay_v5_84;
    l1 = self.box_PlayDialog_v6_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|637812051", "637812051", "UNI35_030_B20_siege", "box_Delay_v5_84.TimeElapsed", "box_PlayDialog_v6_80.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_UnlockDoor_17_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_104();
    l0 = self.box_LookAtTrigger_v2_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|687250092", "687250092", "UNI35_030_B20_siege", "box_UnlockDoor_17.Unlocked", "box_LookAtTrigger_v2_104.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_68_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_83();
    l0 = self.box_Delay_v5_68;
    l1 = self.box_ProximityRadiusListener_v3_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|104510830", "104510830", "UNI35_030_B20_siege", "box_Delay_v5_68.TimeElapsed", "box_ProximityRadiusListener_v3_83.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_79_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_84();
    l0 = self.box_EntityStatusListener_79;
    l1 = self.box_Delay_v5_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1879031365", "1879031365", "UNI35_030_B20_siege", "box_EntityStatusListener_79.Loaded", "box_Delay_v5_84.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_106_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_105();
    l0 = self.box_MultipleOR_106;
    l1 = self.box_ProximityRadiusListener_v3_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|793862201", "793862201", "UNI35_030_B20_siege", "box_MultipleOR_106.Out", "box_ProximityRadiusListener_v3_105.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableBreaker_103_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_104();
    l0 = self.box_LookAtTrigger_v2_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1652829046", "1652829046", "UNI35_030_B20_siege", "box_StaticBreakableBreaker_103.Destroyed", "box_LookAtTrigger_v2_104.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_30();
    l0 = self.box_MultipleOR_38;
    l1 = self.box_DisplayCustomUIMsg_v4_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|359953550", "359953550", "UNI35_030_B20_siege", "box_MultipleOR_38.Out", "box_DisplayCustomUIMsg_v4_30.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_Wave_v2_63_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_75();
    l0 = self.box_SpawnAI_Wave_v2_63;
    l1 = self.box_SpawnAI_Wave_v2_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1826730421", "1826730421", "UNI35_030_B20_siege", "box_SpawnAI_Wave_v2_63.NextWave", "box_SpawnAI_Wave_v2_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_19();
    l0 = self.box_ActivityInitialized_35;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1546606321", "1546606321", "UNI35_030_B20_siege", "box_ActivityInitialized_35.Out", "box_ActivityMiscInfoModifier_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_81_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_78();
    l0 = self.box_EntityStatusListener_81;
    l1 = self.box_Delay_v5_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1897969983", "1897969983", "UNI35_030_B20_siege", "box_EntityStatusListener_81.Loaded", "box_Delay_v5_78.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_105_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_103();
    l0 = self.box_ProximityRadiusListener_v3_105;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|396154135", "396154135", "UNI35_030_B20_siege", "box_ProximityRadiusListener_v3_105.AllFar", "box_StaticBreakableBreaker_103.Destroy", l0:GetLuaBox(), l1:GetLuaBox());
    -- Destroy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_43_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_43;
    l1 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|157161025", "157161025", "UNI35_030_B20_siege", "box_PlayDialog_v6_43.Finished", "box_MultipleOR_77.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_43_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_43;
    l1 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1664119921", "1664119921", "UNI35_030_B20_siege", "box_PlayDialog_v6_43.FinishedInterrupted", "box_MultipleOR_77.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_90_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_8();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1383176295", "1383176295", "UNI35_030_B20_siege", "box_UseContextualActionModifier_v3_90.Disabled", "box_UseContextualActionModifier_v3_8.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_3_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_2();
    l0 = self.box_ProximityTrigger_v2_3;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1834207381", "1834207381", "UNI35_030_B20_siege", "box_ProximityTrigger_v2_3.OnOccupied", "box_UseContextualActionModifier_v3_2.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_16();
    l0 = self.box_ContextualActionListener_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|340298474", "340298474", "UNI35_030_B20_siege", "box_OutputOrder_v2_37.Out", "box_ContextualActionListener_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Endure_CORE_v3_40();
    l0 = self.box_Brick_Endure_CORE_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|406979061", "406979061", "UNI35_030_B20_siege", "box_OutputOrder_v2_37.Out", "box_Brick_Endure_CORE_v3_40.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_37_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_5();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|460917567", "460917567", "UNI35_030_B20_siege", "box_OutputOrder_v2_37.Out", "box_UseContextualActionModifier_v3_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_81();
    l0 = self.box_EntityStatusListener_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1028072053", "1028072053", "UNI35_030_B20_siege", "box_OutputOrder_v2_37.Out", "box_EntityStatusListener_81.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_37_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_79();
    l0 = self.box_EntityStatusListener_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1695529283", "1695529283", "UNI35_030_B20_siege", "box_OutputOrder_v2_37.Out", "box_EntityStatusListener_79.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_37_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_95();
    l0 = self.box_Music_Quest_v2_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|103381321", "103381321", "UNI35_030_B20_siege", "box_OutputOrder_v2_37.Out", "box_Music_Quest_v2_95.Start_Reset_MIS_Attacked", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_Reset_MIS_Attacked
    l0:Exec(2, params);
end;

function export:f_box_SpawnAI_Wave_v2_75_LastWave_Cleanup()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_73();
    l0 = self.box_SpawnAI_Wave_v2_75;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1703346027", "1703346027", "UNI35_030_B20_siege", "box_SpawnAI_Wave_v2_75.LastWave_Cleanup", "box_Simple_Node_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_77_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_68();
    l0 = self.box_MultipleOR_77;
    l1 = self.box_Delay_v5_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1772245208", "1772245208", "UNI35_030_B20_siege", "box_MultipleOR_77.Out", "box_Delay_v5_68.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ExitZoneWarningListener_v3_69_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_70();
    l0 = self.box_ExitZoneWarningListener_v3_69;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1711156535", "1711156535", "UNI35_030_B20_siege", "box_ExitZoneWarningListener_v3_69.FailingZoneEntered", "box_ActivityRetry_70.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v2_45_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_60();
    l0 = self.box_PlayDialog_v6_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1185577375", "1185577375", "UNI35_030_B20_siege", "box_IsPawnAlive_v2_45.False", "box_PlayDialog_v6_60.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_IsPawnAlive_v2_45_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_43();
    l0 = self.box_PlayDialog_v6_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1780783112", "1780783112", "UNI35_030_B20_siege", "box_IsPawnAlive_v2_45.True", "box_PlayDialog_v6_43.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_27_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_28();
    l0 = self.box_OnceOnly_v3_27;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|551502404", "551502404", "UNI35_030_B20_siege", "box_OnceOnly_v3_27.Out", "box_ActivityRetry_28.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_83_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_65();
    l0 = self.box_ProximityRadiusListener_v3_83;
    l1 = self.box_PlayDialog_v6_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|798820421", "798820421", "UNI35_030_B20_siege", "box_ProximityRadiusListener_v3_83.SomeoneNear", "box_PlayDialog_v6_65.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ContextualActionListener_11_End()
    local l0, l1;
    self:OnExit_box_ContextualActionListener_11_End();
    l0 = self.box_ContextualActionListener_11;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|808649043", "808649043", "UNI35_030_B20_siege", "box_ContextualActionListener_11.End", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_11_Interrupt()
    local l0, l1;
    self:OnExit_box_ContextualActionListener_11_Interrupt();
    l0 = self.box_ContextualActionListener_11;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|4632140", "4632140", "UNI35_030_B20_siege", "box_ContextualActionListener_11.Interrupt", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_11_Markup1()
    self:OnExit_box_ContextualActionListener_11_Markup1();
end;

function export:f_box_ContextualActionListener_11_Markup2()
    self:OnExit_box_ContextualActionListener_11_Markup2();
end;

function export:f_box_ContextualActionListener_11_Select()
    self:OnExit_box_ContextualActionListener_11_Select();
end;

function export:f_box_ContextualActionListener_11_Start()
    self:OnExit_box_ContextualActionListener_11_Start();
end;

function export:f_box_ContextualActionListener_16_End()
    self:OnExit_box_ContextualActionListener_16_End();
end;

function export:f_box_ContextualActionListener_16_Interrupt()
    self:OnExit_box_ContextualActionListener_16_Interrupt();
end;

function export:f_box_ContextualActionListener_16_Markup1()
    self:OnExit_box_ContextualActionListener_16_Markup1();
end;

function export:f_box_ContextualActionListener_16_Markup2()
    self:OnExit_box_ContextualActionListener_16_Markup2();
end;

function export:f_box_ContextualActionListener_16_Select()
    self:OnExit_box_ContextualActionListener_16_Select();
end;

function export:f_box_ContextualActionListener_16_Start()
    local params, l0, l1;
    self:OnExit_box_ContextualActionListener_16_Start();
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = self.box_ContextualActionListener_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|247081656", "247081656", "UNI35_030_B20_siege", "box_ContextualActionListener_16.Start", "box_OutputOrder_v2_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_41_NextWave()
    local l0, l1;
    l0 = self.box_SpawnAI_Wave_v2_41;
    l1 = self.box_OnceOnly_v3_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|255828003", "255828003", "UNI35_030_B20_siege", "box_SpawnAI_Wave_v2_41.NextWave", "box_OnceOnly_v3_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Endure_CORE_v3_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_Brick_Endure_CORE_v3_40;
    l1 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|861648889", "861648889", "UNI35_030_B20_siege", "box_Brick_Endure_CORE_v3_40.Out", "box_Delay_v5_31.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_Endure_CORE_v3_40_Success()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_6();
    l0 = self.box_Brick_Endure_CORE_v3_40;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|492836209", "492836209", "UNI35_030_B20_siege", "box_Brick_Endure_CORE_v3_40.Success", "box_ActivityEnd_6.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Endure_CORE_v3_40_Waves()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_41();
    l0 = self.box_Brick_Endure_CORE_v3_40;
    l1 = self.box_SpawnAI_Wave_v2_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|890451413", "890451413", "UNI35_030_B20_siege", "box_Brick_Endure_CORE_v3_40.Waves", "box_SpawnAI_Wave_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|754702041", "754702041", "UNI35_030_B20_siege", "box_OutputOrder_v2_33.Out", "box_OutputOrder_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_RemoveNPCs_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|267632715", "267632715", "UNI35_030_B20_siege", "box_OutputOrder_v2_33.Out", "box_RemoveNPCs_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_33_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_18();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|429958646", "429958646", "UNI35_030_B20_siege", "box_OutputOrder_v2_33.Out", "box_StaticBreakableBreaker_18.SetDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDamageable
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_69();
    l0 = self.box_ExitZoneWarningListener_v3_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1834375686", "1834375686", "UNI35_030_B20_siege", "box_OutputOrder_v2_33.Out", "box_ExitZoneWarningListener_v3_69.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_33_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_7();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|2139212422", "2139212422", "UNI35_030_B20_siege", "box_OutputOrder_v2_33.Out", "box_UnlockDoor_7.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_66();
    l0 = self.box_EntityStatusListener_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1795405834", "1795405834", "UNI35_030_B20_siege", "box_OutputOrder_v2_33.Out", "box_EntityStatusListener_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_HealthListener_v6_39_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_10();
    l0 = self.box_HealthListener_v6_39;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1723972777", "1723972777", "UNI35_030_B20_siege", "box_HealthListener_v6_39.Killed", "box_ActivityRetry_10.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v2_100_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_99();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1552129169", "1552129169", "UNI35_030_B20_siege", "box_IsPawnAlive_v2_100.True", "box_SetContextualStrategy_99.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_42_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = self.box_SpawnAI_Wave_v2_42;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|2134528648", "2134528648", "UNI35_030_B20_siege", "box_SpawnAI_Wave_v2_42.NextWave", "box_OutputOrder_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_78_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_82();
    l0 = self.box_Delay_v5_78;
    l1 = self.box_PlayDialog_v6_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1158040831", "1158040831", "UNI35_030_B20_siege", "box_Delay_v5_78.TimeElapsed", "box_PlayDialog_v6_82.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_86_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_87();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|364373192", "364373192", "UNI35_030_B20_siege", "box_UseContextualActionModifier_v3_86.Disabled", "box_UseContextualActionModifier_v3_87.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_73_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Endure_CORE_v3_40();
    l0 = self.box_Brick_Endure_CORE_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|149292479", "149292479", "UNI35_030_B20_siege", "box_Simple_Node_73.Out", "box_Brick_Endure_CORE_v3_40.LastWave_Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- LastWave_Cleanup
    l0:Exec(1, params);
end;

function export:f_box_LookAtTrigger_v2_104_Disabled()
    local l0, l1;
    l0 = self.box_LookAtTrigger_v2_104;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1507885202", "1507885202", "UNI35_030_B20_siege", "box_LookAtTrigger_v2_104.Disabled", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_LookAtTrigger_v2_104_EnterFOV()
    local l0, l1;
    l0 = self.box_LookAtTrigger_v2_104;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1522404839", "1522404839", "UNI35_030_B20_siege", "box_LookAtTrigger_v2_104.EnterFOV", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_LookAtTrigger_v2_104_LeaveFOV()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_105();
    l0 = self.box_LookAtTrigger_v2_104;
    l1 = self.box_ProximityRadiusListener_v3_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|253158684", "253158684", "UNI35_030_B20_siege", "box_LookAtTrigger_v2_104.LeaveFOV", "box_ProximityRadiusListener_v3_105.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_88_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_85();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1148746760", "1148746760", "UNI35_030_B20_siege", "box_OutputOrder_v2_88.Out", "box_UseContextualActionModifier_v3_85.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_88_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_89();
    l0 = self.box_Delay_v5_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|110032689", "110032689", "UNI35_030_B20_siege", "box_OutputOrder_v2_88.Out", "box_Delay_v5_89.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_88_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_93();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1298845902", "1298845902", "UNI35_030_B20_siege", "box_OutputOrder_v2_88.Out", "box_UseContextualActionModifier_v3_93.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityMiscInfoModifier_v2_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_76();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|192805971", "192805971", "UNI35_030_B20_siege", "box_ActivityMiscInfoModifier_v2_19.Out", "box_ActivityForceAndLockTracking_76.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_92_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_94();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|2040475321", "2040475321", "UNI35_030_B20_siege", "box_UseContextualActionModifier_v3_92.Disabled", "box_UseContextualActionModifier_v3_94.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_32_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_32;
    l1 = self.box_ActivityInitialized_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1345682440", "1345682440", "UNI35_030_B20_siege", "box_MultipleOR_32.Out", "box_ActivityInitialized_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_GetPlayerGroup_v2_22_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_22_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_62();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|2142180890", "2142180890", "UNI35_030_B20_siege", "box_GetPlayerGroup_v2_22.Out", "box_SetContextualStrategy_62.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_34();
    l0 = self.box_SpawnAI_21;
    l1 = self.box_SpawnAI_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1229086918", "1229086918", "UNI35_030_B20_siege", "box_SpawnAI_21.Out", "box_SpawnAI_34.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_60_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_60;
    l1 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|562471422", "562471422", "UNI35_030_B20_siege", "box_PlayDialog_v6_60.Finished", "box_MultipleOR_77.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_60_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_60;
    l1 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1349248147", "1349248147", "UNI35_030_B20_siege", "box_PlayDialog_v6_60.FinishedInterrupted", "box_MultipleOR_77.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_UseContextualActionModifier_v3_5_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|696219764", "696219764", "UNI35_030_B20_siege", "box_UseContextualActionModifier_v3_5.Enabled", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|@n_ResistantSTPChaining");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_96_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|@nCheckTrailer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_71_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|4371171");
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

function export:OnEnter_box_UseContextualActionModifier_v3_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|4933585");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104548711104280628",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|12786547");
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
                [0] = self.f_box_OutputOrder_v2_59_Out_0,
                [1] = self.f_box_OutputOrder_v2_59_Out_1,
                [2] = self.f_box_OutputOrder_v2_59_Out_2,
                [3] = self.f_box_OutputOrder_v2_59_Out_3,
                [4] = self.f_box_OutputOrder_v2_59_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|19811577");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_101_True,
    });
    params = {
        -- Pawn,
        [0] = self.e_CultistTakesIt,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|26425034");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_2_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102779851560767004",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|89499346");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104548586632010155",
        -- Entity,
        [1] = "2102618407212982887",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_31()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 12,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_66()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102723365331552851",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_36()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103481959733794732",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|173970005");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_62_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104286646202580372",
        -- Group,
        [1] = "#596653F8",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_52()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2103483787051552493",
        -- CoreNPCGroup,
        [2] = "#28DAD321",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2103483793437380390",
        -- opt_AttackerSpawner_3,
        [6] = "2103483796157386597",
        -- opt_AttackerSpawner_5,
        [8] = "2103483803071696819",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|224337192");
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

function export:OnEnter_box_PlayDialog_v6_80()
    local params;
    params = {
        -- Group,
        [0] = "2102618407212982887",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3636457693",
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

function export:OnEnter_box_UseContextualActionModifier_v3_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|301883200");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_85_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103166817859047571",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_34()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102618407208788577",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_46()
    local params;
    params = {
        -- Group,
        [0] = self.FriendlyPlayers,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "419427389",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|355508378");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_9_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104548586632010155",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_58()
    local params;
    params = {
        -- Group,
        [0] = self.FriendlyPlayers,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1004243865",
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|365737643");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_7_Unlocked,
    });
    params = {
        -- door,
        [0] = "2102611099772796302",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_20()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102723359585356253",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|508427913");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105127797235174867",
        -- Group,
        [1] = self.e_CultistTakesIt,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|579019890");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_1_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102779851560767004",
    };
    return params;
end;

function export:OnEnter_box_Random_55()
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

function export:OnEnter_box_ActivityRetry_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|696443781");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI35_030_B25_Fail",
            id = "869510",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v4_30()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "UNI35_030_Placeholder3",
            id = "730976",
        },
        -- pawns,
        [1] = self.FriendlyPlayers,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|710902474");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|780245582");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_76_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|789806951");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_StaticBreakableBreaker_18_Out,
    });
    params = {
        -- entity,
        [0] = "2102611109012848016",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|794725012");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI35_030_Placeholder4",
            id = "730977",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|818957307");
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
                [1] = self.f_box_OutputOrder_v2_51_Out_1,
                [2] = self.f_box_OutputOrder_v2_51_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_53()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|843692957");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103482526210215373",
        -- Group,
        [1] = self.e_CultistTakesIt,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|878751717");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_93_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102726447998254155",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_89()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|955135969");
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
                [0] = self.f_box_OutputOrder_v2_44_Out_0,
                [1] = self.f_box_OutputOrder_v2_44_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_4()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.FriendlyPlayers,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103470467464585542",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_49()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.e_CultistTakesIt,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_57()
    local params;
    params = {
        -- Group,
        [0] = self.FriendlyPlayers,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2069660599",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_84()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1064482520");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_17_Unlocked,
    });
    params = {
        -- door,
        [0] = "2102611109012848016",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_68()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1065479338");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "Green",
        -- duration,
        [3] = 3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "UNI35_030_B20 Script Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_79()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102618407212982887",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1100378867");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2102611099772796302",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1123698792");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_103_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2102611109012848016",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_63()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 2,
        -- AttackerSpawner_1,
        [1] = "2103483852663050329",
        -- CoreNPCGroup,
        [2] = "#28DAD321",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = true,
        -- opt_AttackerSpawner_2,
        [5] = "2103483917284692637",
        -- Timer,
        [14] = 25,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_65()
    local params;
    params = {
        -- Group,
        [0] = "2102618407212982887",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "961758510",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1217186239");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104548711104280628",
        -- Entity,
        [1] = "2102618406917284432",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_81()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103481959740086194",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_105()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#ED455357",
        -- farZone,
        [2] = 18,
        -- id2,
        [3] = "2102611109012848016",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_54()
    local params;
    params = {
        -- Group,
        [0] = self.FriendlyPlayers,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3268609932",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_43()
    local params;
    params = {
        -- Group,
        [0] = "2103481959740086194",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2814837937",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1357095924");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_90_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103166703188873308",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.FriendlyPlayers,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103470467464585542",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_82()
    local params;
    params = {
        -- Group,
        [0] = "2103481959740086194",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "602994297",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1482365585");
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
                [0] = self.f_box_OutputOrder_v2_37_Out_0,
                [1] = self.f_box_OutputOrder_v2_37_Out_1,
                [2] = self.f_box_OutputOrder_v2_37_Out_2,
                [3] = self.f_box_OutputOrder_v2_37_Out_3,
                [4] = self.f_box_OutputOrder_v2_37_Out_4,
                [5] = self.f_box_OutputOrder_v2_37_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_75()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2103483921202172614",
        -- CoreNPCGroup,
        [2] = "#28DAD321",
        -- IsLastWave,
        [3] = true,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2103483925836878597",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_69()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2101040168608757762",
        -- WarningZoneTrigger,
        [3] = "2100000435042524091",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1574355065");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsPawnAlive_v2_45_False,
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_45_True,
    });
    params = {
        -- Pawn,
        [0] = "2103481959740086194",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1581845013");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104548592459995571",
        -- Entity,
        [1] = "2103481959740086194",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_83()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.FriendlyPlayers,
        -- id2,
        [3] = "2102618407212982887",
        -- nearZone,
        [4] = 4,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_11()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102779851560767004",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_16()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102779851560767004",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_56()
    local params;
    params = {
        -- Group,
        [0] = self.FriendlyPlayers,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2540576941",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_41()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 2,
        -- AttackerSpawner_1,
        [1] = "2103482391591929867",
        -- CoreNPCGroup,
        [2] = "#28DAD321",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = true,
        -- Timer,
        [14] = 25,
    };
    return params;
end;

function export:OnEnter_box_Brick_Endure_CORE_v3_40()
    local params;
    params = {
        -- Attacker_Group,
        [0] = "#28DAD321",
        -- bRequiresObjective,
        [1] = true,
        -- CompletePreviousObjective,
        [2] = true,
        -- FailArea,
        [3] = "2101040168608757762",
        -- Marker,
        [4] = "2103551371088253146",
        -- Objective,
        [5] = {
            section = "Objectives",
            item = "UNI35_030_B20_GOAL",
            id = "541167",
        },
        -- opt_ObjectiveFail,
        [6] = {
            section = "BRICK_Endure_Waves",
            item = "BRICK_Endure_ExitWarning",
            id = "426332",
        },
        -- WarningArea,
        [7] = "2100000435042524091",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1859620243");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
                [2] = self.f_box_OutputOrder_v2_33_Out_2,
                [3] = self.f_box_OutputOrder_v2_33_Out_3,
                [4] = self.f_box_OutputOrder_v2_33_Out_4,
                [5] = self.f_box_OutputOrder_v2_33_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_50()
    local params;
    params = {
        -- Group,
        [0] = self.FriendlyPlayers,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1708373578",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_95()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 4,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "272370895",
        -- StopEvent,
        [7] = "3796511576",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_39()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2102723365331552851",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1928957296");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_100_True,
    });
    params = {
        -- Pawn,
        [0] = self.e_CultistTakesIt,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_42()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 1,
        -- AttackerSpawner_1,
        [1] = "2103483607101230714",
        -- CoreNPCGroup,
        [2] = "#28DAD321",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2103483598687456807",
        -- opt_AttackerSpawner_3,
        [6] = "2103483600121908805",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_78()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 9,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1974668047");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_86_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103348942617062763",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1977951404");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_73_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_104()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2105155665780594301",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|1998669430");
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
                [0] = self.f_box_OutputOrder_v2_88_Out_0,
                [1] = self.f_box_OutputOrder_v2_88_Out_1,
                [2] = self.f_box_OutputOrder_v2_88_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|2001082856");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_19_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|2008206760");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_92_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104548592459995571",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|2099185579");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_21()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102618406913090122",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_60()
    local params;
    params = {
        -- Group,
        [0] = self.FriendlyPlayers,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2814837937",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_030\\UNI35_030_B20.domino|@UNI35_030_B20_siege|2142036781");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_5_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102779851560767004",
    };
    return params;
end;

function export:OnExit_box_ContextualActionListener_11_End()
    local l0;
    l0 = self.box_ContextualActionListener_11;
    self.e_CultistDropsIt = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_11_Interrupt()
    local l0;
    l0 = self.box_ContextualActionListener_11;
    self.e_CultistDropsIt = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_11_Markup1()
    local l0;
    l0 = self.box_ContextualActionListener_11;
    self.e_CultistDropsIt = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_11_Markup2()
    local l0;
    l0 = self.box_ContextualActionListener_11;
    self.e_CultistDropsIt = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_11_Select()
    local l0;
    l0 = self.box_ContextualActionListener_11;
    self.e_CultistDropsIt = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_11_Start()
    local l0;
    l0 = self.box_ContextualActionListener_11;
    self.e_CultistDropsIt = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_16_End()
    local l0;
    l0 = self.box_ContextualActionListener_16;
    self.e_CultistTakesIt = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_16_Interrupt()
    local l0;
    l0 = self.box_ContextualActionListener_16;
    self.e_CultistTakesIt = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_16_Markup1()
    local l0;
    l0 = self.box_ContextualActionListener_16;
    self.e_CultistTakesIt = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_16_Markup2()
    local l0;
    l0 = self.box_ContextualActionListener_16;
    self.e_CultistTakesIt = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_16_Select()
    local l0;
    l0 = self.box_ContextualActionListener_16;
    self.e_CultistTakesIt = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_16_Start()
    local l0;
    l0 = self.box_ContextualActionListener_16;
    self.e_CultistTakesIt = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_22_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.FriendlyPlayers = l0:GetDataOutValue(0);
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
