LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/f5/f5_cultlocation_01.domino
-- User graph: F5_CultLocation_01_QUEST_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveTimerModifier.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2322493388.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2610597704.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2651340459.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.F5_CultLocation_01 = nil;
    Globals.F5_CultLocation_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Outposts/F5/F5_CultLocation_01.F5_CultLocation_01_QUEST_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua")] = {
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
                name = "PlayerDetected",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Success",
                delayed = false,
            },
            [4] = {
                name = "TimerExpired",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bIsTrigger",
                type = "bool",
            },
            [2] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [3] = {
                name = "bUse2d_ProximityCheck",
                type = "bool",
            },
            [4] = {
                name = "bUseDetectionModifier",
                type = "bool",
            },
            [5] = {
                name = "eMarker",
                type = "entity",
            },
            [6] = {
                name = "eRadiusTarget",
                type = "entity",
            },
            [7] = {
                name = "eTrigger",
                type = "entity",
            },
            [8] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [9] = {
                name = "fObjectiveTimer",
                type = "float",
            },
            [10] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [11] = {
                name = "opt_Objective",
                type = "oasis",
            },
        },
        dataInCount = 12,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveTimerListener.lua")] = {
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
                name = "OnTime",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveTimerModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ModifyTime",
            },
            [1] = {
                name = "Pause",
            },
            [2] = {
                name = "Restart",
            },
            [3] = {
                name = "Resume",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Paused",
                delayed = false,
            },
            [1] = {
                name = "Restarted",
                delayed = false,
            },
            [2] = {
                name = "Resumed",
                delayed = false,
            },
            [3] = {
                name = "TimeModified",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [1] = {
                name = "Time",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/AI/RegenerateNavmesh.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Completed",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "RegionEntity",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua")] = {
        stateless = false,
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
            [3] = {
                name = "Enable",
            },
        },
        controlInCount = 4,
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
            [3] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
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
    metadataTable[GetPathID("Domino/System/StartCelebration.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Ended",
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
                name = "Preset",
                type = "genericdb",
            },
            [1] = {
                name = "TextId",
                type = "oasis",
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
    self._name = "F5_CultLocation_01_QUEST_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10";
    self.Out = DummyFunction;
    self.Enemies_count = 6;
    self.LeaderCount = 0;
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|4921006");
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
    self.box_OnceOnly_v3_9 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|11994914");
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
                [0] = self.f_box_OnceOnly_v3_9_Out_0,
                [1] = self.f_box_OnceOnly_v3_9_Out_1,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_Wave_v2_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|69237204");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_2_NextWave,
    });
    self.box_OnceOnly_v3_16 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|75930917");
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
                [0] = self.f_box_OnceOnly_v3_16_Out_0,
            },
            count = 2,
        },
    });
    self.box_RequestPhoneCall_v2_17 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|77093927");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_17_Completed,
    });
    self.box_ActivityInitialized_37 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|89376127");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_37_Out,
    });
    self.box_MultipleAND_v2_13 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|123994908");
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
        [0] = self.f_box_MultipleAND_v2_13_Out,
    });
    self.box_Delay_v5_23 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|133819243");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_23_TimeElapsed,
    });
    self.box_ActivityAcknowledgeGate_50 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|230476451");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_50_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_50_Reloaded,
    });
    self.box_RequestPhoneCall_v2_18 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|306029561");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_18_Completed,
    });
    self.box_Delay_v5_36 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|360853618");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_36_TimeElapsed,
    });
    self.box_SpawnAI_Wave_v2_29 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|393069561");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_29_NextWave,
    });
    self.box_RegenerateNavmesh_20 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|412136574");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_RegenerateNavmesh_20_Out,
    });
    self.box_GroupSizeListener_v5_71 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|431254402");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_71_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_71_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_71_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_71_MemberRemoved,
    });
    self.box_BaseMissionBlock_v2_49 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|448536786");
    l0:SetConnections({
    });
    self.box_Delay_v5_1 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|585373095");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_1_TimeElapsed,
    });
    self.box_EntityStatusListener_40 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|729843122");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_40_Loaded,
    });
    self.box_Reach_GoTo_v2_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|745413552");
    l0:SetConnections({
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|817259196");
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
        [0] = self.f_box_MultipleOR_11_Out,
    });
    self.box_GroupSizeListener_v5_35 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1025941912");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_35_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_35_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_35_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_35_MemberRemoved,
    });
    self.box_StartCelebration_34 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1031417156");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_34_Ended,
    });
    self.box_RequestPhoneCall_v2_19 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1043915584");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_19_Completed,
    });
    self.box_Delay_v5_7 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1209724414");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_7_TimeElapsed,
    });
    self.box_RegenerateNavmesh_56 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1286028470");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_RegenerateNavmesh_56_Out,
    });
    self.box_SpawnAI_Wave_v2_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1287364178");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_15_NextWave,
    });
    self.box_RegenerateNavmesh_8 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1293395335");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_RegenerateNavmesh_8_Out,
    });
    self.box_ProximityTrigger_v2_54 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1342648357");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_54_Enter,
    });
    self.box_RegenerateNavmesh_12 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1371097909");
    l0:SetConnections({
    });
    self.box_SpawnAI_Wave_v2_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1374586921");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_14_NextWave,
    });
    self.box_Reach_GoTo_v2_41 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1525378837");
    l0:SetConnections({
    });
    self.box_SpawnAI_Wave_v2_57 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1551525643");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_57_NextWave,
    });
    self.box_SpawnAI_39 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1631306468");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_39_Spawned,
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1748002781");
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
        [0] = self.f_box_MultipleOR_53_Out,
    });
    self.box_SpawnAI_68 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1756657584");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_68_Spawned,
    });
    self.box_BaseMissionBlock_v2_51 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1757004218");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_BaseMissionBlock_v2_51_Activated,
    });
    self.box_SpawnAI_Wave_v2_55 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1760833035");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_55_NextWave,
    });
    self.box_SpawnAI_Wave_v2_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1870163633");
    l0:SetConnections({
        -- LastWave_Cleanup,
        [1] = self.f_box_SpawnAI_Wave_v2_5_LastWave_Cleanup,
    });
    self.box_ActivityObjectiveTimerListener_38 = cbox:CreateBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
    l0 = self.box_ActivityObjectiveTimerListener_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveTimerListener_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1878610730");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveTimerListener_38_Enabled,
        -- OnTime,
        [2] = self.f_box_ActivityObjectiveTimerListener_38_OnTime,
    });
    self.box_ExitZoneWarningListener_v3_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1910213117");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_3_FailingZoneEntered,
    });
    self.box_MultipleOR_72 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1964636786");
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
    self.box_SpawnAI_Wave_v2_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.SpawnAI_Wave_v2.debug.lua");
    l0 = self.box_SpawnAI_Wave_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_Wave_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|2048278339");
    l0:SetConnections({
        -- NextWave,
        [2] = self.f_box_SpawnAI_Wave_v2_10_NextWave,
    });
    self.box_SpawnAI_46 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|2066000745");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_46_Spawned,
    });
    self.box_Reach_GoTo_v2_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|2082098225");
    l0:SetConnections({
    });
    self.box_SpawnAI_61 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|2136413391");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_61_Spawned,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1315542294", "1315542294", "F5_CultLocation_01_QUEST_B10", "In", "box_OutputOrder_v2_48.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_MultipleOR_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_29();
    l0 = self.box_MultipleOR_30;
    l1 = self.box_SpawnAI_Wave_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|668956008", "668956008", "F5_CultLocation_01_QUEST_B10", "box_MultipleOR_30.Out", "box_SpawnAI_Wave_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_9_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_55();
    l0 = self.box_OnceOnly_v3_9;
    l1 = self.box_SpawnAI_Wave_v2_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1162577648", "1162577648", "F5_CultLocation_01_QUEST_B10", "box_OnceOnly_v3_9.Out", "box_SpawnAI_Wave_v2_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_9_Out_1()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_9;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1801032762", "1801032762", "F5_CultLocation_01_QUEST_B10", "box_OnceOnly_v3_9.Out", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v2_4();
    l0 = self.box_Reach_GoTo_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|487574721", "487574721", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_24.Out", "box_Reach_GoTo_v2_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_23();
    l0 = self.box_Delay_v5_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|413086096", "413086096", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_24.Out", "box_Delay_v5_23.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_24_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_28();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1947013812", "1947013812", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_24.Out", "box_SetContextualStrategy_28.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_2_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_5();
    l0 = self.box_SpawnAI_Wave_v2_2;
    l1 = self.box_SpawnAI_Wave_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|462118485", "462118485", "F5_CultLocation_01_QUEST_B10", "box_SpawnAI_Wave_v2_2.NextWave", "box_SpawnAI_Wave_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_16_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_45();
    l0 = self.box_OnceOnly_v3_16;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1558759663", "1558759663", "F5_CultLocation_01_QUEST_B10", "box_OnceOnly_v3_16.Out", "box_SetContextualStrategy_45.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_17_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v2_41();
    l0 = self.box_RequestPhoneCall_v2_17;
    l1 = self.box_Reach_GoTo_v2_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|213665506", "213665506", "F5_CultLocation_01_QUEST_B10", "box_RequestPhoneCall_v2_17.Completed", "box_Reach_GoTo_v2_41.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = self.box_ActivityInitialized_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|607527075", "607527075", "F5_CultLocation_01_QUEST_B10", "box_ActivityInitialized_37.Out", "box_OutputOrder_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_MultipleAND_v2_13;
    l1 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|346839865", "346839865", "F5_CultLocation_01_QUEST_B10", "box_MultipleAND_v2_13.Out", "box_Delay_v5_36.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_23_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_2();
    l0 = self.box_Delay_v5_23;
    l1 = self.box_SpawnAI_Wave_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|752292824", "752292824", "F5_CultLocation_01_QUEST_B10", "box_Delay_v5_23.TimeElapsed", "box_SpawnAI_Wave_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_50_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_50;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1275033671", "1275033671", "F5_CultLocation_01_QUEST_B10", "box_ActivityAcknowledgeGate_50.Acknowledged", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_50_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_50;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1150216386", "1150216386", "F5_CultLocation_01_QUEST_B10", "box_ActivityAcknowledgeGate_50.Reloaded", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetContextualStrategy_25_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_34();
    l0 = self.box_StartCelebration_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|936185152", "936185152", "F5_CultLocation_01_QUEST_B10", "box_SetContextualStrategy_25.Out", "box_StartCelebration_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v2_6();
    l0 = self.box_Reach_GoTo_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1070208018", "1070208018", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_21.Out", "box_Reach_GoTo_v2_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_1();
    l0 = self.box_Delay_v5_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|649731546", "649731546", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_21.Out", "box_Delay_v5_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_21_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_27();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1330300941", "1330300941", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_21.Out", "box_SetContextualStrategy_27.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_18_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_RequestPhoneCall_v2_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|748361087", "748361087", "F5_CultLocation_01_QUEST_B10", "box_RequestPhoneCall_v2_18.Completed", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_36_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_35();
    l0 = self.box_Delay_v5_36;
    l1 = self.box_GroupSizeListener_v5_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|332826112", "332826112", "F5_CultLocation_01_QUEST_B10", "box_Delay_v5_36.TimeElapsed", "box_GroupSizeListener_v5_35.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_43_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_47();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|914038777", "914038777", "F5_CultLocation_01_QUEST_B10", "box_Compare_Integers_43.A_lt_B", "box_SetContextualStrategy_47.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_29_NextWave()
    local l0, l1;
    l0 = self.box_SpawnAI_Wave_v2_29;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1926018016", "1926018016", "F5_CultLocation_01_QUEST_B10", "box_SpawnAI_Wave_v2_29.NextWave", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RegenerateNavmesh_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RegenerateNavmesh_8();
    l0 = self.box_RegenerateNavmesh_20;
    l1 = self.box_RegenerateNavmesh_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|602147711", "602147711", "F5_CultLocation_01_QUEST_B10", "box_RegenerateNavmesh_20.Out", "box_RegenerateNavmesh_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_71_Enabled()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_71_Enabled();
    l0 = self.box_GroupSizeListener_v5_71;
    l1 = self.box_MultipleOR_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|961001238", "961001238", "F5_CultLocation_01_QUEST_B10", "box_GroupSizeListener_v5_71.Enabled", "box_MultipleOR_72.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_71_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_71_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_71_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_71_MemberRemoved();
    l0 = self.box_GroupSizeListener_v5_71;
    l1 = self.box_MultipleOR_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|599753707", "599753707", "F5_CultLocation_01_QUEST_B10", "box_GroupSizeListener_v5_71.MemberRemoved", "box_MultipleOR_72.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_64_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_17();
    l0 = self.box_RequestPhoneCall_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1192569874", "1192569874", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_64.Out", "box_RequestPhoneCall_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_64_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_71();
    l0 = self.box_GroupSizeListener_v5_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|156179595", "156179595", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_64.Out", "box_GroupSizeListener_v5_71.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_64_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_54();
    l0 = self.box_ProximityTrigger_v2_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|300766157", "300766157", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_64.Out", "box_ProximityTrigger_v2_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_68();
    l0 = self.box_SpawnAI_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1043314989", "1043314989", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_44.Out", "box_SpawnAI_68.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_61();
    l0 = self.box_SpawnAI_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1067002537", "1067002537", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_44.Out", "box_SpawnAI_61.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_44_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_7();
    l0 = self.box_Delay_v5_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|687665792", "687665792", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_44.Out", "box_Delay_v5_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_44_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_3();
    l0 = self.box_ExitZoneWarningListener_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1073378141", "1073378141", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_44.Out", "box_ExitZoneWarningListener_v3_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_1_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_1;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1711472952", "1711472952", "F5_CultLocation_01_QUEST_B10", "box_Delay_v5_1.TimeElapsed", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_40_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RegenerateNavmesh_20();
    l0 = self.box_EntityStatusListener_40;
    l1 = self.box_RegenerateNavmesh_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|411895067", "411895067", "F5_CultLocation_01_QUEST_B10", "box_EntityStatusListener_40.Loaded", "box_RegenerateNavmesh_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_57();
    l0 = self.box_MultipleOR_11;
    l1 = self.box_SpawnAI_Wave_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1017179040", "1017179040", "F5_CultLocation_01_QUEST_B10", "box_MultipleOR_11.Out", "box_SpawnAI_Wave_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_32();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1637874636", "1637874636", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_52.Out", "box_AddActivityObjective_v2_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_49();
    l0 = self.box_BaseMissionBlock_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1697675205", "1697675205", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_52.Out", "box_BaseMissionBlock_v2_49.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
