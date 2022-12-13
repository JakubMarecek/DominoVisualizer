LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/h5/h5_outpost_01.domino
-- User graph: H5_Outpost_01_QUEST_B10
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/CreateVector3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ForceVehicleCrash.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/ListReader.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/RequestTutorial_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleSeatModifier_v2.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Outposts/H5/H5_Outpost_01.H5_Outpost_01_QUEST_Warning.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1905156012.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1148350002.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1416256145.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3885112459.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.H5_Outpost_01 = nil;
    Globals.H5_Outpost_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Outposts/H5/H5_Outpost_01.H5_Outpost_01_QUEST_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")] = {
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
                name = "MarkerTypeId",
                type = "database",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "ProgressDisplayType",
                type = "int",
            },
            [3] = {
                name = "TotalProgress",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/AI/StateListener_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Alert",
            },
            [1] = {
                name = "Combat",
            },
            [2] = {
                name = "Dead",
            },
            [3] = {
                name = "Disable",
            },
            [4] = {
                name = "Idle_RelaxCautious",
            },
            [5] = {
                name = "Investigate",
            },
        },
        controlInCount = 6,
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
                name = "MemberInState",
                delayed = true,
            },
            [3] = {
                name = "StateStart",
                delayed = true,
            },
            [4] = {
                name = "StateStop",
                delayed = true,
            },
        },
        controlOutCount = 5,
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
                name = "memberCountInState",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/CreateVector3.lua")] = {
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
                name = "x",
                type = "float",
            },
            [1] = {
                name = "y",
                type = "float",
            },
            [2] = {
                name = "z",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "vector3",
                type = "list",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/ForceVehicleCrash.lua")] = {
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
                name = "vehicle",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/IntegerArithmetics_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Abs",
            },
            [1] = {
                name = "Add",
            },
            [2] = {
                name = "Div",
            },
            [3] = {
                name = "Exp",
            },
            [4] = {
                name = "Max",
            },
            [5] = {
                name = "Min",
            },
            [6] = {
                name = "Mod",
            },
            [7] = {
                name = "Mul",
            },
            [8] = {
                name = "Sub",
            },
        },
        controlInCount = 9,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
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
            [0] = {
                name = "Result",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/ListReader.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Read",
            },
            [1] = {
                name = "ResetRead",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "EndOfList",
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
                name = "Index",
                type = "int",
            },
            [1] = {
                name = "Input",
                type = "list",
            },
            [2] = {
                name = "Loop",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "CursorPos",
                type = "int",
            },
            [1] = {
                name = "Data",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/PositionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "StartOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "blendCurve",
                type = "archetype",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "endPos",
                type = "list",
            },
            [3] = {
                name = "endRot",
                type = "list",
            },
            [4] = {
                name = "endTarget",
                type = "entity",
            },
            [5] = {
                name = "players",
                type = "group",
            },
            [6] = {
                name = "targets",
                type = "group",
            },
            [7] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 8,
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
    metadataTable[GetPathID("Domino/System/RequestTutorial_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "OnDisplayed",
                delayed = true,
            },
            [1] = {
                name = "OnHidden",
                delayed = true,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "RequestFailure",
                delayed = false,
            },
            [4] = {
                name = "RequestSuccess",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bypassPreconditions",
                type = "bool",
            },
            [1] = {
                name = "tutorialdb",
                type = "database",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/SetEntity_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromEntity",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "entity",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Outposts/H5/H5_Outpost_01.H5_Outpost_01_QUEST_Warning.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "EnableTrucks",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "FailDistanceEntered",
                delayed = false,
            },
            [1] = {
                name = "WarningDistanceEntered",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Client",
                type = "entity",
            },
            [1] = {
                name = "FailDistance",
                type = "float",
            },
            [2] = {
                name = "Host",
                type = "entity",
            },
            [3] = {
                name = "isCoop",
                type = "bool",
            },
            [4] = {
                name = "use2d",
                type = "bool",
            },
            [5] = {
                name = "Vehicle",
                type = "entity",
            },
            [6] = {
                name = "WarningDistance",
                type = "float",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "CurrentWarnedPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "H5_Outpost_01_QUEST_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10";
    self.iNPCs = 0;
    self.eTarget01 = nil;
    self.eTarget02 = nil;
    self.oTruckObjective = {
        section = "Objectives",
        item = "H5_CultLocation_01_QUEST_B10_GOAL",
        id = "657055",
    };
    self.eDriver02 = nil;
    self.eDriver01 = nil;
    self.bTarget02_destroyed = false;
    self.bTarget01_destroyed = false;
    self.eHost = nil;
    self.eClient = nil;
    self.bEscapeStart = false;
    self.ePlayerAdded = nil;
    self.bCoop = false;
    self.bTarget01_disabled = false;
    self.bTarget02_disabled = false;
    self.iProgressID = 0;
    self.TruckCount = 0;
    self.box_H5_Outpost_01_QUEST_Warning_110 = cbox:CreateBox("Domino/User/FC5_main/FC5_Outposts/H5/H5_Outpost_01.H5_Outpost_01_QUEST_Warning.debug.lua");
    l0 = self.box_H5_Outpost_01_QUEST_Warning_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_H5_Outpost_01_QUEST_Warning_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|14872578");
    l0:SetConnections({
        -- FailDistanceEntered,
        [0] = self.f_box_H5_Outpost_01_QUEST_Warning_110_FailDistanceEntered,
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|31475252");
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
    self.box_VehicleDamageListener_v2_49 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|60618518");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_49_Destroyed,
        -- OnFire,
        [8] = self.f_box_VehicleDamageListener_v2_49_OnFire,
    });
    self.box_Delay_v5_151 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|107655539");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_151_TimeElapsed,
    });
    self.box_Delay_v5_3 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|111175358");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_3_TimeElapsed,
    });
    self.box_HealthListener_v6_20 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|123010712");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_20_Killed,
    });
    self.box_PlayDialog_v6_122 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|165534070");
    l0:SetConnections({
    });
    self.box_MultipleOR_139 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|206083972");
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
        [0] = self.f_box_MultipleOR_139_Out,
    });
    self.box_MultipleOR_54 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|215284483");
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
        [0] = self.f_box_MultipleOR_54_Out,
    });
    self.box_StateListener_v2_138 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|224541292");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_138_StateStart,
    });
    self.box_MultipleAND_v2_77 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|242468397");
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
        [0] = self.f_box_MultipleAND_v2_77_Out,
    });
    self.box_MultipleAND_v2_67 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|278981315");
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
        [0] = self.f_box_MultipleAND_v2_67_Out,
    });
    self.box_MultipleOR_147 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|333111342");
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
        [0] = self.f_box_MultipleOR_147_Out,
    });
    self.box_OnceOnly_v3_14 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|352482655");
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
                [0] = self.f_box_OnceOnly_v3_14_Out_0,
            },
            count = 2,
        },
    });
    self.box_Bind_v4_40 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|360279909");
    l0:SetConnections({
    });
    self.box_VehicleListener_v3_98 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|418148943");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_98_OnSit,
    });
    self.box_MultipleOR_176 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|431502849");
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
        [0] = self.f_box_MultipleOR_176_Out,
    });
    self.box_SpawnAI_42 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|519324257");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_42_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_42_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_42_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_42_Success,
    });
    self.box_Bind_v4_75 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|615470428");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_75_Bound,
    });
    self.box_CoopActivePlayers_87 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|620178857");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_87_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_87_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_87_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_87_TwoPlayers,
    });
    self.box_MultipleOR_96 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|622988380");
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
        [0] = self.f_box_MultipleOR_96_Out,
    });
    self.box_SpawnAI_11 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|645792288");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_11_Fail,
    });
    self.box_MultipleOR_109 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|692667120");
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
        [0] = self.f_box_MultipleOR_109_Out,
    });
    self.box_ListReader_73 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|692812867");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_73_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_73_Out,
    });
    self.box_OnceOnly_v3_33 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|730671909");
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
    self.box_MultipleOR_158 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|749161221");
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
        [0] = self.f_box_MultipleOR_158_Out,
    });
    self.box_MultipleOR_163 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|776700063");
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
        [0] = self.f_box_MultipleOR_163_Out,
    });
    self.box_PlayDialog_v6_2 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|786161156");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_16 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|824878073");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_16_SomeoneNear,
    });
    self.box_MultipleOR_95 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|885187780");
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
        [0] = self.f_box_MultipleOR_95_Out,
    });
    self.box_VehicleListener_v3_140 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|885454457");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_140_OnSit,
    });
    self.box_RequestTutorial_v3_18 = cbox:CreateBox("Domino/System/RequestTutorial_v3.lua");
    l0 = self.box_RequestTutorial_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestTutorial_v3_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|897819476");
    l0:SetConnections({
    });
    self.box_ActivityObjectiveTimerListener_64 = cbox:CreateBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
    l0 = self.box_ActivityObjectiveTimerListener_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveTimerListener_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|904092282");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveTimerListener_64_Enabled,
        -- OnTime,
        [2] = self.f_box_ActivityObjectiveTimerListener_64_OnTime,
    });
    self.box_EntityStatusListener_27 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|949225690");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_27_Unloaded,
    });
    self.box_SpawnAI_9 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|969858700");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_9_Fail,
    });
    self.box_VehicleDamageListener_v2_47 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1019932729");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_47_Destroyed,
        -- OnFire,
        [8] = self.f_box_VehicleDamageListener_v2_47_OnFire,
    });
    self.box_OnceOnly_v3_166 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1032488287");
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
                [0] = self.f_box_OnceOnly_v3_166_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_157 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1081197868");
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
        [0] = self.f_box_MultipleOR_157_Out,
    });
    self.box_PlayDialog_v6_121 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1085506117");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_35 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1091176365");
    l0:SetConnections({
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_35_AllNear,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_35_Enabled,
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1099325551");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_OnceOnly_v3_155 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1109455421");
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
                [0] = self.f_box_OnceOnly_v3_155_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_59 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1259629434");
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
        [0] = self.f_box_MultipleOR_59_Out,
    });
    self.box_ActivityInitialized_60 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1262010252");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_60_Out,
    });
    self.box_PositionModifier_v2_143 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1275737909");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_143_Done,
    });
    self.box_ExitZoneWarningListener_v3_133 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1294085191");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_133_FailingZoneEntered,
    });
    self.box_ListReader_92 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1306578330");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_92_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_92_Out,
    });
    self.box_ActivityAcknowledgeGate_58 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1311436735");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_58_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_58_Reloaded,
    });
    self.box_MultipleOR_160 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1323804872");
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
        [0] = self.f_box_MultipleOR_160_Out,
    });
    self.box_PositionModifier_v2_141 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1323863633");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_141_Done,
    });
    self.box_Delay_v5_97 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1346381833");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_97_TimeElapsed,
    });
    self.box_MultipleOR_71 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1359944740");
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
        [0] = self.f_box_MultipleOR_71_Out,
    });
    self.box_StartCelebration_7 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1419559234");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_7_Ended,
    });
    self.box_ListReader_74 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1473068410");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_74_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_74_Out,
    });
    self.box_VehicleListener_v3_108 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1495149778");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_108_OnSit,
    });
    self.box_MultipleOR_117 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1556267715");
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
        [0] = self.f_box_MultipleOR_117_Out,
    });
    self.box_Delay_v5_126 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1589746720");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_126_TimeElapsed,
    });
    self.box_MultipleOR_161 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1590903015");
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
        [0] = self.f_box_MultipleOR_161_Out,
    });
    self.box_ProximityTrigger_v2_23 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1616777197");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_23_OnOccupied,
    });
    self.box_Bind_v4_41 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1653676837");
    l0:SetConnections({
    });
    self.box_MultipleOR_153 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1656326055");
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
        [0] = self.f_box_MultipleOR_153_Out,
    });
    self.box_HealthListener_v6_101 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1693380827");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_101_Killed,
    });
    self.box_MultipleOR_177 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1708127253");
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
        [0] = self.f_box_MultipleOR_177_Out,
    });
    self.box_PlayDialog_v6_123 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1838364448");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_123_Finished,
    });
    self.box_MultipleAND_v2_72 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1845215345");
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
        [0] = self.f_box_MultipleAND_v2_72_Out,
    });
    self.box_SpawnAI_10 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1870930918");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_10_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_10_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_10_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_10_Success,
    });
    self.box_EntityStatusListener_28 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1883636067");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_28_Unloaded,
    });
    self.box_Bind_v4_62 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1965131467");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_62_Bound,
    });
    self.box_H5_Outpost_01_QUEST_Warning_107 = cbox:CreateBox("Domino/User/FC5_main/FC5_Outposts/H5/H5_Outpost_01.H5_Outpost_01_QUEST_Warning.debug.lua");
    l0 = self.box_H5_Outpost_01_QUEST_Warning_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_H5_Outpost_01_QUEST_Warning_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1969433172");
    l0:SetConnections({
        -- FailDistanceEntered,
        [0] = self.f_box_H5_Outpost_01_QUEST_Warning_107_FailDistanceEntered,
    });
    self.box_VehicleListener_v3_83 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1986715110");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_83_OnSit,
    });
    self.box_Delay_v5_84 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2004239421");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_84_TimeElapsed,
    });
    self.box_MultipleOR_162 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2009000799");
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
        [0] = self.f_box_MultipleOR_162_Out,
    });
    self.box_OnceOnly_v3_167 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2016535195");
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
                [0] = self.f_box_OnceOnly_v3_167_Out_0,
            },
            count = 2,
        },
    });
    self.box_ListReader_100 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2050911739");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_100_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_100_Out,
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2071381973");
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
    self.box_Delay_v5_174 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2113199585");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_174_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1567204871", "1567204871", "H5_Outpost_01_QUEST_B10", "In", "box_OutputOrder_v2_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_101();
    l0 = self.box_HealthListener_v6_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1777440234", "1777440234", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_19.Out", "box_HealthListener_v6_101.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_20();
    l0 = self.box_HealthListener_v6_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1631972663", "1631972663", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_19.Out", "box_HealthListener_v6_20.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_16();
    l0 = self.box_ProximityRadiusListener_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1585293154", "1585293154", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_19.Out", "box_ProximityRadiusListener_v3_16.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_27();
    l0 = self.box_EntityStatusListener_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2086889355", "2086889355", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_19.Out", "box_EntityStatusListener_27.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_28();
    l0 = self.box_EntityStatusListener_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1939038015", "1939038015", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_19.Out", "box_EntityStatusListener_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_23();
    l0 = self.box_ProximityTrigger_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1038906467", "1038906467", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_19.Out", "box_ProximityTrigger_v2_23.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_6()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|321562051", "321562051", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_19.Out", "box_CoopActivePlayers_87.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_19_Out_7()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2044144011", "2044144011", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_19.Out", "box_MultipleOR_161.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_19_Out_8()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|767884871", "767884871", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_19.Out", "box_MultipleOR_162.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_19_Out_9()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|820500235", "820500235", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_19.Out", "box_MultipleOR_109.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_19_Out_10()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|940149953", "940149953", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_19.Out", "box_MultipleOR_163.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_137_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_133();
    l0 = self.box_ExitZoneWarningListener_v3_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|11785675", "11785675", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_137.Out", "box_ExitZoneWarningListener_v3_133.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_179_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1006332933", "1006332933", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_179.Out", "box_MultipleOR_176.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_180_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|719134630", "719134630", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_180.Out", "box_MultipleOR_177.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_101();
    l0 = self.box_HealthListener_v6_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1223884107", "1223884107", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_17.Out", "box_HealthListener_v6_101.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_20();
    l0 = self.box_HealthListener_v6_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2099439715", "2099439715", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_17.Out", "box_HealthListener_v6_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_16();
    l0 = self.box_ProximityRadiusListener_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1110892532", "1110892532", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_17.Out", "box_ProximityRadiusListener_v3_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_27();
    l0 = self.box_EntityStatusListener_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|962349303", "962349303", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_17.Out", "box_EntityStatusListener_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_28();
    l0 = self.box_EntityStatusListener_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1043998477", "1043998477", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_17.Out", "box_EntityStatusListener_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_108();
    l0 = self.box_VehicleListener_v3_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|100815836", "100815836", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_17.Out", "box_VehicleListener_v3_108.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_140();
    l0 = self.box_VehicleListener_v3_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|705861906", "705861906", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_17.Out", "box_VehicleListener_v3_140.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_82_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|151661764", "151661764", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_82.Out", "box_OutputOrder_v2_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_127_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_8();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|254052271", "254052271", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_127.Out", "box_RandomFloat_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_128_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_123();
    l0 = self.box_PlayDialog_v6_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2004997382", "2004997382", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_128.Out", "box_PlayDialog_v6_123.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_129_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_125();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1113863219", "1113863219", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_129.Out", "box_RandomFloat_v2_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_112_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_52();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|256579090", "256579090", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_112.Out", "box_Print_v2_52.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_165_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_131();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|818808893", "818808893", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_165.Out", "box_OutputOrder_v2_131.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_114_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2010059052", "2010059052", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_114.Out", "box_MultipleOR_161.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1621186814", "1621186814", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_114.Out", "box_MultipleOR_176.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_164_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_159();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|661394930", "661394930", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_164.Out", "box_OutputOrder_v2_159.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_115_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|280673189", "280673189", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_115.Out", "box_MultipleOR_162.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1101699462", "1101699462", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_115.Out", "box_MultipleOR_177.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_113_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_84();
    l0 = self.box_Delay_v5_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1130797287", "1130797287", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_113.Out", "box_Delay_v5_84.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_57_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_49();
    l0 = self.box_VehicleDamageListener_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|110588297", "110588297", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_57.Out", "box_VehicleDamageListener_v2_49.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_172_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_47();
    l0 = self.box_VehicleDamageListener_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|578322612", "578322612", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_172.Out", "box_VehicleDamageListener_v2_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_93_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_23();
    l0 = self.box_ProximityTrigger_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|732794341", "732794341", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_93.Out", "box_ProximityTrigger_v2_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_93_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_85();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|97743294", "97743294", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_93.Out", "box_UseContextualActionModifier_v3_85.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_93_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_90();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1678219564", "1678219564", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_93.Out", "box_UseContextualActionModifier_v3_90.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_93_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_97();
    l0 = self.box_Delay_v5_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|817442074", "817442074", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_93.Out", "box_Delay_v5_97.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_111_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_35();
    l0 = self.box_ProximityRadiusListener_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|613257494", "613257494", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_111.Out", "box_ProximityRadiusListener_v3_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_H5_Outpost_01_QUEST_Warning_110_FailDistanceEntered()
    local l0, l1;
    l0 = self.box_H5_Outpost_01_QUEST_Warning_110;
    l1 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2130472668", "2130472668", "H5_Outpost_01_QUEST_B10", "box_H5_Outpost_01_QUEST_Warning_110.FailDistanceEntered", "box_MultipleOR_71.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CreateVector3_142_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_142_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_141();
    l0 = self.box_PositionModifier_v2_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1409674646", "1409674646", "H5_Outpost_01_QUEST_B10", "box_CreateVector3_142.Out", "box_PositionModifier_v2_141.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_112();
    l0 = self.box_MultipleOR_53;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|895493676", "895493676", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_53.Out", "box_Simple_Node_112.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_49_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_49;
    l1 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1181424400", "1181424400", "H5_Outpost_01_QUEST_B10", "box_VehicleDamageListener_v2_49.Destroyed", "box_MultipleOR_139.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_49_OnFire()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_49;
    l1 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1271125796", "1271125796", "H5_Outpost_01_QUEST_B10", "box_VehicleDamageListener_v2_49.OnFire", "box_MultipleOR_139.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AddActivityObjectiveProgress_v2_51_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_51_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1111482846", "1111482846", "H5_Outpost_01_QUEST_B10", "box_AddActivityObjectiveProgress_v2_51.Out", "box_OutputOrder_v2_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_32_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_41();
    l0 = self.box_Bind_v4_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2066069901", "2066069901", "H5_Outpost_01_QUEST_B10", "box_ActivityObjectiveMarkerModifier_v3_32.Enabled", "box_Bind_v4_41.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_151_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_154();
    l0 = self.box_Delay_v5_151;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1813829810", "1813829810", "H5_Outpost_01_QUEST_B10", "box_Delay_v5_151.TimeElapsed", "box_OutputOrder_v2_154.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_3_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_122();
    l0 = self.box_Delay_v5_3;
    l1 = self.box_PlayDialog_v6_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|261934194", "261934194", "H5_Outpost_01_QUEST_B10", "box_Delay_v5_3.TimeElapsed", "box_PlayDialog_v6_122.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_20_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_21();
    l0 = self.box_HealthListener_v6_20;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1513909024", "1513909024", "H5_Outpost_01_QUEST_B10", "box_HealthListener_v6_20.Killed", "box_Compare_Boolean_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_30();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|609970910", "609970910", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_37.Out", "box_ActivityObjectiveMarkerModifier_v3_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1702600822", "1702600822", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_37.Out", "box_Delay_v5_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_37_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|403986911", "403986911", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_37.Out", "box_OutputOrder_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_128();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2019583641", "2019583641", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_37.Out", "box_Simple_Node_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListReader_74();
    l0 = self.box_ListReader_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|67796809", "67796809", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_68.Out", "box_ListReader_74.Read", clone:GetLuaBox(), l0:GetLuaBox());
    -- Read
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListReader_73();
    l0 = self.box_ListReader_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1521694538", "1521694538", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_68.Out", "box_ListReader_73.Read", clone:GetLuaBox(), l0:GetLuaBox());
    -- Read
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_139_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_50();
    l0 = self.box_MultipleOR_139;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1024918243", "1024918243", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_139.Out", "box_ActivityObjectiveMarkerModifier_v3_50.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_125_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_125_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_126();
    l0 = self.box_Delay_v5_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1272771241", "1272771241", "H5_Outpost_01_QUEST_B10", "box_RandomFloat_v2_125.Out", "box_Delay_v5_126.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_55();
    l0 = self.box_MultipleOR_54;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|556000676", "556000676", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_54.Out", "box_IntegerArithmetics_v2_55.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_173_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_174();
    l0 = self.box_Delay_v5_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1866075183", "1866075183", "H5_Outpost_01_QUEST_B10", "box_Compare_Integers_173.A_ge_B", "box_Delay_v5_174.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_StateListener_v2_138_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_91();
    l0 = self.box_StateListener_v2_138;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|835344024", "835344024", "H5_Outpost_01_QUEST_B10", "box_StateListener_v2_138.StateStart", "box_OutputOrder_v2_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_170_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_171();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1876625099", "1876625099", "H5_Outpost_01_QUEST_B10", "box_VehicleSeatModifier_v2_170.Locked", "box_VehicleSeatModifier_v2_171.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_77_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_66();
    l0 = self.box_MultipleAND_v2_77;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|884702408", "884702408", "H5_Outpost_01_QUEST_B10", "box_MultipleAND_v2_77.Out", "box_OutputOrder_v2_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_134();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1171538141", "1171538141", "H5_Outpost_01_QUEST_B10", "box_AddActivityObjective_v2_61.Out", "box_OutputOrder_v2_134.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_67_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_MultipleAND_v2_67;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1602188390", "1602188390", "H5_Outpost_01_QUEST_B10", "box_MultipleAND_v2_67.Out", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_50_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_88();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|807477555", "807477555", "H5_Outpost_01_QUEST_B10", "box_ActivityObjectiveMarkerModifier_v3_50.Disabled", "box_SetBoolean_v2_88.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_147_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = self.box_MultipleOR_147;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|888581134", "888581134", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_147.Out", "box_OutputOrder_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_14_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_130();
    l0 = self.box_OnceOnly_v3_14;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|470912010", "470912010", "H5_Outpost_01_QUEST_B10", "box_OnceOnly_v3_14.Out", "box_AddActivityObjective_v2_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_105_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_H5_Outpost_01_QUEST_Warning_110();
    l0 = self.box_H5_Outpost_01_QUEST_Warning_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|783665381", "783665381", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_105.Out", "box_H5_Outpost_01_QUEST_Warning_110.EnableTrucks", clone:GetLuaBox(), l0:GetLuaBox());
    -- EnableTrucks
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_105_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_H5_Outpost_01_QUEST_Warning_107();
    l0 = self.box_H5_Outpost_01_QUEST_Warning_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2097571643", "2097571643", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_105.Out", "box_H5_Outpost_01_QUEST_Warning_107.EnableTrucks", clone:GetLuaBox(), l0:GetLuaBox());
    -- EnableTrucks
    l0:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_15_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_15_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceVehicleCrash_103();
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1224496523", "1224496523", "H5_Outpost_01_QUEST_B10", "box_RandomFloat_v2_15.Out", "box_ForceVehicleCrash_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_159_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1195856100", "1195856100", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_159.Out", "box_MultipleOR_163.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_159_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2023288421", "2023288421", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_159.Out", "box_MultipleOR_160.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_154_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1183824202", "1183824202", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_154.Out", "box_MultipleOR_153.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_154_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_35();
    l0 = self.box_ProximityRadiusListener_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|214417780", "214417780", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_154.Out", "box_ProximityRadiusListener_v3_35.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_VehicleListener_v3_98_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_72();
    l0 = self.box_VehicleListener_v3_98;
    l1 = self.box_MultipleAND_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|82797257", "82797257", "H5_Outpost_01_QUEST_B10", "box_VehicleListener_v3_98.OnSit", "box_MultipleAND_v2_72.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_SetBoolean_v2_22_Out()
    self:OnExit_box_SetBoolean_v2_22_Out();
