LUAC�Z -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act1/mis_160/mis_160_b15.domino
-- User graph: MIS_160_B15_Main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundShapeModifier.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/mis_160/MIS_160_B15.MIS_160_B15_Gate.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/mis_160/MIS_160_B15.MIS_160_DynCover.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/mis_160/mis_160_b20.MIS_160_B20_TP_Persistents.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[4107736181.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3058144172.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3791081821.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2846308148.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2455311545.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2994478821.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3246191545.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/mis_160/MIS_160_B15.MIS_160_B15_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua")] = {
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
                name = "bRequiresAllPlayer",
                type = "bool",
            },
            [3] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [4] = {
                name = "bUse2d_ProximityCheck",
                type = "bool",
            },
            [5] = {
                name = "bUseDetectionModifier",
                type = "bool",
            },
            [6] = {
                name = "eMarker",
                type = "entity",
            },
            [7] = {
                name = "eRadiusTarget",
                type = "entity",
            },
            [8] = {
                name = "eTrigger",
                type = "entity",
            },
            [9] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [10] = {
                name = "fObjectiveTimer",
                type = "float",
            },
            [11] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [12] = {
                name = "opt_Objective",
                type = "oasis",
            },
        },
        dataInCount = 13,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "PlayDialog",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FinishedOrInterrupted",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/SoundShapeModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Resume",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Paused",
                delayed = false,
            },
            [1] = {
                name = "Resumed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "FadeTime",
                type = "float",
            },
            [1] = {
                name = "SoundShapeId",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/UI/OverrideMenuAccessibility_v2.lua")] = {
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
                name = "ActivityLogMenuEnabled",
                type = "bool",
            },
            [1] = {
                name = "AvatarCreationMenuEnabled",
                type = "bool",
            },
            [2] = {
                name = "AvatarCustomizationMenuEnabled",
                type = "bool",
            },
            [3] = {
                name = "ChallengeMenuEnabled",
                type = "bool",
            },
            [4] = {
                name = "HomebaseMenuEnabled",
                type = "bool",
            },
            [5] = {
                name = "LootMenuEnabled",
                type = "bool",
            },
            [6] = {
                name = "OnlineMenuEnabled",
                type = "bool",
            },
            [7] = {
                name = "PerksMenuEnabled",
                type = "bool",
            },
            [8] = {
                name = "SquadMenuEnabled",
                type = "bool",
            },
            [9] = {
                name = "WorldmapMenuEnabled",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/mis_160/MIS_160_B15.MIS_160_B15_Gate.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Close",
            },
            [1] = {
                name = "Open",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Closed",
                delayed = false,
            },
            [1] = {
                name = "Opened",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/mis_160/MIS_160_B15.MIS_160_DynCover.debug.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/mis_160/mis_160_b20.MIS_160_B20_TP_Persistents.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Finished",
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
    self._name = "MIS_160_B15_Main";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main";
    self.isPlayersInside = false;
    self.PC_Rush = nil;
    self.isReloaded = false;
    self.box_RequestPhoneCall_v2_83 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|52857213");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_83_Completed,
    });
    self.box_OnceOnly_v3_35 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|61760171");
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
    self.box_Delay_v5_22 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|185040786");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_22_TimeElapsed,
    });
    self.box_EntityStatusListener_62 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|198540385");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_62_Loaded,
    });
    self.box_MultipleOR_88 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|202667964");
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
    self.box_MIS_160_B15_Gate_33 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/mis_160/MIS_160_B15.MIS_160_B15_Gate.debug.lua");
    l0 = self.box_MIS_160_B15_Gate_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_160_B15_Gate_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|208404735");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_MIS_160_B15_Gate_33_Opened,
    });
    self.box_GroupSizeListener_v6_14 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|269208208");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_14_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_14_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_14_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_14_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_14_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_14_MemberSpawned,
    });
    self.box_EntityStatusListener_64 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|275570746");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_64_Loaded,
    });
    self.box_SpawnAI_73 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|289747780");
    l0:SetConnections({
    });
    self.box_SpawnAI_26 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|308411248");
    l0:SetConnections({
    });
    self.box_Reach_GoTo_v3_44 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|346509051");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_44_Success,
    });
    self.box_ProximityRadiusListener_v3_66 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|350820325");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_66_SomeoneNear,
    });
    self.box_MIS_160_B15_Gate_38 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/mis_160/MIS_160_B15.MIS_160_B15_Gate.debug.lua");
    l0 = self.box_MIS_160_B15_Gate_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_160_B15_Gate_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|389969312");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_MIS_160_B15_Gate_38_Closed,
    });
    self.box_EntityStatusListener_27 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|449451624");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_27_Loaded,
    });
    self.box_PhoneCallExclusivityModifier_82 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|459368150");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_82_Enabled,
    });
    self.box_EntityStatusListener_69 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|489202840");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_69_Loaded,
    });
    self.box_EntityStatusListener_70 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|489657604");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_70_Loaded,
    });
    self.box_ProximityTrigger_v3_31 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|680522214");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_31_Enabled,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_31_OnAllInside,
    });
    self.box_EntityStatusListener_72 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|696540415");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_72_Loaded,
    });
    self.box_EntityStatusListener_68 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|718193138");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_68_Loaded,
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|755852679");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_Music_Quest_v2_47 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|773780531");
    l0:SetConnections({
    });
    self.box_MIS_160_B20_TP_Persistents_43 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/mis_160/mis_160_b20.MIS_160_B20_TP_Persistents.debug.lua");
    l0 = self.box_MIS_160_B20_TP_Persistents_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_160_B20_TP_Persistents_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|780888752");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_59 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|788781810");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_59_Started,
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|818852714");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_ProximityTrigger_v3_79 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|849670121");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_79_Enter,
    });
    self.box_SoundModifier_v2_60 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|884933293");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_60_Started,
    });
    self.box_EntityStatusListener_61 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1039514290");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_61_Loaded,
    });
    self.box_OverrideMenuAccessibility_v2_28 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
    l0 = self.box_OverrideMenuAccessibility_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1137675909");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_v2_28_Out,
    });
    self.box_SoundModifier_v2_50 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1138997131");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_13 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1171729455");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_13_Loaded,
    });
    self.box_Delay_v5_51 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1184295115");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_51_TimeElapsed,
    });
    self.box_MIS_160_DynCover_23 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT1/mis_160/MIS_160_B15.MIS_160_DynCover.debug.lua");
    l0 = self.box_MIS_160_DynCover_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_160_DynCover_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1240623277");
    l0:SetConnections({
    });
    self.box_Delay_v5_36 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1250981276");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_36_TimeElapsed,
    });
    self.box_SoundModifier_v2_58 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1302163794");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_58_Started,
    });
    self.box_Delay_v5_81 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1307868571");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_81_TimeElapsed,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1341531370");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_Custom_PlayDialog_54 = cbox:CreateBox("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua");
    l0 = self.box_Custom_PlayDialog_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_PlayDialog_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1404220382");
    l0:SetConnections({
        -- FinishedOrInterrupted,
        [0] = self.f_box_Custom_PlayDialog_54_FinishedOrInterrupted,
    });
    self.box_PlayDialog_v6_48 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1438375863");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_74 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1469626604");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_74_Loaded,
    });
    self.box_PhoneCallExclusivityModifier_80 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1511157750");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_25 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1552317753");
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
                [0] = self.f_box_OnceOnly_v3_25_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v3_30 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1570902346");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_30_Enter,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1658482992");
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
    self.box_Delay_v5_49 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1687453155");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_49_TimeElapsed,
    });
    self.box_ExitZoneWarningListener_v3_76 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1744927895");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_76_FailingZoneEntered,
    });
    self.box_PlayDialog_v6_45 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1850910080");
    l0:SetConnections({
    });
    self.box_ExitZoneWarningListener_v3_65 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1944114420");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_65_FailingZoneEntered,
    });
    self.box_EntityStatusListener_71 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1991243471");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_71_Loaded,
    });
    self.box_EntityStatusListener_63 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|2030225344");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_63_Loaded,
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|2142068779");
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
        [0] = self.f_box_MultipleOR_29_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|333737667", "333737667", "MIS_160_B15_Main", "In", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_18_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|2004094968", "2004094968", "MIS_160_B15_Main", "box_Simple_Node_18.Out", "box_OutputOrder_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_16_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_87();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1668057751", "1668057751", "MIS_160_B15_Main", "box_Simple_Node_16.Out", "box_Compare_Boolean_87.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Delay_v5_22();
    l0 = self.box_Delay_v5_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1382102335", "1382102335", "MIS_160_B15_Main", "box_Simple_Node_16.Out", "box_Delay_v5_22.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_EntityStatusListener_27();
    l0 = self.box_EntityStatusListener_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|46712497", "46712497", "MIS_160_B15_Main", "box_Simple_Node_16.Out", "box_EntityStatusListener_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_EntityStatusListener_64();
    l0 = self.box_EntityStatusListener_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1900827658", "1900827658", "MIS_160_B15_Main", "box_Simple_Node_16.Out", "box_EntityStatusListener_64.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_Music_Quest_v2_47();
    l0 = self.box_Music_Quest_v2_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1517890910", "1517890910", "MIS_160_B15_Main", "box_Simple_Node_16.Out", "box_Music_Quest_v2_47.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
    params = self:OnEnter_box_Compare_Boolean_84();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1560736828", "1560736828", "MIS_160_B15_Main", "box_Simple_Node_16.Out", "box_Compare_Boolean_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_AddActivityObjective_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|2047611172", "2047611172", "MIS_160_B15_Main", "box_Simple_Node_16.Out", "box_AddActivityObjective_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_EntityStatusListener_68();
    l0 = self.box_EntityStatusListener_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|369392517", "369392517", "MIS_160_B15_Main", "box_Simple_Node_16.Out", "box_EntityStatusListener_68.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0 = self.box_MIS_160_B20_TP_Persistents_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|729521516", "729521516", "MIS_160_B15_Main", "box_Simple_Node_16.Out", "box_MIS_160_B20_TP_Persistents_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_56_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_48();
    l0 = self.box_PlayDialog_v6_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|100584530", "100584530", "MIS_160_B15_Main", "box_Simple_Node_56.Out", "box_PlayDialog_v6_48.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_83_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_83;
    l1 = self.box_PhoneCallExclusivityModifier_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|839995582", "839995582", "MIS_160_B15_Main", "box_RequestPhoneCall_v2_83.Completed", "box_PhoneCallExclusivityModifier_80.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_OnceOnly_v3_35_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_PlayDialog_54();
    l0 = self.box_OnceOnly_v3_35;
    l1 = self.box_Custom_PlayDialog_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1582620923", "1582620923", "MIS_160_B15_Main", "box_OnceOnly_v3_35.Out", "box_Custom_PlayDialog_54.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_86_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_86_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|69761468", "69761468", "MIS_160_B15_Main", "box_SetBoolean_v2_86.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_85_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_85_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|699410451", "699410451", "MIS_160_B15_Main", "box_SetBoolean_v2_85.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_22_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_61();
    l0 = self.box_Delay_v5_22;
    l1 = self.box_EntityStatusListener_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|407294037", "407294037", "MIS_160_B15_Main", "box_Delay_v5_22.TimeElapsed", "box_EntityStatusListener_61.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_62_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_69();
    l0 = self.box_EntityStatusListener_62;
    l1 = self.box_EntityStatusListener_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1610350445", "1610350445", "MIS_160_B15_Main", "box_EntityStatusListener_62.Loaded", "box_EntityStatusListener_69.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_88_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_76();
    l0 = self.box_MultipleOR_88;
    l1 = self.box_ExitZoneWarningListener_v3_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|330989831", "330989831", "MIS_160_B15_Main", "box_MultipleOR_88.Out", "box_ExitZoneWarningListener_v3_76.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MIS_160_B15_Gate_33_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_13();
    l0 = self.box_MIS_160_B15_Gate_33;
    l1 = self.box_EntityStatusListener_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|414769516", "414769516", "MIS_160_B15_Main", "box_MIS_160_B15_Gate_33.Opened", "box_EntityStatusListener_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_34_Out()
    self:OnExit_box_SetBoolean_v2_34_Out();
