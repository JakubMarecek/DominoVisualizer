LUAC&� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/gfh/mis_510/mis_510_b20.domino
-- User graph: MIS_510_B20_MAIN
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/ConversationListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ForceExitVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/ForceVehicleCrash_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetDistance.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleSeatModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[4183147249.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1914652485.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1130074308.bnk]], "CSoundResource");
        cboxRes:LoadResource([[920461530.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1102593517.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3792300005.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3187881872.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2956928795.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1008250954.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2701655698.bnk]], "CSoundResource");
        cboxRes:LoadResource([[40102461.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1745917742.bnk]], "CSoundResource");
        cboxRes:LoadResource([[784231964.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3607825562.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4179424404.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3929884931.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3812894818.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2526747624.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3862196033.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3567744576.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1569441462.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2869461263.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_510/MIS_510_B20.MIS_510_B20_MAIN.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua")] = {
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
                name = "Detected",
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
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "group",
                type = "group",
            },
        },
        dataInCount = 1,
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
                name = "InCAIndex",
                type = "int",
            },
            [2] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "OutCAIndex",
                type = "int",
            },
            [1] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
                name = "ContextualActionIndex",
                type = "int",
            },
            [2] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 3,
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
                name = "LineStarted",
                delayed = true,
            },
            [5] = {
                name = "Paused",
                delayed = true,
            },
            [6] = {
                name = "Resumed",
                delayed = true,
            },
            [7] = {
                name = "Skipped",
                delayed = true,
            },
            [8] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 9,
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
            [0] = {
                name = "TriggeredLineId",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/Bind_v4.lua")] = {
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
                name = "Bound",
                delayed = false,
            },
            [1] = {
                name = "UnBound",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "EntityA",
                type = "entity",
            },
            [2] = {
                name = "EntityB",
                type = "entity",
            },
            [3] = {
                name = "IsMultiBeatBind",
                type = "bool",
            },
            [4] = {
                name = "PositionOnly",
                type = "bool",
            },
            [5] = {
                name = "RemoveOffset",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareFloats.lua")] = {
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
                type = "float",
            },
            [1] = {
                name = "B",
                type = "float",
            },
            [2] = {
                name = "Tolerance",
                type = "float",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/ForceExitVehicle_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ForceExit",
            },
            [1] = {
                name = "TryExit",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "ForceExitted",
                delayed = false,
            },
            [1] = {
                name = "TryExitted",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "noFail",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "vehicle",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")] = {
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
                name = "gasPedal",
                type = "float",
            },
            [1] = {
                name = "steeringWheel",
                type = "float",
            },
            [2] = {
                name = "useDamageFactor",
                type = "bool",
            },
            [3] = {
                name = "vehicle",
                type = "entity",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/GetDistance.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Distance2D",
            },
            [1] = {
                name = "Distance3D",
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
                name = "Distance",
                type = "float",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/GetPawnVehicleInfo.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "InVehicle",
                delayed = false,
            },
            [1] = {
                name = "NotInVehicle",
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
                name = "pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "seatType",
                type = "string",
            },
            [2] = {
                name = "vehicle",
                type = "entity",
            },
            [3] = {
                name = "vehicleType",
                type = "string",
            },
        },
        dataOutCount = 4,
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
    metadataTable[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")] = {
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
            [0] = {
                name = "LocalPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/UniversalInteractionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceInteraction",
            },
        },
        controlInCount = 3,
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
                name = "Interacted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "disableOnUse",
                type = "bool",
            },
            [1] = {
                name = "displayId",
                type = "oasis",
            },
            [2] = {
                name = "interactor",
                type = "entity",
            },
            [3] = {
                name = "state",
                type = "bool",
            },
            [4] = {
                name = "usableEntity",
                type = "entity",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UniversalInterationListener.lua")] = {
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
                name = "Interacted",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "usableEntityId",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "entityInteracted",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/VehicleListener_v3.lua")] = {
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
                name = "OnAllSitting",
                delayed = true,
            },
            [3] = {
                name = "OnAllStanding",
                delayed = true,
            },
            [4] = {
                name = "OnChangeSeat",
                delayed = true,
            },
            [5] = {
                name = "OnInteract",
                delayed = true,
            },
            [6] = {
                name = "OnSit",
                delayed = true,
            },
            [7] = {
                name = "OnStandUp",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "autoDisable",
                type = "bool",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "SeatType",
                type = "int",
            },
            [4] = {
                name = "vehicle",
                type = "entity",
            },
            [5] = {
                name = "vehicleTypeFilter",
                type = "int",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "activePawn",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Lock",
            },
            [1] = {
                name = "Unlock",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Locked",
                delayed = false,
            },
            [1] = {
                name = "Unlocked",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "IsAI",
                type = "bool",
            },
            [1] = {
                name = "IsPlayer",
                type = "bool",
            },
            [2] = {
                name = "SeatIndex",
                type = "int",
            },
            [3] = {
                name = "SeatType",
                type = "int",
            },
            [4] = {
                name = "vehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_510_B20_MAIN";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN";
    self.gPlayer = nil;
    self.eJerome = nil;
    self.eVehicle = nil;
    self.ConvoyOutVariable = false;
    self.box_MultipleOR_177 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|7655042");
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
        [0] = self.f_box_MultipleOR_177_Out,
    });
    self.box_MultipleOR_331 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_331;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_331");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|9472405");
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
        [0] = self.f_box_MultipleOR_331_Out,
    });
    self.box_PlayDialog_v6_233 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_233");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|14191382");
    l0:SetConnections({
    });
    self.box_Bind_v4_155 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|17606118");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_155_Bound,
    });
    self.box_SpawnAI_100 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|22295076");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_100_Spawned,
    });
    self.box_SpawnAI_303 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_303;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_303");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|25220799");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_178 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|26241417");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_178_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_178_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_178_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_178_Stopped,
    });
    self.box_Gate_v3_337 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_337;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_337");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|39505127");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_337_Out,
    });
    self.box_MultipleOR_344 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_344;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_344");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|65497762");
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
        [0] = self.f_box_MultipleOR_344_Out,
    });
    self.box_PlayDialog_v6_115 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|72759901");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_115_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_115_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_115_QueueCancelled,
        -- Queued,
        [3] = self.f_box_PlayDialog_v6_115_Queued,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_115_Started,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_115_StartedPriorityFailed,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_115_Stopped,
    });
    self.box_PlayDialog_v6_231 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|73453727");
    l0:SetConnections({
    });
    self.box_Delay_v5_75 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|80846722");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_75_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_75_TimeElapsed,
    });
    self.box_VehicleListener_v3_343 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_343;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_343");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|83953626");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_343_Enabled,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_343_OnStandUp,
    });
    self.box_MultipleOR_217 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|87943685");
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
        [0] = self.f_box_MultipleOR_217_Out,
    });
    self.box_MultipleOR_214 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|94673862");
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
        [0] = self.f_box_MultipleOR_214_Out,
    });
    self.box_Delay_v5_237 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_237");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|109911641");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_237_TimeElapsed,
    });
    self.box_Bind_v4_215 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|117848059");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_215_Bound,
    });
    self.box_PlayDialog_v6_180 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|121752944");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_180_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_180_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_180_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_180_Stopped,
    });
    self.box_MultipleOR_192 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|125190915");
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
        [0] = self.f_box_MultipleOR_192_Out,
    });
    self.box_MultipleOR_79 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|129907705");
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
        [0] = self.f_box_MultipleOR_79_Out,
    });
    self.box_Delay_v5_311 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_311;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_311");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|143289582");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_311_TimeElapsed,
    });
    self.box_OnceOnly_v3_33 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|146073911");
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
                [0] = self.f_box_OnceOnly_v3_33_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|147055274");
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
    self.box_ProximityTrigger_v3_51 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|149829998");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_51_Enter,
    });
    self.box_MultipleOR_349 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_349;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_349");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|157641581");
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
        [0] = self.f_box_MultipleOR_349_Out,
    });
    self.box_EntityStatusListener_134 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|163474819");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_134_Loaded,
    });
    self.box_CharacterLoadedIdListener_v2_78 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|163822129");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_78_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_78_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_78_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_78_LoadedIdReceived,
    });
    self.box_GroupSizeListener_v6_333 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_333;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_333");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|173877689");
    l0:SetConnections({
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_333_MemberRemoved,
    });
    self.box_PlayDialog_v6_189 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|174271817");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_189_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_189_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_189_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_189_Stopped,
    });
    self.box_MultipleOR_194 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|194032298");
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
        [0] = self.f_box_MultipleOR_194_Out,
    });
    self.box_DisplayCustomUIMsg_v5_262 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_262;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_262");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|210645089");
    l0:SetConnections({
    });
    self.box_MultipleOR_206 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|223668569");
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
    self.box_SpawnAI_99 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|237762449");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_99_Spawned,
    });
    self.box_ProximityRadiusListener_v3_170 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|240994545");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_170_AllFar,
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|248718838");
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
        [0] = self.f_box_MultipleOR_37_Out,
    });
    self.box_Delay_v5_307 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_307;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_307");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|261302139");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_307_TimeElapsed,
    });
    self.box_Gate_v3_207 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|265602116");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_207_Out,
    });
    self.box_SoundModifier_v2_72 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|269960818");
    l0:SetConnections({
    });
    self.box_MultipleOR_60 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|271930674");
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
        [0] = self.f_box_MultipleOR_60_Out,
    });
    self.box_SpawnAI_281 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_281;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_281");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|293539150");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_281_Out,
    });
    self.box_SpawnAI_52 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|297670539");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_52_Spawned,
    });
    self.box_Delay_v5_241 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_241;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_241");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|303330545");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_241_TimeElapsed,
    });
    self.box_Delay_v5_271 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_271;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_271");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|314991371");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_271_TimeElapsed,
    });
    self.box_DisplayCustomUIMsg_v5_327 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_327;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_327");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|330747861");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_236 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|337270627");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_236_SomeoneNear,
    });
    self.box_Music_Quest_v2_199 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|359705904");
    l0:SetConnections({
    });
    self.box_Gate_v3_244 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_244;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_244");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|364827462");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_244_Out,
    });
    self.box_DisplayCustomUIMsg_v5_93 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|367262232");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_93_OnDisplay,
    });
    self.box_EntityStatusListener_245 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_245;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_245");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|385888750");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_245_Loaded,
    });
    self.box_Music_Quest_v2_163 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|399891610");
    l0:SetConnections({
    });
    self.box_MultipleOR_197 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|403458588");
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
        [0] = self.f_box_MultipleOR_197_Out,
    });
    self.box_PlayDialog_v6_191 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|420340917");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_191_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_191_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_191_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_191_Stopped,
    });
    self.box_ProximityTrigger_v3_29 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|432904716");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_29_Enter,
    });
    self.box_ProximityRadiusListener_v3_168 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|436300571");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_168_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_168_AllNear,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_168_Enabled,
    });
    self.box_PlayDialog_v6_182 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|454127836");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_182_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_182_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_182_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_182_Stopped,
    });
    self.box_Delay_v5_56 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|458291749");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_56_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_187 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|465365122");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_187_SomeoneNear,
    });
    self.box_Delay_v5_145 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|472865250");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_145_TimeElapsed,
    });
    self.box_Delay_v5_109 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|476956082");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_109_TimeElapsed,
    });
    self.box_Delay_v5_280 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_280;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_280");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|497288698");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_280_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_261 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_261;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_261");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|516296822");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_261_SomeoneNear,
    });
    self.box_ExitZoneWarningListener_v3_57 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|523884588");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_57_FailingZoneEntered,
    });
    self.box_MultipleOR_190 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|530585540");
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
        [0] = self.f_box_MultipleOR_190_Out,
    });
    self.box_ProximityTrigger_v3_139 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|531870582");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_139_Enter,
    });
    self.box_MultipleOR_179 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|538689640");
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
        [0] = self.f_box_MultipleOR_179_Out,
    });
    self.box_Delay_v5_285 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_285;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_285");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|552689151");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_285_TimeElapsed,
    });
    self.box_VehicleDamageListener_v2_83 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|554536331");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_83_Destroyed,
    });
    self.box_MultipleOR_313 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_313;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_313");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|562071778");
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
        [0] = self.f_box_MultipleOR_313_Out,
    });
    self.box_ProximityRadiusListener_v3_227 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_227;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|580187701");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_227_SomeoneFar,
    });
    self.box_EntityStatusListener_137 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|583305457");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_137_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_137_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_137_Unloaded,
    });
    self.box_MultipleOR_114 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|584473840");
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
        [0] = self.f_box_MultipleOR_114_Out,
    });
    self.box_MultipleOR_234 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_234;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_234");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|588225525");
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
    self.box_Music_Quest_v2_164 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|594085135");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|598167041");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_MultipleOR_211 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|598328405");
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
    self.box_SpawnAI_67 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|598703577");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_67_Spawned,
    });
    self.box_Bind_v4_24 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|621877123");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_24_Bound,
    });
    self.box_OnceOnly_v3_350 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_350;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_350");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|656189648");
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
                [0] = self.f_box_OnceOnly_v3_350_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_138 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|705631895");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_138_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_138_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_138_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_138_Stopped,
    });
    self.box_ProximityRadiusListener_v3_323 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_323;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_323");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|709176161");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_323_SomeoneFar,
    });
    self.box_DisplayCustomUIMsg_v5_74 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|710495705");
    l0:SetConnections({
    });
    self.box_Gate_v3_243 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_243");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|750694915");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_243_Out,
    });
    self.box_OnceOnly_v3_219 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|754388400");
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
                [0] = self.f_box_OnceOnly_v3_219_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_277 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_277;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_277");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|763417720");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_277_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_102 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|783743935");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_102_SomeoneNear,
    });
    self.box_ConversationListener_77 = cbox:CreateBox("Domino/System/AI/ConversationListener.lua");
    l0 = self.box_ConversationListener_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConversationListener_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|807484865");
    l0:SetConnections({
        -- Aborted,
        [0] = self.f_box_ConversationListener_77_Aborted,
        -- Finished,
        [3] = self.f_box_ConversationListener_77_Finished,
        -- Skipped,
        [7] = self.f_box_ConversationListener_77_Skipped,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|813284432");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_Gate_v3_210 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|816674820");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_210_Out,
    });
    self.box_DisplayCustomUIMsg_v5_171 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|839488374");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_302 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_302;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_302");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|839651235");
    l0:SetConnections({
    });
    self.box_UniversalInteractionListener_13 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|841006619");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_13_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_13_Interacted,
    });
    self.box_Delay_v5_105 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|846649804");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_105_TimeElapsed,
    });
    self.box_PlayerFullyDetected_312 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_312;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_312");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|882839218");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_312_Detected,
    });
    self.box_HealthListener_v6_131 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|910863272");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_131_Killed,
    });
    self.box_MultipleOR_144 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|924828083");
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
        [0] = self.f_box_MultipleOR_144_Out,
    });
    self.box_RemoveEntity_v2_41 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|925429637");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_41_Out,
    });
    self.box_MultipleOR_185 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|939131485");
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
        [0] = self.f_box_MultipleOR_185_Out,
    });
    self.box_Gate_v3_247 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_247;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_247");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|956084097");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_247_Out,
    });
    self.box_RemoveEntity_v2_47 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|972530857");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_326 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_326;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_326");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|979542526");
    l0:SetConnections({
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_326_AllNear,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_326_SomeoneFar,
    });
    self.box_MultipleOR_106 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1041467255");
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
        [0] = self.f_box_MultipleOR_106_Out,
    });
    self.box_PlayDialog_v6_195 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1048039122");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_195_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_195_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_195_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_195_Stopped,
    });
    self.box_ProximityRadiusListener_v3_119 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1053093654");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_119_SomeoneNear,
    });
    self.box_PlayDialog_v6_103 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1061416748");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_103_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_103_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_103_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_103_Stopped,
    });
    self.box_Gate_v3_209 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1066306567");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_209_Out,
    });
    self.box_Gate_v3_250 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_250");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1112302311");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_250_Out,
    });
    self.box_Delay_v5_70 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1133447800");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_70_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_143 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1176157114");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_143_SomeoneNear,
    });
    self.box_Gate_v3_97 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1178480993");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_97_Out,
    });
    self.box_Gate_v3_85 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1192240406");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_85_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_85_Out,
    });
    self.box_RemoveEntity_v2_42 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1193875473");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_42_Out,
    });
    self.box_MultipleOR_248 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_248");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1208372637");
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
        [0] = self.f_box_MultipleOR_248_Out,
    });
    self.box_Delay_v5_264 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_264;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_264");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1209625921");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_264_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_264_TimeElapsed,
    });
    self.box_EntityStatusListener_84 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1210489169");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_84_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_84_Loaded,
    });
    self.box_Delay_v5_125 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1229038154");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_125_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_165 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1252740877");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_165_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_165_SomeoneNear,
    });
    self.box_Delay_v5_306 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_306;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_306");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1271433445");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_306_TimeElapsed,
    });
    self.box_Music_Quest_v2_173 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1297015018");
    l0:SetConnections({
    });
    self.box_Delay_v5_68 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1309355603");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_68_TimeElapsed,
    });
    self.box_Delay_v5_339 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_339;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_339");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1314904145");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_339_TimeElapsed,
    });
    self.box_Delay_v5_94 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1315793331");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_94_TimeElapsed,
    });
    self.box_Music_Quest_v2_158 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1324622935");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_43 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1325169854");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_43_Out,
    });
    self.box_Delay_v5_239 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_239;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_239");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1330441947");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_239_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_239_TimeElapsed,
    });
    self.box_DisplayCustomUIMsg_v5_322 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_322;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_322");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1337557694");
    l0:SetConnections({
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v5_322_OnHide,
    });
    self.box_SpawnAI_297 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_297;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_297");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1356656044");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_297_Spawned,
    });
    self.box_PlayDialog_v6_258 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_258");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1368521482");
    l0:SetConnections({
    });
    self.box_ContextualActionListener_224 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_224;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1375255271");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_224_Start,
    });
    self.box_PlayDialog_v6_232 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_232");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1389957344");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_232_Finished,
    });
    self.box_Delay_v5_135 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1421284947");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_135_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_130 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1425859000");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_130_AllFar,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_130_Enabled,
    });
    self.box_Music_Quest_v2_200 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1430665625");
    l0:SetConnections({
    });
    self.box_MultipleOR_334 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_334;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_334");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1431740777");
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
        [0] = self.f_box_MultipleOR_334_Out,
    });
    self.box_PlayDialog_v6_31 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1444112617");
    l0:SetConnections({
    });
    self.box_MultipleOR_142 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1467733602");
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
        [0] = self.f_box_MultipleOR_142_Out,
    });
    self.box_Delay_v5_287 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_287;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_287");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1470260287");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_287_TimeElapsed,
    });
    self.box_PlayDialog_v6_186 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1490387931");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_186_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_186_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_186_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_186_Stopped,
    });
    self.box_PlayDialog_v6_259 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_259;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_259");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1492657006");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_259_Finished,
    });
    self.box_Delay_v5_238 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_238;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_238");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1495521128");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_238_TimeElapsed,
    });
    self.box_Music_Quest_v2_80 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1506098524");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_65 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1514975775");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_65_SomeoneNear,
    });
    self.box_MultipleOR_308 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_308;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_308");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1520862218");
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
        [0] = self.f_box_MultipleOR_308_Out,
    });
    self.box_MultipleOR_118 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1523156095");
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
        [0] = self.f_box_MultipleOR_118_Out,
    });
    self.box_Music_Quest_v2_156 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1548574669");
    l0:SetConnections({
    });
    self.box_Delay_v5_240 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_240;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_240");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1566763917");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_240_TimeElapsed,
    });
    self.box_Music_Quest_v2_162 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1570564114");
    l0:SetConnections({
    });
    self.box_SpawnAI_101 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1579767842");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_101_Spawned,
    });
    self.box_OnceOnly_v3_216 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1591932709");
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
                [0] = self.f_box_OnceOnly_v3_216_Out_0,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_9 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1607478261");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_9_Started,
    });
    self.box_MultipleOR_152 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1623061307");
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
        [0] = self.f_box_MultipleOR_152_Out,
    });
    self.box_Gate_v3_226 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_226;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_226");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1630234342");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_226_Out,
    });
    self.box_Delay_v5_276 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_276;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_276");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1631995292");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_276_TimeElapsed,
    });
    self.box_PlayDialog_v6_107 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1642001859");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_107_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_107_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_107_QueueCancelled,
        -- Queued,
        [3] = self.f_box_PlayDialog_v6_107_Queued,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_107_Started,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_107_StartedPriorityFailed,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_107_Stopped,
    });
    self.box_Gate_v3_208 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1645925794");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_208_Out,
    });
    self.box_PlayerFullyDetected_317 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_317;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_317");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1650854180");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_317_Detected,
    });
    self.box_PlayDialog_v6_235 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_235;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_235");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1652741510");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_235_Finished,
    });
    self.box_MultipleOR_329 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_329;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_329");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1658670456");
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
        [0] = self.f_box_MultipleOR_329_Out,
    });
    self.box_UniversalInteractionModifier_v2_320 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_320;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_320");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1665810662");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_320_Enabled,
    });
    self.box_Random_176 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1695559510");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 9,
        },
        dataIn = {
            [1] = 9,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_176_Output_0,
                [1] = self.f_box_Random_176_Output_1,
                [2] = self.f_box_Random_176_Output_2,
                [3] = self.f_box_Random_176_Output_3,
                [4] = self.f_box_Random_176_Output_4,
                [5] = self.f_box_Random_176_Output_5,
                [6] = self.f_box_Random_176_Output_6,
                [7] = self.f_box_Random_176_Output_7,
                [8] = self.f_box_Random_176_Output_8,
            },
            count = 9,
        },
    });
    self.box_EntityStatusListener_39 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1726824114");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_39_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_39_Unloaded,
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1732090046");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_MultipleOR_198 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1738125173");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 9,
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
        [0] = self.f_box_MultipleOR_198_Out,
    });
    self.box_EntityStatusListener_38 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1752344135");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_38_Loaded,
    });
    self.box_ProximityRadiusListener_v3_108 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1754262002");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_108_SomeoneNear,
    });
    self.box_Gate_v3_128 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1755448114");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_128_Out,
    });
    self.box_Delay_v5_342 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_342;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_342");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1769348882");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_342_TimeElapsed,
    });
    self.box_PlayDialog_v6_183 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1771719715");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_183_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_183_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_183_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_183_Stopped,
    });
    self.box_ProximityRadiusListener_v3_220 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1773112170");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_220_SomeoneNear,
    });
    self.box_MultipleOR_213 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1796635708");
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
    self.box_ProximityRadiusListener_v3_46 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1819571578");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_46_SomeoneNear,
    });
    self.box_PlayDialog_v6_230 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1828764000");
    l0:SetConnections({
    });
    self.box_Delay_v5_330 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_330;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_330");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1850135422");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_330_TimeElapsed,
    });
    self.box_MultipleOR_121 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1858833679");
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
        [0] = self.f_box_MultipleOR_121_Out,
    });
    self.box_PlayDialog_v6_251 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_251;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_251");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1868138721");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_251_Finished,
    });
    self.box_ExitZoneWarningListener_v3_221 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1877057155");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_221_FailingZoneEntered,
    });
    self.box_MultipleOR_184 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1881613670");
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
        [0] = self.f_box_MultipleOR_184_Out,
    });
    self.box_Music_Quest_v2_160 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1888298517");
    l0:SetConnections({
    });
    self.box_MultipleOR_92 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1892488962");
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
    self.box_MultipleOR_228 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1901016039");
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
    self.box_Bind_v4_20 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1923804129");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_20_Bound,
    });
    self.box_Delay_v5_21 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1943081990");
    l0:SetConnections({
        -- LoopingEnded,
        [0] = self.f_box_Delay_v5_21_LoopingEnded,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_21_TimeElapsed,
    });
    self.box_Gate_v3_249 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_249;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_249");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1947759716");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_249_Out,
    });
    self.box_SpawnAI_53 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1968056634");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_53_Spawned,
    });
    self.box_SpawnAI_98 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1979935699");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_98_Spawned,
    });
    self.box_ProximityRadiusListener_v3_15 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1984111388");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_15_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_15_AllNear,
    });
    self.box_MultipleOR_181 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1990258391");
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
        [0] = self.f_box_MultipleOR_181_Out,
    });
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1998103745");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_16_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_Bind_v4_12 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2003154959");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_12_Bound,
    });
    self.box_Delay_v5_151 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2007683006");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_151_TimeElapsed,
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2008390183");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_PlayDialog_v6_257 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_257;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_257");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2018616116");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_257_Finished,
    });
    self.box_MultipleOR_212 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2020974294");
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
        [0] = self.f_box_MultipleOR_212_Out,
    });
    self.box_Delay_v5_274 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_274;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_274");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2035494912");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_274_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_63 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2036171021");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_63_SomeoneNear,
    });
    self.box_PlayDialog_v6_193 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2044210071");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_193_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_193_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_193_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_193_Stopped,
    });
    self.box_Delay_v5_325 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_325;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_325");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2077941610");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_325_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_325_TimeElapsed,
    });
    self.box_Gate_v3_28 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2081719225");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_28_Out,
    });
    self.box_GroupSizeListener_v6_347 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_347;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_347");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2085683517");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_347_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_347_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_347_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_347_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_347_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_347_MemberSpawned,
    });
    self.box_MultipleOR_203 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2092560813");
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
        [0] = self.f_box_MultipleOR_203_Out,
    });
    self.box_RemoveEntity_v2_40 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2116334127");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_40_Out,
    });
    self.box_MultipleOR_196 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2128313883");
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
        [0] = self.f_box_MultipleOR_196_Out,
    });
    self.box_Delay_v5_54 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2134939793");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_54_TimeElapsed,
    });
    self.box_EntityStatusListener_64 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2135670360");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_64_Loaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_321();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1345947467", "1345947467", "MIS_510_B20_MAIN", "In", "box_OutputOrder_v2_321.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_255_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1276156783", "1276156783", "MIS_510_B20_MAIN", "box_Simple_Node_255.Out", "box_MultipleOR_248.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_OutputOrder_v2_263();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|84060528", "84060528", "MIS_510_B20_MAIN", "box_Simple_Node_255.Out", "box_OutputOrder_v2_263.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_GroupSizeListener_v6_347();
    l0 = self.box_GroupSizeListener_v6_347;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2128280147", "2128280147", "MIS_510_B20_MAIN", "box_Simple_Node_255.Out", "box_GroupSizeListener_v6_347.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_28();
    l0 = self.box_Gate_v3_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|921140407", "921140407", "MIS_510_B20_MAIN", "box_Simple_Node_255.Out", "box_Gate_v3_28.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_204_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_227();
    l0 = self.box_ProximityRadiusListener_v3_227;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|324080212", "324080212", "MIS_510_B20_MAIN", "box_Simple_Node_204.Out", "box_ProximityRadiusListener_v3_227.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0 = self.box_MultipleOR_203;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|205179633", "205179633", "MIS_510_B20_MAIN", "box_Simple_Node_204.Out", "box_MultipleOR_203.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_ProximityRadiusListener_v3_326();
    l0 = self.box_ProximityRadiusListener_v3_326;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1999869672", "1999869672", "MIS_510_B20_MAIN", "box_Simple_Node_204.Out", "box_ProximityRadiusListener_v3_326.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_336_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_261();
    l0 = self.box_ProximityRadiusListener_v3_261;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|486201791", "486201791", "MIS_510_B20_MAIN", "box_Simple_Node_336.Out", "box_ProximityRadiusListener_v3_261.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_340_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_320();
    l0 = self.box_UniversalInteractionModifier_v2_320;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1269033042", "1269033042", "MIS_510_B20_MAIN", "box_Simple_Node_340.Out", "box_UniversalInteractionModifier_v2_320.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_120_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_209();
    l0 = self.box_Gate_v3_209;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|359482526", "359482526", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_Gate_v3_209.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|223169749", "223169749", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_MultipleOR_211.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_308;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1820194398", "1820194398", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_MultipleOR_308.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_Gate_v3_97();
    l0 = self.box_Gate_v3_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|436435335", "436435335", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_Gate_v3_97.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_207();
    l0 = self.box_Gate_v3_207;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|231084929", "231084929", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_Gate_v3_207.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_323();
    l0 = self.box_ProximityRadiusListener_v3_323;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|890960202", "890960202", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_ProximityRadiusListener_v3_323.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_261();
    l0 = self.box_ProximityRadiusListener_v3_261;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|270934646", "270934646", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_ProximityRadiusListener_v3_261.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2048894210", "2048894210", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_MultipleOR_92.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_212;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|961084810", "961084810", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_MultipleOR_212.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_UseContextualActionModifier_v3_295();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|759657806", "759657806", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_UseContextualActionModifier_v3_295.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Gate_v3_208();
    l0 = self.box_Gate_v3_208;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|342610852", "342610852", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_Gate_v3_208.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_227();
    l0 = self.box_ProximityRadiusListener_v3_227;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1305465289", "1305465289", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_ProximityRadiusListener_v3_227.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_284();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1974749731", "1974749731", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_OutputOrder_v2_284.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_EntityStatusListener_137();
    l0 = self.box_EntityStatusListener_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2012416306", "2012416306", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_EntityStatusListener_137.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_213;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1529353180", "1529353180", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_MultipleOR_213.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_214;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1667275748", "1667275748", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_MultipleOR_214.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_228;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1949822844", "1949822844", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_MultipleOR_228.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_203;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1134761131", "1134761131", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_MultipleOR_203.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_331;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1852145459", "1852145459", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_MultipleOR_331.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_VehicleDamageListener_v2_83();
    l0 = self.box_VehicleDamageListener_v2_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|292202008", "292202008", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_VehicleDamageListener_v2_83.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_334;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|242056812", "242056812", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_MultipleOR_334.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_ProximityRadiusListener_v3_130();
    l0 = self.box_ProximityRadiusListener_v3_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|975430007", "975430007", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_ProximityRadiusListener_v3_130.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1590301671", "1590301671", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_MultipleOR_206.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_Gate_v3_337();
    l0 = self.box_Gate_v3_337;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|848009415", "848009415", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_Gate_v3_337.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_169();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|238122156", "238122156", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_OutputOrder_v2_169.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Gate_v3_128();
    l0 = self.box_Gate_v3_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1529161135", "1529161135", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_Gate_v3_128.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_MissionBlockLayer_319();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1716777223", "1716777223", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_MissionBlockLayer_319.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1140089146", "1140089146", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_MultipleOR_142.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|292882094", "292882094", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_MultipleOR_248.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_Gate_v3_210();
    l0 = self.box_Gate_v3_210;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|690827372", "690827372", "MIS_510_B20_MAIN", "box_Simple_Node_120.Out", "box_Gate_v3_210.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_254_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_347();
    l0 = self.box_GroupSizeListener_v6_347;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|472491965", "472491965", "MIS_510_B20_MAIN", "box_Simple_Node_254.Out", "box_GroupSizeListener_v6_347.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_223();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|712023784", "712023784", "MIS_510_B20_MAIN", "box_Simple_Node_254.Out", "box_OutputOrder_v2_223.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_252_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_269();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1552919701", "1552919701", "MIS_510_B20_MAIN", "box_Simple_Node_252.Out", "box_OutputOrder_v2_269.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_267();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|265246536", "265246536", "MIS_510_B20_MAIN", "box_Simple_Node_252.Out", "box_OutputOrder_v2_267.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_268();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1804674841", "1804674841", "MIS_510_B20_MAIN", "box_Simple_Node_252.Out", "box_OutputOrder_v2_268.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_266();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|258237565", "258237565", "MIS_510_B20_MAIN", "box_Simple_Node_252.Out", "box_OutputOrder_v2_266.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_270();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|777027599", "777027599", "MIS_510_B20_MAIN", "box_Simple_Node_252.Out", "box_OutputOrder_v2_270.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_352_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1123268187", "1123268187", "MIS_510_B20_MAIN", "box_Simple_Node_352.Out", "box_MultipleOR_248.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Simple_Node_246_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1319735516", "1319735516", "MIS_510_B20_MAIN", "box_Simple_Node_246.Out", "box_MultipleOR_60.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
    l0 = self.box_MultipleOR_313;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1894262974", "1894262974", "MIS_510_B20_MAIN", "box_Simple_Node_246.Out", "box_MultipleOR_313.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_177_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_177;
    l1 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1368387979", "1368387979", "MIS_510_B20_MAIN", "box_MultipleOR_177.Out", "box_MultipleOR_198.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_331_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_326();
    l0 = self.box_MultipleOR_331;
    l1 = self.box_ProximityRadiusListener_v3_326;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|914870662", "914870662", "MIS_510_B20_MAIN", "box_MultipleOR_331.Out", "box_ProximityRadiusListener_v3_326.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_155_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_215();
    l0 = self.box_Bind_v4_155;
    l1 = self.box_Bind_v4_215;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|226218418", "226218418", "MIS_510_B20_MAIN", "box_Bind_v4_155.Bound", "box_Bind_v4_215.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_VehicleSeatModifier_v2_332_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_225();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|128121543", "128121543", "MIS_510_B20_MAIN", "box_VehicleSeatModifier_v2_332.Locked", "box_VehicleSeatModifier_v2_225.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_100_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_101();
    l0 = self.box_SpawnAI_100;
    l1 = self.box_SpawnAI_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1834614643", "1834614643", "MIS_510_B20_MAIN", "box_SpawnAI_100.Spawned", "box_SpawnAI_101.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_201_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1199100504", "1199100504", "MIS_510_B20_MAIN", "box_OutputOrder_v2_201.Out", "box_OutputOrder_v2_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_201_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_200();
    l0 = self.box_Music_Quest_v2_200;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|962738626", "962738626", "MIS_510_B20_MAIN", "box_OutputOrder_v2_201.Out", "box_Music_Quest_v2_200.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_GetLocalPlayer_v2_44_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_44_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_45();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1441548818", "1441548818", "MIS_510_B20_MAIN", "box_GetLocalPlayer_v2_44.Out", "box_GetPawnVehicleInfo_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_178_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_178;
    l1 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1663635218", "1663635218", "MIS_510_B20_MAIN", "box_PlayDialog_v6_178.Finished", "box_MultipleOR_177.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_178_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_178;
    l1 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1181455181", "1181455181", "MIS_510_B20_MAIN", "box_PlayDialog_v6_178.FinishedInterrupted", "box_MultipleOR_177.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_178_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_178;
    l1 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1980633755", "1980633755", "MIS_510_B20_MAIN", "box_PlayDialog_v6_178.QueueCancelled", "box_MultipleOR_177.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_178_Stopped()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_178;
    l1 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1679888974", "1679888974", "MIS_510_B20_MAIN", "box_PlayDialog_v6_178.Stopped", "box_MultipleOR_177.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Gate_v3_337_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_293();
    l0 = self.box_Gate_v3_337;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|728081212", "728081212", "MIS_510_B20_MAIN", "box_Gate_v3_337.Out", "box_OutputOrder_v2_293.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_351_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|890929140", "890929140", "MIS_510_B20_MAIN", "box_OutputOrder_v2_351.Out", "box_MultipleOR_60.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_351_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_352();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1323151139", "1323151139", "MIS_510_B20_MAIN", "box_OutputOrder_v2_351.Out", "box_Simple_Node_352.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_35_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_127();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1049136902", "1049136902", "MIS_510_B20_MAIN", "box_SetContextualStrategy_35.Out", "box_OutputOrder_v2_127.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_344_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ForceExitVehicle_v2_341();
    l0 = self.box_MultipleOR_344;
    l1 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1281990159", "1281990159", "MIS_510_B20_MAIN", "box_MultipleOR_344.Out", "box_ForceExitVehicle_v2_341.ForceExit", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceExit
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_115_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_115;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|869717685", "869717685", "MIS_510_B20_MAIN", "box_PlayDialog_v6_115.Finished", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_115_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_115;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|247621084", "247621084", "MIS_510_B20_MAIN", "box_PlayDialog_v6_115.FinishedInterrupted", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_115_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_115;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|931068575", "931068575", "MIS_510_B20_MAIN", "box_PlayDialog_v6_115.QueueCancelled", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_115_Queued()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_115;
    l1 = self.box_MultipleOR_234;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2054692953", "2054692953", "MIS_510_B20_MAIN", "box_PlayDialog_v6_115.Queued", "box_MultipleOR_234.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_115_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_115;
    l1 = self.box_MultipleOR_234;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|227982421", "227982421", "MIS_510_B20_MAIN", "box_PlayDialog_v6_115.Started", "box_MultipleOR_234.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_115_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_115;
    l1 = self.box_MultipleOR_234;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|722181650", "722181650", "MIS_510_B20_MAIN", "box_PlayDialog_v6_115.StartedPriorityFailed", "box_MultipleOR_234.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_115_Stopped()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_115;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1570415184", "1570415184", "MIS_510_B20_MAIN", "box_PlayDialog_v6_115.Stopped", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_161_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_162();
    l0 = self.box_Music_Quest_v2_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|492408262", "492408262", "MIS_510_B20_MAIN", "box_OutputOrder_v2_161.Out", "box_Music_Quest_v2_162.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_161_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_132();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1489614131", "1489614131", "MIS_510_B20_MAIN", "box_OutputOrder_v2_161.Out", "box_ActivityRetry_v2_132.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_75_Started()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_74();
    l0 = self.box_Delay_v5_75;
    l1 = self.box_DisplayCustomUIMsg_v5_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|918902305", "918902305", "MIS_510_B20_MAIN", "box_Delay_v5_75.Started", "box_DisplayCustomUIMsg_v5_74.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_75_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_75;
    l1 = self.box_MultipleOR_308;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|587557459", "587557459", "MIS_510_B20_MAIN", "box_Delay_v5_75.TimeElapsed", "box_MultipleOR_308.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleListener_v3_343_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_345();
    l0 = self.box_VehicleListener_v3_343;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|171171768", "171171768", "MIS_510_B20_MAIN", "box_VehicleListener_v3_343.Enabled", "box_OutputOrder_v2_345.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_343_OnStandUp()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_VehicleListener_v3_343;
    l1 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|625493968", "625493968", "MIS_510_B20_MAIN", "box_VehicleListener_v3_343.OnStandUp", "box_Delay_v5_21.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_217_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_217;
    l1 = self.box_OnceOnly_v3_216;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|748932859", "748932859", "MIS_510_B20_MAIN", "box_MultipleOR_217.Out", "box_OnceOnly_v3_216.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_214_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_187();
    l0 = self.box_MultipleOR_214;
    l1 = self.box_ProximityRadiusListener_v3_187;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|963792122", "963792122", "MIS_510_B20_MAIN", "box_MultipleOR_214.Out", "box_ProximityRadiusListener_v3_187.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_299_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_298();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1482149398", "1482149398", "MIS_510_B20_MAIN", "box_UseContextualActionModifier_v3_299.Enabled", "box_UseContextualActionModifier_v3_298.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_237_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_243();
    l0 = self.box_Delay_v5_237;
    l1 = self.box_Gate_v3_243;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|200440674", "200440674", "MIS_510_B20_MAIN", "box_Delay_v5_237.TimeElapsed", "box_Gate_v3_243.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_14_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_27();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|517534628", "517534628", "MIS_510_B20_MAIN", "box_UseContextualActionModifier_v3_14.Disabled", "box_UseContextualActionModifier_v3_27.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_14_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_27();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1758753942", "1758753942", "MIS_510_B20_MAIN", "box_UseContextualActionModifier_v3_14.Enabled", "box_UseContextualActionModifier_v3_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_116_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_208();
    l0 = self.box_Gate_v3_208;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|946635486", "946635486", "MIS_510_B20_MAIN", "box_OutputOrder_v2_116.Out", "box_Gate_v3_208.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_116_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_212;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2088758440", "2088758440", "MIS_510_B20_MAIN", "box_OutputOrder_v2_116.Out", "box_MultipleOR_212.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Bind_v4_215_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_129();
    l0 = self.box_Bind_v4_215;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|631360702", "631360702", "MIS_510_B20_MAIN", "box_Bind_v4_215.Bound", "box_OutputOrder_v2_129.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_180_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_180;
    l1 = self.box_MultipleOR_179;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|298506279", "298506279", "MIS_510_B20_MAIN", "box_PlayDialog_v6_180.Finished", "box_MultipleOR_179.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_180_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_180;
    l1 = self.box_MultipleOR_179;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1909789078", "1909789078", "MIS_510_B20_MAIN", "box_PlayDialog_v6_180.FinishedInterrupted", "box_MultipleOR_179.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_180_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_180;
    l1 = self.box_MultipleOR_179;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2141089793", "2141089793", "MIS_510_B20_MAIN", "box_PlayDialog_v6_180.QueueCancelled", "box_MultipleOR_179.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_180_Stopped()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_180;
    l1 = self.box_MultipleOR_179;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|525941366", "525941366", "MIS_510_B20_MAIN", "box_PlayDialog_v6_180.Stopped", "box_MultipleOR_179.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MultipleOR_192_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_192;
    l1 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|600886085", "600886085", "MIS_510_B20_MAIN", "box_MultipleOR_192.Out", "box_MultipleOR_198.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_OutputOrder_v2_188_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_210();
    l0 = self.box_Gate_v3_210;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1847509404", "1847509404", "MIS_510_B20_MAIN", "box_OutputOrder_v2_188.Out", "box_Gate_v3_210.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_188_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_214;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1635729718", "1635729718", "MIS_510_B20_MAIN", "box_OutputOrder_v2_188.Out", "box_MultipleOR_214.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_79_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_61();
    l0 = self.box_MultipleOR_79;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1405995039", "1405995039", "MIS_510_B20_MAIN", "box_MultipleOR_79.Out", "box_AddActivityObjective_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_36_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_38();
    l0 = self.box_EntityStatusListener_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2095146656", "2095146656", "MIS_510_B20_MAIN", "box_IsEntityLoaded_v3_36.False", "box_EntityStatusListener_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_36_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1019246766", "1019246766", "MIS_510_B20_MAIN", "box_IsEntityLoaded_v3_36.True", "box_MultipleOR_37.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_311_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleSeatModifier_v2_229();
    l0 = self.box_Delay_v5_311;
    l1 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1511318189", "1511318189", "MIS_510_B20_MAIN", "box_Delay_v5_311.TimeElapsed", "box_VehicleSeatModifier_v2_229.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_33_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_149();
    l0 = self.box_OnceOnly_v3_33;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1688442296", "1688442296", "MIS_510_B20_MAIN", "box_OnceOnly_v3_33.Out", "box_GetLocalPlayer_v2_149.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_301_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_302();
    l0 = self.box_Music_Quest_v2_302;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1338724478", "1338724478", "MIS_510_B20_MAIN", "box_OutputOrder_v2_301.Out", "box_Music_Quest_v2_302.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_301_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_222();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1517204743", "1517204743", "MIS_510_B20_MAIN", "box_OutputOrder_v2_301.Out", "box_ActivityRetry_v2_222.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_51_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_52();
    l0 = self.box_ProximityTrigger_v3_51;
    l1 = self.box_SpawnAI_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1382879952", "1382879952", "MIS_510_B20_MAIN", "box_ProximityTrigger_v3_51.Enter", "box_SpawnAI_52.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_349_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_348();
    l0 = self.box_MultipleOR_349;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1624663814", "1624663814", "MIS_510_B20_MAIN", "box_MultipleOR_349.Out", "box_Compare_Integers_348.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_134_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_141();
    l0 = self.box_EntityStatusListener_134;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|514595423", "514595423", "MIS_510_B20_MAIN", "box_EntityStatusListener_134.Loaded", "box_VehicleModifier_v2_141.SetEngineMajorDamage", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEngineMajorDamage
    l1:Exec(13, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_78_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_78_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_316();
    l0 = self.box_CharacterLoadedIdListener_v2_78;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|295690500", "295690500", "MIS_510_B20_MAIN", "box_CharacterLoadedIdListener_v2_78.LoadedIdReceived", "box_OutputOrder_v2_316.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_333_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_333;
    l1 = self.box_MultipleOR_334;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|513762614", "513762614", "MIS_510_B20_MAIN", "box_GroupSizeListener_v6_333.MemberRemoved", "box_MultipleOR_334.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_189_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_189;
    l1 = self.box_MultipleOR_190;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|449295958", "449295958", "MIS_510_B20_MAIN", "box_PlayDialog_v6_189.Finished", "box_MultipleOR_190.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_189_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_189;
    l1 = self.box_MultipleOR_190;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1454981156", "1454981156", "MIS_510_B20_MAIN", "box_PlayDialog_v6_189.FinishedInterrupted", "box_MultipleOR_190.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_189_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_189;
    l1 = self.box_MultipleOR_190;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1798175119", "1798175119", "MIS_510_B20_MAIN", "box_PlayDialog_v6_189.QueueCancelled", "box_MultipleOR_190.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_189_Stopped()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_189;
    l1 = self.box_MultipleOR_190;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|305391268", "305391268", "MIS_510_B20_MAIN", "box_PlayDialog_v6_189.Stopped", "box_MultipleOR_190.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetDistance_147_Out()
    local params, l0;
    self:OnExit_box_GetDistance_147_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_150();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|614232825", "614232825", "MIS_510_B20_MAIN", "box_GetDistance_147.Out", "box_Compare_Floats_150.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_194_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_194;
    l1 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1186545416", "1186545416", "MIS_510_B20_MAIN", "box_MultipleOR_194.Out", "box_MultipleOR_198.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_GetPlayerGroup_v2_49_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_49_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_36();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1265137848", "1265137848", "MIS_510_B20_MAIN", "box_GetPlayerGroup_v2_49.Out", "box_IsEntityLoaded_v3_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_206_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_102();
    l0 = self.box_MultipleOR_206;
    l1 = self.box_ProximityRadiusListener_v3_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1537771818", "1537771818", "MIS_510_B20_MAIN", "box_MultipleOR_206.Out", "box_ProximityRadiusListener_v3_102.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_66_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_72();
    l0 = self.box_SoundModifier_v2_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1773363049", "1773363049", "MIS_510_B20_MAIN", "box_OutputOrder_v2_66.Out", "box_SoundModifier_v2_72.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_99_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_100();
    l0 = self.box_SpawnAI_99;
    l1 = self.box_SpawnAI_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|628513768", "628513768", "MIS_510_B20_MAIN", "box_SpawnAI_99.Spawned", "box_SpawnAI_100.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_170_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_174();
    l0 = self.box_ProximityRadiusListener_v3_170;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|430776290", "430776290", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_170.AllFar", "box_OutputOrder_v2_174.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_348_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_28();
    l0 = self.box_Gate_v3_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1967828921", "1967828921", "MIS_510_B20_MAIN", "box_Compare_Integers_348.A_le_B", "box_Gate_v3_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_81();
    l0 = self.box_MultipleOR_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|292253458", "292253458", "MIS_510_B20_MAIN", "box_MultipleOR_37.Out", "box_OutputOrder_v2_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_307_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ConversationListener_77();
    l0 = self.box_Delay_v5_307;
    l1 = self.box_ConversationListener_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|625480805", "625480805", "MIS_510_B20_MAIN", "box_Delay_v5_307.TimeElapsed", "box_ConversationListener_77.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_207_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_107();
    l0 = self.box_Gate_v3_207;
    l1 = self.box_PlayDialog_v6_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2006428225", "2006428225", "MIS_510_B20_MAIN", "box_Gate_v3_207.Out", "box_PlayDialog_v6_107.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_60_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_60;
    l1 = self.box_OnceOnly_v3_219;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|69891383", "69891383", "MIS_510_B20_MAIN", "box_MultipleOR_60.Out", "box_OnceOnly_v3_219.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_159_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_160();
    l0 = self.box_Music_Quest_v2_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|697758668", "697758668", "MIS_510_B20_MAIN", "box_OutputOrder_v2_159.Out", "box_Music_Quest_v2_160.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_159_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_82();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|696129741", "696129741", "MIS_510_B20_MAIN", "box_OutputOrder_v2_159.Out", "box_ActivityRetry_v2_82.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_281_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_98();
    l0 = self.box_SpawnAI_281;
    l1 = self.box_SpawnAI_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1661392765", "1661392765", "MIS_510_B20_MAIN", "box_SpawnAI_281.Out", "box_SpawnAI_98.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_52_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_53();
    l0 = self.box_SpawnAI_52;
    l1 = self.box_SpawnAI_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|933358581", "933358581", "MIS_510_B20_MAIN", "box_SpawnAI_52.Spawned", "box_SpawnAI_53.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_241_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_246();
    l0 = self.box_Delay_v5_241;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1264643322", "1264643322", "MIS_510_B20_MAIN", "box_Delay_v5_241.TimeElapsed", "box_Simple_Node_246.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_271_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_230();
    l0 = self.box_Delay_v5_271;
    l1 = self.box_PlayDialog_v6_230;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1553639415", "1553639415", "MIS_510_B20_MAIN", "box_Delay_v5_271.TimeElapsed", "box_PlayDialog_v6_230.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_236_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_236;
    l1 = self.box_MultipleOR_217;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|39602483", "39602483", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_236.SomeoneNear", "box_MultipleOR_217.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_167_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_15();
    l0 = self.box_ProximityRadiusListener_v3_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|110243100", "110243100", "MIS_510_B20_MAIN", "box_OutputOrder_v2_167.Out", "box_ProximityRadiusListener_v3_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_167_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_165();
    l0 = self.box_ProximityRadiusListener_v3_165;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|688811498", "688811498", "MIS_510_B20_MAIN", "box_OutputOrder_v2_167.Out", "box_ProximityRadiusListener_v3_165.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_244_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_275();
    l0 = self.box_Gate_v3_244;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1440967414", "1440967414", "MIS_510_B20_MAIN", "box_Gate_v3_244.Out", "box_OutputOrder_v2_275.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DisplayCustomUIMsg_v5_93_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_94();
    l0 = self.box_DisplayCustomUIMsg_v5_93;
    l1 = self.box_Delay_v5_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1634845264", "1634845264", "MIS_510_B20_MAIN", "box_DisplayCustomUIMsg_v5_93.OnDisplay", "box_Delay_v5_94.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_88_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_167();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|75971182", "75971182", "MIS_510_B20_MAIN", "box_UseContextualActionModifier_v3_88.Disabled", "box_OutputOrder_v2_167.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_293_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_80();
    l0 = self.box_Music_Quest_v2_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1565179570", "1565179570", "MIS_510_B20_MAIN", "box_OutputOrder_v2_293.Out", "box_Music_Quest_v2_80.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_293_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_260();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|904449049", "904449049", "MIS_510_B20_MAIN", "box_OutputOrder_v2_293.Out", "box_ActivityRetry_v2_260.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_245_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_249();
    l0 = self.box_EntityStatusListener_245;
    l1 = self.box_Gate_v3_249;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2135157555", "2135157555", "MIS_510_B20_MAIN", "box_EntityStatusListener_245.Loaded", "box_Gate_v3_249.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ForceExitVehicle_v2_124_ForceExitted()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_201();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1405362599", "1405362599", "MIS_510_B20_MAIN", "box_ForceExitVehicle_v2_124.ForceExitted", "box_OutputOrder_v2_201.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_197_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_135();
    l0 = self.box_MultipleOR_197;
    l1 = self.box_Delay_v5_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1921402254", "1921402254", "MIS_510_B20_MAIN", "box_MultipleOR_197.Out", "box_Delay_v5_135.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_191_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_191;
    l1 = self.box_MultipleOR_192;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1804276704", "1804276704", "MIS_510_B20_MAIN", "box_PlayDialog_v6_191.Finished", "box_MultipleOR_192.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_191_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_191;
    l1 = self.box_MultipleOR_192;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1738511606", "1738511606", "MIS_510_B20_MAIN", "box_PlayDialog_v6_191.FinishedInterrupted", "box_MultipleOR_192.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_191_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_191;
    l1 = self.box_MultipleOR_192;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2034223263", "2034223263", "MIS_510_B20_MAIN", "box_PlayDialog_v6_191.QueueCancelled", "box_MultipleOR_192.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_191_Stopped()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_191;
    l1 = self.box_MultipleOR_192;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1769732186", "1769732186", "MIS_510_B20_MAIN", "box_PlayDialog_v6_191.Stopped", "box_MultipleOR_192.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_ProximityTrigger_v3_29_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_91();
    l0 = self.box_ProximityTrigger_v3_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1310953383", "1310953383", "MIS_510_B20_MAIN", "box_ProximityTrigger_v3_29.Enter", "box_OutputOrder_v2_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_266_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_249();
    l0 = self.box_Gate_v3_249;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2043909160", "2043909160", "MIS_510_B20_MAIN", "box_OutputOrder_v2_266.Out", "box_Gate_v3_249.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_266_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_257();
    l0 = self.box_PlayDialog_v6_257;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|85028661", "85028661", "MIS_510_B20_MAIN", "box_OutputOrder_v2_266.Out", "box_PlayDialog_v6_257.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_266_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_31();
    l0 = self.box_PlayDialog_v6_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|132525931", "132525931", "MIS_510_B20_MAIN", "box_OutputOrder_v2_266.Out", "box_PlayDialog_v6_31.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_168_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_171();
    l0 = self.box_ProximityRadiusListener_v3_168;
    l1 = self.box_DisplayCustomUIMsg_v5_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|606883276", "606883276", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_168.AllFar", "box_DisplayCustomUIMsg_v5_171.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_168_AllNear()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_171();
    l0 = self.box_ProximityRadiusListener_v3_168;
    l1 = self.box_DisplayCustomUIMsg_v5_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1184497223", "1184497223", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_168.AllNear", "box_DisplayCustomUIMsg_v5_171.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_168_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_170();
    l0 = self.box_ProximityRadiusListener_v3_168;
    l1 = self.box_ProximityRadiusListener_v3_170;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|211613280", "211613280", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_168.Enabled", "box_ProximityRadiusListener_v3_170.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_62();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1742347771", "1742347771", "MIS_510_B20_MAIN", "box_AddActivityObjective_v2_61.Out", "box_ActivityObjectiveMarkerModifier_v3_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_182_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_182;
    l1 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1387812844", "1387812844", "MIS_510_B20_MAIN", "box_PlayDialog_v6_182.Finished", "box_MultipleOR_181.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_182_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_182;
    l1 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|935492105", "935492105", "MIS_510_B20_MAIN", "box_PlayDialog_v6_182.FinishedInterrupted", "box_MultipleOR_181.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_182_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_182;
    l1 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1137163025", "1137163025", "MIS_510_B20_MAIN", "box_PlayDialog_v6_182.QueueCancelled", "box_MultipleOR_181.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_182_Stopped()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_182;
    l1 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1168110473", "1168110473", "MIS_510_B20_MAIN", "box_PlayDialog_v6_182.Stopped", "box_MultipleOR_181.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_UseContextualActionModifier_v3_290_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_292();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|946774551", "946774551", "MIS_510_B20_MAIN", "box_UseContextualActionModifier_v3_290.Disabled", "box_UseContextualActionModifier_v3_292.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_56_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_v2_55();
    l0 = self.box_Delay_v5_56;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|885712262", "885712262", "MIS_510_B20_MAIN", "box_Delay_v5_56.TimeElapsed", "box_ForceVehicleCrash_v2_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_187_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_188();
    l0 = self.box_ProximityRadiusListener_v3_187;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|268501137", "268501137", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_187.SomeoneNear", "box_OutputOrder_v2_188.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_321_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1660586221", "1660586221", "MIS_510_B20_MAIN", "box_OutputOrder_v2_321.Out", "box_ActivityAcknowledgeGate_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Delay_v5_145_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_145;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|941608243", "941608243", "MIS_510_B20_MAIN", "box_Delay_v5_145.TimeElapsed", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_109_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_119();
    l0 = self.box_Delay_v5_109;
    l1 = self.box_ProximityRadiusListener_v3_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1733058079", "1733058079", "MIS_510_B20_MAIN", "box_Delay_v5_109.TimeElapsed", "box_ProximityRadiusListener_v3_119.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_280_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_231();
    l0 = self.box_Delay_v5_280;
    l1 = self.box_PlayDialog_v6_231;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|464286765", "464286765", "MIS_510_B20_MAIN", "box_Delay_v5_280.TimeElapsed", "box_PlayDialog_v6_231.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_110_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_207();
    l0 = self.box_Gate_v3_207;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1788557695", "1788557695", "MIS_510_B20_MAIN", "box_OutputOrder_v2_110.Out", "box_Gate_v3_207.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_110_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2139384261", "2139384261", "MIS_510_B20_MAIN", "box_OutputOrder_v2_110.Out", "box_MultipleOR_211.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_261_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_323();
    l0 = self.box_ProximityRadiusListener_v3_261;
    l1 = self.box_ProximityRadiusListener_v3_323;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|739222649", "739222649", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_261.SomeoneNear", "box_ProximityRadiusListener_v3_323.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_104_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_97();
    l0 = self.box_Gate_v3_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1031133992", "1031133992", "MIS_510_B20_MAIN", "box_OutputOrder_v2_104.Out", "box_Gate_v3_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_104_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|642824606", "642824606", "MIS_510_B20_MAIN", "box_OutputOrder_v2_104.Out", "box_MultipleOR_206.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ExitZoneWarningListener_v3_57_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_157();
    l0 = self.box_ExitZoneWarningListener_v3_57;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|122841575", "122841575", "MIS_510_B20_MAIN", "box_ExitZoneWarningListener_v3_57.FailingZoneEntered", "box_OutputOrder_v2_157.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_190_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_190;
    l1 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1242432315", "1242432315", "MIS_510_B20_MAIN", "box_MultipleOR_190.Out", "box_MultipleOR_198.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_ProximityTrigger_v3_139_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_139;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|210609988", "210609988", "MIS_510_B20_MAIN", "box_ProximityTrigger_v3_139.Enter", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_291_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_286();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|918900177", "918900177", "MIS_510_B20_MAIN", "box_OutputOrder_v2_291.Out", "box_UseContextualActionModifier_v3_286.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_179_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_179;
    l1 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1698655184", "1698655184", "MIS_510_B20_MAIN", "box_MultipleOR_179.Out", "box_MultipleOR_198.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_175_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_22();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1738249413", "1738249413", "MIS_510_B20_MAIN", "box_OutputOrder_v2_175.Out", "box_AddActivityObjective_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_175_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_64();
    l0 = self.box_EntityStatusListener_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1921708178", "1921708178", "MIS_510_B20_MAIN", "box_OutputOrder_v2_175.Out", "box_EntityStatusListener_64.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_175_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_199();
    l0 = self.box_Music_Quest_v2_199;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|458220934", "458220934", "MIS_510_B20_MAIN", "box_OutputOrder_v2_175.Out", "box_Music_Quest_v2_199.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_7_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_23();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2034203969", "2034203969", "MIS_510_B20_MAIN", "box_ActivityObjectiveMarkerModifier_v3_7.Enabled", "box_UseContextualActionModifier_v3_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_285_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_288();
    l0 = self.box_Delay_v5_285;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1178089401", "1178089401", "MIS_510_B20_MAIN", "box_Delay_v5_285.TimeElapsed", "box_OutputOrder_v2_288.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_83_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_159();
    l0 = self.box_VehicleDamageListener_v2_83;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1712533364", "1712533364", "MIS_510_B20_MAIN", "box_VehicleDamageListener_v2_83.Destroyed", "box_OutputOrder_v2_159.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1953158522", "1953158522", "MIS_510_B20_MAIN", "box_OutputOrder_v2_48.Out", "box_Simple_Node_120.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_35();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1823684943", "1823684943", "MIS_510_B20_MAIN", "box_OutputOrder_v2_48.Out", "box_SetContextualStrategy_35.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_47();
    l0 = self.box_RemoveEntity_v2_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2027852730", "2027852730", "MIS_510_B20_MAIN", "box_OutputOrder_v2_48.Out", "box_RemoveEntity_v2_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_313_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_224();
    l0 = self.box_MultipleOR_313;
    l1 = self.box_ContextualActionListener_224;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|171394134", "171394134", "MIS_510_B20_MAIN", "box_MultipleOR_313.Out", "box_ContextualActionListener_224.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ForceVehicleCrash_v2_55_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_68();
    l0 = self.box_Delay_v5_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|880938124", "880938124", "MIS_510_B20_MAIN", "box_ForceVehicleCrash_v2_55.Out", "box_Delay_v5_68.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_227_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_328();
    l0 = self.box_ProximityRadiusListener_v3_227;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2021916547", "2021916547", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_227.SomeoneFar", "box_OutputOrder_v2_328.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_137_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_EntityStatusListener_137;
    l1 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1957119203", "1957119203", "MIS_510_B20_MAIN", "box_EntityStatusListener_137.Enabled", "box_Delay_v5_16.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_137_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_139();
    l0 = self.box_EntityStatusListener_137;
    l1 = self.box_ProximityTrigger_v3_139;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2090649043", "2090649043", "MIS_510_B20_MAIN", "box_EntityStatusListener_137.Loaded", "box_ProximityTrigger_v3_139.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_137_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_137;
    l1 = self.box_MultipleOR_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1886889639", "1886889639", "MIS_510_B20_MAIN", "box_EntityStatusListener_137.Unloaded", "box_MultipleOR_142.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_114_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_109();
    l0 = self.box_MultipleOR_114;
    l1 = self.box_Delay_v5_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2072128753", "2072128753", "MIS_510_B20_MAIN", "box_MultipleOR_114.Out", "box_Delay_v5_109.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|444264211", "444264211", "MIS_510_B20_MAIN", "box_ActivityInitialized_2.Out", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_211_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_108();
    l0 = self.box_MultipleOR_211;
    l1 = self.box_ProximityRadiusListener_v3_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1394276894", "1394276894", "MIS_510_B20_MAIN", "box_MultipleOR_211.Out", "box_ProximityRadiusListener_v3_108.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_67_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_54();
    l0 = self.box_SpawnAI_67;
    l1 = self.box_Delay_v5_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|869700079", "869700079", "MIS_510_B20_MAIN", "box_SpawnAI_67.Spawned", "box_Delay_v5_54.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Bind_v4_24_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_155();
    l0 = self.box_Bind_v4_24;
    l1 = self.box_Bind_v4_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|385420530", "385420530", "MIS_510_B20_MAIN", "box_Bind_v4_24.Bound", "box_Bind_v4_155.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_223_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_236();
    l0 = self.box_ProximityRadiusListener_v3_236;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|93995753", "93995753", "MIS_510_B20_MAIN", "box_OutputOrder_v2_223.Out", "box_ProximityRadiusListener_v3_236.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_223_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_220();
    l0 = self.box_ProximityRadiusListener_v3_220;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|618524591", "618524591", "MIS_510_B20_MAIN", "box_OutputOrder_v2_223.Out", "box_ProximityRadiusListener_v3_220.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_328_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_325();
    l0 = self.box_Delay_v5_325;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2058002163", "2058002163", "MIS_510_B20_MAIN", "box_OutputOrder_v2_328.Out", "box_Delay_v5_325.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_328_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_329;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1452821533", "1452821533", "MIS_510_B20_MAIN", "box_OutputOrder_v2_328.Out", "box_MultipleOR_329.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_328_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_331;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1040211907", "1040211907", "MIS_510_B20_MAIN", "box_OutputOrder_v2_328.Out", "box_MultipleOR_331.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_350_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_252();
    l0 = self.box_OnceOnly_v3_350;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1735880095", "1735880095", "MIS_510_B20_MAIN", "box_OnceOnly_v3_350.Out", "box_Simple_Node_252.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_292_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_300();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1828452218", "1828452218", "MIS_510_B20_MAIN", "box_UseContextualActionModifier_v3_292.Enabled", "box_UseContextualActionModifier_v3_300.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_295_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_309();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1807878725", "1807878725", "MIS_510_B20_MAIN", "box_UseContextualActionModifier_v3_295.Disabled", "box_UseContextualActionModifier_v3_309.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_138_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_138;
    l1 = self.box_MultipleOR_144;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1015526735", "1015526735", "MIS_510_B20_MAIN", "box_PlayDialog_v6_138.Finished", "box_MultipleOR_144.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_138_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_138;
    l1 = self.box_MultipleOR_144;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1154008426", "1154008426", "MIS_510_B20_MAIN", "box_PlayDialog_v6_138.FinishedInterrupted", "box_MultipleOR_144.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_138_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_138;
    l1 = self.box_MultipleOR_144;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1216268443", "1216268443", "MIS_510_B20_MAIN", "box_PlayDialog_v6_138.QueueCancelled", "box_MultipleOR_144.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_138_Stopped()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_138;
    l1 = self.box_MultipleOR_144;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1094914793", "1094914793", "MIS_510_B20_MAIN", "box_PlayDialog_v6_138.Stopped", "box_MultipleOR_144.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_ProximityRadiusListener_v3_323_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_337();
    l0 = self.box_ProximityRadiusListener_v3_323;
    l1 = self.box_Gate_v3_337;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1037397675", "1037397675", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_323.SomeoneFar", "box_Gate_v3_337.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_75();
    l0 = self.box_Delay_v5_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1135656418", "1135656418", "MIS_510_B20_MAIN", "box_OutputOrder_v2_76.Out", "box_Delay_v5_75.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_76_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_40();
    l0 = self.box_RemoveEntity_v2_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|346179086", "346179086", "MIS_510_B20_MAIN", "box_OutputOrder_v2_76.Out", "box_RemoveEntity_v2_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_283_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_333();
    l0 = self.box_GroupSizeListener_v6_333;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1379647345", "1379647345", "MIS_510_B20_MAIN", "box_Simple_Node_283.Out", "box_GroupSizeListener_v6_333.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_243_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_273();
    l0 = self.box_Gate_v3_243;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1084154600", "1084154600", "MIS_510_B20_MAIN", "box_Gate_v3_243.Out", "box_OutputOrder_v2_273.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_219_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_226();
    l0 = self.box_OnceOnly_v3_219;
    l1 = self.box_Gate_v3_226;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|625873738", "625873738", "MIS_510_B20_MAIN", "box_OnceOnly_v3_219.Out", "box_Gate_v3_226.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_87_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_85();
    l0 = self.box_Gate_v3_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1525572421", "1525572421", "MIS_510_B20_MAIN", "box_OutputOrder_v2_87.Out", "box_Gate_v3_85.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_87_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1595602360", "1595602360", "MIS_510_B20_MAIN", "box_OutputOrder_v2_87.Out", "box_MultipleOR_121.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_277_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_233();
    l0 = self.box_Delay_v5_277;
    l1 = self.box_PlayDialog_v6_233;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1203043710", "1203043710", "MIS_510_B20_MAIN", "box_Delay_v5_277.TimeElapsed", "box_PlayDialog_v6_233.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_298_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_136();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|787848083", "787848083", "MIS_510_B20_MAIN", "box_UseContextualActionModifier_v3_298.UseCalled", "box_UseContextualActionModifier_v3_136.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_45_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_45_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_46();
    l0 = self.box_ProximityRadiusListener_v3_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|369493236", "369493236", "MIS_510_B20_MAIN", "box_GetPawnVehicleInfo_45.InVehicle", "box_ProximityRadiusListener_v3_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_45_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_45_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_45_Out()
    self:OnExit_box_GetPawnVehicleInfo_45_Out();
end;

function export:f_box_ProximityRadiusListener_v3_102_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_104();
    l0 = self.box_ProximityRadiusListener_v3_102;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1380481188", "1380481188", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_102.SomeoneNear", "box_OutputOrder_v2_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_288_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_204();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|740085620", "740085620", "MIS_510_B20_MAIN", "box_OutputOrder_v2_288.Out", "box_Simple_Node_204.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_288_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_287();
    l0 = self.box_Delay_v5_287;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1674117064", "1674117064", "MIS_510_B20_MAIN", "box_OutputOrder_v2_288.Out", "box_Delay_v5_287.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_288_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_290();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|537500853", "537500853", "MIS_510_B20_MAIN", "box_OutputOrder_v2_288.Out", "box_UseContextualActionModifier_v3_290.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ConversationListener_77_Aborted()
    local l0, l1;
    l0 = self.box_ConversationListener_77;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1916839924", "1916839924", "MIS_510_B20_MAIN", "box_ConversationListener_77.Aborted", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ConversationListener_77_Finished()
    local l0, l1;
    l0 = self.box_ConversationListener_77;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|900435633", "900435633", "MIS_510_B20_MAIN", "box_ConversationListener_77.Finished", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ConversationListener_77_Skipped()
    local l0, l1;
    l0 = self.box_ConversationListener_77;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1343099513", "1343099513", "MIS_510_B20_MAIN", "box_ConversationListener_77.Skipped", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_81_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_332();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|446709238", "446709238", "MIS_510_B20_MAIN", "box_OutputOrder_v2_81.Out", "box_VehicleSeatModifier_v2_332.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_12();
    l0 = self.box_Bind_v4_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|636137936", "636137936", "MIS_510_B20_MAIN", "box_OutputOrder_v2_81.Out", "box_Bind_v4_12.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_81_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_83();
    l0 = self.box_VehicleDamageListener_v2_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|888790679", "888790679", "MIS_510_B20_MAIN", "box_OutputOrder_v2_81.Out", "box_VehicleDamageListener_v2_83.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_81_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_202();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1031081221", "1031081221", "MIS_510_B20_MAIN", "box_OutputOrder_v2_81.Out", "box_VehicleSeatModifier_v2_202.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|767724635", "767724635", "MIS_510_B20_MAIN", "box_MultipleOR_4.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Gate_v3_210_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_176();
    l0 = self.box_Gate_v3_210;
    l1 = self.box_Random_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1908370730", "1908370730", "MIS_510_B20_MAIN", "box_Gate_v3_210.Out", "box_Random_176.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UniversalInteractionListener_13_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_84();
    l0 = self.box_UniversalInteractionListener_13;
    l1 = self.box_EntityStatusListener_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|726549214", "726549214", "MIS_510_B20_MAIN", "box_UniversalInteractionListener_13.Enabled", "box_EntityStatusListener_84.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionListener_13_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_310();
    l0 = self.box_UniversalInteractionListener_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|361251434", "361251434", "MIS_510_B20_MAIN", "box_UniversalInteractionListener_13.Interacted", "box_OutputOrder_v2_310.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_153_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|540122467", "540122467", "MIS_510_B20_MAIN", "box_UseContextualActionModifier_v3_153.Disabled", "box_MultipleOR_60.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_105_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_108();
    l0 = self.box_Delay_v5_105;
    l1 = self.box_ProximityRadiusListener_v3_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1336423607", "1336423607", "MIS_510_B20_MAIN", "box_Delay_v5_105.TimeElapsed", "box_ProximityRadiusListener_v3_108.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_169_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_57();
    l0 = self.box_ExitZoneWarningListener_v3_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1241160799", "1241160799", "MIS_510_B20_MAIN", "box_OutputOrder_v2_169.Out", "box_ExitZoneWarningListener_v3_57.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_169_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_168();
    l0 = self.box_ProximityRadiusListener_v3_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2066351318", "2066351318", "MIS_510_B20_MAIN", "box_OutputOrder_v2_169.Out", "box_ProximityRadiusListener_v3_168.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_122_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_123();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|767599603", "767599603", "MIS_510_B20_MAIN", "box_ActivityObjectiveMarkerModifier_v3_122.Disabled", "box_UseContextualActionModifier_v3_123.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|23834279", "23834279", "MIS_510_B20_MAIN", "box_AddActivityObjective_v2_22.Out", "box_ActivityObjectiveMarkerModifier_v3_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayerFullyDetected_312_Detected()
    local l0, l1;
    l0 = self.box_PlayerFullyDetected_312;
    l1 = self.box_MultipleOR_313;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|838498121", "838498121", "MIS_510_B20_MAIN", "box_PlayerFullyDetected_312.Detected", "box_MultipleOR_313.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_131_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_161();
    l0 = self.box_HealthListener_v6_131;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|291484712", "291484712", "MIS_510_B20_MAIN", "box_HealthListener_v6_131.Killed", "box_OutputOrder_v2_161.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_310_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_340();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|36398290", "36398290", "MIS_510_B20_MAIN", "box_OutputOrder_v2_310.Out", "box_Simple_Node_340.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_310_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityFact_338();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1625795348", "1625795348", "MIS_510_B20_MAIN", "box_OutputOrder_v2_310.Out", "box_SetActivityFact_338.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_310_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_339();
    l0 = self.box_Delay_v5_339;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1489890830", "1489890830", "MIS_510_B20_MAIN", "box_OutputOrder_v2_310.Out", "box_Delay_v5_339.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_310_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_18();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|934830275", "934830275", "MIS_510_B20_MAIN", "box_OutputOrder_v2_310.Out", "box_UseContextualActionModifier_v3_18.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_23_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_307();
    l0 = self.box_Delay_v5_307;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2016450277", "2016450277", "MIS_510_B20_MAIN", "box_UseContextualActionModifier_v3_23.Enabled", "box_Delay_v5_307.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_127_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_85();
    l0 = self.box_Gate_v3_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|317230551", "317230551", "MIS_510_B20_MAIN", "box_OutputOrder_v2_127.Out", "box_Gate_v3_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_127_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_65();
    l0 = self.box_ProximityRadiusListener_v3_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1880608935", "1880608935", "MIS_510_B20_MAIN", "box_OutputOrder_v2_127.Out", "box_ProximityRadiusListener_v3_65.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_144_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_144;
    l1 = self.box_MultipleOR_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|822614625", "822614625", "MIS_510_B20_MAIN", "box_MultipleOR_144.Out", "box_MultipleOR_197.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RemoveEntity_v2_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_42();
    l0 = self.box_RemoveEntity_v2_41;
    l1 = self.box_RemoveEntity_v2_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|535837946", "535837946", "MIS_510_B20_MAIN", "box_RemoveEntity_v2_41.Out", "box_RemoveEntity_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_185_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_185;
    l1 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|148728115", "148728115", "MIS_510_B20_MAIN", "box_MultipleOR_185.Out", "box_MultipleOR_198.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OutputOrder_v2_268_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_244();
    l0 = self.box_Gate_v3_244;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2137772419", "2137772419", "MIS_510_B20_MAIN", "box_OutputOrder_v2_268.Out", "box_Gate_v3_244.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_268_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_232();
    l0 = self.box_PlayDialog_v6_232;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|615308444", "615308444", "MIS_510_B20_MAIN", "box_OutputOrder_v2_268.Out", "box_PlayDialog_v6_232.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_268_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_231();
    l0 = self.box_PlayDialog_v6_231;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1781484566", "1781484566", "MIS_510_B20_MAIN", "box_OutputOrder_v2_268.Out", "box_PlayDialog_v6_231.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_Gate_v3_247_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_279();
    l0 = self.box_Gate_v3_247;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1909961223", "1909961223", "MIS_510_B20_MAIN", "box_Gate_v3_247.Out", "box_OutputOrder_v2_279.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_146_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_153();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|666532895", "666532895", "MIS_510_B20_MAIN", "box_UseContextualActionModifier_v3_146.Disabled", "box_UseContextualActionModifier_v3_153.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_326_AllNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_326;
    l1 = self.box_MultipleOR_329;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|915282350", "915282350", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_326.AllNear", "box_MultipleOR_329.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_326_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_327();
    l0 = self.box_ProximityRadiusListener_v3_326;
    l1 = self.box_DisplayCustomUIMsg_v5_327;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1251978835", "1251978835", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_326.SomeoneFar", "box_DisplayCustomUIMsg_v5_327.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_129_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_140();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1218757280", "1218757280", "MIS_510_B20_MAIN", "box_OutputOrder_v2_129.Out", "box_GetPlayerGroup_v2_140.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_129_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_320();
    l0 = self.box_UniversalInteractionModifier_v2_320;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1169663040", "1169663040", "MIS_510_B20_MAIN", "box_OutputOrder_v2_129.Out", "box_UniversalInteractionModifier_v2_320.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_129_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_131();
    l0 = self.box_HealthListener_v6_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1349077414", "1349077414", "MIS_510_B20_MAIN", "box_OutputOrder_v2_129.Out", "box_HealthListener_v6_131.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_148_InVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_148_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|246105588", "246105588", "MIS_510_B20_MAIN", "box_GetPawnVehicleInfo_148.InVehicle", "box_MultipleOR_152.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPawnVehicleInfo_148_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_148_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_148_Out()
    self:OnExit_box_GetPawnVehicleInfo_148_Out();
end;

function export:f_box_MultipleOR_106_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_105();
    l0 = self.box_MultipleOR_106;
    l1 = self.box_Delay_v5_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2030716383", "2030716383", "MIS_510_B20_MAIN", "box_MultipleOR_106.Out", "box_Delay_v5_105.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_195_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_195;
    l1 = self.box_MultipleOR_196;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|927779311", "927779311", "MIS_510_B20_MAIN", "box_PlayDialog_v6_195.Finished", "box_MultipleOR_196.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_195_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_195;
    l1 = self.box_MultipleOR_196;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1401365941", "1401365941", "MIS_510_B20_MAIN", "box_PlayDialog_v6_195.FinishedInterrupted", "box_MultipleOR_196.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_195_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_195;
    l1 = self.box_MultipleOR_196;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1817577477", "1817577477", "MIS_510_B20_MAIN", "box_PlayDialog_v6_195.QueueCancelled", "box_MultipleOR_196.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_195_Stopped()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_195;
    l1 = self.box_MultipleOR_196;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1805517883", "1805517883", "MIS_510_B20_MAIN", "box_PlayDialog_v6_195.Stopped", "box_MultipleOR_196.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_ProximityRadiusListener_v3_119_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_116();
    l0 = self.box_ProximityRadiusListener_v3_119;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2111073591", "2111073591", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_119.SomeoneNear", "box_OutputOrder_v2_116.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_103_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_103;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|435039464", "435039464", "MIS_510_B20_MAIN", "box_PlayDialog_v6_103.Finished", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_103_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_103;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|932372266", "932372266", "MIS_510_B20_MAIN", "box_PlayDialog_v6_103.FinishedInterrupted", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_103_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_103;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|981060693", "981060693", "MIS_510_B20_MAIN", "box_PlayDialog_v6_103.QueueCancelled", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_103_Stopped()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_103;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|383958879", "383958879", "MIS_510_B20_MAIN", "box_PlayDialog_v6_103.Stopped", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Gate_v3_209_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_138();
    l0 = self.box_Gate_v3_209;
    l1 = self.box_PlayDialog_v6_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1331295961", "1331295961", "MIS_510_B20_MAIN", "box_Gate_v3_209.Out", "box_PlayDialog_v6_138.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_278_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_251();
    l0 = self.box_PlayDialog_v6_251;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|205319275", "205319275", "MIS_510_B20_MAIN", "box_OutputOrder_v2_278.Out", "box_PlayDialog_v6_251.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_278_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_277();
    l0 = self.box_Delay_v5_277;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1455864566", "1455864566", "MIS_510_B20_MAIN", "box_OutputOrder_v2_278.Out", "box_Delay_v5_277.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_273_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_235();
    l0 = self.box_PlayDialog_v6_235;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2005355379", "2005355379", "MIS_510_B20_MAIN", "box_OutputOrder_v2_273.Out", "box_PlayDialog_v6_235.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_273_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_271();
    l0 = self.box_Delay_v5_271;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1457659650", "1457659650", "MIS_510_B20_MAIN", "box_OutputOrder_v2_273.Out", "box_Delay_v5_271.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_279_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_259();
    l0 = self.box_PlayDialog_v6_259;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|991058930", "991058930", "MIS_510_B20_MAIN", "box_OutputOrder_v2_279.Out", "box_PlayDialog_v6_259.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_279_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_274();
    l0 = self.box_Delay_v5_274;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1048868455", "1048868455", "MIS_510_B20_MAIN", "box_OutputOrder_v2_279.Out", "box_Delay_v5_274.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_17_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_154();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|984357528", "984357528", "MIS_510_B20_MAIN", "box_UseContextualActionModifier_v3_17.Disabled", "box_UseContextualActionModifier_v3_154.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_250_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_278();
    l0 = self.box_Gate_v3_250;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2102726655", "2102726655", "MIS_510_B20_MAIN", "box_Gate_v3_250.Out", "box_OutputOrder_v2_278.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_70_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_103();
    l0 = self.box_Delay_v5_70;
    l1 = self.box_PlayDialog_v6_103;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1491939182", "1491939182", "MIS_510_B20_MAIN", "box_Delay_v5_70.TimeElapsed", "box_PlayDialog_v6_103.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_284_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_332();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|467391496", "467391496", "MIS_510_B20_MAIN", "box_OutputOrder_v2_284.Out", "box_VehicleSeatModifier_v2_332.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_284_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_225();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1394592402", "1394592402", "MIS_510_B20_MAIN", "box_OutputOrder_v2_284.Out", "box_VehicleSeatModifier_v2_225.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_284_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_311();
    l0 = self.box_Delay_v5_311;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|942075768", "942075768", "MIS_510_B20_MAIN", "box_OutputOrder_v2_284.Out", "box_Delay_v5_311.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_284_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_306();
    l0 = self.box_Delay_v5_306;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|278683437", "278683437", "MIS_510_B20_MAIN", "box_OutputOrder_v2_284.Out", "box_Delay_v5_306.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_284_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_202();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1884652551", "1884652551", "MIS_510_B20_MAIN", "box_OutputOrder_v2_284.Out", "box_VehicleSeatModifier_v2_202.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_284_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_205();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|517022809", "517022809", "MIS_510_B20_MAIN", "box_OutputOrder_v2_284.Out", "box_VehicleSeatModifier_v2_205.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_272_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_257();
    l0 = self.box_PlayDialog_v6_257;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|787436217", "787436217", "MIS_510_B20_MAIN", "box_OutputOrder_v2_272.Out", "box_PlayDialog_v6_257.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_272_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_276();
    l0 = self.box_Delay_v5_276;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1195799468", "1195799468", "MIS_510_B20_MAIN", "box_OutputOrder_v2_272.Out", "box_Delay_v5_276.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_143_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_126();
    l0 = self.box_ProximityRadiusListener_v3_143;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1443109294", "1443109294", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_143.SomeoneNear", "box_OutputOrder_v2_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_97_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_70();
    l0 = self.box_Gate_v3_97;
    l1 = self.box_Delay_v5_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1154581044", "1154581044", "MIS_510_B20_MAIN", "box_Gate_v3_97.Out", "box_Delay_v5_70.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_85_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_13();
    l0 = self.box_Gate_v3_85;
    l1 = self.box_UniversalInteractionListener_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|532309136", "532309136", "MIS_510_B20_MAIN", "box_Gate_v3_85.Closed", "box_UniversalInteractionListener_13.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_85_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_318();
    l0 = self.box_Gate_v3_85;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1956750308", "1956750308", "MIS_510_B20_MAIN", "box_Gate_v3_85.Out", "box_SetContextualStrategy_318.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_43();
    l0 = self.box_RemoveEntity_v2_42;
    l1 = self.box_RemoveEntity_v2_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|102668156", "102668156", "MIS_510_B20_MAIN", "box_RemoveEntity_v2_42.Out", "box_RemoveEntity_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_248_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_248;
    l1 = self.box_OnceOnly_v3_350;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2131696402", "2131696402", "MIS_510_B20_MAIN", "box_MultipleOR_248.Out", "box_OnceOnly_v3_350.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_264_Started()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_262();
    l0 = self.box_Delay_v5_264;
    l1 = self.box_DisplayCustomUIMsg_v5_262;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|678359860", "678359860", "MIS_510_B20_MAIN", "box_Delay_v5_264.Started", "box_DisplayCustomUIMsg_v5_262.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_264_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_262();
    l0 = self.box_Delay_v5_264;
    l1 = self.box_DisplayCustomUIMsg_v5_262;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1537776620", "1537776620", "MIS_510_B20_MAIN", "box_Delay_v5_264.TimeElapsed", "box_DisplayCustomUIMsg_v5_262.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_84_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerFullyDetected_312();
    l0 = self.box_EntityStatusListener_84;
    l1 = self.box_PlayerFullyDetected_312;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1912304613", "1912304613", "MIS_510_B20_MAIN", "box_EntityStatusListener_84.Enabled", "box_PlayerFullyDetected_312.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_84_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_335();
    l0 = self.box_EntityStatusListener_84;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|432611087", "432611087", "MIS_510_B20_MAIN", "box_EntityStatusListener_84.Loaded", "box_OutputOrder_v2_335.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_125_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_143();
    l0 = self.box_Delay_v5_125;
    l1 = self.box_ProximityRadiusListener_v3_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2056234351", "2056234351", "MIS_510_B20_MAIN", "box_Delay_v5_125.TimeElapsed", "box_ProximityRadiusListener_v3_143.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_314_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_315();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|621424005", "621424005", "MIS_510_B20_MAIN", "box_UseContextualActionModifier_v3_314.Enabled", "box_UseContextualActionModifier_v3_315.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_165_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_166();
    l0 = self.box_ProximityRadiusListener_v3_165;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1321724132", "1321724132", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_165.SomeoneFar", "box_UseContextualActionModifier_v3_166.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_165_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_166();
    l0 = self.box_ProximityRadiusListener_v3_165;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1664330818", "1664330818", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_165.SomeoneNear", "box_UseContextualActionModifier_v3_166.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_306_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleSeatModifier_v2_256();
    l0 = self.box_Delay_v5_306;
    l1 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|267072841", "267072841", "MIS_510_B20_MAIN", "box_Delay_v5_306.TimeElapsed", "box_VehicleSeatModifier_v2_256.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_304_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_49();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|325096117", "325096117", "MIS_510_B20_MAIN", "box_OutputOrder_v2_304.Out", "box_GetPlayerGroup_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_304_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_303();
    l0 = self.box_SpawnAI_303;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|215741531", "215741531", "MIS_510_B20_MAIN", "box_OutputOrder_v2_304.Out", "box_SpawnAI_303.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_VehicleSeatModifier_v2_202_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_205();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1325436787", "1325436787", "MIS_510_B20_MAIN", "box_VehicleSeatModifier_v2_202.Locked", "box_VehicleSeatModifier_v2_205.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_345_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_344;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|759553412", "759553412", "MIS_510_B20_MAIN", "box_OutputOrder_v2_345.Out", "box_MultipleOR_344.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_345_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1007625036", "1007625036", "MIS_510_B20_MAIN", "box_OutputOrder_v2_345.Out", "box_Delay_v5_21.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_68_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_v2_69();
    l0 = self.box_Delay_v5_68;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1270827501", "1270827501", "MIS_510_B20_MAIN", "box_Delay_v5_68.TimeElapsed", "box_ForceVehicleCrash_v2_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_339_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_19();
    l0 = self.box_Delay_v5_339;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1050640806", "1050640806", "MIS_510_B20_MAIN", "box_Delay_v5_339.TimeElapsed", "box_SetContextualStrategy_19.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_94_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_95();
    l0 = self.box_Delay_v5_94;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|354043152", "354043152", "MIS_510_B20_MAIN", "box_Delay_v5_94.TimeElapsed", "box_OutputOrder_v2_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_145();
    l0 = self.box_RemoveEntity_v2_43;
    l1 = self.box_Delay_v5_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|723737713", "723737713", "MIS_510_B20_MAIN", "box_RemoveEntity_v2_43.Out", "box_Delay_v5_145.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_239_Started()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_299();
    l0 = self.box_Delay_v5_239;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1508202493", "1508202493", "MIS_510_B20_MAIN", "box_Delay_v5_239.Started", "box_UseContextualActionModifier_v3_299.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_239_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_250();
    l0 = self.box_Delay_v5_239;
    l1 = self.box_Gate_v3_250;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1360771617", "1360771617", "MIS_510_B20_MAIN", "box_Delay_v5_239.TimeElapsed", "box_Gate_v3_250.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_296_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_34();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1966741460", "1966741460", "MIS_510_B20_MAIN", "box_OutputOrder_v2_296.Out", "box_UseContextualActionModifier_v3_34.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_296_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_305();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|905000328", "905000328", "MIS_510_B20_MAIN", "box_OutputOrder_v2_296.Out", "box_UseContextualActionModifier_v3_305.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DisplayCustomUIMsg_v5_322_OnHide()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_324();
    l0 = self.box_DisplayCustomUIMsg_v5_322;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1096218097", "1096218097", "MIS_510_B20_MAIN", "box_DisplayCustomUIMsg_v5_322.OnHide", "box_ActivityEnd_324.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_297_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_304();
    l0 = self.box_SpawnAI_297;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|494396422", "494396422", "MIS_510_B20_MAIN", "box_SpawnAI_297.Spawned", "box_OutputOrder_v2_304.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_224_Start()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_265();
    l0 = self.box_ContextualActionListener_224;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|679554592", "679554592", "MIS_510_B20_MAIN", "box_ContextualActionListener_224.Start", "box_OutputOrder_v2_265.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_149_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_149_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_148();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1357049356", "1357049356", "MIS_510_B20_MAIN", "box_GetLocalPlayer_v2_149.Out", "box_GetPawnVehicleInfo_148.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_232_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_239();
    l0 = self.box_PlayDialog_v6_232;
    l1 = self.box_Delay_v5_239;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1674062318", "1674062318", "MIS_510_B20_MAIN", "box_PlayDialog_v6_232.Finished", "box_Delay_v5_239.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_AddActivityObjective_v2_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|92504255", "92504255", "MIS_510_B20_MAIN", "box_AddActivityObjective_v2_10.Out", "box_ActivityObjectiveMarkerModifier_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_135_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_187();
    l0 = self.box_Delay_v5_135;
    l1 = self.box_ProximityRadiusListener_v3_187;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|501332855", "501332855", "MIS_510_B20_MAIN", "box_Delay_v5_135.TimeElapsed", "box_ProximityRadiusListener_v3_187.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_130_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_122();
    l0 = self.box_ProximityRadiusListener_v3_130;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1188932211", "1188932211", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_130.AllFar", "box_ActivityObjectiveMarkerModifier_v3_122.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_130_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_137();
    l0 = self.box_ProximityRadiusListener_v3_130;
    l1 = self.box_EntityStatusListener_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1882645161", "1882645161", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_130.Enabled", "box_EntityStatusListener_137.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_334_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_226();
    l0 = self.box_MultipleOR_334;
    l1 = self.box_Gate_v3_226;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|155911519", "155911519", "MIS_510_B20_MAIN", "box_MultipleOR_334.Out", "box_Gate_v3_226.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_275_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_232();
    l0 = self.box_PlayDialog_v6_232;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|969083492", "969083492", "MIS_510_B20_MAIN", "box_OutputOrder_v2_275.Out", "box_PlayDialog_v6_232.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_275_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_280();
    l0 = self.box_Delay_v5_280;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1991328868", "1991328868", "MIS_510_B20_MAIN", "box_OutputOrder_v2_275.Out", "box_Delay_v5_280.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_142_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_139();
    l0 = self.box_MultipleOR_142;
    l1 = self.box_ProximityTrigger_v3_139;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|735927903", "735927903", "MIS_510_B20_MAIN", "box_MultipleOR_142.Out", "box_ProximityTrigger_v3_139.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_287_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_291();
    l0 = self.box_Delay_v5_287;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|49160511", "49160511", "MIS_510_B20_MAIN", "box_Delay_v5_287.TimeElapsed", "box_OutputOrder_v2_291.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_186_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_186;
    l1 = self.box_MultipleOR_185;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1164002139", "1164002139", "MIS_510_B20_MAIN", "box_PlayDialog_v6_186.Finished", "box_MultipleOR_185.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_186_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_186;
    l1 = self.box_MultipleOR_185;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1889866408", "1889866408", "MIS_510_B20_MAIN", "box_PlayDialog_v6_186.FinishedInterrupted", "box_MultipleOR_185.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_186_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_186;
    l1 = self.box_MultipleOR_185;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1819492575", "1819492575", "MIS_510_B20_MAIN", "box_PlayDialog_v6_186.QueueCancelled", "box_MultipleOR_185.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_186_Stopped()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_186;
    l1 = self.box_MultipleOR_185;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1880466883", "1880466883", "MIS_510_B20_MAIN", "box_PlayDialog_v6_186.Stopped", "box_MultipleOR_185.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_263_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_9();
    l0 = self.box_SoundModifier_v2_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1664742419", "1664742419", "MIS_510_B20_MAIN", "box_OutputOrder_v2_263.Out", "box_SoundModifier_v2_9.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_263_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_264();
    l0 = self.box_Delay_v5_264;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1174507482", "1174507482", "MIS_510_B20_MAIN", "box_OutputOrder_v2_263.Out", "box_Delay_v5_264.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_259_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_241();
    l0 = self.box_PlayDialog_v6_259;
    l1 = self.box_Delay_v5_241;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1927467275", "1927467275", "MIS_510_B20_MAIN", "box_PlayDialog_v6_259.Finished", "box_Delay_v5_241.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_238_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_244();
    l0 = self.box_Delay_v5_238;
    l1 = self.box_Gate_v3_244;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|868520781", "868520781", "MIS_510_B20_MAIN", "box_Delay_v5_238.TimeElapsed", "box_Gate_v3_244.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_65_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_87();
    l0 = self.box_ProximityRadiusListener_v3_65;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|808055676", "808055676", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_65.SomeoneNear", "box_OutputOrder_v2_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_308_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_74();
    l0 = self.box_MultipleOR_308;
    l1 = self.box_DisplayCustomUIMsg_v5_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1921948841", "1921948841", "MIS_510_B20_MAIN", "box_MultipleOR_308.Out", "box_DisplayCustomUIMsg_v5_74.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_118_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_125();
    l0 = self.box_MultipleOR_118;
    l1 = self.box_Delay_v5_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|444638269", "444638269", "MIS_510_B20_MAIN", "box_MultipleOR_118.Out", "box_Delay_v5_125.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_91_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_17();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1535191218", "1535191218", "MIS_510_B20_MAIN", "box_OutputOrder_v2_91.Out", "box_UseContextualActionModifier_v3_17.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_296();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|991901991", "991901991", "MIS_510_B20_MAIN", "box_OutputOrder_v2_91.Out", "box_OutputOrder_v2_296.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|578419749", "578419749", "MIS_510_B20_MAIN", "box_SetContextualStrategy_19.Out", "box_OutputOrder_v2_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_225_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_229();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1186252540", "1186252540", "MIS_510_B20_MAIN", "box_VehicleSeatModifier_v2_225.Locked", "box_VehicleSeatModifier_v2_229.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_240_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_247();
    l0 = self.box_Delay_v5_240;
    l1 = self.box_Gate_v3_247;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|82653584", "82653584", "MIS_510_B20_MAIN", "box_Delay_v5_240.TimeElapsed", "box_Gate_v3_247.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_101_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_297();
    l0 = self.box_SpawnAI_101;
    l1 = self.box_SpawnAI_297;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1021515860", "1021515860", "MIS_510_B20_MAIN", "box_SpawnAI_101.Spawned", "box_SpawnAI_297.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_216_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_245();
    l0 = self.box_OnceOnly_v3_216;
    l1 = self.box_EntityStatusListener_245;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2009140353", "2009140353", "MIS_510_B20_MAIN", "box_OnceOnly_v3_216.Out", "box_EntityStatusListener_245.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Floats_150_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_66();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2072957900", "2072957900", "MIS_510_B20_MAIN", "box_Compare_Floats_150.A_ge_B", "box_OutputOrder_v2_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_150_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_151();
    l0 = self.box_Delay_v5_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1090430954", "1090430954", "MIS_510_B20_MAIN", "box_Compare_Floats_150.A_lt_B", "box_Delay_v5_151.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SoundModifier_v2_9_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_102();
    l0 = self.box_SoundModifier_v2_9;
    l1 = self.box_ProximityRadiusListener_v3_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1397907810", "1397907810", "MIS_510_B20_MAIN", "box_SoundModifier_v2_9.Started", "box_ProximityRadiusListener_v3_102.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_269_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_250();
    l0 = self.box_Gate_v3_250;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1421351110", "1421351110", "MIS_510_B20_MAIN", "box_OutputOrder_v2_269.Out", "box_Gate_v3_250.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_269_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_251();
    l0 = self.box_PlayDialog_v6_251;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|693921200", "693921200", "MIS_510_B20_MAIN", "box_OutputOrder_v2_269.Out", "box_PlayDialog_v6_251.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_269_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_233();
    l0 = self.box_PlayDialog_v6_233;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|275842804", "275842804", "MIS_510_B20_MAIN", "box_OutputOrder_v2_269.Out", "box_PlayDialog_v6_233.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_152_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetDistance_147();
    l0 = self.box_MultipleOR_152;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|561632687", "561632687", "MIS_510_B20_MAIN", "box_MultipleOR_152.Out", "box_GetDistance_147.Distance2D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance2D
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_226_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_71();
    l0 = self.box_Gate_v3_226;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1651793792", "1651793792", "MIS_510_B20_MAIN", "box_Gate_v3_226.Out", "box_OutputOrder_v2_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_276_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_31();
    l0 = self.box_Delay_v5_276;
    l1 = self.box_PlayDialog_v6_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|923990432", "923990432", "MIS_510_B20_MAIN", "box_Delay_v5_276.TimeElapsed", "box_PlayDialog_v6_31.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_218_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_44();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|446590173", "446590173", "MIS_510_B20_MAIN", "box_OutputOrder_v2_218.Out", "box_GetLocalPlayer_v2_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_218_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_317();
    l0 = self.box_PlayerFullyDetected_317;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1670510252", "1670510252", "MIS_510_B20_MAIN", "box_OutputOrder_v2_218.Out", "box_PlayerFullyDetected_317.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_218_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_254();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1140849375", "1140849375", "MIS_510_B20_MAIN", "box_OutputOrder_v2_218.Out", "box_Simple_Node_254.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_218_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_283();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|274332549", "274332549", "MIS_510_B20_MAIN", "box_OutputOrder_v2_218.Out", "box_Simple_Node_283.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_107_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_107;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1640452123", "1640452123", "MIS_510_B20_MAIN", "box_PlayDialog_v6_107.Finished", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_107_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_107;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|187584720", "187584720", "MIS_510_B20_MAIN", "box_PlayDialog_v6_107.FinishedInterrupted", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_107_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_107;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|891399771", "891399771", "MIS_510_B20_MAIN", "box_PlayDialog_v6_107.QueueCancelled", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_107_Queued()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_107;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|161523791", "161523791", "MIS_510_B20_MAIN", "box_PlayDialog_v6_107.Queued", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_107_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_107;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|271517309", "271517309", "MIS_510_B20_MAIN", "box_PlayDialog_v6_107.Started", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_107_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_107;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1978740233", "1978740233", "MIS_510_B20_MAIN", "box_PlayDialog_v6_107.StartedPriorityFailed", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_107_Stopped()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_107;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1829610888", "1829610888", "MIS_510_B20_MAIN", "box_PlayDialog_v6_107.Stopped", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Gate_v3_208_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_115();
    l0 = self.box_Gate_v3_208;
    l1 = self.box_PlayDialog_v6_115;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1658537132", "1658537132", "MIS_510_B20_MAIN", "box_Gate_v3_208.Out", "box_PlayDialog_v6_115.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_318_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_175();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|408771632", "408771632", "MIS_510_B20_MAIN", "box_SetContextualStrategy_318.Out", "box_OutputOrder_v2_175.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayerFullyDetected_317_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_351();
    l0 = self.box_PlayerFullyDetected_317;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1099949195", "1099949195", "MIS_510_B20_MAIN", "box_PlayerFullyDetected_317.Detected", "box_OutputOrder_v2_351.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_235_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_238();
    l0 = self.box_PlayDialog_v6_235;
    l1 = self.box_Delay_v5_238;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1058998180", "1058998180", "MIS_510_B20_MAIN", "box_PlayDialog_v6_235.Finished", "box_Delay_v5_238.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_329_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_327();
    l0 = self.box_MultipleOR_329;
    l1 = self.box_DisplayCustomUIMsg_v5_327;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|53338460", "53338460", "MIS_510_B20_MAIN", "box_MultipleOR_329.Out", "box_DisplayCustomUIMsg_v5_327.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_320_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_13();
    l0 = self.box_UniversalInteractionModifier_v2_320;
    l1 = self.box_UniversalInteractionListener_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|607511552", "607511552", "MIS_510_B20_MAIN", "box_UniversalInteractionModifier_v2_320.Enabled", "box_UniversalInteractionListener_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_335_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_65();
    l0 = self.box_ProximityRadiusListener_v3_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|727125400", "727125400", "MIS_510_B20_MAIN", "box_OutputOrder_v2_335.Out", "box_ProximityRadiusListener_v3_65.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_335_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_336();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|375753509", "375753509", "MIS_510_B20_MAIN", "box_OutputOrder_v2_335.Out", "box_Simple_Node_336.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_176_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_178();
    l0 = self.box_Random_176;
    l1 = self.box_PlayDialog_v6_178;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|710809963", "710809963", "MIS_510_B20_MAIN", "box_Random_176.Output", "box_PlayDialog_v6_178.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_176_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_180();
    l0 = self.box_Random_176;
    l1 = self.box_PlayDialog_v6_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1056623326", "1056623326", "MIS_510_B20_MAIN", "box_Random_176.Output", "box_PlayDialog_v6_180.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_176_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_182();
    l0 = self.box_Random_176;
    l1 = self.box_PlayDialog_v6_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|930212898", "930212898", "MIS_510_B20_MAIN", "box_Random_176.Output", "box_PlayDialog_v6_182.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_176_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_183();
    l0 = self.box_Random_176;
    l1 = self.box_PlayDialog_v6_183;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|550981614", "550981614", "MIS_510_B20_MAIN", "box_Random_176.Output", "box_PlayDialog_v6_183.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_176_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_186();
    l0 = self.box_Random_176;
    l1 = self.box_PlayDialog_v6_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1593726654", "1593726654", "MIS_510_B20_MAIN", "box_Random_176.Output", "box_PlayDialog_v6_186.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_176_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_189();
    l0 = self.box_Random_176;
    l1 = self.box_PlayDialog_v6_189;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1861016027", "1861016027", "MIS_510_B20_MAIN", "box_Random_176.Output", "box_PlayDialog_v6_189.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_176_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_191();
    l0 = self.box_Random_176;
    l1 = self.box_PlayDialog_v6_191;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1952308016", "1952308016", "MIS_510_B20_MAIN", "box_Random_176.Output", "box_PlayDialog_v6_191.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_176_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_193();
    l0 = self.box_Random_176;
    l1 = self.box_PlayDialog_v6_193;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1334269629", "1334269629", "MIS_510_B20_MAIN", "box_Random_176.Output", "box_PlayDialog_v6_193.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_176_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_195();
    l0 = self.box_Random_176;
    l1 = self.box_PlayDialog_v6_195;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|737167815", "737167815", "MIS_510_B20_MAIN", "box_Random_176.Output", "box_PlayDialog_v6_195.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_39_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_51();
    l0 = self.box_EntityStatusListener_39;
    l1 = self.box_ProximityTrigger_v3_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1504989712", "1504989712", "MIS_510_B20_MAIN", "box_EntityStatusListener_39.Loaded", "box_ProximityTrigger_v3_51.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_39_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_51();
    l0 = self.box_EntityStatusListener_39;
    l1 = self.box_ProximityTrigger_v3_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|567399750", "567399750", "MIS_510_B20_MAIN", "box_EntityStatusListener_39.Unloaded", "box_ProximityTrigger_v3_51.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1638456984", "1638456984", "MIS_510_B20_MAIN", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1269804587", "1269804587", "MIS_510_B20_MAIN", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_198_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_198;
    l1 = self.box_MultipleOR_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2084809288", "2084809288", "MIS_510_B20_MAIN", "box_MultipleOR_198.Out", "box_MultipleOR_197.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_38_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_38;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|799988836", "799988836", "MIS_510_B20_MAIN", "box_EntityStatusListener_38.Loaded", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_108_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_110();
    l0 = self.box_ProximityRadiusListener_v3_108;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1231544356", "1231544356", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_108.SomeoneNear", "box_OutputOrder_v2_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_128_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_1();
    l0 = self.box_Gate_v3_128;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1056237412", "1056237412", "MIS_510_B20_MAIN", "box_Gate_v3_128.Out", "box_ActivityEnd_1.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_140_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_140_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_218();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|314133226", "314133226", "MIS_510_B20_MAIN", "box_GetPlayerGroup_v2_140.Out", "box_OutputOrder_v2_218.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_342_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_343();
    l0 = self.box_Delay_v5_342;
    l1 = self.box_VehicleListener_v3_343;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1684377179", "1684377179", "MIS_510_B20_MAIN", "box_Delay_v5_342.TimeElapsed", "box_VehicleListener_v3_343.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_183_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_183;
    l1 = self.box_MultipleOR_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|54388129", "54388129", "MIS_510_B20_MAIN", "box_PlayDialog_v6_183.Finished", "box_MultipleOR_184.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_183_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_183;
    l1 = self.box_MultipleOR_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1513599859", "1513599859", "MIS_510_B20_MAIN", "box_PlayDialog_v6_183.FinishedInterrupted", "box_MultipleOR_184.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_183_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_183;
    l1 = self.box_MultipleOR_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1478371748", "1478371748", "MIS_510_B20_MAIN", "box_PlayDialog_v6_183.QueueCancelled", "box_MultipleOR_184.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_183_Stopped()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_183;
    l1 = self.box_MultipleOR_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|913173111", "913173111", "MIS_510_B20_MAIN", "box_PlayDialog_v6_183.Stopped", "box_MultipleOR_184.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_ProximityRadiusListener_v3_220_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_220;
    l1 = self.box_MultipleOR_217;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1862248116", "1862248116", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_220.SomeoneNear", "box_MultipleOR_217.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_123_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceExitVehicle_v2_124();
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1704294599", "1704294599", "MIS_510_B20_MAIN", "box_UseContextualActionModifier_v3_123.Disabled", "box_ForceExitVehicle_v2_124.ForceExit", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceExit
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_213_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_143();
    l0 = self.box_MultipleOR_213;
    l1 = self.box_ProximityRadiusListener_v3_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|414352482", "414352482", "MIS_510_B20_MAIN", "box_MultipleOR_213.Out", "box_ProximityRadiusListener_v3_143.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_46_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_146();
    l0 = self.box_ProximityRadiusListener_v3_46;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|182914667", "182914667", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_46.SomeoneNear", "box_UseContextualActionModifier_v3_146.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_330_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_322();
    l0 = self.box_Delay_v5_330;
    l1 = self.box_DisplayCustomUIMsg_v5_322;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|458656251", "458656251", "MIS_510_B20_MAIN", "box_Delay_v5_330.TimeElapsed", "box_DisplayCustomUIMsg_v5_322.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_121_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_128();
    l0 = self.box_MultipleOR_121;
    l1 = self.box_Gate_v3_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|446899418", "446899418", "MIS_510_B20_MAIN", "box_MultipleOR_121.Out", "box_Gate_v3_128.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_251_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_240();
    l0 = self.box_PlayDialog_v6_251;
    l1 = self.box_Delay_v5_240;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1863905342", "1863905342", "MIS_510_B20_MAIN", "box_PlayDialog_v6_251.Finished", "box_Delay_v5_240.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_157_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_158();
    l0 = self.box_Music_Quest_v2_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1941797127", "1941797127", "MIS_510_B20_MAIN", "box_OutputOrder_v2_157.Out", "box_Music_Quest_v2_158.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_157_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_58();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1512466213", "1512466213", "MIS_510_B20_MAIN", "box_OutputOrder_v2_157.Out", "box_ActivityRetry_v2_58.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_221_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_301();
    l0 = self.box_ExitZoneWarningListener_v3_221;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1098677349", "1098677349", "MIS_510_B20_MAIN", "box_ExitZoneWarningListener_v3_221.FailingZoneEntered", "box_OutputOrder_v2_301.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_270_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_247();
    l0 = self.box_Gate_v3_247;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1948384159", "1948384159", "MIS_510_B20_MAIN", "box_OutputOrder_v2_270.Out", "box_Gate_v3_247.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_270_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_259();
    l0 = self.box_PlayDialog_v6_259;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1915856679", "1915856679", "MIS_510_B20_MAIN", "box_OutputOrder_v2_270.Out", "box_PlayDialog_v6_259.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_270_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_258();
    l0 = self.box_PlayDialog_v6_258;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2086711523", "2086711523", "MIS_510_B20_MAIN", "box_OutputOrder_v2_270.Out", "box_PlayDialog_v6_258.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_184_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_184;
    l1 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|811210918", "811210918", "MIS_510_B20_MAIN", "box_MultipleOR_184.Out", "box_MultipleOR_198.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_78();
    l0 = self.box_CharacterLoadedIdListener_v2_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1020932904", "1020932904", "MIS_510_B20_MAIN", "box_OutputOrder_v2_6.Out", "box_CharacterLoadedIdListener_v2_78.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_164();
    l0 = self.box_Music_Quest_v2_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1449830732", "1449830732", "MIS_510_B20_MAIN", "box_OutputOrder_v2_6.Out", "box_Music_Quest_v2_164.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1541122721", "1541122721", "MIS_510_B20_MAIN", "box_OutputOrder_v2_6.Out", "box_Print_v2_5.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_221();
    l0 = self.box_ExitZoneWarningListener_v3_221;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1470963604", "1470963604", "MIS_510_B20_MAIN", "box_OutputOrder_v2_6.Out", "box_ExitZoneWarningListener_v3_221.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_228_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_93();
    l0 = self.box_MultipleOR_228;
    l1 = self.box_DisplayCustomUIMsg_v5_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1387705559", "1387705559", "MIS_510_B20_MAIN", "box_MultipleOR_228.Out", "box_DisplayCustomUIMsg_v5_93.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_265_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_130();
    l0 = self.box_ProximityRadiusListener_v3_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1977517785", "1977517785", "MIS_510_B20_MAIN", "box_OutputOrder_v2_265.Out", "box_ProximityRadiusListener_v3_130.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_18_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_342();
    l0 = self.box_Delay_v5_342;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|528129568", "528129568", "MIS_510_B20_MAIN", "box_UseContextualActionModifier_v3_18.Disabled", "box_Delay_v5_342.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Bind_v4_20_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_24();
    l0 = self.box_Bind_v4_20;
    l1 = self.box_Bind_v4_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1520746027", "1520746027", "MIS_510_B20_MAIN", "box_Bind_v4_20.Bound", "box_Bind_v4_24.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_316_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|971834332", "971834332", "MIS_510_B20_MAIN", "box_OutputOrder_v2_316.Out", "box_AddActivityObjective_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_316_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_314();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|363290035", "363290035", "MIS_510_B20_MAIN", "box_OutputOrder_v2_316.Out", "box_UseContextualActionModifier_v3_314.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_316_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_281();
    l0 = self.box_SpawnAI_281;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1954306487", "1954306487", "MIS_510_B20_MAIN", "box_OutputOrder_v2_316.Out", "box_SpawnAI_281.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_316_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_134();
    l0 = self.box_EntityStatusListener_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1938753808", "1938753808", "MIS_510_B20_MAIN", "box_OutputOrder_v2_316.Out", "box_EntityStatusListener_134.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_21_LoopingEnded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_346();
    l0 = self.box_Delay_v5_21;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1304703889", "1304703889", "MIS_510_B20_MAIN", "box_Delay_v5_21.LoopingEnded", "box_Simple_Node_346.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_21_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_21;
    l1 = self.box_MultipleOR_344;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1499851451", "1499851451", "MIS_510_B20_MAIN", "box_Delay_v5_21.TimeElapsed", "box_MultipleOR_344.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_249_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_272();
    l0 = self.box_Gate_v3_249;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1960622971", "1960622971", "MIS_510_B20_MAIN", "box_Gate_v3_249.Out", "box_OutputOrder_v2_272.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_53_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_67();
    l0 = self.box_SpawnAI_53;
    l1 = self.box_SpawnAI_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1382271635", "1382271635", "MIS_510_B20_MAIN", "box_SpawnAI_53.Spawned", "box_SpawnAI_67.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_98_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_99();
    l0 = self.box_SpawnAI_98;
    l1 = self.box_SpawnAI_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|35931617", "35931617", "MIS_510_B20_MAIN", "box_SpawnAI_98.Spawned", "box_SpawnAI_99.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_15_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_14();
    l0 = self.box_ProximityRadiusListener_v3_15;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1037618938", "1037618938", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_15.AllFar", "box_UseContextualActionModifier_v3_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_15_AllNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_14();
    l0 = self.box_ProximityRadiusListener_v3_15;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1196746411", "1196746411", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_15.AllNear", "box_UseContextualActionModifier_v3_14.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_181_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_181;
    l1 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|249059430", "249059430", "MIS_510_B20_MAIN", "box_MultipleOR_181.Out", "box_MultipleOR_198.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_VehicleSeatModifier_v2_229_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_256();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|715106390", "715106390", "MIS_510_B20_MAIN", "box_VehicleSeatModifier_v2_229.Locked", "box_VehicleSeatModifier_v2_256.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_16_Started()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_39();
    l0 = self.box_Delay_v5_16;
    l1 = self.box_EntityStatusListener_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|115231832", "115231832", "MIS_510_B20_MAIN", "box_Delay_v5_16.Started", "box_EntityStatusListener_39.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_88();
    l0 = self.box_Delay_v5_16;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|126984093", "126984093", "MIS_510_B20_MAIN", "box_Delay_v5_16.TimeElapsed", "box_UseContextualActionModifier_v3_88.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_12_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_20();
    l0 = self.box_Bind_v4_12;
    l1 = self.box_Bind_v4_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|376448330", "376448330", "MIS_510_B20_MAIN", "box_Bind_v4_12.Bound", "box_Bind_v4_20.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_151_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_151;
    l1 = self.box_MultipleOR_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|47755732", "47755732", "MIS_510_B20_MAIN", "box_Delay_v5_151.TimeElapsed", "box_MultipleOR_152.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_26_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_26;
    l1 = self.box_OnceOnly_v3_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1156107584", "1156107584", "MIS_510_B20_MAIN", "box_MultipleOR_26.Out", "box_OnceOnly_v3_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_257_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_237();
    l0 = self.box_PlayDialog_v6_257;
    l1 = self.box_Delay_v5_237;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|552291836", "552291836", "MIS_510_B20_MAIN", "box_PlayDialog_v6_257.Finished", "box_Delay_v5_237.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_212_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_119();
    l0 = self.box_MultipleOR_212;
    l1 = self.box_ProximityRadiusListener_v3_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|282988616", "282988616", "MIS_510_B20_MAIN", "box_MultipleOR_212.Out", "box_ProximityRadiusListener_v3_119.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_95_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_228;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1713744285", "1713744285", "MIS_510_B20_MAIN", "box_OutputOrder_v2_95.Out", "box_MultipleOR_228.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_95_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_163();
    l0 = self.box_Music_Quest_v2_163;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1462766844", "1462766844", "MIS_510_B20_MAIN", "box_OutputOrder_v2_95.Out", "box_Music_Quest_v2_163.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_95_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_96();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|95305215", "95305215", "MIS_510_B20_MAIN", "box_OutputOrder_v2_95.Out", "box_ActivityRetry_v2_96.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_274_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_258();
    l0 = self.box_Delay_v5_274;
    l1 = self.box_PlayDialog_v6_258;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1795888540", "1795888540", "MIS_510_B20_MAIN", "box_Delay_v5_274.TimeElapsed", "box_PlayDialog_v6_258.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_63_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_8();
    l0 = self.box_ProximityRadiusListener_v3_63;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|796449095", "796449095", "MIS_510_B20_MAIN", "box_ProximityRadiusListener_v3_63.SomeoneNear", "box_ActivityEnd_8.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_193_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_193;
    l1 = self.box_MultipleOR_194;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|333009698", "333009698", "MIS_510_B20_MAIN", "box_PlayDialog_v6_193.Finished", "box_MultipleOR_194.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_193_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_193;
    l1 = self.box_MultipleOR_194;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1175948348", "1175948348", "MIS_510_B20_MAIN", "box_PlayDialog_v6_193.FinishedInterrupted", "box_MultipleOR_194.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_193_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_193;
    l1 = self.box_MultipleOR_194;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1777714889", "1777714889", "MIS_510_B20_MAIN", "box_PlayDialog_v6_193.QueueCancelled", "box_MultipleOR_194.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_193_Stopped()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_193;
    l1 = self.box_MultipleOR_194;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1430469987", "1430469987", "MIS_510_B20_MAIN", "box_PlayDialog_v6_193.Stopped", "box_MultipleOR_194.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_174_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_173();
    l0 = self.box_Music_Quest_v2_173;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|336527339", "336527339", "MIS_510_B20_MAIN", "box_OutputOrder_v2_174.Out", "box_Music_Quest_v2_173.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_174_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_172();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1926638245", "1926638245", "MIS_510_B20_MAIN", "box_OutputOrder_v2_174.Out", "box_ActivityRetry_v2_172.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_133();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|44352057", "44352057", "MIS_510_B20_MAIN", "box_OutputOrder_v2_71.Out", "box_UseContextualActionModifier_v3_133.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_29();
    l0 = self.box_ProximityTrigger_v3_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1600425970", "1600425970", "MIS_510_B20_MAIN", "box_OutputOrder_v2_71.Out", "box_ProximityTrigger_v3_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_71_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_156();
    l0 = self.box_Music_Quest_v2_156;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|530929947", "530929947", "MIS_510_B20_MAIN", "box_OutputOrder_v2_71.Out", "box_Music_Quest_v2_156.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_71_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_255();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|436172566", "436172566", "MIS_510_B20_MAIN", "box_OutputOrder_v2_71.Out", "box_Simple_Node_255.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_325_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_330();
    l0 = self.box_Delay_v5_325;
    l1 = self.box_Delay_v5_330;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1236106999", "1236106999", "MIS_510_B20_MAIN", "box_Delay_v5_325.Started", "box_Delay_v5_330.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_325_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_322();
    l0 = self.box_Delay_v5_325;
    l1 = self.box_DisplayCustomUIMsg_v5_322;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1170638412", "1170638412", "MIS_510_B20_MAIN", "box_Delay_v5_325.TimeElapsed", "box_DisplayCustomUIMsg_v5_322.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_28_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_28;
    l1 = self.box_MultipleOR_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|16824467", "16824467", "MIS_510_B20_MAIN", "box_Gate_v3_28.Out", "box_MultipleOR_248.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GroupSizeListener_v6_347_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_347;
    l1 = self.box_MultipleOR_349;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|71155906", "71155906", "MIS_510_B20_MAIN", "box_GroupSizeListener_v6_347.Enabled", "box_MultipleOR_349.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_347_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v6_347;
    l1 = self.box_MultipleOR_349;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1096907847", "1096907847", "MIS_510_B20_MAIN", "box_GroupSizeListener_v6_347.MemberRemoved", "box_MultipleOR_349.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_267_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_243();
    l0 = self.box_Gate_v3_243;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1133125164", "1133125164", "MIS_510_B20_MAIN", "box_OutputOrder_v2_267.Out", "box_Gate_v3_243.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_267_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_235();
    l0 = self.box_PlayDialog_v6_235;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1640137848", "1640137848", "MIS_510_B20_MAIN", "box_OutputOrder_v2_267.Out", "box_PlayDialog_v6_235.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_267_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_230();
    l0 = self.box_PlayDialog_v6_230;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|270104949", "270104949", "MIS_510_B20_MAIN", "box_OutputOrder_v2_267.Out", "box_PlayDialog_v6_230.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_203_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_221();
    l0 = self.box_MultipleOR_203;
    l1 = self.box_ExitZoneWarningListener_v3_221;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1474633079", "1474633079", "MIS_510_B20_MAIN", "box_MultipleOR_203.Out", "box_ExitZoneWarningListener_v3_221.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_133_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_285();
    l0 = self.box_Delay_v5_285;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|897941468", "897941468", "MIS_510_B20_MAIN", "box_UseContextualActionModifier_v3_133.Disabled", "box_Delay_v5_285.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RemoveEntity_v2_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_41();
    l0 = self.box_RemoveEntity_v2_40;
    l1 = self.box_RemoveEntity_v2_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1777057260", "1777057260", "MIS_510_B20_MAIN", "box_RemoveEntity_v2_40.Out", "box_RemoveEntity_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ForceVehicleCrash_v2_50_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_56();
    l0 = self.box_Delay_v5_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1631934991", "1631934991", "MIS_510_B20_MAIN", "box_ForceVehicleCrash_v2_50.Out", "box_Delay_v5_56.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_126_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_209();
    l0 = self.box_Gate_v3_209;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|776235406", "776235406", "MIS_510_B20_MAIN", "box_OutputOrder_v2_126.Out", "box_Gate_v3_209.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_126_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_213;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|68308098", "68308098", "MIS_510_B20_MAIN", "box_OutputOrder_v2_126.Out", "box_MultipleOR_213.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_196_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_196;
    l1 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|577833006", "577833006", "MIS_510_B20_MAIN", "box_MultipleOR_196.Out", "box_MultipleOR_198.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_Delay_v5_54_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ForceVehicleCrash_v2_50();
    l0 = self.box_Delay_v5_54;
    l1 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|749286147", "749286147", "MIS_510_B20_MAIN", "box_Delay_v5_54.TimeElapsed", "box_ForceVehicleCrash_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_64_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_63();
    l0 = self.box_EntityStatusListener_64;
    l1 = self.box_ProximityRadiusListener_v3_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|915553241", "915553241", "MIS_510_B20_MAIN", "box_EntityStatusListener_64.Loaded", "box_ProximityRadiusListener_v3_63.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_255()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_255");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|@Convoy Start Moving");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_255_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_204()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|@ConvoyOut");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_204_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_336()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_336");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|@ConvoyToNickCheck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_336_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_340()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_340");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|@DisableDoorOnceOpened");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_340_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|@JeromeIsFree");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_120_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_254()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_254");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|@Start Staged Dialog");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_254_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|@Stop Dialogs");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_252_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_352()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_352");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|@StopSpeakersCombatStarted");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_352_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_246()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_246");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|@Time is up");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_246_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_233()
    local params;
    params = {
        -- Group,
        [0] = "2109856105457791898",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3792300005",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_155()
    local params;
    params = {
        -- EntityA,
        [1] = "2107147091143827789",
        -- EntityB,
        [2] = "2107258228621444977",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_332()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_332");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|18706359");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_332_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 3,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = "2107133712224242865",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_100()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107161336159947704",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|23895951");
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
                [0] = self.f_box_OutputOrder_v2_201_Out_0,
                [1] = self.f_box_OutputOrder_v2_201_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|24500233");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_44_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_303()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107161349147610175",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_178()
    local params;
    params = {
        -- Group,
        [0] = self.eJerome,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3929884931",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_309()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_309");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|27120916");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2107160828269578812",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_337()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_351()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_351");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|52617066");
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
                [0] = self.f_box_OutputOrder_v2_351_Out_0,
                [1] = self.f_box_OutputOrder_v2_351_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|59729992");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_35_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109608118122980724",
        -- Group,
        [1] = "#DBCF1A74",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_115()
    local params;
    params = {
        -- Group,
        [0] = "2107147192763425436",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1914652485",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|73252225");
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