end;

function export:f_box_MultipleOR_176_Out()
    local params, l0, l1;
    params = self:OnEnter_box_H5_Outpost_01_QUEST_Warning_110();
    l0 = self.box_MultipleOR_176;
    l1 = self.box_H5_Outpost_01_QUEST_Warning_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|662928967", "662928967", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_176.Out", "box_H5_Outpost_01_QUEST_Warning_110.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_10();
    l0 = self.box_SpawnAI_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|909682172", "909682172", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_45.Out", "box_SpawnAI_10.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_42();
    l0 = self.box_SpawnAI_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|159368790", "159368790", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_45.Out", "box_SpawnAI_42.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_66_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_172();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1653760659", "1653760659", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_66.Out", "box_Simple_Node_172.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_66_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_75();
    l0 = self.box_Bind_v4_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|887402317", "887402317", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_66.Out", "box_Bind_v4_75.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_85_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_89();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|321233074", "321233074", "H5_Outpost_01_QUEST_B10", "box_UseContextualActionModifier_v3_85.Disabled", "box_UseContextualActionModifier_v3_89.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_149_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_149_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_165();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|645093351", "645093351", "H5_Outpost_01_QUEST_B10", "box_SetBoolean_v2_149.Out", "box_Simple_Node_165.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_55_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_55_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|213167977", "213167977", "H5_Outpost_01_QUEST_B10", "box_IntegerArithmetics_v2_55.Out", "box_SetActivityObjectiveProgress_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_42_Fail()
    local l0, l1;
    l0 = self.box_SpawnAI_42;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1862000737", "1862000737", "H5_Outpost_01_QUEST_B10", "box_SpawnAI_42.Fail", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_42_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_42_Spawned();
    params = self:OnEnter_box_OutputOrder_v2_99();
    l0 = self.box_SpawnAI_42;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|760894920", "760894920", "H5_Outpost_01_QUEST_B10", "box_SpawnAI_42.Spawned", "box_OutputOrder_v2_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_25();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|977061925", "977061925", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_81.Out", "box_EndActivityObjective_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1237264184", "1237264184", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_81.Out", "box_OutputOrder_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_168_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_169();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|905701804", "905701804", "H5_Outpost_01_QUEST_B10", "box_VehicleSeatModifier_v2_168.Locked", "box_VehicleSeatModifier_v2_169.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_75_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_CreateVector3_144();
    l0 = self.box_Bind_v4_75;
    l1 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1223204100", "1223204100", "H5_Outpost_01_QUEST_B10", "box_Bind_v4_75.Bound", "box_CreateVector3_144.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_87_OnePlayer()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_87_OnePlayer();
    l0 = self.box_CoopActivePlayers_87;
    l1 = self.box_MultipleOR_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1709531507", "1709531507", "H5_Outpost_01_QUEST_B10", "box_CoopActivePlayers_87.OnePlayer", "box_MultipleOR_117.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_87_PlayerAdded()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_87_PlayerAdded();
    l0 = self.box_CoopActivePlayers_87;
    l1 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1834371179", "1834371179", "H5_Outpost_01_QUEST_B10", "box_CoopActivePlayers_87.PlayerAdded", "box_MultipleOR_95.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CoopActivePlayers_87_PlayerRemoved()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_87_PlayerRemoved();
    params = self:OnEnter_box_Simple_Node_104();
    l0 = self.box_CoopActivePlayers_87;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1093415495", "1093415495", "H5_Outpost_01_QUEST_B10", "box_CoopActivePlayers_87.PlayerRemoved", "box_Simple_Node_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_87_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_87_TwoPlayers();
    params = self:OnEnter_box_OutputOrder_v2_116();
    l0 = self.box_CoopActivePlayers_87;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1905961125", "1905961125", "H5_Outpost_01_QUEST_B10", "box_CoopActivePlayers_87.TwoPlayers", "box_OutputOrder_v2_116.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_96_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_112();
    l0 = self.box_MultipleOR_96;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|994462227", "994462227", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_96.Out", "box_Simple_Node_112.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|404247544", "404247544", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_12.Out", "box_MultipleOR_147.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_48_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_36();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1382901381", "1382901381", "H5_Outpost_01_QUEST_B10", "box_ActivityObjectiveMarkerModifier_v3_48.Disabled", "box_SetBoolean_v2_36.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_11_Fail()
    local l0, l1;
    l0 = self.box_SpawnAI_11;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|788601785", "788601785", "H5_Outpost_01_QUEST_B10", "box_SpawnAI_11.Fail", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_88_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_88_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_156();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1862813411", "1862813411", "H5_Outpost_01_QUEST_B10", "box_SetBoolean_v2_88.Out", "box_Compare_Boolean_156.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_109_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleDamageListener_v2_49();
    l0 = self.box_MultipleOR_109;
    l1 = self.box_VehicleDamageListener_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2147182507", "2147182507", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_109.Out", "box_VehicleDamageListener_v2_49.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ListReader_73_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_78();
    l0 = self.box_ListReader_73;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1124127858", "1124127858", "H5_Outpost_01_QUEST_B10", "box_ListReader_73.Out", "box_SetEntity_v2_78.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_33_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_82();
    l0 = self.box_OnceOnly_v3_33;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2120751241", "2120751241", "H5_Outpost_01_QUEST_B10", "box_OnceOnly_v3_33.Out", "box_Simple_Node_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_30_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_40();
    l0 = self.box_Bind_v4_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|582515864", "582515864", "H5_Outpost_01_QUEST_B10", "box_ActivityObjectiveMarkerModifier_v3_30.Enabled", "box_Bind_v4_40.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_118_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_124();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|264906175", "264906175", "H5_Outpost_01_QUEST_B10", "box_ActivityObjectiveMarkerModifier_v3_118.Enabled", "box_OutputOrder_v2_124.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_158_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_158;
    l1 = self.box_OnceOnly_v3_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1883923974", "1883923974", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_158.Out", "box_OnceOnly_v3_166.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1793290700", "1793290700", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_5.Out", "box_ActivityAcknowledgeGate_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|616764900", "616764900", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_5.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_163_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleDamageListener_v2_47();
    l0 = self.box_MultipleOR_163;
    l1 = self.box_VehicleDamageListener_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|102276284", "102276284", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_163.Out", "box_VehicleDamageListener_v2_47.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_16_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_138();
    l0 = self.box_ProximityRadiusListener_v3_16;
    l1 = self.box_StateListener_v2_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|647063592", "647063592", "H5_Outpost_01_QUEST_B10", "box_ProximityRadiusListener_v3_16.SomeoneNear", "box_StateListener_v2_138.Combat", l0:GetLuaBox(), l1:GetLuaBox());
    -- Combat
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_136_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_31();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|915263014", "915263014", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_136.Out", "box_AddActivityObjective_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_136_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_137();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1105830178", "1105830178", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_136.Out", "box_Simple_Node_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_90_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_94();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2001989781", "2001989781", "H5_Outpost_01_QUEST_B10", "box_UseContextualActionModifier_v3_90.Disabled", "box_UseContextualActionModifier_v3_94.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_95_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_22();
    l0 = self.box_MultipleOR_95;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|559689242", "559689242", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_95.Out", "box_SetBoolean_v2_22.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_140_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_148();
    l0 = self.box_VehicleListener_v3_140;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1143782056", "1143782056", "H5_Outpost_01_QUEST_B10", "box_VehicleListener_v3_140.OnSit", "box_SetBoolean_v2_148.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveTimerListener_64_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_118();
    l0 = self.box_ActivityObjectiveTimerListener_64;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|386502309", "386502309", "H5_Outpost_01_QUEST_B10", "box_ActivityObjectiveTimerListener_64.Enabled", "box_ActivityObjectiveMarkerModifier_v3_118.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveTimerListener_64_OnTime()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_119();
    l0 = self.box_ActivityObjectiveTimerListener_64;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|823221860", "823221860", "H5_Outpost_01_QUEST_B10", "box_ActivityObjectiveTimerListener_64.OnTime", "box_Simple_Node_119.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|304489482", "304489482", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_39.Out", "box_OutputOrder_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_86();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|473582139", "473582139", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_39.Out", "box_ActivityRetry_86.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_27_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_27;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1113582291", "1113582291", "H5_Outpost_01_QUEST_B10", "box_EntityStatusListener_27.Unloaded", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_104_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_22();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2086669842", "2086669842", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_104.Out", "box_SetBoolean_v2_22.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_9_Fail()
    local l0, l1;
    l0 = self.box_SpawnAI_9;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|285412805", "285412805", "H5_Outpost_01_QUEST_B10", "box_SpawnAI_9.Fail", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_69_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_69_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_67();
    l0 = self.box_MultipleAND_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1725788111", "1725788111", "H5_Outpost_01_QUEST_B10", "box_SetEntity_v2_69.Out", "box_MultipleAND_v2_67.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_VehicleDamageListener_v2_47_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_47;
    l1 = self.box_MultipleOR_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1977522682", "1977522682", "H5_Outpost_01_QUEST_B10", "box_VehicleDamageListener_v2_47.Destroyed", "box_MultipleOR_160.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_47_OnFire()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_47;
    l1 = self.box_MultipleOR_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1190000349", "1190000349", "H5_Outpost_01_QUEST_B10", "box_VehicleDamageListener_v2_47.OnFire", "box_MultipleOR_160.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_124_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_127();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|420348474", "420348474", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_124.Out", "box_Simple_Node_127.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_124_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_65();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2116563591", "2116563591", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_124.Out", "box_Print_v2_65.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_166_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_166;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|290071478", "290071478", "H5_Outpost_01_QUEST_B10", "box_OnceOnly_v3_166.Out", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_157_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_157;
    l1 = self.box_OnceOnly_v3_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1168007004", "1168007004", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_157.Out", "box_OnceOnly_v3_167.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_35_AllNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_152();
    l0 = self.box_ProximityRadiusListener_v3_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|741360636", "741360636", "H5_Outpost_01_QUEST_B10", "box_ProximityRadiusListener_v3_35.AllNear", "box_OutputOrder_v2_152.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_35_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_151();
    l0 = self.box_ProximityRadiusListener_v3_35;
    l1 = self.box_Delay_v5_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1556529266", "1556529266", "H5_Outpost_01_QUEST_B10", "box_ProximityRadiusListener_v3_35.Enabled", "box_Delay_v5_151.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_152_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_151();
    l0 = self.box_Delay_v5_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1554401961", "1554401961", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_152.Out", "box_Delay_v5_151.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_152_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1141278604", "1141278604", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_152.Out", "box_MultipleOR_153.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_32();
    l0 = self.box_Delay_v5_34;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|839086484", "839086484", "H5_Outpost_01_QUEST_B10", "box_Delay_v5_34.TimeElapsed", "box_ActivityObjectiveMarkerModifier_v3_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_145_Out()
    self:OnExit_box_SetBoolean_v2_145_Out();