end;

function export:f_box_GroupSizeListener_v6_14_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_GroupSizeListener_v6_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|777535403", "777535403", "MIS_160_B15_Main", "box_GroupSizeListener_v6_14.MemberRemoved", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_64_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_26();
    l0 = self.box_EntityStatusListener_64;
    l1 = self.box_SpawnAI_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|720637783", "720637783", "MIS_160_B15_Main", "box_EntityStatusListener_64.Loaded", "box_SpawnAI_26.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v3_44_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_Reach_GoTo_v3_44;
    l1 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|65154140", "65154140", "MIS_160_B15_Main", "box_Reach_GoTo_v3_44.Success", "box_Delay_v5_36.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_66_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_66;
    l1 = self.box_MIS_160_DynCover_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|2111111003", "2111111003", "MIS_160_B15_Main", "box_ProximityRadiusListener_v3_66.SomeoneNear", "box_MIS_160_DynCover_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MIS_160_B15_Gate_38_Closed()
    local l0, l1;
    l0 = self.box_MIS_160_B15_Gate_38;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1872260884", "1872260884", "MIS_160_B15_Main", "box_MIS_160_B15_Gate_38.Closed", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_27_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_30();
    l0 = self.box_EntityStatusListener_27;
    l1 = self.box_ProximityTrigger_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1292738125", "1292738125", "MIS_160_B15_Main", "box_EntityStatusListener_27.Loaded", "box_ProximityTrigger_v3_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_67_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_67_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_66();
    l0 = self.box_ProximityRadiusListener_v3_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|119558919", "119558919", "MIS_160_B15_Main", "box_GetPlayerGroup_v2_67.Out", "box_ProximityRadiusListener_v3_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_82_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_81();
    l0 = self.box_PhoneCallExclusivityModifier_82;
    l1 = self.box_Delay_v5_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|149701535", "149701535", "MIS_160_B15_Main", "box_PhoneCallExclusivityModifier_82.Enabled", "box_Delay_v5_81.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_69_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_70();
    l0 = self.box_EntityStatusListener_69;
    l1 = self.box_EntityStatusListener_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|69462702", "69462702", "MIS_160_B15_Main", "box_EntityStatusListener_69.Loaded", "box_EntityStatusListener_70.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_70_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_71();
    l0 = self.box_EntityStatusListener_70;
    l1 = self.box_EntityStatusListener_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|788455281", "788455281", "MIS_160_B15_Main", "box_EntityStatusListener_70.Loaded", "box_EntityStatusListener_71.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_87_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|731861568", "731861568", "MIS_160_B15_Main", "box_Compare_Boolean_87.A_is_False", "box_OutputOrder_v2_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_87_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1524646312", "1524646312", "MIS_160_B15_Main", "box_Compare_Boolean_87.A_is_True", "box_MultipleOR_88.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|465790035", "465790035", "MIS_160_B15_Main", "box_OutputOrder_v2_12.Out", "box_Print_v2_9.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_19();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|290132556", "290132556", "MIS_160_B15_Main", "box_OutputOrder_v2_12.Out", "box_Simple_Node_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_15();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|255126674", "255126674", "MIS_160_B15_Main", "box_OutputOrder_v2_12.Out", "box_ActivityEnd_15.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_31_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_ProximityTrigger_v3_31;
    l1 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1542868649", "1542868649", "MIS_160_B15_Main", "box_ProximityTrigger_v3_31.Enabled", "box_Delay_v5_41.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_31_OnAllInside()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_34();
    l0 = self.box_ProximityTrigger_v3_31;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1034780809", "1034780809", "MIS_160_B15_Main", "box_ProximityTrigger_v3_31.OnAllInside", "box_SetBoolean_v2_34.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_72_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_73();
    l0 = self.box_EntityStatusListener_72;
    l1 = self.box_SpawnAI_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1983113673", "1983113673", "MIS_160_B15_Main", "box_EntityStatusListener_72.Loaded", "box_SpawnAI_73.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_68_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_67();
    l0 = self.box_EntityStatusListener_68;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|266489932", "266489932", "MIS_160_B15_Main", "box_EntityStatusListener_68.Loaded", "box_GetPlayerGroup_v2_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_65();
    l0 = self.box_ExitZoneWarningListener_v3_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1509268267", "1509268267", "MIS_160_B15_Main", "box_OutputOrder_v2_78.Out", "box_ExitZoneWarningListener_v3_65.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_79();
    l0 = self.box_ProximityTrigger_v3_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|645843052", "645843052", "MIS_160_B15_Main", "box_OutputOrder_v2_78.Out", "box_ProximityTrigger_v3_79.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = self.box_Delay_v5_41;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|998999126", "998999126", "MIS_160_B15_Main", "box_Delay_v5_41.TimeElapsed", "box_OutputOrder_v2_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_65();
    l0 = self.box_ExitZoneWarningListener_v3_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|814009320", "814009320", "MIS_160_B15_Main", "box_OutputOrder_v2_77.Out", "box_ExitZoneWarningListener_v3_65.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1091476522", "1091476522", "MIS_160_B15_Main", "box_OutputOrder_v2_77.Out", "box_MultipleOR_88.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SoundModifier_v2_59_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_50();
    l0 = self.box_SoundModifier_v2_59;
    l1 = self.box_SoundModifier_v2_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|830117073", "830117073", "MIS_160_B15_Main", "box_SoundModifier_v2_59.Started", "box_SoundModifier_v2_50.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_85();
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|2127901519", "2127901519", "MIS_160_B15_Main", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_SetBoolean_v2_85.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideMenuAccessibility_v2_28();
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_OverrideMenuAccessibility_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|171708820", "171708820", "MIS_160_B15_Main", "box_ActivityAcknowledgeGate_3.Reloaded", "box_OverrideMenuAccessibility_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_14();
    l0 = self.box_GroupSizeListener_v6_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1305297205", "1305297205", "MIS_160_B15_Main", "box_OutputOrder_v2_8.Out", "box_GroupSizeListener_v6_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_37();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|836521403", "836521403", "MIS_160_B15_Main", "box_OutputOrder_v2_8.Out", "box_GetPlayerGroup_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_79_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = self.box_ProximityTrigger_v3_79;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|679270041", "679270041", "MIS_160_B15_Main", "box_ProximityTrigger_v3_79.Enter", "box_OutputOrder_v2_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_60_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_58();
    l0 = self.box_SoundModifier_v2_60;
    l1 = self.box_SoundModifier_v2_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|376846642", "376846642", "MIS_160_B15_Main", "box_SoundModifier_v2_60.Started", "box_SoundModifier_v2_58.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_84_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|511477044", "511477044", "MIS_160_B15_Main", "box_Compare_Boolean_84.A_is_False", "box_PhoneCallExclusivityModifier_82.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_EntityStatusListener_61_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_1();
    l0 = self.box_EntityStatusListener_61;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|222593553", "222593553", "MIS_160_B15_Main", "box_EntityStatusListener_61.Loaded", "box_SetContextualStrategy_1.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_49();
    l0 = self.box_Delay_v5_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|2132104204", "2132104204", "MIS_160_B15_Main", "box_OutputOrder_v2_39.Out", "box_Delay_v5_49.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_31();
    l0 = self.box_ProximityTrigger_v3_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1068029523", "1068029523", "MIS_160_B15_Main", "box_OutputOrder_v2_39.Out", "box_ProximityTrigger_v3_31.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OverrideMenuAccessibility_v2_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_86();
    l0 = self.box_OverrideMenuAccessibility_v2_28;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|435147112", "435147112", "MIS_160_B15_Main", "box_OverrideMenuAccessibility_v2_28.Out", "box_SetBoolean_v2_86.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_13_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v3_44();
    l0 = self.box_EntityStatusListener_13;
    l1 = self.box_Reach_GoTo_v3_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|628120383", "628120383", "MIS_160_B15_Main", "box_EntityStatusListener_13.Loaded", "box_Reach_GoTo_v3_44.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_51_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_51;
    l1 = self.box_MIS_160_B15_Gate_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1243650766", "1243650766", "MIS_160_B15_Main", "box_Delay_v5_51.TimeElapsed", "box_MIS_160_B15_Gate_33.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(1, {
    });