end;

function export:f_box_ActivityObjectiveTimerModifier_31_Resumed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveTimerModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveTimerListener_38();
    l0 = self.box_ActivityObjectiveTimerListener_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|637559529", "637559529", "F5_CultLocation_01_QUEST_B10", "box_ActivityObjectiveTimerModifier_31.Resumed", "box_ActivityObjectiveTimerListener_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v5_35_Enabled()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v5_35_Enabled();
    params = self:OnEnter_box_Compare_Integers_43();
    l0 = self.box_GroupSizeListener_v5_35;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1936309920", "1936309920", "F5_CultLocation_01_QUEST_B10", "box_GroupSizeListener_v5_35.Enabled", "box_Compare_Integers_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_35_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_35_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_35_MemberRemoved()
    self:OnExit_box_GroupSizeListener_v5_35_MemberRemoved();
end;

function export:f_box_StartCelebration_34_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_51();
    l0 = self.box_StartCelebration_34;
    l1 = self.box_BaseMissionBlock_v2_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1499246707", "1499246707", "F5_CultLocation_01_QUEST_B10", "box_StartCelebration_34.Ended", "box_BaseMissionBlock_v2_51.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_RequestPhoneCall_v2_19_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_RequestPhoneCall_v2_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1096329387", "1096329387", "F5_CultLocation_01_QUEST_B10", "box_RequestPhoneCall_v2_19.Completed", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_7_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_26();
    l0 = self.box_Delay_v5_7;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|980411401", "980411401", "F5_CultLocation_01_QUEST_B10", "box_Delay_v5_7.TimeElapsed", "box_SetContextualStrategy_26.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_47_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_54();
    l0 = self.box_ProximityTrigger_v2_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1507698569", "1507698569", "F5_CultLocation_01_QUEST_B10", "box_SetContextualStrategy_47.Out", "box_ProximityTrigger_v2_54.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_RegenerateNavmesh_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_40();
    l0 = self.box_RegenerateNavmesh_56;
    l1 = self.box_EntityStatusListener_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|299330279", "299330279", "F5_CultLocation_01_QUEST_B10", "box_RegenerateNavmesh_56.Out", "box_EntityStatusListener_40.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_Wave_v2_15_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_18();
    l0 = self.box_SpawnAI_Wave_v2_15;
    l1 = self.box_RequestPhoneCall_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1004024583", "1004024583", "F5_CultLocation_01_QUEST_B10", "box_SpawnAI_Wave_v2_15.NextWave", "box_RequestPhoneCall_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RegenerateNavmesh_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RegenerateNavmesh_12();
    l0 = self.box_RegenerateNavmesh_8;
    l1 = self.box_RegenerateNavmesh_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1275118144", "1275118144", "F5_CultLocation_01_QUEST_B10", "box_RegenerateNavmesh_8.Out", "box_RegenerateNavmesh_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_66_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_25();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1795601912", "1795601912", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_66.Out", "box_SetContextualStrategy_25.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_66_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_60();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|81489493", "81489493", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_66.Out", "box_EndActivityObjective_v2_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_66_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_Wave_v2_29();
    l0 = self.box_SpawnAI_Wave_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1403268062", "1403268062", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_66.Out", "box_SpawnAI_Wave_v2_29.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_54_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_54;
    l1 = self.box_OnceOnly_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1819843414", "1819843414", "F5_CultLocation_01_QUEST_B10", "box_ProximityTrigger_v2_54.Enter", "box_OnceOnly_v3_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_Wave_v2_14_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_15();
    l0 = self.box_SpawnAI_Wave_v2_14;
    l1 = self.box_SpawnAI_Wave_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1684636270", "1684636270", "F5_CultLocation_01_QUEST_B10", "box_SpawnAI_Wave_v2_14.NextWave", "box_SpawnAI_Wave_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|34814619", "34814619", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_48.Out", "box_ActivityAcknowledgeGate_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RegenerateNavmesh_56();
    l0 = self.box_RegenerateNavmesh_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|463262303", "463262303", "F5_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_48.Out", "box_RegenerateNavmesh_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_AddActivityObjective_v2_32_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveTimerModifier_31();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveTimerModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|635103713", "635103713", "F5_CultLocation_01_QUEST_B10", "box_AddActivityObjective_v2_32.Out", "box_ActivityObjectiveTimerModifier_31.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_57_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_14();
    l0 = self.box_SpawnAI_Wave_v2_57;
    l1 = self.box_SpawnAI_Wave_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1317015582", "1317015582", "F5_CultLocation_01_QUEST_B10", "box_SpawnAI_Wave_v2_57.NextWave", "box_SpawnAI_Wave_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_39_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_13();
    l0 = self.box_SpawnAI_39;
    l1 = self.box_MultipleAND_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|552645035", "552645035", "F5_CultLocation_01_QUEST_B10", "box_SpawnAI_39.Spawned", "box_MultipleAND_v2_13.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleOR_53_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_53;
    l1 = self.box_ActivityInitialized_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|249311987", "249311987", "F5_CultLocation_01_QUEST_B10", "box_MultipleOR_53.Out", "box_ActivityInitialized_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SpawnAI_68_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_46();
    l0 = self.box_SpawnAI_68;
    l1 = self.box_SpawnAI_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1135278332", "1135278332", "F5_CultLocation_01_QUEST_B10", "box_SpawnAI_68.Spawned", "box_SpawnAI_46.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_BaseMissionBlock_v2_51_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_42();
    l0 = self.box_BaseMissionBlock_v2_51;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1066076917", "1066076917", "F5_CultLocation_01_QUEST_B10", "box_BaseMissionBlock_v2_51.Activated", "box_ActivityEnd_42.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_55_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_Wave_v2_10();
    l0 = self.box_SpawnAI_Wave_v2_55;
    l1 = self.box_SpawnAI_Wave_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1839266693", "1839266693", "F5_CultLocation_01_QUEST_B10", "box_SpawnAI_Wave_v2_55.NextWave", "box_SpawnAI_Wave_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_Wave_v2_5_LastWave_Cleanup()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_66();
    l0 = self.box_SpawnAI_Wave_v2_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|964268641", "964268641", "F5_CultLocation_01_QUEST_B10", "box_SpawnAI_Wave_v2_5.LastWave_Cleanup", "box_OutputOrder_v2_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveTimerListener_38_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = self.box_ActivityObjectiveTimerListener_38;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1506470379", "1506470379", "F5_CultLocation_01_QUEST_B10", "box_ActivityObjectiveTimerListener_38.Enabled", "box_OutputOrder_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveTimerListener_38_OnTime()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_64();
    l0 = self.box_ActivityObjectiveTimerListener_38;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|341826662", "341826662", "F5_CultLocation_01_QUEST_B10", "box_ActivityObjectiveTimerListener_38.OnTime", "box_OutputOrder_v2_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_3_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_67();
    l0 = self.box_ExitZoneWarningListener_v3_3;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1071888034", "1071888034", "F5_CultLocation_01_QUEST_B10", "box_ExitZoneWarningListener_v3_3.FailingZoneEntered", "box_ActivityRetry_67.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_73_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1436362349", "1436362349", "F5_CultLocation_01_QUEST_B10", "box_Compare_Integers_73.A_le_B", "box_OnceOnly_v3_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_72_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_73();
    l0 = self.box_MultipleOR_72;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|974793193", "974793193", "F5_CultLocation_01_QUEST_B10", "box_MultipleOR_72.Out", "box_Compare_Integers_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_Wave_v2_10_NextWave()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_19();
    l0 = self.box_SpawnAI_Wave_v2_10;
    l1 = self.box_RequestPhoneCall_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1403959827", "1403959827", "F5_CultLocation_01_QUEST_B10", "box_SpawnAI_Wave_v2_10.NextWave", "box_RequestPhoneCall_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_46_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_13();
    l0 = self.box_SpawnAI_46;
    l1 = self.box_MultipleAND_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|604180384", "604180384", "F5_CultLocation_01_QUEST_B10", "box_SpawnAI_46.Spawned", "box_MultipleAND_v2_13.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_SpawnAI_61_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_39();
    l0 = self.box_SpawnAI_61;
    l1 = self.box_SpawnAI_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1969238856", "1969238856", "F5_CultLocation_01_QUEST_B10", "box_SpawnAI_61.Spawned", "box_SpawnAI_39.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:OnEnter_box_SetContextualStrategy_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|43933389");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104462414794738009",
        -- Group,
        [1] = "#ECB3AC44",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|68418684");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
                [2] = self.f_box_OutputOrder_v2_24_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_2()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 1,
        -- AttackerSpawner_1,
        [1] = "2104272685834976701",
        -- CoreNPCGroup,
        [2] = "#F54974F4",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2104272640077216686",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_17()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2322493388",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_13()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_23()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|167317724");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104462418420713821",
        -- Group,
        [1] = "#49830117",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|189748430");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104462419477678433",
        -- Group,
        [1] = "#49830117",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|254181853");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_25_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2101549172646800843",
        -- Group,
        [1] = "#49830117",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|299680090");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
                [2] = self.f_box_OutputOrder_v2_21_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|305338384");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_18()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2610597704",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_36()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|385928087");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_43_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.LeaderCount,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_29()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2104464156966001176",
        -- CoreNPCGroup,
        [2] = "#49830117",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|405984249");
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