end;

function export:f_box_OnceOnly_v3_155_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = self.box_OnceOnly_v3_155;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|80746409", "80746409", "H5_Outpost_01_QUEST_B10", "box_OnceOnly_v3_155.Out", "box_OutputOrder_v2_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_89_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_89();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|325444140", "325444140", "H5_Outpost_01_QUEST_B10", "box_UseContextualActionModifier_v3_89.Enabled", "box_UseContextualActionModifier_v3_89.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_8_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_3();
    l0 = self.box_Delay_v5_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|159753636", "159753636", "H5_Outpost_01_QUEST_B10", "box_RandomFloat_v2_8.Out", "box_Delay_v5_3.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_148_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_148_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_164();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1875730135", "1875730135", "H5_Outpost_01_QUEST_B10", "box_SetBoolean_v2_148.Out", "box_Simple_Node_164.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_120_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_63();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1856905299", "1856905299", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_120.Out", "box_EndActivityObjective_v2_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_59_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_59;
    l1 = self.box_ActivityInitialized_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1003556904", "1003556904", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_59.Out", "box_ActivityInitialized_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityInitialized_60_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_ActivityInitialized_60;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|549231102", "549231102", "H5_Outpost_01_QUEST_B10", "box_ActivityInitialized_60.Out", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_7();
    l0 = self.box_StartCelebration_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1681951967", "1681951967", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_44.Out", "box_StartCelebration_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_43();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|448143460", "448143460", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_44.Out", "box_Print_v2_43.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_143_Done()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_98();
    l0 = self.box_PositionModifier_v2_143;
    l1 = self.box_VehicleListener_v3_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1815904961", "1815904961", "H5_Outpost_01_QUEST_B10", "box_PositionModifier_v2_143.Done", "box_VehicleListener_v3_98.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ExitZoneWarningListener_v3_133_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_135();
    l0 = self.box_ExitZoneWarningListener_v3_133;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1636443326", "1636443326", "H5_Outpost_01_QUEST_B10", "box_ExitZoneWarningListener_v3_133.FailingZoneEntered", "box_ActivityRetry_135.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListReader_92_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_46();
    l0 = self.box_ListReader_92;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2090878515", "2090878515", "H5_Outpost_01_QUEST_B10", "box_ListReader_92.Out", "box_SetEntity_v2_46.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_58_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_58;
    l1 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1536167869", "1536167869", "H5_Outpost_01_QUEST_B10", "box_ActivityAcknowledgeGate_58.Acknowledged", "box_MultipleOR_59.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_58_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_58;
    l1 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|667425132", "667425132", "H5_Outpost_01_QUEST_B10", "box_ActivityAcknowledgeGate_58.Reloaded", "box_MultipleOR_59.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AddActivityObjective_v2_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_51();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|613339112", "613339112", "H5_Outpost_01_QUEST_B10", "box_AddActivityObjective_v2_31.Out", "box_AddActivityObjectiveProgress_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_160_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_48();
    l0 = self.box_MultipleOR_160;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|211872973", "211872973", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_160.Out", "box_ActivityObjectiveMarkerModifier_v3_48.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_141_Done()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_83();
    l0 = self.box_PositionModifier_v2_141;
    l1 = self.box_VehicleListener_v3_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|668766594", "668766594", "H5_Outpost_01_QUEST_B10", "box_PositionModifier_v2_141.Done", "box_VehicleListener_v3_83.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_146_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_12();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|221999792", "221999792", "H5_Outpost_01_QUEST_B10", "box_Compare_Boolean_146.A_is_False", "box_Simple_Node_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_146_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_132();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2012860674", "2012860674", "H5_Outpost_01_QUEST_B10", "box_Compare_Boolean_146.A_is_True", "box_EndActivityObjective_v2_132.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_97_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_105();
    l0 = self.box_Delay_v5_97;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|970299938", "970299938", "H5_Outpost_01_QUEST_B10", "box_Delay_v5_97.TimeElapsed", "box_OutputOrder_v2_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_71_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_82();
    l0 = self.box_MultipleOR_71;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2114965286", "2114965286", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_71.Out", "box_Simple_Node_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_131_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1882351085", "1882351085", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_131.Out", "box_MultipleOR_109.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_131_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1745951044", "1745951044", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_131.Out", "box_MultipleOR_139.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ForceVehicleCrash_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_180();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2108344685", "2108344685", "H5_Outpost_01_QUEST_B10", "box_ForceVehicleCrash_26.Out", "box_Simple_Node_180.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_156_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_79();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|81385300", "81385300", "H5_Outpost_01_QUEST_B10", "box_Compare_Boolean_156.A_is_False", "box_OutputOrder_v2_79.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_156_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1465721163", "1465721163", "H5_Outpost_01_QUEST_B10", "box_Compare_Boolean_156.A_is_True", "box_MultipleOR_157.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_78_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_78_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_67();
    l0 = self.box_MultipleAND_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1503061692", "1503061692", "H5_Outpost_01_QUEST_B10", "box_SetEntity_v2_78.Out", "box_MultipleAND_v2_67.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_StartCelebration_7_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = self.box_StartCelebration_7;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|74250027", "74250027", "H5_Outpost_01_QUEST_B10", "box_StartCelebration_7.Ended", "box_ActivityEnd_4.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_36_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_36_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_150();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|429386692", "429386692", "H5_Outpost_01_QUEST_B10", "box_SetBoolean_v2_36.Out", "box_Compare_Boolean_150.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_102_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_15();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1232645709", "1232645709", "H5_Outpost_01_QUEST_B10", "box_Compare_Boolean_102.A_is_False", "box_RandomFloat_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_113();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1237003134", "1237003134", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_76.Out", "box_Simple_Node_113.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_9();
    l0 = self.box_SpawnAI_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|877482057", "877482057", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_76.Out", "box_SpawnAI_9.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_11();
    l0 = self.box_SpawnAI_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1680339466", "1680339466", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_76.Out", "box_SpawnAI_11.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_119_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|283519962", "283519962", "H5_Outpost_01_QUEST_B10", "box_Simple_Node_119.Out", "box_Simple_Node_120.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListReader_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_69();
    l0 = self.box_ListReader_74;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1275944947", "1275944947", "H5_Outpost_01_QUEST_B10", "box_ListReader_74.Out", "box_SetEntity_v2_69.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_99_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListReader_92();
    l0 = self.box_ListReader_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|689415144", "689415144", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_99.Out", "box_ListReader_92.Read", clone:GetLuaBox(), l0:GetLuaBox());
    -- Read
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_99_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListReader_100();
    l0 = self.box_ListReader_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1925610456", "1925610456", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_99.Out", "box_ListReader_100.Read", clone:GetLuaBox(), l0:GetLuaBox());
    -- Read
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_116_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1896265339", "1896265339", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_116.Out", "box_MultipleOR_117.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_116_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1304343817", "1304343817", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_116.Out", "box_MultipleOR_95.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleListener_v3_108_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_149();
    l0 = self.box_VehicleListener_v3_108;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1331588336", "1331588336", "H5_Outpost_01_QUEST_B10", "box_VehicleListener_v3_108.OnSit", "box_SetBoolean_v2_149.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_1_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_173();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1671772870", "1671772870", "H5_Outpost_01_QUEST_B10", "box_SetActivityObjectiveProgress_v2_1.Out", "box_Compare_Integers_173.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_117_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_61();
    l0 = self.box_MultipleOR_117;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|775765485", "775765485", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_117.Out", "box_AddActivityObjective_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_126_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_121();
    l0 = self.box_Delay_v5_126;
    l1 = self.box_PlayDialog_v6_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|399004502", "399004502", "H5_Outpost_01_QUEST_B10", "box_Delay_v5_126.TimeElapsed", "box_PlayDialog_v6_121.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_CreateVector3_144_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_144_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_143();
    l0 = self.box_PositionModifier_v2_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1761570264", "1761570264", "H5_Outpost_01_QUEST_B10", "box_CreateVector3_144.Out", "box_PositionModifier_v2_143.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_161_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_108();
    l0 = self.box_MultipleOR_161;
    l1 = self.box_VehicleListener_v3_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|385123258", "385123258", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_161.Out", "box_VehicleListener_v3_108.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_23_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_23;
    l1 = self.box_OnceOnly_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1569472099", "1569472099", "H5_Outpost_01_QUEST_B10", "box_ProximityTrigger_v2_23.OnOccupied", "box_OnceOnly_v3_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_80_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_80_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_77();
    l0 = self.box_MultipleAND_v2_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|471227496", "471227496", "H5_Outpost_01_QUEST_B10", "box_SetEntity_v2_80.Out", "box_MultipleAND_v2_77.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleOR_153_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_153;
    l1 = self.box_OnceOnly_v3_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1066909823", "1066909823", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_153.Out", "box_OnceOnly_v3_155.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndActivityObjective_v2_63_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_136();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1410117210", "1410117210", "H5_Outpost_01_QUEST_B10", "box_EndActivityObjective_v2_63.Out", "box_OutputOrder_v2_136.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_101_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_102();
    l0 = self.box_HealthListener_v6_101;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1347037107", "1347037107", "H5_Outpost_01_QUEST_B10", "box_HealthListener_v6_101.Killed", "box_Compare_Boolean_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_177_Out()
    local params, l0, l1;
    params = self:OnEnter_box_H5_Outpost_01_QUEST_Warning_107();
    l0 = self.box_MultipleOR_177;
    l1 = self.box_H5_Outpost_01_QUEST_Warning_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|133628434", "133628434", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_177.Out", "box_H5_Outpost_01_QUEST_Warning_107.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ForceVehicleCrash_103_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_179();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|478231884", "478231884", "H5_Outpost_01_QUEST_B10", "box_ForceVehicleCrash_103.Out", "box_Simple_Node_179.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_111();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|21339206", "21339206", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_13.Out", "box_Simple_Node_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_168();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1214972264", "1214972264", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_13.Out", "box_VehicleSeatModifier_v2_168.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_21_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_70();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1919931684", "1919931684", "H5_Outpost_01_QUEST_B10", "box_Compare_Boolean_21.A_is_False", "box_RandomFloat_v2_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_130_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_145();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|777249463", "777249463", "H5_Outpost_01_QUEST_B10", "box_AddActivityObjective_v2_130.Out", "box_SetBoolean_v2_145.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_94_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_94();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|65196125", "65196125", "H5_Outpost_01_QUEST_B10", "box_UseContextualActionModifier_v3_94.Enabled", "box_UseContextualActionModifier_v3_94.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_169_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_170();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1023196066", "1023196066", "H5_Outpost_01_QUEST_B10", "box_VehicleSeatModifier_v2_169.Locked", "box_VehicleSeatModifier_v2_170.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_123_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_2();
    l0 = self.box_PlayDialog_v6_123;
    l1 = self.box_PlayDialog_v6_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1793666081", "1793666081", "H5_Outpost_01_QUEST_B10", "box_PlayDialog_v6_123.Finished", "box_PlayDialog_v6_2.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_25_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_146();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1476333535", "1476333535", "H5_Outpost_01_QUEST_B10", "box_EndActivityObjective_v2_25.Out", "box_Compare_Boolean_146.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_72_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_MultipleAND_v2_72;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1947654776", "1947654776", "H5_Outpost_01_QUEST_B10", "box_MultipleAND_v2_72.Out", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_10_Fail()
    local l0, l1;
    l0 = self.box_SpawnAI_10;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1042144417", "1042144417", "H5_Outpost_01_QUEST_B10", "box_SpawnAI_10.Fail", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_10_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_10_Spawned();
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = self.box_SpawnAI_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1430096230", "1430096230", "H5_Outpost_01_QUEST_B10", "box_SpawnAI_10.Spawned", "box_OutputOrder_v2_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1794622703", "1794622703", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_38.Out", "box_CoopActivePlayers_87.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestTutorial_v3_18();
    l0 = self.box_RequestTutorial_v3_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|693643626", "693643626", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_38.Out", "box_RequestTutorial_v3_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_28_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_28;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|961278473", "961278473", "H5_Outpost_01_QUEST_B10", "box_EntityStatusListener_28.Unloaded", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_57();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|953351071", "953351071", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_56.Out", "box_Simple_Node_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_62();
    l0 = self.box_Bind_v4_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1946810749", "1946810749", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_56.Out", "box_Bind_v4_62.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_150_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_106();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1208854796", "1208854796", "H5_Outpost_01_QUEST_B10", "box_Compare_Boolean_150.A_is_False", "box_OutputOrder_v2_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_150_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|350328176", "350328176", "H5_Outpost_01_QUEST_B10", "box_Compare_Boolean_150.A_is_True", "box_MultipleOR_158.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Bind_v4_62_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_CreateVector3_142();
    l0 = self.box_Bind_v4_62;
    l1 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|689248231", "689248231", "H5_Outpost_01_QUEST_B10", "box_Bind_v4_62.Bound", "box_CreateVector3_142.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_134_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveTimerListener_64();
    l0 = self.box_ActivityObjectiveTimerListener_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1361819762", "1361819762", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_134.Out", "box_ActivityObjectiveTimerListener_64.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_134_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_133();
    l0 = self.box_ExitZoneWarningListener_v3_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1677214472", "1677214472", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_134.Out", "box_ExitZoneWarningListener_v3_133.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_H5_Outpost_01_QUEST_Warning_107_FailDistanceEntered()
    local l0, l1;
    l0 = self.box_H5_Outpost_01_QUEST_Warning_107;
    l1 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|510502856", "510502856", "H5_Outpost_01_QUEST_B10", "box_H5_Outpost_01_QUEST_Warning_107.FailDistanceEntered", "box_MultipleOR_71.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EndActivityObjective_v2_132_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|853389684", "853389684", "H5_Outpost_01_QUEST_B10", "box_EndActivityObjective_v2_132.Out", "box_MultipleOR_147.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleListener_v3_83_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_72();
    l0 = self.box_VehicleListener_v3_83;
    l1 = self.box_MultipleAND_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1850545281", "1850545281", "H5_Outpost_01_QUEST_B10", "box_VehicleListener_v3_83.OnSit", "box_MultipleAND_v2_72.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Delay_v5_84_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_Delay_v5_84;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1402101984", "1402101984", "H5_Outpost_01_QUEST_B10", "box_Delay_v5_84.TimeElapsed", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_79_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|380017424", "380017424", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_79.Out", "box_MultipleOR_157.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_79_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_114();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|658413054", "658413054", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_79.Out", "box_Simple_Node_114.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_162_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_140();
    l0 = self.box_MultipleOR_162;
    l1 = self.box_VehicleListener_v3_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|194508821", "194508821", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_162.Out", "box_VehicleListener_v3_140.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_167_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_167;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|447168766", "447168766", "H5_Outpost_01_QUEST_B10", "box_OnceOnly_v3_167.Out", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RandomFloat_v2_70_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_70_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceVehicleCrash_26();
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|156149409", "156149409", "H5_Outpost_01_QUEST_B10", "box_RandomFloat_v2_70.Out", "box_ForceVehicleCrash_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListReader_100_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_80();
    l0 = self.box_ListReader_100;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2037058547", "2037058547", "H5_Outpost_01_QUEST_B10", "box_ListReader_100.Out", "box_SetEntity_v2_80.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_29_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_29;
    l1 = self.box_OnceOnly_v3_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1751231735", "1751231735", "H5_Outpost_01_QUEST_B10", "box_MultipleOR_29.Out", "box_OnceOnly_v3_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_106_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1998588592", "1998588592", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_106.Out", "box_MultipleOR_158.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_106_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_115();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|935278007", "935278007", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_106.Out", "box_Simple_Node_115.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_93();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1959873277", "1959873277", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_91.Out", "box_OutputOrder_v2_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_129();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2033350315", "2033350315", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_91.Out", "box_Simple_Node_129.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_24();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1529103082", "1529103082", "H5_Outpost_01_QUEST_B10", "box_OutputOrder_v2_91.Out", "box_Print_v2_24.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_46_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_46_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_77();
    l0 = self.box_MultipleAND_v2_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2101340297", "2101340297", "H5_Outpost_01_QUEST_B10", "box_SetEntity_v2_46.Out", "box_MultipleAND_v2_77.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Delay_v5_174_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_81();
    l0 = self.box_Delay_v5_174;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1629166898", "1629166898", "H5_Outpost_01_QUEST_B10", "box_Delay_v5_174.TimeElapsed", "box_OutputOrder_v2_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|@DisableAIListeners");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 11,
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
                [2] = self.f_box_OutputOrder_v2_19_Out_2,
                [3] = self.f_box_OutputOrder_v2_19_Out_3,
                [4] = self.f_box_OutputOrder_v2_19_Out_4,
                [5] = self.f_box_OutputOrder_v2_19_Out_5,
                [6] = self.f_box_OutputOrder_v2_19_Out_6,
                [7] = self.f_box_OutputOrder_v2_19_Out_7,
                [8] = self.f_box_OutputOrder_v2_19_Out_8,
                [9] = self.f_box_OutputOrder_v2_19_Out_9,
                [10] = self.f_box_OutputOrder_v2_19_Out_10,
            },
            count = 11,
        },
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|@DisableWarn");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_137_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|@driver01_dead");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_179_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|@driver02_dead");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_180_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|@EnableAIListeners");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
                [3] = self.f_box_OutputOrder_v2_17_Out_3,
                [4] = self.f_box_OutputOrder_v2_17_Out_4,
                [5] = self.f_box_OutputOrder_v2_17_Out_5,
                [6] = self.f_box_OutputOrder_v2_17_Out_6,
            },
            count = 7,
        },
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|@FailStage2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_82_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|@QG_Dialog_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_127_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|@QG_Dialog_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_128_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|@QG_Dialog_3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_129_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|@SpawnFail");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_112_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|@Target01_cancel");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_165_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|@Target01_destroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_114_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|@Target02_cancel");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_164_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|@Target02_destroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_115_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|@TargetSetup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_113_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|@TargetWatch");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_57_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|@TargetWatch2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_172_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|@TruckFlee");
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
                [0] = self.f_box_OutputOrder_v2_93_Out_0,
                [1] = self.f_box_OutputOrder_v2_93_Out_1,
                [2] = self.f_box_OutputOrder_v2_93_Out_2,
                [3] = self.f_box_OutputOrder_v2_93_Out_3,
            },
            count = 4,
        },
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|@TruckSetupComplete");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_111_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_H5_Outpost_01_QUEST_Warning_110()
    local params;
    params = {
        -- Client,
        [0] = self.eClient,
        -- FailDistance,
        [1] = 250,
        -- Host,
        [2] = self.eHost,
        -- isCoop,
        [3] = self.bCoop,
        -- use2d,
        [4] = true,
        -- Vehicle,
        [5] = self.eTarget01,
        -- WarningDistance,
        [6] = 150,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|28011763");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_142_Out,
    });
    params = {
        -- x,
        [0] = 0,
        -- y,
        [1] = 0,
        -- z,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_49()
    local params;
    params = {
        -- Vehicle,
        [0] = self.eTarget01,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|69773499");
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
        [4] = self.eTarget02,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|85483221");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_51_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = self.oTruckObjective,
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 2,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|89099456");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_32_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2101423917372551300",
        -- ObjectiveId,
        [2] = self.oTruckObjective,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_151()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_3()
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

function export:OnEnter_box_HealthListener_v6_20()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eDriver02,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_122()
    local params;
    DrawTextToScreen("Comment: Cant see em yet", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Cant see em yet");
    params = {
        -- Group,
        [0] = "#2EFB1D2F",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1416256145",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    DrawTextToScreen("Comment: Markers", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OutputOrder_v2')-- Comment: Markers");
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|190814873");
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
                [0] = self.f_box_OutputOrder_v2_37_Out_0,
                [1] = self.f_box_OutputOrder_v2_37_Out_1,
                [2] = self.f_box_OutputOrder_v2_37_Out_2,
                [3] = self.f_box_OutputOrder_v2_37_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|191833987");
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
                [0] = self.f_box_OutputOrder_v2_68_Out_0,
                [1] = self.f_box_OutputOrder_v2_68_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|206758321");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_125_Out,
    });
    params = {
        -- Max,
        [0] = 5,
        -- Min,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|219991647");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_173_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.TruckCount,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_138()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#DE3D53B0",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|224715772");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_170_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 1,
        -- vehicleEntity,
        [4] = self.eTarget02,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_77()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|274128671");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_61_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "H5_CultLocation_01_QUEST_B10A_OBJ",
            id = "657056",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 35,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_67()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|322201349");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_50_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2101149108461907595",
        -- ObjectiveId,
        [2] = self.oTruckObjective,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_40()
    local params;
    params = {
        -- EntityA,
        [1] = self.eTarget01,
        -- EntityB,
        [2] = "2101149108461907595",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|364509344");
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
                [0] = self.f_box_OutputOrder_v2_105_Out_0,
                [1] = self.f_box_OutputOrder_v2_105_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|368086409");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_15_Out,
    });
    params = {
        -- Max,
        [0] = 1,
        -- Min,
        [1] = -1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|368682680");
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

function export:OnEnter_box_OutputOrder_v2_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|395732760");
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
                [0] = self.f_box_OutputOrder_v2_154_Out_0,
                [1] = self.f_box_OutputOrder_v2_154_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|396866893");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Invasion",
            item = "KOM_HUD_INVASION_INVADER_LOSE_ESCAPE",
            id = "364227",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|402954186");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI24_010_FAIL_LeaveZone",
            id = "656985",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_98()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.eDriver02,
        -- SeatType,
        [3] = 1,
        -- vehicle,
        [4] = self.eTarget02,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|419066545");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Ambush Successful",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|419313507");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|456129723");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|464076694");
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
                [0] = self.f_box_OutputOrder_v2_66_Out_0,
                [1] = self.f_box_OutputOrder_v2_66_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|492133381");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_85_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101577398349738673",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|498300264");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_149_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|512045416");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_55_Out,
    });
    params = {
        -- A,
        [0] = self.TruckCount,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_42()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101423917372551303",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|557905888");
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
                [0] = self.f_box_OutputOrder_v2_81_Out_0,
                [1] = self.f_box_OutputOrder_v2_81_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|573229742");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_168_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 1,
        -- vehicleEntity,
        [4] = self.eTarget01,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_75()
    local params;
    params = {
        -- EntityA,
        [1] = self.eTarget02,
        -- EntityB,
        [2] = "2102325151266780738",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|623008214");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_12_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|631929810");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_48_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2101423917372551300",
        -- ObjectiveId,
        [2] = self.oTruckObjective,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_11()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101146668289239386",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|681957267");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_88_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListReader_73()
    local params, l0;
    l0 = self.box_SpawnAI_10;
    params = {
        -- Index,
        [0] = 1,
        -- Input,
        [1] = l0:GetDataOutValue(1),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|712048796");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|748982228");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_30_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2101149108461907595",
        -- ObjectiveId,
        [2] = self.oTruckObjective,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|749058921");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_118_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2102514597094248088",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "H5_CultLocation_01_QUEST_B10A_OBJ",
            id = "657056",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|773785442");
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