end;

function export:f_box_SoundShapeModifier_46_Paused()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_60();
    l0 = self.box_SoundModifier_v2_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1388115356", "1388115356", "MIS_160_B15_Main", "box_SoundShapeModifier_46.Paused", "box_SoundModifier_v2_60.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_36_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_36;
    l1 = self.box_MIS_160_B15_Gate_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|679550885", "679550885", "MIS_160_B15_Main", "box_Delay_v5_36.TimeElapsed", "box_MIS_160_B15_Gate_38.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, {
    });
end;

function export:f_box_Compare_Boolean_40_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1391097411", "1391097411", "MIS_160_B15_Main", "box_Compare_Boolean_40.A_is_False", "box_OutputOrder_v2_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_40_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|765113060", "765113060", "MIS_160_B15_Main", "box_Compare_Boolean_40.A_is_True", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SoundModifier_v2_58_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_59();
    l0 = self.box_SoundModifier_v2_58;
    l1 = self.box_SoundModifier_v2_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1587684134", "1587684134", "MIS_160_B15_Main", "box_SoundModifier_v2_58.Started", "box_SoundModifier_v2_59.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_81_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_83();
    l0 = self.box_Delay_v5_81;
    l1 = self.box_RequestPhoneCall_v2_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1925432473", "1925432473", "MIS_160_B15_Main", "box_Delay_v5_81.TimeElapsed", "box_RequestPhoneCall_v2_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|53784311", "53784311", "MIS_160_B15_Main", "box_ActivityInitialized_2.Out", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_24_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|173260339", "173260339", "MIS_160_B15_Main", "box_Compare_Integers_24.A_le_B", "box_OnceOnly_v3_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayerGroup_v2_37_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_37_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_63();
    l0 = self.box_EntityStatusListener_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|14126552", "14126552", "MIS_160_B15_Main", "box_GetPlayerGroup_v2_37.Out", "box_EntityStatusListener_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Custom_PlayDialog_54_FinishedOrInterrupted()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_18();
    l0 = self.box_Custom_PlayDialog_54;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|460889217", "460889217", "MIS_160_B15_Main", "box_Custom_PlayDialog_54.FinishedOrInterrupted", "box_Simple_Node_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_74_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SoundShapeModifier_46();
    l0 = self.box_EntityStatusListener_74;
    l1 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|216964807", "216964807", "MIS_160_B15_Main", "box_EntityStatusListener_74.Loaded", "box_SoundShapeModifier_46.Pause", l0:GetLuaBox(), l1:GetLuaBox());
    -- Pause
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_11_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1443767067", "1443767067", "MIS_160_B15_Main", "box_Compare_Integers_11.A_le_B", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|41943742", "41943742", "MIS_160_B15_Main", "box_OutputOrder_v2_4.Out", "box_ActivityAcknowledgeGate_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|847654770", "847654770", "MIS_160_B15_Main", "box_OutputOrder_v2_4.Out", "box_Print_v2_7.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_25_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_62();
    l0 = self.box_OnceOnly_v3_25;
    l1 = self.box_EntityStatusListener_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1299335518", "1299335518", "MIS_160_B15_Main", "box_OnceOnly_v3_25.Out", "box_EntityStatusListener_62.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_30_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_45();
    l0 = self.box_ProximityTrigger_v3_30;
    l1 = self.box_PlayDialog_v6_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1986334739", "1986334739", "MIS_160_B15_Main", "box_ProximityTrigger_v3_30.Enter", "box_PlayDialog_v6_45.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_56();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1255169838", "1255169838", "MIS_160_B15_Main", "box_OutputOrder_v2_52.Out", "box_Simple_Node_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_51();
    l0 = self.box_Delay_v5_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|18038681", "18038681", "MIS_160_B15_Main", "box_OutputOrder_v2_52.Out", "box_Delay_v5_51.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_52_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_74();
    l0 = self.box_EntityStatusListener_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1310669007", "1310669007", "MIS_160_B15_Main", "box_OutputOrder_v2_52.Out", "box_EntityStatusListener_74.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_1_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_21();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1661002304", "1661002304", "MIS_160_B15_Main", "box_SetContextualStrategy_1.Out", "box_Print_v2_21.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|459553697", "459553697", "MIS_160_B15_Main", "box_MultipleOR_6.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_49_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_40();
    l0 = self.box_Delay_v5_49;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1474141064", "1474141064", "MIS_160_B15_Main", "box_Delay_v5_49.TimeElapsed", "box_Compare_Boolean_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_76_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_75();
    l0 = self.box_ExitZoneWarningListener_v3_76;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|538031096", "538031096", "MIS_160_B15_Main", "box_ExitZoneWarningListener_v3_76.FailingZoneEntered", "box_ActivityRetry_v2_75.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_65_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_32();
    l0 = self.box_ExitZoneWarningListener_v3_65;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1956466431", "1956466431", "MIS_160_B15_Main", "box_ExitZoneWarningListener_v3_65.FailingZoneEntered", "box_ActivityRetry_v2_32.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_71_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_72();
    l0 = self.box_EntityStatusListener_71;
    l1 = self.box_EntityStatusListener_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1088291823", "1088291823", "MIS_160_B15_Main", "box_EntityStatusListener_71.Loaded", "box_EntityStatusListener_72.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_63_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_31();
    l0 = self.box_EntityStatusListener_63;
    l1 = self.box_ProximityTrigger_v3_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|667738142", "667738142", "MIS_160_B15_Main", "box_EntityStatusListener_63.Loaded", "box_ProximityTrigger_v3_31.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityForceAndLockTracking_42_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_14();
    l0 = self.box_GroupSizeListener_v6_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|719333303", "719333303", "MIS_160_B15_Main", "box_ActivityForceAndLockTracking_42.Enabled", "box_GroupSizeListener_v6_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_53_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_42();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|2028336763", "2028336763", "MIS_160_B15_Main", "box_ActivityObjectiveMarkerModifier_v3_53.Enabled", "box_ActivityForceAndLockTracking_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_11();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|559562333", "559562333", "MIS_160_B15_Main", "box_OutputOrder_v2_5.Out", "box_Compare_Integers_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_24();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|367531316", "367531316", "MIS_160_B15_Main", "box_OutputOrder_v2_5.Out", "box_Compare_Integers_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_53();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1774541", "1774541", "MIS_160_B15_Main", "box_AddActivityObjective_v2_10.Out", "box_ActivityObjectiveMarkerModifier_v3_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_29_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_29;
    l1 = self.box_OnceOnly_v3_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|101638436", "101638436", "MIS_160_B15_Main", "box_MultipleOR_29.Out", "box_OnceOnly_v3_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|@beat_end");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_18_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|@beat_start");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|@dlg_opengate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_56_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|@hide_messages");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_83()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2846308148",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|162645878");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_86_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|183197008");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_85_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_22()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_62()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108615351265676161",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|253030112");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_34_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_14()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#ED8B4EC0",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_64()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107963808921222931",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_73()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108615351265676161",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_26()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107963808921222931",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_44()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresAllPlayer,
        [2] = true,
        -- bRequiresObjective,
        [3] = true,
        -- bUse2d_ProximityCheck,
        [4] = true,
        -- bUseDetectionModifier,
        [5] = false,
        -- eMarker,
        [6] = "2108711602569117604",
        -- eTrigger,
        [8] = "2108544183351411136",
        -- fDistanceFromTarget,
        [9] = 5,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "Objectives",
            item = "MIS_160_B15_OBJ_EnterHomebase",
            id = "1024658",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2109578891126395122",
        -- nearZone,
        [4] = 100,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109859038559741915",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|454290514");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_67_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_69()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108626747739119714",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_70()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109208975967790888",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|513492225");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_87_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_87_A_is_True,
    });
    params = {
        -- A,
        [0] = self.isReloaded,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|514802477");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
                [2] = self.f_box_OutputOrder_v2_12_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = l0:GetDataOutValue(0),
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108544183351411136",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_72()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108615366786698188",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_68()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109578891126395122",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|738740339");
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
                [0] = self.f_box_OutputOrder_v2_78_Out_0,
                [1] = self.f_box_OutputOrder_v2_78_Out_1,
            },
            count = 2,
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
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|762047989");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_47()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 3,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "3791081821",
        -- StopEvent,
        [7] = "2455311545",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = true,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|781007387");
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