function export:OnEnter_box_RegenerateNavmesh_20()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2104549121332387553",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|419214900");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2101617422462097457",
        -- Group,
        [1] = "#397B296D",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_71()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#397B296D",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_49()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160258154784640",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|525133473");
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
                [0] = self.f_box_OutputOrder_v2_64_Out_0,
                [1] = self.f_box_OutputOrder_v2_64_Out_1,
                [2] = self.f_box_OutputOrder_v2_64_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|557738017");
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
                [0] = self.f_box_OutputOrder_v2_44_Out_0,
                [1] = self.f_box_OutputOrder_v2_44_Out_1,
                [2] = self.f_box_OutputOrder_v2_44_Out_2,
                [3] = self.f_box_OutputOrder_v2_44_Out_3,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_1()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 13,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_40()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100897990488114443",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_4()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bIsTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = true,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2104272177963471747",
        -- eRadiusTarget,
        [6] = "2104272179796382599",
        -- fDistanceFromTarget,
        [8] = 3,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "F5_CultLocation_01_QUEST_B10_OBJ_13",
            id = "858742",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|867346708");
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

function export:OnEnter_box_ActivityObjectiveTimerModifier_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveTimerModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveTimerModifier_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|962967761");
    l0:SetConnections({
        -- Resumed,
        [2] = self.f_box_ActivityObjectiveTimerModifier_31_Resumed,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "F5_CultLocation_01_QUEST_B10_OBJ_06",
            id = "848818",
        },
        -- Time,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_35()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#9FB8F86E",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_34()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
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
        [5] = "2651340459",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_7()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1280276613");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_47_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2101617422462097457",
        -- Group,
        [1] = "#397B296D",
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_56()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2105544154615403632",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_15()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2104159814484527531",
        -- CoreNPCGroup,
        [2] = "#F54974F4",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2104159818454436309",
        -- opt_AttackerSpawner_3,
        [6] = "2104159841219021494",
        -- opt_AttackerSpawner_5,
        [8] = "2104159844907911923",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_8()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2104148008170963396",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1303333380");
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
                [0] = self.f_box_OutputOrder_v2_66_Out_0,
                [1] = self.f_box_OutputOrder_v2_66_Out_1,
                [2] = self.f_box_OutputOrder_v2_66_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_54()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103968884492079689",
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_12()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2104171968623291879",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_14()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 2,
        -- AttackerSpawner_1,
        [1] = "2104159827874843229",
        -- CoreNPCGroup,
        [2] = "#F54974F4",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2104159824645229093",
        -- opt_AttackerSpawner_3,
        [6] = "2104159841219021494",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1411770338");
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