function export:OnEnter_box_PlayDialog_v6_2()
    local params;
    DrawTextToScreen("Comment: I see em Dead ahead", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: I see em Dead ahead");
    params = {
        -- Group,
        [0] = "#2EFB1D2F",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3885112459",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_16()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2101577386932843182",
        -- id2,
        [3] = self.eTarget02,
        -- nearZone,
        [4] = 70,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|847478868");
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
                [0] = self.f_box_OutputOrder_v2_136_Out_0,
                [1] = self.f_box_OutputOrder_v2_136_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|875216195");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_90_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101578118851475114",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_140()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- SeatType,
        [3] = 1,
        -- vehicle,
        [4] = self.eTarget02,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|885747954");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "TRUCKS FLEEING",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_RequestTutorial_v3_18()
    local params;
    params = {
        -- bypassPreconditions,
        [0] = true,
        -- tutorialdb,
        [1] = "9015266197560808",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveTimerListener_64()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "H5_CultLocation_01_QUEST_B10A_OBJ",
            id = "657056",
        },
        -- Time,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|910917273");
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

function export:OnEnter_box_EntityStatusListener_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eTarget01,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|967895207");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_104_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_9()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101146686601570734",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1017314427");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_69_Out,
    });
    l0 = self.box_ListReader_74;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_47()
    local params;
    params = {
        -- Vehicle,
        [0] = self.eTarget02,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1026776265");
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
                [0] = self.f_box_OutputOrder_v2_124_Out_0,
                [1] = self.f_box_OutputOrder_v2_124_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_121()
    local params;
    DrawTextToScreen("Comment: You're fucking dead", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: You're fucking dead");
    params = {
        -- Group,
        [0] = "#2EFB1D2F",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1148350002",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_35()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#ED455357",
        -- id2,
        [3] = self.eTarget01,
        -- nearZone,
        [4] = 140,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1091702447");
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
                [0] = self.f_box_OutputOrder_v2_152_Out_0,
                [1] = self.f_box_OutputOrder_v2_152_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.25,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1108406808");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_145_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1146070799");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_89_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101577946788541198",
        -- Entity,
        [1] = self.eDriver01,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1149091809");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_8_Out,
    });
    params = {
        -- Max,
        [0] = 20,
        -- Min,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1186327654");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_148_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1223172029");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_120_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1262795930");
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

