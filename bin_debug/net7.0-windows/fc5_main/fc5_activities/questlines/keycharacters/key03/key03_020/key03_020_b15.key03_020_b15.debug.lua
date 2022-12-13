LUAC � -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key03/key03_020/key03_020_b15.domino
-- User graph: KEY03_020_B15
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundPointModifier.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2059630614.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2805245099.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3462830321.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3288838022.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3982058340.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1532522632.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2374238190.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3285129557.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2833028014.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2845373103.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2932764894.bnk]], "CSoundResource");
        cboxRes:LoadResource([[383401581.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2174275740.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2643753553.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY03/KEY03_020/KEY03_020_B15.KEY03_020_B15.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/RadioModifier_v3.lua")] = {
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
                name = "Enable",
                type = "bool",
            },
            [1] = {
                name = "ImmediateOverride",
                type = "bool",
            },
            [2] = {
                name = "LockOnOff",
                type = "bool",
            },
            [3] = {
                name = "LockStationSwitching",
                type = "bool",
            },
            [4] = {
                name = "StationOverride",
                type = "genericdb",
            },
            [5] = {
                name = "TargetRadio",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/SoundPointModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Start",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Started",
                delayed = false,
            },
            [1] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "soundPoint",
                type = "entity",
            },
        },
        dataInCount = 1,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "KEY03_020_B15";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15";
    self.Hostage_1 = nil;
    self.Player_Group = nil;
    self.Eli = nil;
    self.gp_Interior_Total = nil;
    self.b_IsEliAlive = true;
    self.b_IsEliNotifyingInterior = false;
    self.gp_Interior_Floor_1 = nil;
    self.gp_Interior_Floor_2 = nil;
    self.gp_Interior_Floor_3 = nil;
    self.b_HostageZombieSTP = false;
    self.e_EliVehicleOccupant = nil;
    self.b_EmptyHotel = false;
    self.i_B10_NPCs = 0;
    self.b_CheckpointReloaded = false;
    self.e_NPC_1F = nil;
    self.gp_Enter_Interior = nil;
    self.e_AttackChopperPilot = nil;
    self.i_LastWaveCounter = 0;
    self.i_ChopperCounter = 0;
    self.b_HostageSpawned = false;
    self.box_Delay_v5_394 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_394;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_394");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|7612749");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_394_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_379 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_379;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_379");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|52400681");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_383 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_383;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_383");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|61970597");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_348 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_348;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_348");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|64269455");
    l0:SetConnections({
    });
    self.box_Delay_v5_405 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_405;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_405");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|111039263");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_405_TimeElapsed,
    });
    self.box_GroupSizeListener_v5_374 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_374;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_374");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|121593641");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_374_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_374_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_374_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_374_MemberRemoved,
    });
    self.box_SpawnAI_388 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_388;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_388");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|195338611");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_388_Spawned,
    });
    self.box_Music_Quest_v2_352 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_352;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_352");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|201677321");
    l0:SetConnections({
    });
    self.box_Delay_v5_393 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_393;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_393");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|203014301");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_393_TimeElapsed,
    });
    self.box_GroupSizeListener_v5_396 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_396;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_396");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|263885673");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_396_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_396_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_396_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_396_MemberRemoved,
    });
    self.box_EntityStatusListener_359 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_359;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_359");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|274260160");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_359_Loaded,
    });
    self.box_SpawnAI_Wave_v2_346 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_346;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_346");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|288928453");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_346_NextWave,
    });
    self.box_SpawnAI_Wave_v2_337 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_337;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_337");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|349233314");
    l0:SetConnections({
        -- LastWave_Cleanup,
        [1] = self.f_box_SpawnAI_Wave_v2_337_LastWave_Cleanup,
    });
    self.box_SoundModifier_v2_361 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_361;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_361");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|356666621");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_361_Started,
    });
    self.box_RequestPhoneCall_v2_384 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_384;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_384");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|384960390");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_342 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_342;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_342");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|411123300");
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
                [0] = self.f_box_OnceOnly_v3_342_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_Wave_v2_338 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_338;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_338");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|455380864");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_338_NextWave,
    });
    self.box_MultipleOR_372 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_372;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_372");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|484583650");
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
        [0] = self.f_box_MultipleOR_372_Out,
    });
    self.box_MultipleOR_404 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_404;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_404");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|519264790");
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
        [0] = self.f_box_MultipleOR_404_Out,
    });
    self.box_RequestPhoneCall_v2_349 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_349;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_349");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|525252538");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_347 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_347;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_347");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|559409688");
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
                [0] = self.f_box_OnceOnly_v3_347_Out_0,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_358 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_358;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_358");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|642426259");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_358_Started,
    });
    self.box_SpawnAI_Wave_v2_345 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_345;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_345");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|844625645");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_345_NextWave,
    });
    self.box_RequestPhoneCall_v2_351 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_351;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_351");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|858797079");
    l0:SetConnections({
    });
    self.box_SpawnAI_Wave_v2_343 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_343;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_343");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|939170569");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_343_NextWave,
    });
    self.box_EntityStatusListener_362 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_362;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_362");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|948273459");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_362_Loaded,
    });
    self.box_Delay_v5_368 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_368;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_368");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|955276687");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_368_TimeElapsed,
    });
    self.box_MultipleOR_376 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_376;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_376");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1007614218");
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
        [0] = self.f_box_MultipleOR_376_Out,
    });
    self.box_RequestPhoneCall_v2_350 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_350;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_350");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1021977588");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_335 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_335;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_335");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1083445011");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_335_Out,
    });
    self.box_OnceOnly_v3_344 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_344;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_344");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1137589699");
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
                [0] = self.f_box_OnceOnly_v3_344_Out_0,
            },
            count = 2,
        },
    });
    self.box_ExitZoneWarningListener_v3_353 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_353;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_353");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1190476258");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_353_FailingZoneEntered,
    });
    self.box_HealthListener_v6_419 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_419;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_419");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1238938016");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_419_Damaged,
    });
    self.box_MultipleOR_417 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_417;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_417");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1333377816");
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
        [0] = self.f_box_MultipleOR_417_Out,
    });
    self.box_MultipleOR_336 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_336;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_336");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1341856871");
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
        [0] = self.f_box_MultipleOR_336_Out,
    });
    self.box_MultipleOR_371 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_371;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_371");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1464798400");
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
        [0] = self.f_box_MultipleOR_371_Out,
    });
    self.box_PlayDialog_v6_370 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_370;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_370");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1568529282");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_370_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_370_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_370_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_370_Stopped,
    });
    self.box_PhoneCallExclusivityModifier_341 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_341;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_341");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1635363513");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_341_Enabled,
    });
    self.box_Delay_v5_395 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_395;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_395");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1643790125");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_395_TimeElapsed,
    });
    self.box_OnceOnly_v3_397 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_397;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_397");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1735327528");
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
                [0] = self.f_box_OnceOnly_v3_397_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_366 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_366;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_366");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1829288861");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_366_Loaded,
    });
    self.box_Gate_v3_400 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_400;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_400");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1846803924");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_400_Out,
    });
    self.box_Delay_v5_392 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_392;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_392");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1897536230");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_392_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_403 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_403;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_403");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1947471024");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_403_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_403_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_403_Failed,
    });
    self.box_Delay_v5_378 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_378;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_378");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1956906890");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_378_TimeElapsed,
    });
    self.box_Gate_v3_399 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_399;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_399");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1998265351");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_399_Out,
    });
    self.box_OnceOnly_v3_375 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_375;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_375");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|2037885822");
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
                [0] = self.f_box_OnceOnly_v3_375_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_389 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_389;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_389");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|2048338262");
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
        [0] = self.f_box_MultipleOR_389_Out,
    });
    self.box_ActivityAcknowledgeGate_331 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_331;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_331");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|2078641245");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_331_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_331_Reloaded,
    });
    self.box_OnceOnly_v3_386 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_386;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_386");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|2125893026");
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
                [0] = self.f_box_OnceOnly_v3_386_Out_0,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_360 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_360;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_360");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|2131239230");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_360_Started,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_334();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1044149156", "1044149156", "KEY03_020_B15", "In", "box_OutputOrder_v2_334.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_406_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_396();
    l0 = self.box_GroupSizeListener_v5_396;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|191413751", "191413751", "KEY03_020_B15", "box_Simple_Node_406.Out", "box_GroupSizeListener_v5_396.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0 = self.box_MultipleOR_371;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1883954437", "1883954437", "KEY03_020_B15", "box_Simple_Node_406.Out", "box_MultipleOR_371.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_HealthListener_v6_419();
    l0 = self.box_HealthListener_v6_419;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1318519078", "1318519078", "KEY03_020_B15", "box_Simple_Node_406.Out", "box_HealthListener_v6_419.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_ExitZoneWarningListener_v3_353();
    l0 = self.box_ExitZoneWarningListener_v3_353;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|717504171", "717504171", "KEY03_020_B15", "box_Simple_Node_406.Out", "box_ExitZoneWarningListener_v3_353.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_364();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1544038038", "1544038038", "KEY03_020_B15", "box_Simple_Node_406.Out", "box_OutputOrder_v2_364.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Music_Quest_v2_352();
    l0 = self.box_Music_Quest_v2_352;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|403824162", "403824162", "KEY03_020_B15", "box_Simple_Node_406.Out", "box_Music_Quest_v2_352.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
    params = self:OnEnter_box_AddActivityObjective_v2_367();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1785103742", "1785103742", "KEY03_020_B15", "box_Simple_Node_406.Out", "box_AddActivityObjective_v2_367.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_407_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_329();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|2117773161", "2117773161", "KEY03_020_B15", "box_Simple_Node_407.Out", "box_OutputOrder_v2_329.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_415_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_384();
    l0 = self.box_RequestPhoneCall_v2_384;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|489542692", "489542692", "KEY03_020_B15", "box_Simple_Node_415.Out", "box_RequestPhoneCall_v2_384.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_414_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_383();
    l0 = self.box_RequestPhoneCall_v2_383;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|3473261", "3473261", "KEY03_020_B15", "box_Simple_Node_414.Out", "box_RequestPhoneCall_v2_383.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_413_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_351();
    l0 = self.box_RequestPhoneCall_v2_351;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|739428075", "739428075", "KEY03_020_B15", "box_Simple_Node_413.Out", "box_RequestPhoneCall_v2_351.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_412_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_350();
    l0 = self.box_RequestPhoneCall_v2_350;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|626992624", "626992624", "KEY03_020_B15", "box_Simple_Node_412.Out", "box_RequestPhoneCall_v2_350.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_411_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_379();
    l0 = self.box_RequestPhoneCall_v2_379;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1125049863", "1125049863", "KEY03_020_B15", "box_Simple_Node_411.Out", "box_RequestPhoneCall_v2_379.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_409_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_348();
    l0 = self.box_RequestPhoneCall_v2_348;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|10838087", "10838087", "KEY03_020_B15", "box_Simple_Node_409.Out", "box_RequestPhoneCall_v2_348.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_410_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_349();
    l0 = self.box_RequestPhoneCall_v2_349;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1024524668", "1024524668", "KEY03_020_B15", "box_Simple_Node_410.Out", "box_RequestPhoneCall_v2_349.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_394_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_415();
    l0 = self.box_Delay_v5_394;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1717406943", "1717406943", "KEY03_020_B15", "box_Delay_v5_394.TimeElapsed", "box_Simple_Node_415.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_380_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_343();
    l0 = self.box_SpawnAI_Wave_v2_343;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1215016336", "1215016336", "KEY03_020_B15", "box_OutputOrder_v2_380.Out", "box_SpawnAI_Wave_v2_343.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_380_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_410();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|947532030", "947532030", "KEY03_020_B15", "box_OutputOrder_v2_380.Out", "box_Simple_Node_410.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_405_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_413();
    l0 = self.box_Delay_v5_405;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|235333185", "235333185", "KEY03_020_B15", "box_Delay_v5_405.TimeElapsed", "box_Simple_Node_413.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_374_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_374;
    l1 = self.box_MultipleOR_376;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1426770255", "1426770255", "KEY03_020_B15", "box_GroupSizeListener_v5_374.Enabled", "box_MultipleOR_376.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_374_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_374;
    l1 = self.box_MultipleOR_376;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|121985681", "121985681", "KEY03_020_B15", "box_GroupSizeListener_v5_374.MemberRemoved", "box_MultipleOR_376.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_388_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_388;
    l1 = self.box_MultipleOR_389;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|68331326", "68331326", "KEY03_020_B15", "box_SpawnAI_388.Spawned", "box_MultipleOR_389.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_393_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_414();
    l0 = self.box_Delay_v5_393;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1697341122", "1697341122", "KEY03_020_B15", "box_Delay_v5_393.TimeElapsed", "box_Simple_Node_414.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_396_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_330();
    l0 = self.box_GroupSizeListener_v5_396;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1955935866", "1955935866", "KEY03_020_B15", "box_GroupSizeListener_v5_396.Enabled", "box_Compare_Integers_330.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_396_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_396;
    l1 = self.box_MultipleOR_417;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|818696778", "818696778", "KEY03_020_B15", "box_GroupSizeListener_v5_396.MemberRemoved", "box_MultipleOR_417.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_359_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_360();
    l0 = self.box_EntityStatusListener_359;
    l1 = self.box_SoundModifier_v2_360;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1418942364", "1418942364", "KEY03_020_B15", "box_EntityStatusListener_359.Loaded", "box_SoundModifier_v2_360.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_Wave_v2_346_NextWave()
    local l0, l1;
    l0 = self.box_SpawnAI_Wave_v2_346;
    l1 = self.box_OnceOnly_v3_386;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1815169951", "1815169951", "KEY03_020_B15", "box_SpawnAI_Wave_v2_346.NextWave", "box_OnceOnly_v3_386.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_AddActivityObjective_v2_367_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_374();
    l0 = self.box_GroupSizeListener_v5_374;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|2077849351", "2077849351", "KEY03_020_B15", "box_AddActivityObjective_v2_367.Out", "box_GroupSizeListener_v5_374.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_Wave_v2_337_LastWave_Cleanup()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_392();
    l0 = self.box_SpawnAI_Wave_v2_337;
    l1 = self.box_Delay_v5_392;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1345046945", "1345046945", "KEY03_020_B15", "box_SpawnAI_Wave_v2_337.LastWave_Cleanup", "box_Delay_v5_392.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SoundModifier_v2_361_Started()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_362();
    l0 = self.box_SoundModifier_v2_361;
    l1 = self.box_EntityStatusListener_362;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|2135075518", "2135075518", "KEY03_020_B15", "box_SoundModifier_v2_361.Started", "box_EntityStatusListener_362.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_342_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_382();
    l0 = self.box_OnceOnly_v3_342;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|308094901", "308094901", "KEY03_020_B15", "box_OnceOnly_v3_342.Out", "box_OutputOrder_v2_382.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_381_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_338();
    l0 = self.box_SpawnAI_Wave_v2_338;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1641302082", "1641302082", "KEY03_020_B15", "box_OutputOrder_v2_381.Out", "box_SpawnAI_Wave_v2_338.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_381_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_395();
    l0 = self.box_Delay_v5_395;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1533796607", "1533796607", "KEY03_020_B15", "box_OutputOrder_v2_381.Out", "box_Delay_v5_395.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SpawnAI_Wave_v2_338_NextWave()
    local l0, l1;
    l0 = self.box_SpawnAI_Wave_v2_338;
    l1 = self.box_OnceOnly_v3_342;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1647822951", "1647822951", "KEY03_020_B15", "box_SpawnAI_Wave_v2_338.NextWave", "box_OnceOnly_v3_342.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_401_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_400();
    l0 = self.box_Gate_v3_400;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1657010427", "1657010427", "KEY03_020_B15", "box_OutputOrder_v2_401.Out", "box_Gate_v3_400.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_401_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_399();
    l0 = self.box_Gate_v3_399;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|2140352474", "2140352474", "KEY03_020_B15", "box_OutputOrder_v2_401.Out", "box_Gate_v3_399.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_372_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_372;
    l1 = self.box_MultipleOR_371;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|373952121", "373952121", "KEY03_020_B15", "box_MultipleOR_372.Out", "box_MultipleOR_371.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_404_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_398();
    l0 = self.box_MultipleOR_404;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1725003263", "1725003263", "KEY03_020_B15", "box_MultipleOR_404.Out", "box_ActivityRetry_398.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_369_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_369_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_368();
    l0 = self.box_Delay_v5_368;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|281127727", "281127727", "KEY03_020_B15", "box_RandomFloat_v2_369.Out", "box_Delay_v5_368.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_347_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_385();
    l0 = self.box_OnceOnly_v3_347;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1116037027", "1116037027", "KEY03_020_B15", "box_OnceOnly_v3_347.Out", "box_OutputOrder_v2_385.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_358_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_356();
    l0 = self.box_SoundModifier_v2_358;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|794803362", "794803362", "KEY03_020_B15", "box_SoundModifier_v2_358.Started", "box_OutputOrder_v2_356.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_402_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_399();
    l0 = self.box_Gate_v3_399;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|490834305", "490834305", "KEY03_020_B15", "box_OutputOrder_v2_402.Out", "box_Gate_v3_399.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_402_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_400();
    l0 = self.box_Gate_v3_400;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|404948557", "404948557", "KEY03_020_B15", "box_OutputOrder_v2_402.Out", "box_Gate_v3_400.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_329_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_340();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|562616603", "562616603", "KEY03_020_B15", "box_OutputOrder_v2_329.Out", "box_Print_v2_340.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_329_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_339();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|555605560", "555605560", "KEY03_020_B15", "box_OutputOrder_v2_329.Out", "box_ActivityEnd_339.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_345_NextWave()
    local l0, l1;
    l0 = self.box_SpawnAI_Wave_v2_345;
    l1 = self.box_OnceOnly_v3_347;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1752399944", "1752399944", "KEY03_020_B15", "box_SpawnAI_Wave_v2_345.NextWave", "box_OnceOnly_v3_347.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_382_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_345();
    l0 = self.box_SpawnAI_Wave_v2_345;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1329893720", "1329893720", "KEY03_020_B15", "box_OutputOrder_v2_382.Out", "box_SpawnAI_Wave_v2_345.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_382_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_405();
    l0 = self.box_Delay_v5_405;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1045745", "1045745", "KEY03_020_B15", "box_OutputOrder_v2_382.Out", "box_Delay_v5_405.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SpawnAI_Wave_v2_343_NextWave()
    local l0, l1;
    l0 = self.box_SpawnAI_Wave_v2_343;
    l1 = self.box_OnceOnly_v3_344;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|2044022145", "2044022145", "KEY03_020_B15", "box_SpawnAI_Wave_v2_343.NextWave", "box_OnceOnly_v3_344.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_362_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_361();
    l0 = self.box_EntityStatusListener_362;
    l1 = self.box_SoundModifier_v2_361;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1438121213", "1438121213", "KEY03_020_B15", "box_EntityStatusListener_362.Loaded", "box_SoundModifier_v2_361.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_368_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_370();
    l0 = self.box_Delay_v5_368;
    l1 = self.box_PlayDialog_v6_370;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|672381247", "672381247", "KEY03_020_B15", "box_Delay_v5_368.TimeElapsed", "box_PlayDialog_v6_370.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_376_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_373();
    l0 = self.box_MultipleOR_376;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1087835527", "1087835527", "KEY03_020_B15", "box_MultipleOR_376.Out", "box_Compare_Integers_373.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_334_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_331;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1809416478", "1809416478", "KEY03_020_B15", "box_OutputOrder_v2_334.Out", "box_ActivityAcknowledgeGate_331.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_334_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_332();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1373420863", "1373420863", "KEY03_020_B15", "box_OutputOrder_v2_334.Out", "box_Print_v2_332.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_335_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_335;
    l1 = self.box_PhoneCallExclusivityModifier_341;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1651948536", "1651948536", "KEY03_020_B15", "box_ActivityInitialized_335.Out", "box_PhoneCallExclusivityModifier_341.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_OnceOnly_v3_344_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_381();
    l0 = self.box_OnceOnly_v3_344;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1866943280", "1866943280", "KEY03_020_B15", "box_OnceOnly_v3_344.Out", "box_OutputOrder_v2_381.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_385_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_346();
    l0 = self.box_SpawnAI_Wave_v2_346;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1559323061", "1559323061", "KEY03_020_B15", "box_OutputOrder_v2_385.Out", "box_SpawnAI_Wave_v2_346.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_385_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_393();
    l0 = self.box_Delay_v5_393;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1516992188", "1516992188", "KEY03_020_B15", "box_OutputOrder_v2_385.Out", "box_Delay_v5_393.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ExitZoneWarningListener_v3_353_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_402();
    l0 = self.box_ExitZoneWarningListener_v3_353;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|2023413289", "2023413289", "KEY03_020_B15", "box_ExitZoneWarningListener_v3_353.FailingZoneEntered", "box_OutputOrder_v2_402.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_419_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_418();
    l0 = self.box_HealthListener_v6_419;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|43452746", "43452746", "KEY03_020_B15", "box_HealthListener_v6_419.Damaged", "box_HealthModifier_v2_418.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_387_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_337();
    l0 = self.box_SpawnAI_Wave_v2_337;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1726281119", "1726281119", "KEY03_020_B15", "box_OutputOrder_v2_387.Out", "box_SpawnAI_Wave_v2_337.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_387_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_394();
    l0 = self.box_Delay_v5_394;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|2075701654", "2075701654", "KEY03_020_B15", "box_OutputOrder_v2_387.Out", "box_Delay_v5_394.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_377_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_378();
    l0 = self.box_Delay_v5_378;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|596368081", "596368081", "KEY03_020_B15", "box_OutputOrder_v2_377.Out", "box_Delay_v5_378.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_377_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_411();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|811627512", "811627512", "KEY03_020_B15", "box_OutputOrder_v2_377.Out", "box_Simple_Node_411.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_377_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_374();
    l0 = self.box_GroupSizeListener_v5_374;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|2292301", "2292301", "KEY03_020_B15", "box_OutputOrder_v2_377.Out", "box_GroupSizeListener_v5_374.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SoundPointModifier_365_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_355();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1626284721", "1626284721", "KEY03_020_B15", "box_SoundPointModifier_365.Stopped", "box_OutputOrder_v2_355.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_373_A_gt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_375;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|548988192", "548988192", "KEY03_020_B15", "box_Compare_Integers_373.A_gt_B", "box_OnceOnly_v3_375.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_373_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_377();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1318581828", "1318581828", "KEY03_020_B15", "box_Compare_Integers_373.A_le_B", "box_OutputOrder_v2_377.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_417_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_417;
    l1 = self.box_OnceOnly_v3_397;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|918753426", "918753426", "KEY03_020_B15", "box_MultipleOR_417.Out", "box_OnceOnly_v3_397.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_336_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_391();
    l0 = self.box_MultipleOR_336;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|943421272", "943421272", "KEY03_020_B15", "box_MultipleOR_336.Out", "box_IsEntityLoaded_v3_391.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_371_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_369();
    l0 = self.box_MultipleOR_371;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|850325060", "850325060", "KEY03_020_B15", "box_MultipleOR_371.Out", "box_RandomFloat_v2_369.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_355_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_363();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|968021264", "968021264", "KEY03_020_B15", "box_OutputOrder_v2_355.Out", "box_RadioModifier_v3_363.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_355_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_354();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1044963596", "1044963596", "KEY03_020_B15", "box_OutputOrder_v2_355.Out", "box_RadioModifier_v3_354.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_370_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_370;
    l1 = self.box_MultipleOR_372;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1514217243", "1514217243", "KEY03_020_B15", "box_PlayDialog_v6_370.Finished", "box_MultipleOR_372.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_370_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_370;
    l1 = self.box_MultipleOR_372;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1619691098", "1619691098", "KEY03_020_B15", "box_PlayDialog_v6_370.FinishedInterrupted", "box_MultipleOR_372.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_370_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_370;
    l1 = self.box_MultipleOR_372;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|2017910562", "2017910562", "KEY03_020_B15", "box_PlayDialog_v6_370.QueueCancelled", "box_MultipleOR_372.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_370_Stopped()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_370;
    l1 = self.box_MultipleOR_372;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|357535211", "357535211", "KEY03_020_B15", "box_PlayDialog_v6_370.Stopped", "box_MultipleOR_372.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_PhoneCallExclusivityModifier_341_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityForceAndLockTracking_333();
    l0 = self.box_PhoneCallExclusivityModifier_341;
    l1 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1473721733", "1473721733", "KEY03_020_B15", "box_PhoneCallExclusivityModifier_341.Enabled", "box_ActivityForceAndLockTracking_333.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_395_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_412();
    l0 = self.box_Delay_v5_395;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|906264130", "906264130", "KEY03_020_B15", "box_Delay_v5_395.TimeElapsed", "box_Simple_Node_412.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_357_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_362();
    l0 = self.box_EntityStatusListener_362;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1678233025", "1678233025", "KEY03_020_B15", "box_Compare_Boolean_357.A_is_False", "box_EntityStatusListener_362.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_357_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_359();
    l0 = self.box_EntityStatusListener_359;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|810305529", "810305529", "KEY03_020_B15", "box_Compare_Boolean_357.A_is_True", "box_EntityStatusListener_359.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_356_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_365();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1569120875", "1569120875", "KEY03_020_B15", "box_OutputOrder_v2_356.Out", "box_SoundPointModifier_365.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_356_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_366();
    l0 = self.box_EntityStatusListener_366;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|673576029", "673576029", "KEY03_020_B15", "box_OutputOrder_v2_356.Out", "box_EntityStatusListener_366.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_397_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_401();
    l0 = self.box_OnceOnly_v3_397;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|365933229", "365933229", "KEY03_020_B15", "box_OnceOnly_v3_397.Out", "box_OutputOrder_v2_401.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_330_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_417;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1467333941", "1467333941", "KEY03_020_B15", "box_Compare_Integers_330.A_eq_B", "box_MultipleOR_417.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_366_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_358();
    l0 = self.box_EntityStatusListener_366;
    l1 = self.box_SoundModifier_v2_358;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1279619874", "1279619874", "KEY03_020_B15", "box_EntityStatusListener_366.Loaded", "box_SoundModifier_v2_358.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_400_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_403();
    l0 = self.box_Gate_v3_400;
    l1 = self.box_RequestPhoneCall_v2_403;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|547292296", "547292296", "KEY03_020_B15", "box_Gate_v3_400.Out", "box_RequestPhoneCall_v2_403.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_364_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_366();
    l0 = self.box_EntityStatusListener_366;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1707522923", "1707522923", "KEY03_020_B15", "box_OutputOrder_v2_364.Out", "box_EntityStatusListener_366.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_364_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_357();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1289963449", "1289963449", "KEY03_020_B15", "box_OutputOrder_v2_364.Out", "box_Compare_Boolean_357.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_392_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_407();
    l0 = self.box_Delay_v5_392;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1724279888", "1724279888", "KEY03_020_B15", "box_Delay_v5_392.TimeElapsed", "box_Simple_Node_407.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_403_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_403;
    l1 = self.box_MultipleOR_404;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1238257369", "1238257369", "KEY03_020_B15", "box_RequestPhoneCall_v2_403.Canceled", "box_MultipleOR_404.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_403_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_403;
    l1 = self.box_MultipleOR_404;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1708948755", "1708948755", "KEY03_020_B15", "box_RequestPhoneCall_v2_403.Completed", "box_MultipleOR_404.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_403_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_403;
    l1 = self.box_MultipleOR_404;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1716543335", "1716543335", "KEY03_020_B15", "box_RequestPhoneCall_v2_403.Failed", "box_MultipleOR_404.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_378_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_380();
    l0 = self.box_Delay_v5_378;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1569348878", "1569348878", "KEY03_020_B15", "box_Delay_v5_378.TimeElapsed", "box_OutputOrder_v2_380.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_399_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_390();
    l0 = self.box_Gate_v3_399;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|219025269", "219025269", "KEY03_020_B15", "box_Gate_v3_399.Out", "box_ActivityRetry_390.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_375_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_409();
    l0 = self.box_OnceOnly_v3_375;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|117182694", "117182694", "KEY03_020_B15", "box_OnceOnly_v3_375.Out", "box_Simple_Node_409.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_389_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_389;
    l1 = self.box_ActivityInitialized_335;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1692844514", "1692844514", "KEY03_020_B15", "box_MultipleOR_389.Out", "box_ActivityInitialized_335.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_331_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_331;
    l1 = self.box_MultipleOR_336;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1342528985", "1342528985", "KEY03_020_B15", "box_ActivityAcknowledgeGate_331.Acknowledged", "box_MultipleOR_336.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_331_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_331;
    l1 = self.box_MultipleOR_336;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|784405480", "784405480", "KEY03_020_B15", "box_ActivityAcknowledgeGate_331.Reloaded", "box_MultipleOR_336.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_391_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_388();
    l0 = self.box_SpawnAI_388;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|348206271", "348206271", "KEY03_020_B15", "box_IsEntityLoaded_v3_391.False", "box_SpawnAI_388.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_391_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_389;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1090538580", "1090538580", "KEY03_020_B15", "box_IsEntityLoaded_v3_391.True", "box_MultipleOR_389.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityForceAndLockTracking_333_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_406();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1053246677", "1053246677", "KEY03_020_B15", "box_ActivityForceAndLockTracking_333.Enabled", "box_Simple_Node_406.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_386_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_387();
    l0 = self.box_OnceOnly_v3_386;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1110191125", "1110191125", "KEY03_020_B15", "box_OnceOnly_v3_386.Out", "box_OutputOrder_v2_387.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_360_Started()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_359();
    l0 = self.box_SoundModifier_v2_360;
    l1 = self.box_EntityStatusListener_359;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1091134243", "1091134243", "KEY03_020_B15", "box_SoundModifier_v2_360.Started", "box_EntityStatusListener_359.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_406()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_406");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|@Activity_Init");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_406_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_407()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_407");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|@ObjectiveSucc");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_407_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_415()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_415");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|@PhoneCall_IncBoats");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_415_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_414()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_414");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|@PhoneCall_IncChopper");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_414_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_413()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_413");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|@PhoneCall_IncLake");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_413_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_412()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_412");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|@PhoneCall_IncRoad");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_412_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_411()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_411");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|@PhoneCall_ItsATrap");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_411_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_409()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_409");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|@Phonecall_LoudMusic");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_409_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_410()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_410");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|@PhoneCall_ToysOutside");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_410_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_394()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_354()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_354");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|9878097");
    l0:SetConnections({
    });
    params = {
        -- Enable,
        [0] = false,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2103997296095026777",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_380()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_380");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|25332371");
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
                [0] = self.f_box_OutputOrder_v2_380_Out_0,
                [1] = self.f_box_OutputOrder_v2_380_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_379()
    local params;
    DrawTextToScreen("Comment: PhoneCall : Ah shit I'm seeing trucks heading your way, they must have waiting for us to take him again", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: PhoneCall : Ah shit I'm seeing trucks heading your way, they must have waiting for us to take him again");
    params = {
        -- Delay,
        [2] = 3,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1532522632",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_383()
    local params;
    DrawTextToScreen("Comment: PhoneCall : We got choppers !", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: PhoneCall : We got choppers !");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "383401581",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_348()
    local params;
    DrawTextToScreen("Comment: PhoneCall : Damn that's loud. It sure to attract some attraction from the peggies. Take them out before they get our boy", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: PhoneCall : Damn that's loud. It sure to attract some attraction from the peggies. Take them out before they get our boy");
    params = {
        -- Delay,
        [2] = 3,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2643753553",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_405()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_374()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#CE5C51A3",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_388()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099614019636714194",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_352()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 0,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2374238190",
        -- StopEvent,
        [7] = "3285129557",
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

function export:OnEnter_box_Delay_v5_393()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_339()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_339");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|219152796");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_396()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#C5457226",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_359()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104421660825245098",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_346()
    local params;
    DrawTextToScreen("Comment: Wave_4_Chopper", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI_Wave_v2')-- Comment: Wave_4_Chopper");
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2105542700517321317",
        -- CoreNPCGroup,
        [2] = "#959F2C9C",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = true,
        -- Timer,
        [14] = 10,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_367()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_367");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|332968183");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_367_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "BRICK_Secure_Area",
            item = "BRICK_Secure_Area",
            id = "376594",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_337()
    local params;
    DrawTextToScreen("Comment: Wave_5_Boats", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI_Wave_v2')-- Comment: Wave_5_Boats");
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2105542810273856232",
        -- CoreNPCGroup,
        [2] = "#959F2C9C",
        -- IsLastWave,
        [3] = true,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2105542810290633463",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_361()
    local params;
    params = {
        -- Pawns,
        [0] = "2104421660825245098",
        -- SoundId,
        [1] = "2805245099",
        -- SoundType,
        [2] = 30,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_384()
    local params;
    DrawTextToScreen("Comment: PhoneCall : Boats coming in hot", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: PhoneCall : Boats coming in hot");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2845373103",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_381()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_381");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|451618117");
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
                [0] = self.f_box_OutputOrder_v2_381_Out_0,
                [1] = self.f_box_OutputOrder_v2_381_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_338()
    local params;
    DrawTextToScreen("Comment: Wave_2_Trucks", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI_Wave_v2')-- Comment: Wave_2_Trucks");
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2105530322425748985",
        -- CoreNPCGroup,
        [2] = "#959F2C9C",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2105530406242637925",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_401()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_401");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|467326462");
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
                [0] = self.f_box_OutputOrder_v2_401_Out_0,
                [1] = self.f_box_OutputOrder_v2_401_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_349()
    local params;
    DrawTextToScreen("Comment: PhoneCall : Kid i'm seeing MGs and mortar outside, get creative. They get lot of toys out there", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: PhoneCall : Kid i'm seeing MGs and mortar outside, get creative. They get lot of toys out there");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2833028014",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_369()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_369");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|541154487");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_369_Out,
    });
    params = {
        -- Max,
        [0] = 20,
        -- Min,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_358()
    local params;
    params = {
        -- Pawns,
        [0] = "2100084177641673949",
        -- SoundId,
        [1] = "2932764894",
        -- SoundType,
        [2] = 30,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_402()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_402");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|678106059");
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
                [0] = self.f_box_OutputOrder_v2_402_Out_0,
                [1] = self.f_box_OutputOrder_v2_402_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_329()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_329");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|820036550");
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
                [0] = self.f_box_OutputOrder_v2_329_Out_0,
                [1] = self.f_box_OutputOrder_v2_329_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_345()
    local params;
    DrawTextToScreen("Comment: Wave_3_Jetski", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI_Wave_v2')-- Comment: Wave_3_Jetski");
    params = {
        -- AttackersAliveToNextWave,
        [0] = 2,
        -- AttackerSpawner_1,
        [1] = "2105532235292646365",
        -- CoreNPCGroup,
        [2] = "#959F2C9C",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = true,
        -- opt_AttackerSpawner_2,
        [5] = "2105532669105325317",
        -- Timer,
        [14] = 9,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_351()
    local params;
    DrawTextToScreen("Comment: PhoneCall : They're coming in from the lake", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: PhoneCall : They're coming in from the lake");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3288838022",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_382()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_382");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|910737683");
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
                [0] = self.f_box_OutputOrder_v2_382_Out_0,
                [1] = self.f_box_OutputOrder_v2_382_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_343()
    local params;
    DrawTextToScreen("Comment: Wave_1_Trucks", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI_Wave_v2')-- Comment: Wave_1_Trucks");
    params = {
        -- AttackersAliveToNextWave,
        [0] = 3,
        -- AttackerSpawner_1,
        [1] = "2105530309146582281",
        -- CoreNPCGroup,
        [2] = "#959F2C9C",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = true,
        -- opt_AttackerSpawner_2,
        [5] = "2105530403042383896",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_362()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104421660825245098",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_368()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_418()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_418");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|966764077");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#C5457226",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_350()
    local params;
    DrawTextToScreen("Comment: PhoneCall : Incoming peggies from the road", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: PhoneCall : Incoming peggies from the road");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2174275740",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_334()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_334");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1043852726");
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
                [0] = self.f_box_OutputOrder_v2_334_Out_0,
                [1] = self.f_box_OutputOrder_v2_334_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_385()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_385");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1140167024");
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
                [0] = self.f_box_OutputOrder_v2_385_Out_0,
                [1] = self.f_box_OutputOrder_v2_385_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_363()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_363");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1170838933");
    l0:SetConnections({
    });
    params = {
        -- Enable,
        [0] = false,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2103997311827861085",
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_353()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2105587937065395822",
        -- WarningZoneTrigger,
        [3] = "2105587937063298669",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_390()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_390");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1234138098");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Mission Fail msg (generic)",
            item = "MSG_MISSION_FAILED_EXITMISSIONZONE",
            id = "869998",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_419()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "#C5457226",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_387()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_387");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1243708427");
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
                [0] = self.f_box_OutputOrder_v2_387_Out_0,
                [1] = self.f_box_OutputOrder_v2_387_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_332()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_332");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1291327604");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "KEY03_020_B15 Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_377()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_377");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1310802221");
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
                [0] = self.f_box_OutputOrder_v2_377_Out_0,
                [1] = self.f_box_OutputOrder_v2_377_Out_1,
                [2] = self.f_box_OutputOrder_v2_377_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_365()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_365");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1313968884");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_SoundPointModifier_365_Stopped,
    });
    params = {
        -- soundPoint,
        [0] = "2103746164814796491",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_373()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_373");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1328520577");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_373_A_gt_B,
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_373_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_374;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_340()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_340");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1466875861");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "blue",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "KEY03_020_B15 Completed",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_355()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_355");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1502251284");
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
                [0] = self.f_box_OutputOrder_v2_355_Out_0,
                [1] = self.f_box_OutputOrder_v2_355_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_370()
    local params;
    params = {
        -- Group,
        [0] = "#DCD486AD",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2059630614",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_398()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_398");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1588756684");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "KEY03_020_B40_HotageKilled",
            id = "793662",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_395()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_357()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_357");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1657876592");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_357_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_357_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_CheckpointReloaded,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_356()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_356");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1693202524");
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
                [0] = self.f_box_OutputOrder_v2_356_Out_0,
                [1] = self.f_box_OutputOrder_v2_356_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_330()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_330");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1794120348");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_330_A_eq_B,
    });
    l0 = self.box_GroupSizeListener_v5_396;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_366()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100084177641673949",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_400()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_364()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_364");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|1892783527");
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
                [0] = self.f_box_OutputOrder_v2_364_Out_0,
                [1] = self.f_box_OutputOrder_v2_364_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_392()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_403()
    local params;
    DrawTextToScreen("Comment: PhoneCall : God Dammit, he's dead. It's over", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: PhoneCall : God Dammit, he's dead. It's over");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3982058340",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_378()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_399()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_391()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_391");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|2091873150");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_391_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_391_True,
    });
    params = {
        -- entityId,
        [0] = "2099614019640908504",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_333()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_333");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B15.domino|@KEY03_020_B15|2113351888");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_333_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_360()
    local params;
    params = {
        -- Pawns,
        [0] = "2104421660825245098",
        -- SoundId,
        [1] = "3462830321",
        -- SoundType,
        [2] = 30,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_369_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_368;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
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
