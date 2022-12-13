LUAC�` -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key03/key03_020/key03_020_b20.domino
-- User graph: KEY03_020_B20
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
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundPointModifier.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2805245099.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3462830321.bnk]], "CSoundResource");
        cboxRes:LoadResource([[808193650.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1158482589.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2374238190.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4080269611.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3285129557.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3982058340.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2932764894.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4032511905.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2167839317.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2398917169.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1633260320.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.KEY03_020_B20 = nil;
    Globals.KEY03_020_B20 = {
        bGotCabinPackage = false,
        bGotCliffPackage = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY03/KEY03_020/KEY03_020_B20.KEY03_020_B20.debug.lua")] = {
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
    self._name = "KEY03_020_B20";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20";
    self.Player_Group = nil;
    self.Eli = nil;
    self.Hostage_1 = nil;
    self.Is_Reloaded = false;
    self.Hostage_Group_Size = 0;
    self.QCA_STP = nil;
    self.Hostages_to_Spawn = 0;
    self.Hostages_Spawned = 0;
    self.b_IsEliNotifyingInterior = false;
    self.gp_Interior_Floor_1 = nil;
    self.gp_Interior_Floor_3 = nil;
    self.gp_Interior_Floor_2 = nil;
    self.b_HostageZombieSTP = false;
    self.b_EmptyHotel = false;
    self.b_CheckpointReloaded = false;
    self.gp_Interior_Total = nil;
    self.b_HostageSpawned = false;
    self.box_SpawnAI_Wave_v2_294 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_294;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_294");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|134391646");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_294_NextWave,
    });
    self.box_Gate_v3_303 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_303;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_303");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|145801989");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_303_Out,
    });
    self.box_MultipleOR_338 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_338;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_338");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|168098384");
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
        [0] = self.f_box_MultipleOR_338_Out,
    });
    self.box_EntityStatusListener_345 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_345;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_345");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|170017598");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_345_Loaded,
    });
    self.box_SpawnAI_Wave_v2_296 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_296;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_296");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|272061681");
    l0:SetConnections({
        -- LastWave_Cleanup,
        [1] = self.f_box_SpawnAI_Wave_v2_296_LastWave_Cleanup,
    });
    self.box_MultipleOR_305 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_305;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_305");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|283090551");
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
        [0] = self.f_box_MultipleOR_305_Out,
    });
    self.box_RequestPhoneCall_v2_328 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_328;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_328");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|318118415");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_308 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_308;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_308");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|329627648");
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
                [0] = self.f_box_OnceOnly_v3_308_Out_0,
            },
            count = 2,
        },
    });
    self.box_PhoneCallExclusivityModifier_151 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|332307386");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_151_Enabled,
    });
    self.box_MultipleOR_342 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_342;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_342");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|340323324");
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
        [0] = self.f_box_MultipleOR_342_Out,
    });
    self.box_RequestPhoneCall_v2_329 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_329;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_329");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|411765203");
    l0:SetConnections({
    });
    self.box_Delay_v5_323 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_323;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_323");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|535485991");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_323_TimeElapsed,
    });
    self.box_OnceOnly_v3_321 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_321;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_321");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|577977848");
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
                [0] = self.f_box_OnceOnly_v3_321_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_Wave_v2_293 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_293;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_293");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|666288881");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_293_NextWave,
    });
    self.box_OnceOnly_v3_319 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_319;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_319");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|708921519");
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
                [0] = self.f_box_OnceOnly_v3_319_Out_0,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_352 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_352;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_352");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|717932745");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_352_Started,
    });
    self.box_EntityStatusListener_354 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_354;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_354");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|842732245");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_354_Loaded,
    });
    self.box_SoundModifier_v2_348 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_348;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_348");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|870374740");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_348_Started,
    });
    self.box_OnceOnly_v3_334 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_334;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_334");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|995183847");
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
                [0] = self.f_box_OnceOnly_v3_334_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_326 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_326;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_326");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1063164722");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_326_TimeElapsed,
    });
    self.box_MultipleOR_335 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_335;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_335");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1066563522");
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
        [0] = self.f_box_MultipleOR_335_Out,
    });
    self.box_HealthListener_v6_180 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1176434160");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_180_Damaged,
    });
    self.box_SpawnAI_340 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_340;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_340");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1238579900");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_340_Spawned,
    });
    self.box_RequestPhoneCall_v2_337 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_337;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_337");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1238867906");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_337_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_337_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_337_Failed,
    });
    self.box_Delay_v5_300 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_300;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_300");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1324553786");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_300_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_312 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_312;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_312");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1365235608");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_312_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_312_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_312_Failed,
    });
    self.box_Delay_v5_324 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_324;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_324");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1468357462");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_324_TimeElapsed,
    });
    self.box_Random_339 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_339;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_339");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1515263888");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_339_Output_0,
                [1] = self.f_box_Random_339_Output_1,
                [2] = self.f_box_Random_339_Output_2,
            },
            count = 3,
        },
    });
    self.box_GroupSizeListener_v5_368 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_368;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_368");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1518531586");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_368_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_368_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_368_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_368_MemberRemoved,
    });
    self.box_RequestPhoneCall_v2_316 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_316;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_316");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1541936434");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_315 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_315;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_315");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1575222323");
    l0:SetConnections({
    });
    self.box_SpawnAI_Wave_v2_292 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_292;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_292");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1589945494");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_292_NextWave,
    });
    self.box_Music_Quest_v2_313 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_313;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_313");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1633376241");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_289 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_289;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_289");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1643309720");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_289_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_289_Reloaded,
    });
    self.box_Gate_v3_309 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_309;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_309");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1654650632");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_309_Out,
    });
    self.box_RequestPhoneCall_v2_332 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_332;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_332");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1737952465");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_332_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_332_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_332_Failed,
    });
    self.box_Delay_v5_317 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_317;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_317");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1762078089");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_317_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_336 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_336;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_336");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1768289483");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_336_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_336_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_336_Failed,
    });
    self.box_ActivityInitialized_73 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1776058875");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_73_Out,
    });
    self.box_MultipleOR_291 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_291;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_291");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1863721501");
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
    self.box_OnceOnly_v3_320 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_320;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_320");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1863929293");
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
    self.box_EntityStatusListener_351 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_351;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_351");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1931523951");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_351_Loaded,
    });
    self.box_MultipleOR_331 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_331;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_331");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1954984692");
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
        [0] = self.f_box_MultipleOR_331_Out,
    });
    self.box_MultipleOR_333 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_333;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_333");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1985351055");
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
        [0] = self.f_box_MultipleOR_333_Out,
    });
    self.box_SoundModifier_v2_347 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_347;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_347");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|2048312771");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_347_Started,
    });
    self.box_ExitZoneWarningListener_v3_304 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_304;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_304");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|2063373422");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_304_FailingZoneEntered,
    });
    self.box_MultipleOR_369 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_369;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_369");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|2104353234");
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
        [0] = self.f_box_MultipleOR_369_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_288();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|864045624", "864045624", "KEY03_020_B20", "In", "box_OutputOrder_v2_288.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_358_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_304();
    l0 = self.box_ExitZoneWarningListener_v3_304;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|437891859", "437891859", "KEY03_020_B20", "box_Simple_Node_358.Out", "box_ExitZoneWarningListener_v3_304.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_HealthListener_v6_180();
    l0 = self.box_HealthListener_v6_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1408940617", "1408940617", "KEY03_020_B20", "box_Simple_Node_358.Out", "box_HealthListener_v6_180.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_Music_Quest_v2_313();
    l0 = self.box_Music_Quest_v2_313;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1241937753", "1241937753", "KEY03_020_B20", "box_Simple_Node_358.Out", "box_Music_Quest_v2_313.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
    params = self:OnEnter_box_AddActivityObjective_v2_357();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|751825277", "751825277", "KEY03_020_B20", "box_Simple_Node_358.Out", "box_AddActivityObjective_v2_357.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_GroupSizeListener_v5_368();
    l0 = self.box_GroupSizeListener_v5_368;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|457582922", "457582922", "KEY03_020_B20", "box_Simple_Node_358.Out", "box_GroupSizeListener_v5_368.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_366_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_349();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1590130648", "1590130648", "KEY03_020_B20", "box_Simple_Node_366.Out", "box_OutputOrder_v2_349.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_359_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_299();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|614609054", "614609054", "KEY03_020_B20", "box_Simple_Node_359.Out", "box_OutputOrder_v2_299.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_365_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_339();
    l0 = self.box_Random_339;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1595836131", "1595836131", "KEY03_020_B20", "box_Simple_Node_365.Out", "box_Random_339.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_364_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_329();
    l0 = self.box_RequestPhoneCall_v2_329;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|251282573", "251282573", "KEY03_020_B20", "box_Simple_Node_364.Out", "box_RequestPhoneCall_v2_329.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_362_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_316();
    l0 = self.box_RequestPhoneCall_v2_316;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1693671066", "1693671066", "KEY03_020_B20", "box_Simple_Node_362.Out", "box_RequestPhoneCall_v2_316.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_361_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_315();
    l0 = self.box_RequestPhoneCall_v2_315;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|2079370406", "2079370406", "KEY03_020_B20", "box_Simple_Node_361.Out", "box_RequestPhoneCall_v2_315.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_363_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_328();
    l0 = self.box_RequestPhoneCall_v2_328;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|922765926", "922765926", "KEY03_020_B20", "box_Simple_Node_363.Out", "box_RequestPhoneCall_v2_328.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_Wave_v2_294_NextWave()
    local l0, l1;
    l0 = self.box_SpawnAI_Wave_v2_294;
    l1 = self.box_OnceOnly_v3_320;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|709999160", "709999160", "KEY03_020_B20", "box_SpawnAI_Wave_v2_294.NextWave", "box_OnceOnly_v3_320.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_303_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_311();
    l0 = self.box_Gate_v3_303;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|295043850", "295043850", "KEY03_020_B20", "box_Gate_v3_303.Out", "box_ActivityRetry_311.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_338_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_338;
    l1 = self.box_MultipleOR_335;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1417585342", "1417585342", "KEY03_020_B20", "box_MultipleOR_338.Out", "box_MultipleOR_335.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_345_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_352();
    l0 = self.box_EntityStatusListener_345;
    l1 = self.box_SoundModifier_v2_352;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1887660625", "1887660625", "KEY03_020_B20", "box_EntityStatusListener_345.Loaded", "box_SoundModifier_v2_352.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_Wave_v2_296_LastWave_Cleanup()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_300();
    l0 = self.box_SpawnAI_Wave_v2_296;
    l1 = self.box_Delay_v5_300;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1797816442", "1797816442", "KEY03_020_B20", "box_SpawnAI_Wave_v2_296.LastWave_Cleanup", "box_Delay_v5_300.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_305_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_302();
    l0 = self.box_MultipleOR_305;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1984965743", "1984965743", "KEY03_020_B20", "box_MultipleOR_305.Out", "box_ActivityRetry_302.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_308_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_310();
    l0 = self.box_OnceOnly_v3_308;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|2007044939", "2007044939", "KEY03_020_B20", "box_OnceOnly_v3_308.Out", "box_OutputOrder_v2_310.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_151_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityForceAndLockTracking_176();
    l0 = self.box_PhoneCallExclusivityModifier_151;
    l1 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1455188317", "1455188317", "KEY03_020_B20", "box_PhoneCallExclusivityModifier_151.Enabled", "box_ActivityForceAndLockTracking_176.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_342_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_342;
    l1 = self.box_ActivityInitialized_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1625541413", "1625541413", "KEY03_020_B20", "box_MultipleOR_342.Out", "box_ActivityInitialized_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_323_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_363();
    l0 = self.box_Delay_v5_323;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1206640322", "1206640322", "KEY03_020_B20", "box_Delay_v5_323.TimeElapsed", "box_Simple_Node_363.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_307_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_303();
    l0 = self.box_Gate_v3_303;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1941763256", "1941763256", "KEY03_020_B20", "box_OutputOrder_v2_307.Out", "box_Gate_v3_303.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_307_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_309();
    l0 = self.box_Gate_v3_309;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|2025046014", "2025046014", "KEY03_020_B20", "box_OutputOrder_v2_307.Out", "box_Gate_v3_309.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_353_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_345();
    l0 = self.box_EntityStatusListener_345;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1534615460", "1534615460", "KEY03_020_B20", "box_Compare_Boolean_353.A_is_False", "box_EntityStatusListener_345.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_353_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_351();
    l0 = self.box_EntityStatusListener_351;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|606415265", "606415265", "KEY03_020_B20", "box_Compare_Boolean_353.A_is_True", "box_EntityStatusListener_351.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_321_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_327();
    l0 = self.box_OnceOnly_v3_321;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1036361527", "1036361527", "KEY03_020_B20", "box_OnceOnly_v3_321.Out", "box_OutputOrder_v2_327.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_357_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_318();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1930066759", "1930066759", "KEY03_020_B20", "box_AddActivityObjective_v2_357.Out", "box_OutputOrder_v2_318.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_293_NextWave()
    local l0, l1;
    l0 = self.box_SpawnAI_Wave_v2_293;
    l1 = self.box_OnceOnly_v3_319;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1517257694", "1517257694", "KEY03_020_B20", "box_SpawnAI_Wave_v2_293.NextWave", "box_OnceOnly_v3_319.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_319_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_322();
    l0 = self.box_OnceOnly_v3_319;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1804383077", "1804383077", "KEY03_020_B20", "box_OnceOnly_v3_319.Out", "box_OutputOrder_v2_322.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_352_Started()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_345();
    l0 = self.box_SoundModifier_v2_352;
    l1 = self.box_EntityStatusListener_345;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|221465773", "221465773", "KEY03_020_B20", "box_SoundModifier_v2_352.Started", "box_EntityStatusListener_345.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_349_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_354();
    l0 = self.box_EntityStatusListener_354;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|976827854", "976827854", "KEY03_020_B20", "box_OutputOrder_v2_349.Out", "box_EntityStatusListener_354.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_349_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_353();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|18740180", "18740180", "KEY03_020_B20", "box_OutputOrder_v2_349.Out", "box_Compare_Boolean_353.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_350_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_343();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|470218273", "470218273", "KEY03_020_B20", "box_OutputOrder_v2_350.Out", "box_SoundPointModifier_343.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_350_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_354();
    l0 = self.box_EntityStatusListener_354;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|754170634", "754170634", "KEY03_020_B20", "box_OutputOrder_v2_350.Out", "box_EntityStatusListener_354.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_354_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_348();
    l0 = self.box_EntityStatusListener_354;
    l1 = self.box_SoundModifier_v2_348;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1911557214", "1911557214", "KEY03_020_B20", "box_EntityStatusListener_354.Loaded", "box_SoundModifier_v2_348.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_348_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_350();
    l0 = self.box_SoundModifier_v2_348;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|2055821143", "2055821143", "KEY03_020_B20", "box_SoundModifier_v2_348.Started", "box_OutputOrder_v2_350.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundPointModifier_343_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_344();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|39622003", "39622003", "KEY03_020_B20", "box_SoundPointModifier_343.Stopped", "box_OutputOrder_v2_344.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_325_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_292();
    l0 = self.box_SpawnAI_Wave_v2_292;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1377456390", "1377456390", "KEY03_020_B20", "box_OutputOrder_v2_325.Out", "box_SpawnAI_Wave_v2_292.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_325_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_324();
    l0 = self.box_Delay_v5_324;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|528967221", "528967221", "KEY03_020_B20", "box_OutputOrder_v2_325.Out", "box_Delay_v5_324.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_318_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_293();
    l0 = self.box_SpawnAI_Wave_v2_293;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|12982019", "12982019", "KEY03_020_B20", "box_OutputOrder_v2_318.Out", "box_SpawnAI_Wave_v2_293.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_318_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_317();
    l0 = self.box_Delay_v5_317;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1963214833", "1963214833", "KEY03_020_B20", "box_OutputOrder_v2_318.Out", "box_Delay_v5_317.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_299_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_298();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1907650368", "1907650368", "KEY03_020_B20", "box_OutputOrder_v2_299.Out", "box_Print_v2_298.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_299_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_297();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1858686289", "1858686289", "KEY03_020_B20", "box_OutputOrder_v2_299.Out", "box_ActivityEnd_297.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_334_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_359();
    l0 = self.box_OnceOnly_v3_334;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1426456287", "1426456287", "KEY03_020_B20", "box_OnceOnly_v3_334.Out", "box_Simple_Node_359.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_326_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_364();
    l0 = self.box_Delay_v5_326;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|689426790", "689426790", "KEY03_020_B20", "box_Delay_v5_326.TimeElapsed", "box_Simple_Node_364.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_335_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_335;
    l1 = self.box_OnceOnly_v3_334;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|2016158947", "2016158947", "KEY03_020_B20", "box_MultipleOR_335.Out", "box_OnceOnly_v3_334.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_180_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_306();
    l0 = self.box_HealthListener_v6_180;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1855248409", "1855248409", "KEY03_020_B20", "box_HealthListener_v6_180.Damaged", "box_HealthModifier_v2_306.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_340_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_340;
    l1 = self.box_MultipleOR_342;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1728443998", "1728443998", "KEY03_020_B20", "box_SpawnAI_340.Spawned", "box_MultipleOR_342.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_337_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_337;
    l1 = self.box_MultipleOR_333;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|537751367", "537751367", "KEY03_020_B20", "box_RequestPhoneCall_v2_337.Canceled", "box_MultipleOR_333.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_337_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_337;
    l1 = self.box_MultipleOR_333;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1269221510", "1269221510", "KEY03_020_B20", "box_RequestPhoneCall_v2_337.Completed", "box_MultipleOR_333.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_337_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_337;
    l1 = self.box_MultipleOR_333;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1528443954", "1528443954", "KEY03_020_B20", "box_RequestPhoneCall_v2_337.Failed", "box_MultipleOR_333.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_300_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_365();
    l0 = self.box_Delay_v5_300;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1858677768", "1858677768", "KEY03_020_B20", "box_Delay_v5_300.TimeElapsed", "box_Simple_Node_365.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_356_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|30709489", "30709489", "KEY03_020_B20", "box_OutputOrder_v2_356.Out", "box_MultipleOR_291.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_356_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_366();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1516364382", "1516364382", "KEY03_020_B20", "box_OutputOrder_v2_356.Out", "box_Simple_Node_366.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_312_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_312;
    l1 = self.box_MultipleOR_305;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|880715554", "880715554", "KEY03_020_B20", "box_RequestPhoneCall_v2_312.Canceled", "box_MultipleOR_305.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_312_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_312;
    l1 = self.box_MultipleOR_305;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1373403315", "1373403315", "KEY03_020_B20", "box_RequestPhoneCall_v2_312.Completed", "box_MultipleOR_305.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_312_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_312;
    l1 = self.box_MultipleOR_305;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1879244025", "1879244025", "KEY03_020_B20", "box_RequestPhoneCall_v2_312.Failed", "box_MultipleOR_305.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_324_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_361();
    l0 = self.box_Delay_v5_324;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1922022766", "1922022766", "KEY03_020_B20", "box_Delay_v5_324.TimeElapsed", "box_Simple_Node_361.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_339_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_332();
    l0 = self.box_Random_339;
    l1 = self.box_RequestPhoneCall_v2_332;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1934777774", "1934777774", "KEY03_020_B20", "box_Random_339.Output", "box_RequestPhoneCall_v2_332.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_339_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_336();
    l0 = self.box_Random_339;
    l1 = self.box_RequestPhoneCall_v2_336;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1450746455", "1450746455", "KEY03_020_B20", "box_Random_339.Output", "box_RequestPhoneCall_v2_336.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_339_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_337();
    l0 = self.box_Random_339;
    l1 = self.box_RequestPhoneCall_v2_337;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1826117022", "1826117022", "KEY03_020_B20", "box_Random_339.Output", "box_RequestPhoneCall_v2_337.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v5_368_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_367();
    l0 = self.box_GroupSizeListener_v5_368;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|889672016", "889672016", "KEY03_020_B20", "box_GroupSizeListener_v5_368.Enabled", "box_Compare_Integers_367.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_368_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_368;
    l1 = self.box_MultipleOR_369;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|645090822", "645090822", "KEY03_020_B20", "box_GroupSizeListener_v5_368.MemberRemoved", "box_MultipleOR_369.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_344_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_346();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1463768738", "1463768738", "KEY03_020_B20", "box_OutputOrder_v2_344.Out", "box_RadioModifier_v3_346.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_344_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_355();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|2031889336", "2031889336", "KEY03_020_B20", "box_OutputOrder_v2_344.Out", "box_RadioModifier_v3_355.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_292_NextWave()
    local l0, l1;
    l0 = self.box_SpawnAI_Wave_v2_292;
    l1 = self.box_OnceOnly_v3_321;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|377615449", "377615449", "KEY03_020_B20", "box_SpawnAI_Wave_v2_292.NextWave", "box_OnceOnly_v3_321.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_289_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_289;
    l1 = self.box_MultipleOR_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1967014268", "1967014268", "KEY03_020_B20", "box_ActivityAcknowledgeGate_289.Acknowledged", "box_MultipleOR_291.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_289_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_356();
    l0 = self.box_ActivityAcknowledgeGate_289;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|167174517", "167174517", "KEY03_020_B20", "box_ActivityAcknowledgeGate_289.Reloaded", "box_OutputOrder_v2_356.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_310_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_309();
    l0 = self.box_Gate_v3_309;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|902928292", "902928292", "KEY03_020_B20", "box_OutputOrder_v2_310.Out", "box_Gate_v3_309.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_310_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_303();
    l0 = self.box_Gate_v3_303;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|887906584", "887906584", "KEY03_020_B20", "box_OutputOrder_v2_310.Out", "box_Gate_v3_303.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_309_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_312();
    l0 = self.box_Gate_v3_309;
    l1 = self.box_RequestPhoneCall_v2_312;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1168645935", "1168645935", "KEY03_020_B20", "box_Gate_v3_309.Out", "box_RequestPhoneCall_v2_312.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_332_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_332;
    l1 = self.box_MultipleOR_331;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1748035341", "1748035341", "KEY03_020_B20", "box_RequestPhoneCall_v2_332.Canceled", "box_MultipleOR_331.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_332_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_332;
    l1 = self.box_MultipleOR_331;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1332543439", "1332543439", "KEY03_020_B20", "box_RequestPhoneCall_v2_332.Completed", "box_MultipleOR_331.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_332_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_332;
    l1 = self.box_MultipleOR_331;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|118623233", "118623233", "KEY03_020_B20", "box_RequestPhoneCall_v2_332.Failed", "box_MultipleOR_331.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_317_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_362();
    l0 = self.box_Delay_v5_317;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1795080022", "1795080022", "KEY03_020_B20", "box_Delay_v5_317.TimeElapsed", "box_Simple_Node_362.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_336_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_336;
    l1 = self.box_MultipleOR_338;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|3870083", "3870083", "KEY03_020_B20", "box_RequestPhoneCall_v2_336.Canceled", "box_MultipleOR_338.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_RequestPhoneCall_v2_336_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_336;
    l1 = self.box_MultipleOR_338;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|2089484410", "2089484410", "KEY03_020_B20", "box_RequestPhoneCall_v2_336.Completed", "box_MultipleOR_338.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_336_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_336;
    l1 = self.box_MultipleOR_338;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1616739948", "1616739948", "KEY03_020_B20", "box_RequestPhoneCall_v2_336.Failed", "box_MultipleOR_338.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityInitialized_73_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_73;
    l1 = self.box_PhoneCallExclusivityModifier_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|123177940", "123177940", "KEY03_020_B20", "box_ActivityInitialized_73.Out", "box_PhoneCallExclusivityModifier_151.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_ActivityForceAndLockTracking_176_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_358();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1380126423", "1380126423", "KEY03_020_B20", "box_ActivityForceAndLockTracking_176.Enabled", "box_Simple_Node_358.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_341_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_340();
    l0 = self.box_SpawnAI_340;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|208682502", "208682502", "KEY03_020_B20", "box_IsEntityLoaded_v3_341.False", "box_SpawnAI_340.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_341_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_342;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|134592369", "134592369", "KEY03_020_B20", "box_IsEntityLoaded_v3_341.True", "box_MultipleOR_342.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_291_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_341();
    l0 = self.box_MultipleOR_291;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|876118171", "876118171", "KEY03_020_B20", "box_MultipleOR_291.Out", "box_IsEntityLoaded_v3_341.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_320_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_325();
    l0 = self.box_OnceOnly_v3_320;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1300811678", "1300811678", "KEY03_020_B20", "box_OnceOnly_v3_320.Out", "box_OutputOrder_v2_325.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_351_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_347();
    l0 = self.box_EntityStatusListener_351;
    l1 = self.box_SoundModifier_v2_347;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|530537836", "530537836", "KEY03_020_B20", "box_EntityStatusListener_351.Loaded", "box_SoundModifier_v2_347.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_331_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_331;
    l1 = self.box_MultipleOR_335;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1444165485", "1444165485", "KEY03_020_B20", "box_MultipleOR_331.Out", "box_MultipleOR_335.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_333_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_333;
    l1 = self.box_MultipleOR_335;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|443767624", "443767624", "KEY03_020_B20", "box_MultipleOR_333.Out", "box_MultipleOR_335.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_327_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_296();
    l0 = self.box_SpawnAI_Wave_v2_296;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1089685208", "1089685208", "KEY03_020_B20", "box_OutputOrder_v2_327.Out", "box_SpawnAI_Wave_v2_296.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_327_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_326();
    l0 = self.box_Delay_v5_326;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|897469710", "897469710", "KEY03_020_B20", "box_OutputOrder_v2_327.Out", "box_Delay_v5_326.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SoundModifier_v2_347_Started()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_351();
    l0 = self.box_SoundModifier_v2_347;
    l1 = self.box_EntityStatusListener_351;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1399505798", "1399505798", "KEY03_020_B20", "box_SoundModifier_v2_347.Started", "box_EntityStatusListener_351.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ExitZoneWarningListener_v3_304_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_307();
    l0 = self.box_ExitZoneWarningListener_v3_304;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1778736947", "1778736947", "KEY03_020_B20", "box_ExitZoneWarningListener_v3_304.FailingZoneEntered", "box_OutputOrder_v2_307.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_322_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_294();
    l0 = self.box_SpawnAI_Wave_v2_294;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1124180770", "1124180770", "KEY03_020_B20", "box_OutputOrder_v2_322.Out", "box_SpawnAI_Wave_v2_294.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_322_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_323();
    l0 = self.box_Delay_v5_323;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|135223048", "135223048", "KEY03_020_B20", "box_OutputOrder_v2_322.Out", "box_Delay_v5_323.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_288_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_289;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|2116619317", "2116619317", "KEY03_020_B20", "box_OutputOrder_v2_288.Out", "box_ActivityAcknowledgeGate_289.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_288_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_290();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|408609947", "408609947", "KEY03_020_B20", "box_OutputOrder_v2_288.Out", "box_Print_v2_290.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_367_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_369;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1982034862", "1982034862", "KEY03_020_B20", "box_Compare_Integers_367.A_eq_B", "box_MultipleOR_369.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_369_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_369;
    l1 = self.box_OnceOnly_v3_308;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|291534392", "291534392", "KEY03_020_B20", "box_MultipleOR_369.Out", "box_OnceOnly_v3_308.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_358()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_358");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|@Activity_Init");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_358_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_366()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_366");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|@Activity_Reload");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_366_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_359()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_359");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|@ObjectiveSucc");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_359_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_365()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_365");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|@PhoneCall_AllClear");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_365_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_364()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_364");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|@PhoneCall_ChopperHot");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_364_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_362()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_362");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|@PhoneCall_CultFront");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_362_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_361()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_361");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|@PhoneCall_MoreComing");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_361_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_363()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_363");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|@PhoneCall_Snipers");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_363_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_294()
    local params;
    DrawTextToScreen("Comment: Wave_2_Snipers", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI_Wave_v2')-- Comment: Wave_2_Snipers");
    params = {
        -- AttackersAliveToNextWave,
        [0] = 1,
        -- AttackerSpawner_1,
        [1] = "2105545389282202106",
        -- CoreNPCGroup,
        [2] = "#959F2C9C",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2105545383485673935",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_303()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_345()
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

function export:OnEnter_box_SpawnAI_Wave_v2_296()
    local params;
    DrawTextToScreen("Comment: Wave_4", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI_Wave_v2')-- Comment: Wave_4");
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2105545394571219519",
        -- CoreNPCGroup,
        [2] = "#959F2C9C",
        -- IsLastWave,
        [3] = true,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2105545398157349518",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_306()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_306");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|301105859");
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

function export:OnEnter_box_RequestPhoneCall_v2_328()
    local params;
    DrawTextToScreen("Comment: PhoneCall : Snipers take cover", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: PhoneCall : Snipers take cover");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1158482589",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_329()
    local params;
    DrawTextToScreen("Comment: PhoneCall : Chopper coming in hot", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: PhoneCall : Chopper coming in hot");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2167839317",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_323()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_307()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_307");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|554203263");
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

function export:OnEnter_box_Compare_Boolean_353()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_353");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|564149978");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_353_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_353_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_CheckpointReloaded,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_357()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_357");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|601267919");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_357_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
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

function export:OnEnter_box_SpawnAI_Wave_v2_293()
    local params;
    DrawTextToScreen("Comment: Wave_1", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI_Wave_v2')-- Comment: Wave_1");
    params = {
        -- AttackersAliveToNextWave,
        [0] = 1,
        -- AttackerSpawner_1,
        [1] = "2105545360794489132",
        -- CoreNPCGroup,
        [2] = "#959F2C9C",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = true,
        -- opt_AttackerSpawner_2,
        [5] = "2105545821761100344",
        -- Timer,
        [14] = 30,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_311()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_311");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|693385931");
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

function export:OnEnter_box_SoundModifier_v2_352()
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

function export:OnEnter_box_RadioModifier_v3_355()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_355");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|731340431");
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

function export:OnEnter_box_OutputOrder_v2_349()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_349");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|741063694");
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
                [0] = self.f_box_OutputOrder_v2_349_Out_0,
                [1] = self.f_box_OutputOrder_v2_349_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_350()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_350");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|764209523");
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
                [0] = self.f_box_OutputOrder_v2_350_Out_0,
                [1] = self.f_box_OutputOrder_v2_350_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_354()
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

function export:OnEnter_box_SoundModifier_v2_348()
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

function export:OnEnter_box_Print_v2_290()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_290");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|935125779");
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
        [8] = "KEY03_020_B20 Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_343()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_343");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|943147725");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_SoundPointModifier_343_Stopped,
    });
    params = {
        -- soundPoint,
        [0] = "2103746164814796491",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_325()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_325");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|958300353");
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

function export:OnEnter_box_OutputOrder_v2_318()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_318");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|970781701");
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
                [0] = self.f_box_OutputOrder_v2_318_Out_0,
                [1] = self.f_box_OutputOrder_v2_318_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_299()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_299");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|986864973");
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
                [0] = self.f_box_OutputOrder_v2_299_Out_0,
                [1] = self.f_box_OutputOrder_v2_299_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_326()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_180()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "#C5457226",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_298()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_298");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1189333680");
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
        [8] = "KEY03_020_B20 Completed",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_340()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099614019636714194",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_337()
    local params;
    DrawTextToScreen("Comment: PhoneCall : All clear deputy. Nice one", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: PhoneCall : All clear deputy. Nice one");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2398917169",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_300()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_356()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_356");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1339881062");
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
                [0] = self.f_box_OutputOrder_v2_356_Out_0,
                [1] = self.f_box_OutputOrder_v2_356_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_312()
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

function export:OnEnter_box_Delay_v5_324()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Random_339()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_368()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#C5457226",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_316()
    local params;
    DrawTextToScreen("Comment: PhoneCall : Cult trucks pulling out front", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: PhoneCall : Cult trucks pulling out front");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "4080269611",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_344()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_344");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1551308244");
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
                [0] = self.f_box_OutputOrder_v2_344_Out_0,
                [1] = self.f_box_OutputOrder_v2_344_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_315()
    local params;
    DrawTextToScreen("Comment: PhoneCall : There is more of them", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: PhoneCall : There is more of them");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "808193650",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_297()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_297");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1576928399");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_292()
    local params;
    DrawTextToScreen("Comment: Wave_3_Footman", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI_Wave_v2')-- Comment: Wave_3_Footman");
    params = {
        -- AttackersAliveToNextWave,
        [0] = 2,
        -- AttackerSpawner_1,
        [1] = "2105546441587019411",
        -- CoreNPCGroup,
        [2] = "#959F2C9C",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2105545372525957504",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_313()
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

function export:OnEnter_box_OutputOrder_v2_310()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_310");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1653255791");
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
                [0] = self.f_box_OutputOrder_v2_310_Out_0,
                [1] = self.f_box_OutputOrder_v2_310_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_309()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_332()
    local params;
    DrawTextToScreen("Comment: PhoneCall : Grandby's clear", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: PhoneCall : Grandby's clear");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1633260320",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_317()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_336()
    local params;
    DrawTextToScreen("Comment: PhoneCall : Looks like we are all clear", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: PhoneCall : Looks like we are all clear");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "4032511905",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1804086549");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_176_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_346()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_346");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1838521344");
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

function export:OnEnter_box_IsEntityLoaded_v3_341()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_341");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1853386817");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_341_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_341_True,
    });
    params = {
        -- entityId,
        [0] = "2099614019640908504",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_351()
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

function export:OnEnter_box_ActivityRetry_302()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_302");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|1980655568");
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

function export:OnEnter_box_OutputOrder_v2_327()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_327");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|2047484890");
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
                [0] = self.f_box_OutputOrder_v2_327_Out_0,
                [1] = self.f_box_OutputOrder_v2_327_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_347()
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

function export:OnEnter_box_ExitZoneWarningListener_v3_304()
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

function export:OnEnter_box_OutputOrder_v2_322()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_322");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|2081980452");
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
                [0] = self.f_box_OutputOrder_v2_322_Out_0,
                [1] = self.f_box_OutputOrder_v2_322_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_288()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_288");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|2088730372");
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
                [0] = self.f_box_OutputOrder_v2_288_Out_0,
                [1] = self.f_box_OutputOrder_v2_288_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_367()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_367");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY03\\KEY03_020\\KEY03_020_B20.domino|@KEY03_020_B20|2094205134");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_367_A_eq_B,
    });
    l0 = self.box_GroupSizeListener_v5_368;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
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