function export:OnEnter_box_PositionModifier_v2_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    params = {
        -- blendTime,
        [1] = 0,
        -- endPos,
        [2] = l0:GetDataOutValue(0),
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2102325151266780738",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_133()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2103981590645327608",
        -- WarningZoneTrigger,
        [3] = "2103981573576607479",
    };
    return params;
end;

function export:OnEnter_box_ListReader_92()
    local params, l0;
    l0 = self.box_SpawnAI_42;
    params = {
        -- Index,
        [0] = 1,
        -- Input,
        [1] = l0:GetDataOutValue(0),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1318897101");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_31_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = self.oTruckObjective,
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    params = {
        -- blendTime,
        [1] = 0,
        -- endPos,
        [2] = l0:GetDataOutValue(0),
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2102325154987128402",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1338698312");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_146_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_146_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bEscapeStart,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_97()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1368696154");
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
                [0] = self.f_box_OutputOrder_v2_131_Out_0,
                [1] = self.f_box_OutputOrder_v2_131_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1372963326");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ForceVehicleCrash_26_Out,
    });
    params = {
        -- steeringWheel,
        [1] = self._sld_Result_box_RandomFloat_v2_70,
        -- vehicle,
        [2] = self.eTarget02,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1384071989");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_156_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_156_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bTarget01_disabled,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1390546220");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "H5_Outpost_01_Quest_B10_STARTED",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1412314220");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_78_Out,
    });
    l0 = self.box_ListReader_73;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_7()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1440687098");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_36_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1445909506");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_102_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bTarget01_destroyed,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1465590706");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Setup timer started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1467452705");
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
                [0] = self.f_box_OutputOrder_v2_76_Out_0,
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