function export:OnEnter_box_PlayDialog_v6_231()
    local params;
    params = {
        -- Group,
        [0] = "2109856105457791898",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2956928795",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_75()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_343()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.eJerome,
        -- vehicle,
        [4] = "2107133712224242865",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_299()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_299");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|105799429");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_299_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109455987852245711",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_237()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_338()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_338");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|113700145");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "Fact_MIS_510_B20_cs_switch",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|114450069");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_14_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_14_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2107135223148847515",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|116303049");
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
                [0] = self.f_box_OutputOrder_v2_116_Out_0,
                [1] = self.f_box_OutputOrder_v2_116_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_215()
    local params;
    params = {
        -- EntityA,
        [1] = self.eJerome,
        -- EntityB,
        [2] = "2107576199657033556",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_180()
    local params;
    params = {
        -- Group,
        [0] = self.eJerome,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4183147249",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|126013248");
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
                [0] = self.f_box_OutputOrder_v2_188_Out_0,
                [1] = self.f_box_OutputOrder_v2_188_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|142790219");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_36_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_36_True,
    });
    params = {
        -- entityId,
        [0] = "2107133712224242865",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_311()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_301()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_301");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|149040513");
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
                [0] = self.f_box_OutputOrder_v2_301_Out_0,
                [1] = self.f_box_OutputOrder_v2_301_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_51()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2107244348157475092",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_134()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108985527385476263",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_78()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328871209466",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|171485801");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "MIS_510_B20_FAIL_JeromeBehind",
            id = "962268",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_333()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#FEFB62F6",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_189()
    local params;
    params = {
        -- Group,
        [0] = self.eJerome,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3567744576",
    };
    return params;