function export:OnEnter_box_SoundModifier_v2_59()
    local params;
    params = {
        -- Pawns,
        [0] = "2109759282911122155",
        -- SoundId,
        [1] = "3246191545",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|828770541");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_79()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2110147074369525375",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_60()
    local params;
    params = {
        -- Pawns,
        [0] = "2109759199786327030",
        -- SoundId,
        [1] = "3246191545",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|993156149");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_84_A_is_False,
    });
    params = {
        -- A,
        [0] = self.isReloaded,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_61()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108624803643527066",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1066446494");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1117953615");
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
                [0] = self.f_box_OutputOrder_v2_39_Out_0,
                [1] = self.f_box_OutputOrder_v2_39_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_v2_28()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = true,
        -- AvatarCustomizationMenuEnabled,
        [2] = true,
        -- ChallengeMenuEnabled,
        [3] = true,
        -- HomebaseMenuEnabled,
        [4] = false,
        -- LootMenuEnabled,
        [5] = true,
        -- OnlineMenuEnabled,
        [6] = true,
        -- PerksMenuEnabled,
        [7] = true,
        -- SquadMenuEnabled,
        [8] = true,
        -- WorldmapMenuEnabled,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_50()
    local params;
    params = {
        -- Pawns,
        [0] = "2109759286562264230",
        -- SoundId,
        [1] = "3246191545",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108544183351411136",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_51()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2.5,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1191740083");
    l0:SetConnections({
        -- Paused,
        [0] = self.f_box_SoundShapeModifier_46_Paused,
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2107479997420691303",
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

function export:OnEnter_box_Compare_Boolean_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1280937335");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_40_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_40_A_is_True,
    });
    params = {
        -- A,
        [0] = self.isPlayersInside,
        -- B,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_58()
    local params;
    params = {
        -- Pawns,
        [0] = "2109759278039437803",
        -- SoundId,
        [1] = "3246191545",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_81()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1359098551");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_24_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v6_14;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1379152395");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_37_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Custom_PlayDialog_54()
    local params;
    DrawTextToScreen("Comment: DLG : Saddle up, this isn't over yet.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Custom_PlayDialog')-- Comment: DLG : Saddle up, this isn't over yet.");
    params = {
        -- Group,
        [0] = "#5928A563",
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2994478821",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_48()
    local params;
    DrawTextToScreen("Comment: DLG : Open the gates!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: DLG : Open the gates!");
    params = {
        -- Group,
        [0] = "#5928A563",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4107736181",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1451729399");
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
        [8] = "MIS_160_B15 Started",
        -- useTimeTag,
        [9] = true,
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
        [2] = "2107479997420691303",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1482254715");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1484170246");
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
        [8] = "MIS_160_B15 Ended",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1500709334");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_11_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v6_14;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1516500201");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_30()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109859038559741915",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1606541729");
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
                [0] = self.f_box_OutputOrder_v2_52_Out_0,
                [1] = self.f_box_OutputOrder_v2_52_Out_1,
                [2] = self.f_box_OutputOrder_v2_52_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|1640704078");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_1_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108624803643527066",
        -- Group,
        [1] = "#94087DBC",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_49()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_76()
    local params;
    DrawTextToScreen("Comment: Enable Second Fail ZOne", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ExitZoneWarningListener_v3')-- Comment: Enable Second Fail ZOne");
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2110146550731660059",
        -- WarningZoneTrigger,
        [3] = "2110146537511213850",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_45()
    local params;
    DrawTextToScreen("Comment: DLG : We can't open the gates, it's too risky! Clear these bastards out.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: DLG : We can't open the gates, it's too risky! Clear these bastards out.");
    params = {
        -- Group,
        [0] = "#5928A563",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3058144172",
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_65()
    local params;
    DrawTextToScreen("Comment: First Fail Zone", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ExitZoneWarningListener_v3')-- Comment: First Fail Zone");
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2110135573124491794",
        -- WarningZoneTrigger,
        [3] = "2110135564115126801",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_71()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108624803643527066",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_63()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108544183351411136",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|2030558627");
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
        [8] = "SET CS",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|2039770227");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_42_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|2086155912");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_53_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2109209544124035316",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_160_B20_OBJ_DefendWalls",
            id = "959597",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|2086370681");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT1\\mis_160\\MIS_160_B15.domino|@MIS_160_B15_Main|2132967672");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_10_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_160_B20_OBJ_DefendWalls",
            id = "959597",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_86_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isReloaded = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_85_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isReloaded = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_34_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isPlayersInside = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_67_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_66;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_37_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityTrigger_v3_31;
    l1:GetLuaBox().colliderFilterId = l0:GetDataOutValue(0);
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