function export:OnEnter_box_EndActivityObjective_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1423079752");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "F5_CultLocation_01_QUEST_B10_OBJ_13",
            id = "858742",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1493442832");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_32_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "F5_CultLocation_01_QUEST_B10_OBJ_06",
            id = "848818",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 27,
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_41()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bIsTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = true,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eRadiusTarget,
        [6] = "2101356561002672153",
        -- fDistanceFromTarget,
        [8] = 30,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "F5_CultLocation_01_QUEST_B10_OBJ_11",
            id = "858740",
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_57()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 2,
        -- AttackerSpawner_1,
        [1] = "2104159814484527531",
        -- CoreNPCGroup,
        [2] = "#F54974F4",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2104159818454436309",
        -- opt_AttackerSpawner_3,
        [6] = "2104159820612405757",
        -- opt_AttackerSpawner_4,
        [7] = "2104159827874843229",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_39()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100897990488114443",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_68()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101328832733649906",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_51()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160258154784640",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_55()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 2,
        -- AttackerSpawner_1,
        [1] = "2101657465851501497",
        -- CoreNPCGroup,
        [2] = "#6D04DD0A",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2101657470672854005",
        -- opt_AttackerSpawner_3,
        [6] = "2103967678482891670",
        -- opt_AttackerSpawner_4,
        [7] = "2104159781429217347",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_5()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2104272698103316079",
        -- CoreNPCGroup,
        [2] = "#F54974F4",
        -- IsLastWave,
        [3] = true,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2104272706816982820",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveTimerListener_38()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "F5_CultLocation_01_QUEST_B10_OBJ_06",
            id = "848818",
        },
        -- Time,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_3()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2104272109143345134",
        -- WarningZoneTrigger,
        [3] = "2104272088171825133",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_QUEST_B10|1955060625");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_73_A_le_B,
    });
    params = {
        -- A,
        [0] = self.Enemies_count,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_Wave_v2_10()
    local params;
    params = {
        -- AttackersAliveToNextWave,
        [0] = 0,
        -- AttackerSpawner_1,
        [1] = "2104159783373277310",
        -- CoreNPCGroup,
        [2] = "#F54974F4",
        -- IsLastWave,
        [3] = false,
        -- NextWaveOnTimerEnd,
        [4] = false,
        -- opt_AttackerSpawner_2,
        [5] = "2101657470672854005",
        -- opt_AttackerSpawner_3,
        [6] = "2101657465851501497",
        -- opt_AttackerSpawner_4,
        [7] = "2104159781429217347",
        -- Timer,
        [14] = 20,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_46()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102004904596874120",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_6()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bIsTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = true,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2104160741081749921",
        -- eRadiusTarget,
        [6] = "2104147692786575237",
        -- fDistanceFromTarget,
        [8] = 3,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "F5_CultLocation_01_QUEST_B10_OBJ_12",
            id = "858741",
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_61()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102004892410323720",
    };
    return params;
end;

function export:OnExit_box_GroupSizeListener_v5_71_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_71;
    self.Enemies_count = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_71_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_71;
    self.Enemies_count = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_71_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_71;
    self.Enemies_count = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_35_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_35;
    self.LeaderCount = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_35_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_35;
    self.LeaderCount = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_35_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_35;
    self.LeaderCount = l0:GetDataOutValue(1);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