end;

function export:OnEnter_box_GetDistance_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|184972830");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_147_Out,
    });
    params = {
        -- Entity1,
        [0] = self._sld_vehicle_box_GetPawnVehicleInfo_148,
        -- Entity2,
        [1] = "2107174718906836880",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|210448873");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_49_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_262()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Intel Note",
            item = "MIS_510_WARNING",
            id = "1033139",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|223956591");
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
                [2] = self.f_box_OutputOrder_v2_66_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_99()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107160807625214501",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_170()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- farZone,
        [2] = 150,
        -- id2,
        [3] = self.eJerome,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|246101866");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2107466404289590102",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_348()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_348");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|246491637");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_348_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v6_347;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_307()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_207()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|267867412");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_72()
    local params;
    params = {
        -- Pawns,
        [0] = "2107269927130902473",
        -- SoundId,
        [1] = "2869461263",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|278602631");
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

function export:OnEnter_box_SpawnAI_281()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107133635902590038",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_52()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107244233868982281",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_241()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_271()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.15,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_327()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "MIS_510_B20_WARNING_JeromeFar",
            id = "962269",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = self.gPlayer,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_236()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2109400547776813734",
        -- nearZone,
        [4] = 35,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|342883178");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = self.eJerome,
        -- ObjectiveId,
        [2] = {
            section = "OBJECTIVES",
            item = "MIS_510_B20_OBJ_FreeJerome",
            id = "960213",
        },
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_199()
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
        [6] = "1569441462",
        -- StopEvent,
        [7] = "2701655698",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|363827082");
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
                [0] = self.f_box_OutputOrder_v2_167_Out_0,
                [1] = self.f_box_OutputOrder_v2_167_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_244()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_93()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "MIS_510_B20_FAIL_JeromeBehind",
            id = "962268",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|371772303");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_88_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2107149033186282218",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_293()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_293");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|375495605");
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
                [0] = self.f_box_OutputOrder_v2_293_Out_0,
                [1] = self.f_box_OutputOrder_v2_293_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_245()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109400547776813734",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|388073585");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2107135223148847515",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|393559340");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2108985527385476263",
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|398498004");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_124_ForceExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#1AB65959",
        -- vehicle,
        [2] = "2107133712224242865",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_163()
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
        [6] = "1569441462",
        -- StopEvent,
        [7] = "2701655698",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_324()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_324");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|406085000");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_191()
    local params;
    params = {
        -- Group,
        [0] = self.eJerome,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3862196033",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_29()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#64F916E9",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2107382478187530358",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_266()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_266");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|435069158");
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
                [0] = self.f_box_OutputOrder_v2_266_Out_0,
                [1] = self.f_box_OutputOrder_v2_266_Out_1,
                [2] = self.f_box_OutputOrder_v2_266_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_168()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayer,
        -- farZone,
        [2] = 100,
        -- id2,
        [3] = self.eJerome,
        -- nearZone,
        [4] = 100,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|448774141");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_61_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "OBJECTIVES",
            item = "MIS_510_B20_OBJ_GoToRye",
            id = "960214",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_182()
    local params;
    params = {
        -- Group,
        [0] = self.eJerome,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3812894818",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_290()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_290");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|458285072");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_290_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2107242833822892992",
        -- Entity,
        [2] = "2107160807629408811",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_56()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_187()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = self.eJerome,
        -- nearZone,
        [4] = 30,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_321()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_321");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|470902256");
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
                [0] = self.f_box_OutputOrder_v2_321_Out_0,
            },
            count = 2,
        },
    });
    params = {
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

function export:OnEnter_box_Delay_v5_109()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_280()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.15,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|504328315");
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
                [0] = self.f_box_OutputOrder_v2_110_Out_0,
                [1] = self.f_box_OutputOrder_v2_110_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_261()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2107246248395288723",
        -- nearZone,
        [4] = 125,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|519369857");
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
                [0] = self.f_box_OutputOrder_v2_104_Out_0,
                [1] = self.f_box_OutputOrder_v2_104_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|521116204");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_57()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2107245980832244533",
        -- WarningZoneTrigger,
        [3] = "2107246014881604426",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_139()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#56A64E51",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2107369197043454565",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_291()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_291");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|535384347");
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
                [0] = self.f_box_OutputOrder_v2_291_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|548565448");
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
                [0] = self.f_box_OutputOrder_v2_175_Out_0,
                [1] = self.f_box_OutputOrder_v2_175_Out_1,
                [2] = self.f_box_OutputOrder_v2_175_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|550296487");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_7_Enabled,
    });
    params = {
        -- Marker,
        [1] = self.eJerome,
        -- ObjectiveId,
        [2] = {
            section = "OBJECTIVES",
            item = "MIS_510_B20_OBJ_TalkToJerome",
            id = "960217",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_285()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_83()
    local params;
    params = {
        -- Vehicle,
        [0] = "2107133712224242865",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|558804011");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
                [2] = self.f_box_OutputOrder_v2_48_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|566033096");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ForceVehicleCrash_v2_55_Out,
    });
    params = {
        -- gasPedal,
        [0] = 1,
        -- steeringWheel,
        [1] = -0.8,
        -- useDamageFactor,
        [2] = true,
        -- vehicle,
        [3] = "2107244306336069789",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_227()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayer,
        -- farZone,
        [2] = 200,
        -- id2,
        [3] = self.eJerome,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_137()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107369197043454565",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_164()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
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
        [6] = "1569441462",
        -- StopEvent,
        [7] = "2701655698",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_67()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107257861703758622",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_24()
    local params;
    params = {
        -- EntityA,
        [1] = "2107133712224242865",
        -- EntityB,
        [2] = "2109608118122980724",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|632639398");
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
                [0] = self.f_box_OutputOrder_v2_223_Out_0,
                [1] = self.f_box_OutputOrder_v2_223_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_328()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_328");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|641992443");
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
                [0] = self.f_box_OutputOrder_v2_328_Out_0,
                [1] = self.f_box_OutputOrder_v2_328_Out_1,
                [2] = self.f_box_OutputOrder_v2_328_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_292()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_292");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|660009715");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_292_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109499721333622798",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_295()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_295");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|665595132");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_295_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2107146744945975361",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_138()
    local params;
    params = {
        -- Group,
        [0] = self.eJerome,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "920461530",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_323()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.eJerome,
        -- farZone,
        [2] = 160,
        -- id2,
        [3] = "2107246248395288723",
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_74()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "MIS_510_B20_FAIL_JeromeBehind",
            id = "962268",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|711525954");
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
                [1] = self.f_box_OutputOrder_v2_76_Out_1,
                [2] = self.f_box_OutputOrder_v2_76_Out_2,
            },
            count = 3,
        },
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|724087362");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_283_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_243()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|755044493");
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
                [0] = self.f_box_OutputOrder_v2_87_Out_0,
                [1] = self.f_box_OutputOrder_v2_87_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_277()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.15,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_298()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_298");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|763491525");
    l0:SetConnections({
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_298_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109455987852245711",
        -- Entity,
        [2] = "2107147183787614844",
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|771065554");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_45_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_45_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_45_Out,
    });
    params = {
        -- pawn,
        [0] = self._sld_LocalPlayer_box_GetLocalPlayer_v2_44,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_102()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2107160807629408811",
        -- nearZone,
        [4] = 30,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_288()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_288");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|806283855");
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
                [0] = self.f_box_OutputOrder_v2_288_Out_0,
                [1] = self.f_box_OutputOrder_v2_288_Out_1,
                [2] = self.f_box_OutputOrder_v2_288_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ConversationListener_77()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- Entity,
        [1] = self.eJerome,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|812915715");
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
                [0] = self.f_box_OutputOrder_v2_81_Out_0,
                [1] = self.f_box_OutputOrder_v2_81_Out_1,
                [2] = self.f_box_OutputOrder_v2_81_Out_2,
                [3] = self.f_box_OutputOrder_v2_81_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_305()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_305");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|816456181");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2109500599706884468",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_210()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_171()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "MIS_510_B20_WARNING_JeromeFar",
            id = "962269",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_302()
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
        [6] = "1569441462",
        -- StopEvent,
        [7] = "2701655698",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2107133712224242865",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|842170497");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_153_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2107466404289590102",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_105()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|847395419");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "MIS_510_B20_FAIL_JeromeBehind",
            id = "962268",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|854131092");
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
                [0] = self.f_box_OutputOrder_v2_169_Out_0,
                [1] = self.f_box_OutputOrder_v2_169_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|872292619");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_122_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2107147731354024260",
        -- ObjectiveId,
        [2] = {
            section = "OBJECTIVES",
            item = "MIS_510_B20_OBJ_FreeJerome",
            id = "960213",
        },
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|873736681");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_22_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "OBJECTIVES",
            item = "MIS_510_B20_OBJ_TalkToJerome",
            id = "960217",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_312()
    local params;
    params = {
        -- group,
        [0] = "#DBCF1A74",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_131()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eJerome,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_310()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_310");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|915980104");
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
                [0] = self.f_box_OutputOrder_v2_310_Out_0,
                [1] = self.f_box_OutputOrder_v2_310_Out_1,
                [2] = self.f_box_OutputOrder_v2_310_Out_2,
                [3] = self.f_box_OutputOrder_v2_310_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|917433932");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_23_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2107286252920245668",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|923658342");
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
                [0] = self.f_box_OutputOrder_v2_127_Out_0,
                [1] = self.f_box_OutputOrder_v2_127_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_41()
    local params;
    params = {
        -- Group,
        [0] = "#41AEF4CE",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_268()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_268");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|948088454");
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
                [0] = self.f_box_OutputOrder_v2_268_Out_0,
                [1] = self.f_box_OutputOrder_v2_268_Out_1,
                [2] = self.f_box_OutputOrder_v2_268_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_247()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|958428897");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_146_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2107466289837515431",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_47()
    local params;
    params = {
        -- Group,
        [0] = "2107147108701184481",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_326()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayer,
        -- farZone,
        [2] = 170,
        -- id2,
        [3] = self.eJerome,
        -- nearZone,
        [4] = 169,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|981257464");
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
                [0] = self.f_box_OutputOrder_v2_129_Out_0,
                [1] = self.f_box_OutputOrder_v2_129_Out_1,
                [2] = self.f_box_OutputOrder_v2_129_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|982152250");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_148_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_148_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_148_Out,
    });
    params = {
        -- pawn,
        [0] = self._sld_LocalPlayer_box_GetLocalPlayer_v2_149,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_315()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_315");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1006924683");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2107160828269578812",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_195()
    local params;
    params = {
        -- Group,
        [0] = self.eJerome,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1102593517",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_119()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = self.eJerome,
        -- nearZone,
        [4] = 30,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_103()
    local params;
    params = {
        -- Group,
        [0] = "2107160807629408811",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1008250954",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_209()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_278()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_278");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1066314838");
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
                [0] = self.f_box_OutputOrder_v2_278_Out_0,
                [1] = self.f_box_OutputOrder_v2_278_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_273()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_273");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1076899578");
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
                [0] = self.f_box_OutputOrder_v2_273_Out_0,
                [1] = self.f_box_OutputOrder_v2_273_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_279()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_279");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1080783355");
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
                [0] = self.f_box_OutputOrder_v2_279_Out_0,
                [1] = self.f_box_OutputOrder_v2_279_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1086850172");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_17_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2107466289837515431",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_250()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_70()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_284()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_284");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1165941042");
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
                [0] = self.f_box_OutputOrder_v2_284_Out_0,
                [1] = self.f_box_OutputOrder_v2_284_Out_1,
                [2] = self.f_box_OutputOrder_v2_284_Out_2,
                [3] = self.f_box_OutputOrder_v2_284_Out_3,
                [4] = self.f_box_OutputOrder_v2_284_Out_4,
                [5] = self.f_box_OutputOrder_v2_284_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_272()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_272");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1169230432");
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
                [0] = self.f_box_OutputOrder_v2_272_Out_0,
                [1] = self.f_box_OutputOrder_v2_272_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_143()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = self.eJerome,
        -- nearZone,
        [4] = 30,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_97()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_85()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_42()
    local params;
    params = {
        -- Group,
        [0] = "2107147091143827789",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_264()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_84()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107246248395288723",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_125()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_314()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_314");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1233410324");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_314_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2107146744945975361",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_165()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = "2107147091143827789",
        -- farZone,
        [2] = 35,
        -- id2,
        [3] = "2107133712224242865",
        -- nearZone,
        [4] = 30,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_286()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_286");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1261245229");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2107161340482178012",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1267506192");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "MIS_510_B20_FAIL_JeromeDead",
            id = "962270",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_306()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_304()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_304");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1282895799");
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
                [0] = self.f_box_OutputOrder_v2_304_Out_0,
                [1] = self.f_box_OutputOrder_v2_304_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1295306492");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_202_Locked,
    });
    params = {
        -- IsAI,
        [0] = false,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 1,
        -- vehicleEntity,
        [4] = "2107133712224242865",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_173()
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
        [6] = "1569441462",
        -- StopEvent,
        [7] = "2701655698",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_345()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_345");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1298197057");
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
                [0] = self.f_box_OutputOrder_v2_345_Out_0,
                [1] = self.f_box_OutputOrder_v2_345_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_341()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_341");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1306164417");
    l0:SetConnections({
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = self.eJerome,
        -- vehicle,
        [2] = "2107133712224242865",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_68()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_339()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_94()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_158()
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
        [6] = "1569441462",
        -- StopEvent,
        [7] = "2701655698",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_43()
    local params;
    params = {
        -- Group,
        [0] = "2107133712224242865",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_239()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_296()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_296");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1333678646");
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
                [0] = self.f_box_OutputOrder_v2_296_Out_0,
                [1] = self.f_box_OutputOrder_v2_296_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_322()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "MIS_510_B20_FAIL_JeromeBehind",
            id = "962268",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = self.gPlayer,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1339807255");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2109500565542181202",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_297()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107242816651412372",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_258()
    local params;
    params = {
        -- Group,
        [0] = "2109856105457791898",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1745917742",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_224()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2107466289837515431",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1388754087");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_149_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_232()
    local params;
    params = {
        -- Group,
        [0] = "2109856103157216152",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2956928795",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_260()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_260");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1397150923");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "MIS_510_B20_FAIL_JeromeBehind",
            id = "962268",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1398611018");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_10_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "OBJECTIVES",
            item = "MIS_510_B20_OBJ_FreeJerome",
            id = "960213",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_135()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_300()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_300");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1423103045");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2109499721333622798",
        -- Entity,
        [2] = "2107242816655606682",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_130()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- farZone,
        [2] = 210,
        -- id2,
        [3] = "2107133712224242865",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_200()
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
        [6] = "1569441462",
        -- StopEvent,
        [7] = "2701655698",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_31()
    local params;
    params = {
        -- Group,
        [0] = "2109856105457791898",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "40102461",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_275()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_275");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1459105111");
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
                [0] = self.f_box_OutputOrder_v2_275_Out_0,
                [1] = self.f_box_OutputOrder_v2_275_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_319()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_319");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1463197500");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160320593505987",
        -- missionLayerId,
        [1] = "45174719103766894",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_287()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 7,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_186()
    local params;
    params = {
        -- Group,
        [0] = self.eJerome,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3187881872",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_263()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_263");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1492422676");
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
                [0] = self.f_box_OutputOrder_v2_263_Out_0,
                [1] = self.f_box_OutputOrder_v2_263_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_259()
    local params;
    params = {
        -- Group,
        [0] = "2109856103157216152",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1745917742",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_238()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_80()
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
        [6] = "1569441462",
        -- StopEvent,
        [7] = "2701655698",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_65()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2107246248395288723",
        -- nearZone,
        [4] = 85,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1522724608");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1525499262");
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
                [1] = self.f_box_OutputOrder_v2_91_Out_1,
                [2] = self.f_box_OutputOrder_v2_91_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1528776058");
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
        [8] = "MIS_510_B20 STARTED",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1536448483");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_19_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2107162314647030475",
        -- Group,
        [1] = "#1AB65959",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_156()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 2,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1569441462",
        -- StopEvent,
        [7] = "2701655698",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1551776698");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_225_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 2,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = "2107133712224242865",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_240()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_162()
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
        [6] = "1569441462",
        -- StopEvent,
        [7] = "2701655698",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_101()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107147192759231126",
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1580115120");
    l0:SetConnections({
    });
    params = {
        -- gasPedal,
        [0] = 1,
        -- steeringWheel,
        [1] = -0.5,
        -- useDamageFactor,
        [2] = true,
        -- vehicle,
        [3] = "2107257861712147241",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1580142129");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2107246224582127741",
        -- ObjectiveId,
        [2] = {
            section = "OBJECTIVES",
            item = "MIS_510_B20_OBJ_GoToRye",
            id = "960214",
        },
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1592969080");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Floats_150_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_150_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_147,
        -- B,
        [1] = 30,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_9()
    local params;
    params = {
        -- Pawns,
        [0] = "2107258228621444977",
        -- SoundId,
        [1] = "1130074308",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_269()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_269");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1608622864");
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
                [0] = self.f_box_OutputOrder_v2_269_Out_0,
                [1] = self.f_box_OutputOrder_v2_269_Out_1,
                [2] = self.f_box_OutputOrder_v2_269_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_226()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_276()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.15,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_218()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1636274138");
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
                [0] = self.f_box_OutputOrder_v2_218_Out_0,
                [1] = self.f_box_OutputOrder_v2_218_Out_1,
                [2] = self.f_box_OutputOrder_v2_218_Out_2,
                [3] = self.f_box_OutputOrder_v2_218_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_107()
    local params;
    params = {
        -- Group,
        [0] = self.eJerome,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "784231964",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_208()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_318()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_318");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1648999514");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_318_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109608118122980724",
        -- Group,
        [1] = "#DBCF1A74",
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_317()
    local params;
    params = {
        -- group,
        [0] = "#DBCF1A74",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_235()
    local params;
    params = {
        -- Group,
        [0] = "2109856103157216152",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4179424404",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_320()
    local params;
    DrawTextToScreen("Comment: To fix BOW-82465", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'UniversalInteractionModifier_v2')-- Comment: To fix BOW-82465");
    params = {
        -- disableOnUse,
        [0] = true,
        -- usableEntity,
        [4] = "2107133712224242865",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_335()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_335");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1684925082");
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
                [0] = self.f_box_OutputOrder_v2_335_Out_0,
                [1] = self.f_box_OutputOrder_v2_335_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Random_176()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 9,
        },
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_346()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_346");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1707443016");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_39()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107244348157475092",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1735057459");
    l0:SetConnections({
    });
    params = {
        -- IsAI,
        [0] = false,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 2,
        -- vehicleEntity,
        [4] = "2107133712224242865",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_38()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107133712224242865",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_108()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = self.eJerome,
        -- nearZone,
        [4] = 30,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_128()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1767860340");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_140_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_342()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_183()
    local params;
    params = {
        -- Group,
        [0] = self.eJerome,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2526747624",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_220()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2109400547776813734",
        -- nearZone,
        [4] = 35,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1794776521");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_123_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2107149033186282218",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1798342941");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "BRICK_Endure_Waves",
            item = "BRICK_Endure_ExitWarning",
            id = "426332",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_46()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2107133712224242865",
        -- nearZone,
        [4] = 32,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_230()
    local params;
    params = {
        -- Group,
        [0] = "2109856105457791898",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4179424404",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_330()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_251()
    local params;
    params = {
        -- Group,
        [0] = "2109856103157216152",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3792300005",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_157()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1874012981");
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

function export:OnEnter_box_ExitZoneWarningListener_v3_221()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2107146868424187992",
        -- WarningZoneTrigger,
        [3] = "2109209554599295992",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_270()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_270");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1880600013");
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
                [0] = self.f_box_OutputOrder_v2_270_Out_0,
                [1] = self.f_box_OutputOrder_v2_270_Out_1,
                [2] = self.f_box_OutputOrder_v2_270_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_160()
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
        [6] = "1569441462",
        -- StopEvent,
        [7] = "2701655698",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1900162603");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
                [2] = self.f_box_OutputOrder_v2_6_Out_2,
                [3] = self.f_box_OutputOrder_v2_6_Out_3,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_265()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_265");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1909733639");
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
                [0] = self.f_box_OutputOrder_v2_265_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1921674865");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_18_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2107149033186282218",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_20()
    local params;
    params = {
        -- EntityA,
        [1] = "2107133712224242865",
        -- EntityB,
        [2] = "2107162314647030475",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_316()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_316");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1929634014");
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
                [0] = self.f_box_OutputOrder_v2_316_Out_0,
                [1] = self.f_box_OutputOrder_v2_316_Out_1,
                [2] = self.f_box_OutputOrder_v2_316_Out_2,
                [3] = self.f_box_OutputOrder_v2_316_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_256()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_256");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1937537355");
    l0:SetConnections({
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = "2107133712224242865",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_21()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- nbLoop,
        [1] = 4,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_249()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_53()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107244306325584018",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_98()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107147175141057012",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_15()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayer,
        -- farZone,
        [2] = 75,
        -- id2,
        [3] = "2107133712224242865",
        -- nearZone,
        [4] = 50,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|1991293090");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_229_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 1,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = "2107133712224242865",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_16()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_12()
    local params;
    params = {
        -- EntityA,
        [1] = "2107133712224242865",
        -- EntityB,
        [2] = "2107147731354024260",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_151()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_257()
    local params;
    params = {
        -- Group,
        [0] = "2109856103157216152",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "40102461",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2022182273");
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
                [0] = self.f_box_OutputOrder_v2_95_Out_0,
                [1] = self.f_box_OutputOrder_v2_95_Out_1,
                [2] = self.f_box_OutputOrder_v2_95_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_274()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.15,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_63()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2107246248395288723",
        -- nearZone,
        [4] = 75,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_193()
    local params;
    params = {
        -- Group,
        [0] = self.eJerome,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3607825562",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2048358381");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2109412973356257980",
        -- Entity,
        [2] = "2107147183787614844",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2063323003");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2107382673482713260",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2064854949");
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
                [0] = self.f_box_OutputOrder_v2_174_Out_0,
                [1] = self.f_box_OutputOrder_v2_174_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2067714244");
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
                [0] = self.f_box_OutputOrder_v2_71_Out_0,
                [1] = self.f_box_OutputOrder_v2_71_Out_1,
                [2] = self.f_box_OutputOrder_v2_71_Out_2,
                [3] = self.f_box_OutputOrder_v2_71_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_325()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
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

function export:OnEnter_box_ActivityRetry_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2082033198");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "MIS_510_B20_FAIL_JeromeDead",
            id = "962270",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_347()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#04B71FE9",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_267()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_267");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2090924846");
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
                [0] = self.f_box_OutputOrder_v2_267_Out_0,
                [1] = self.f_box_OutputOrder_v2_267_Out_1,
                [2] = self.f_box_OutputOrder_v2_267_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2110494946");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_133_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2107368600714101279",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_40()
    local params;
    params = {
        -- Group,
        [0] = "#FEFB62F6",
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2119032144");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ForceVehicleCrash_v2_50_Out,
    });
    params = {
        -- gasPedal,
        [0] = 1,
        -- steeringWheel,
        [1] = 0.75,
        -- useDamageFactor,
        [2] = true,
        -- vehicle,
        [3] = "2107244246177167392",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_B20.domino|@MIS_510_B20_MAIN|2120404127");
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
                [0] = self.f_box_OutputOrder_v2_126_Out_0,
                [1] = self.f_box_OutputOrder_v2_126_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_54()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 25,
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
        [2] = "2107246248395288723",
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_44_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self._sld_LocalPlayer_box_GetLocalPlayer_v2_44 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_78_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_78;
    self.eJerome = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_147_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_147 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_49_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_45_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eVehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_45_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eVehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eVehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_148_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_148 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_148_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_148 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_148_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_148 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetLocalPlayer_v2_149_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self._sld_LocalPlayer_box_GetLocalPlayer_v2_149 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_140_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
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