function export:OnEnter_box_Simple_Node_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1468229500");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_119_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListReader_74()
    local params, l0;
    l0 = self.box_SpawnAI_10;
    params = {
        -- Index,
        [0] = 1,
        -- Input,
        [1] = l0:GetDataOutValue(0),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1488683736");
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
                [0] = self.f_box_OutputOrder_v2_99_Out_0,
                [1] = self.f_box_OutputOrder_v2_99_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1490466006");
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

function export:OnEnter_box_VehicleListener_v3_108()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- SeatType,
        [3] = 1,
        -- vehicle,
        [4] = self.eTarget01,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1521489799");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_1_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = self.oTruckObjective,
        -- Progress,
        [1] = self.TruckCount,
        -- ProgressId,
        [2] = self.iProgressID,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_126()
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

function export:OnEnter_box_CreateVector3_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1590596882");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_144_Out,
    });
    params = {
        -- x,
        [0] = 0,
        -- y,
        [1] = 0,
        -- z,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_23()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#CD859D76",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103886300479235819",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1643358746");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_80_Out,
    });
    l0 = self.box_ListReader_100;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_41()
    local params;
    params = {
        -- EntityA,
        [1] = self.eTarget02,
        -- EntityB,
        [2] = "2101423917372551300",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1659429666");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_63_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "H5_CultLocation_01_QUEST_B10A_OBJ",
            id = "657056",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_101()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eDriver01,
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1718623544");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ForceVehicleCrash_103_Out,
    });
    params = {
        -- steeringWheel,
        [1] = self._sld_Result_box_RandomFloat_v2_15,
        -- vehicle,
        [2] = self.eTarget01,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1749666816");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [2] = self.f_box_OutputOrder_v2_13_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1795964364");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_21_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bTarget02_destroyed,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1812963055");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_130_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "H5_CultLocation_01_QUEST_B10C_OBJ",
            id = "729737",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1820135060");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_94_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101578118853572270",
        -- Entity,
        [1] = self.eDriver02,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1820432161");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_169_Locked,
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
        [4] = self.eTarget01,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_123()
    local params;
    DrawTextToScreen("Comment: FUCK!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: FUCK!");
    params = {
        -- Group,
        [0] = "#2EFB1D2F",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1905156012",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1842896156");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_25_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = self.oTruckObjective,
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_72()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_10()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101146651029678336",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1874553545");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_28()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eTarget02,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1911150753");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1917399878");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "FAILED SPAWN",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1930864820");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_150_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_150_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bTarget02_disabled,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_62()
    local params;
    params = {
        -- EntityA,
        [1] = self.eTarget01,
        -- EntityB,
        [2] = "2102325154987128402",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1968247553");
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
                [0] = self.f_box_OutputOrder_v2_134_Out_0,
                [1] = self.f_box_OutputOrder_v2_134_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_H5_Outpost_01_QUEST_Warning_107()
    local params;
    params = {
        -- Client,
        [0] = self.eClient,
        -- FailDistance,
        [1] = 250,
        -- Host,
        [2] = self.eHost,
        -- isCoop,
        [3] = self.bCoop,
        -- use2d,
        [4] = true,
        -- Vehicle,
        [5] = self.eTarget02,
        -- WarningDistance,
        [6] = 150,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|1985030535");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_132_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "H5_CultLocation_01_QUEST_B10C_OBJ",
            id = "729737",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_83()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = self.eDriver01,
        -- SeatType,
        [3] = 1,
        -- vehicle,
        [4] = self.eTarget01,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_84()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2004364808");
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
                [0] = self.f_box_OutputOrder_v2_79_Out_0,
                [1] = self.f_box_OutputOrder_v2_79_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2020048095");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_70_Out,
    });
    params = {
        -- Max,
        [0] = 1,
        -- Min,
        [1] = -1,
    };
    return params;
end;

function export:OnEnter_box_ListReader_100()
    local params, l0;
    l0 = self.box_SpawnAI_42;
    params = {
        -- Index,
        [0] = 1,
        -- Input,
        [1] = l0:GetDataOutValue(1),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2073876751");
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
                [0] = self.f_box_OutputOrder_v2_106_Out_0,
                [1] = self.f_box_OutputOrder_v2_106_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2084640554");
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
                [0] = self.f_box_OutputOrder_v2_91_Out_0,
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

function export:OnEnter_box_SetEntity_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H5\\H5_Outpost_01.domino|@H5_Outpost_01_QUEST_B10|2092600034");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_46_Out,
    });
    l0 = self.box_ListReader_92;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_174()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnExit_box_CreateVector3_142_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_141;
    l1:GetLuaBox().endPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_51_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.iProgressID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_125_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_126;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self._sld_Result_box_RandomFloat_v2_15 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_22_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bCoop = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_149_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bTarget01_disabled = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_55_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.TruckCount = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_42_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_42;
    l1 = self.box_ListReader_92;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
    l1 = self.box_ListReader_100;
    l1:GetLuaBox().Input = l0:GetDataOutValue(1);
end;

function export:OnExit_box_CoopActivePlayers_87_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_87;
    self.eHost = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_87_PlayerAdded()
    local l0;
    l0 = self.box_CoopActivePlayers_87;
    self.ePlayerAdded = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_87_PlayerRemoved()
    local l0;
    l0 = self.box_CoopActivePlayers_87;
    self.ePlayerAdded = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_87_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_87;
    self.eHost = l0:GetDataOutValue(0);
    self.eClient = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetBoolean_v2_88_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bTarget01_destroyed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_69_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eDriver01 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_145_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bEscapeStart = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_8_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_3;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_148_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bTarget02_disabled = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_78_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTarget01 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_36_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bTarget02_destroyed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_144_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_143;
    l1:GetLuaBox().endPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_80_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTarget02 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_10_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_10;
    l1 = self.box_ListReader_74;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
    l1 = self.box_ListReader_73;
    l1:GetLuaBox().Input = l0:GetDataOutValue(1);
end;

function export:OnExit_box_RandomFloat_v2_70_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    self._sld_Result_box_RandomFloat_v2_70 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_46_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eDriver02 = l0:GetDataOutValue(0);
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
