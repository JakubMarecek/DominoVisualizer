LUACw� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni56/uni56_010/uni56_010_b10.domino
-- User graph: UNI56_010_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Specific.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/List/ListLoop.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/EntityTagListener_v4.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetDistance.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v2.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetInventoryItemQuantity.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/TaggingModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1513146580.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI56/UNI56_010/UNI56_010_B10.UNI56_010_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Specific.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Destroyed",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = true,
            },
            [3] = {
                name = "Unloaded",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "e_MobileObjectiveMarker",
                type = "entity",
            },
            [2] = {
                name = "e_Vehicle",
                type = "entity",
            },
            [3] = {
                name = "hasObjective",
                type = "bool",
            },
            [4] = {
                name = "o_Objective",
                type = "oasis",
            },
            [5] = {
                name = "opt_FailReason",
                type = "oasis",
            },
            [6] = {
                name = "opt_MarkerBone",
                type = "string",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "FailureReason",
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
    metadataTable[GetPathID("Domino/System/Coop/List/ListLoop.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Loop",
            },
            [1] = {
                name = "NextData",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "EndOfList",
                delayed = true,
            },
            [1] = {
                name = "GotData",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Input",
                type = "list",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/EntityTagListener_v4.lua")] = {
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
                name = "Discovered",
                delayed = true,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "ObjectInFocus",
                delayed = true,
            },
            [4] = {
                name = "ObjectInFrame",
                delayed = true,
            },
            [5] = {
                name = "ObjectOutOfFocus",
                delayed = true,
            },
            [6] = {
                name = "ObjectOutOfFrame",
                delayed = true,
            },
            [7] = {
                name = "Tagged",
                delayed = true,
            },
            [8] = {
                name = "Untagged",
                delayed = true,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "id",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "currentEntity",
                type = "entity",
            },
            [1] = {
                name = "playerID",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetNumberOfItems",
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
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterID",
                type = "genericdb",
            },
            [2] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "numItems",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/TaggingModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "TagEntity",
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
                name = "Tagged",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "Pawns",
                type = "group",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI56_010_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10";
    self.ePilot = nil;
    self.eChemist = nil;
    self.gPlayerGroup = nil;
    self.eChemistMarker = nil;
    self.eGetVehicle = nil;
    self.box_ProximityRadiusListener_v3_72 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|67768636");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_72_SomeoneNear,
    });
    self.box_MultipleOR_117 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|112838656");
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
        [0] = self.f_box_MultipleOR_117_Out,
    });
    self.box_Bind_v4_152 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|184970305");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_152_Bound,
    });
    self.box_MultipleOR_103 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|255125535");
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
        [0] = self.f_box_MultipleOR_103_Out,
    });
    self.box_ListLoop_165 = cbox:CreateBox("Domino/System/Coop/List/ListLoop.lua");
    l0 = self.box_ListLoop_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListLoop_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|276576415");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListLoop_165_EndOfList,
        -- GotData,
        [1] = self.f_box_ListLoop_165_GotData,
    });
    self.box_MultipleOR_161 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|279566385");
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
    self.box_ProximityRadiusListener_v3_148 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|301788318");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_148_SomeoneNear,
    });
    self.box_MultipleOR_78 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|302973939");
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
        [0] = self.f_box_MultipleOR_78_Out,
    });
    self.box_Bind_v4_8 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|324815907");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_8_Bound,
    });
    self.box_EntityStatusListener_31 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|335775918");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_31_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_31_Unloaded,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|336239417");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_MultipleOR_162 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|373116975");
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
    self.box_MultipleOR_87 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|406109242");
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
    self.box_HealthListener_v6_14 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|457312202");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_14_Killed,
    });
    self.box_VehicleListener_v3_88 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|493243561");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VehicleListener_v3_88_Disabled,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_88_OnSit,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_88_OnStandUp,
    });
    self.box_ProximityRadiusListener_v3_9 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|505761157");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_9_SomeoneNear,
    });
    self.box_ListLoop_163 = cbox:CreateBox("Domino/System/Coop/List/ListLoop.lua");
    l0 = self.box_ListLoop_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListLoop_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|526903553");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListLoop_163_EndOfList,
        -- GotData,
        [1] = self.f_box_ListLoop_163_GotData,
    });
    self.box_Gate_v3_133 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|632926498");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_133_Out,
    });
    self.box_RemoveEntity_v2_95 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|660467786");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_95_Out,
    });
    self.box_Gate_v3_29 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|673683478");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_29_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_29_Out,
    });
    self.box_RemoveEntity_v2_146 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|769877215");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_146_Out,
    });
    self.box_EntityTagListener_v4_15 = cbox:CreateBox("Domino/System/EntityTagListener_v4.lua");
    l0 = self.box_EntityTagListener_v4_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityTagListener_v4_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|887339630");
    l0:SetConnections({
        -- Tagged,
        [7] = self.f_box_EntityTagListener_v4_15_Tagged,
    });
    self.box_RequestPhoneCall_v2_69 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|901914479");
    l0:SetConnections({
    });
    self.box_LookAtTrigger_v2_44 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|965447009");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_44_EnterFOV,
    });
    self.box_ProximityRadiusListener_v3_149 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1127404770");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_149_SomeoneNear,
    });
    self.box_SpawnAI_126 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1155906330");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_126_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_126_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_126_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_126_Success,
    });
    self.box_VehicleDamageListener_v2_26 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1193873259");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_26_Destroyed,
    });
    self.box_MultipleOR_106 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1204982057");
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
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1214689069");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1241733859");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_Bind_v4_41 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1264211386");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_41_Bound,
    });
    self.box_Bind_v4_45 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1296791855");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_45_Bound,
    });
    self.box_EntityStatusListener_70 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1316663686");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_70_Unloaded,
    });
    self.box_Delay_v5_84 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1352872070");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_84_TimeElapsed,
    });
    self.box_ExitZoneWarningListener_v3_35 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1369018975");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_35_FailingZoneEntered,
    });
    self.box_ProximityRadiusListener_v3_73 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1405081579");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_73_SomeoneNear,
    });
    self.box_SpawnAI_43 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1415531941");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_43_Spawned,
    });
    self.box_SpawnAI_122 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1420793843");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_122_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_122_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_122_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_122_Success,
    });
    self.box_ListLoop_164 = cbox:CreateBox("Domino/System/Coop/List/ListLoop.lua");
    l0 = self.box_ListLoop_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListLoop_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1483832483");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListLoop_164_EndOfList,
        -- GotData,
        [1] = self.f_box_ListLoop_164_GotData,
    });
    self.box_VehicleDamageListener_v2_92 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1487766788");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_92_Destroyed,
        -- Disabled,
        [3] = self.f_box_VehicleDamageListener_v2_92_Disabled,
    });
    self.box_ProximityRadiusListener_v3_150 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1494726957");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_150_SomeoneNear,
    });
    self.box_ListLoop_166 = cbox:CreateBox("Domino/System/Coop/List/ListLoop.lua");
    l0 = self.box_ListLoop_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListLoop_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1520315214");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListLoop_166_EndOfList,
        -- GotData,
        [1] = self.f_box_ListLoop_166_GotData,
    });
    self.box_Brick_TakeControl_Vehicle_Specific_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Specific.debug.lua");
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_TakeControl_Vehicle_Specific_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1561948215");
    l0:SetConnections({
        -- Destroyed,
        [0] = self.f_box_Brick_TakeControl_Vehicle_Specific_22_Destroyed,
        -- Success,
        [2] = self.f_box_Brick_TakeControl_Vehicle_Specific_22_Success,
        -- Unloaded,
        [3] = self.f_box_Brick_TakeControl_Vehicle_Specific_22_Unloaded,
    });
    self.box_SpawnAI_128 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1571735478");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_128_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_128_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_128_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_128_Success,
    });
    self.box_ProximityRadiusListener_v3_98 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1601406712");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_98_SomeoneNear,
    });
    self.box_MultipleOR_147 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1636671559");
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
    self.box_Gate_v3_82 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1721141402");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_82_Out,
    });
    self.box_EntityStatusListener_12 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1731988652");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_12_Loaded,
    });
    self.box_EntityStatusListener_159 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1768094273");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_159_Unloaded,
    });
    self.box_MultipleAND_v2_21 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1774260690");
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
        [0] = self.f_box_MultipleAND_v2_21_Out,
    });
    self.box_MultipleAND_v2_17 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1887553363");
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
        [0] = self.f_box_MultipleAND_v2_17_Out,
    });
    self.box_OnceOnly_v3_20 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1924285665");
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
                [0] = self.f_box_OnceOnly_v3_20_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_79 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1986234256");
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
                [0] = self.f_box_OnceOnly_v3_79_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_116 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1989734736");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_116_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_116_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_116_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_116_Success,
    });
    self.box_StateListener_v2_38 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1991665510");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_38_StateStart,
    });
    self.box_ProximityRadiusListener_v3_101 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1993810851");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_101_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_101_SomeoneNear,
    });
    self.box_Delay_v5_93 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2018730428");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_93_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1341509150", "1341509150", "UNI56_010_B10", "In", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_28();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|603297223", "603297223", "UNI56_010_B10", "OnLeaveZone", "box_ActivityRetry_28.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_85_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_21();
    l0 = self.box_MultipleAND_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1872605087", "1872605087", "UNI56_010_B10", "box_Simple_Node_85.Out", "box_MultipleAND_v2_21.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_135_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|628773056", "628773056", "UNI56_010_B10", "box_Simple_Node_135.Out", "box_MultipleOR_162.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_VehicleListener_v3_88();
    l0 = self.box_VehicleListener_v3_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|739375910", "739375910", "UNI56_010_B10", "box_Simple_Node_135.Out", "box_VehicleListener_v3_88.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_27_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_73();
    l0 = self.box_ProximityRadiusListener_v3_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1563395288", "1563395288", "UNI56_010_B10", "box_Simple_Node_27.Out", "box_ProximityRadiusListener_v3_73.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_9();
    l0 = self.box_ProximityRadiusListener_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|19652764", "19652764", "UNI56_010_B10", "box_Simple_Node_27.Out", "box_ProximityRadiusListener_v3_9.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_133();
    l0 = self.box_Gate_v3_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|306594855", "306594855", "UNI56_010_B10", "box_Simple_Node_27.Out", "box_Gate_v3_133.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_LookAtTrigger_v2_44();
    l0 = self.box_LookAtTrigger_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1755809582", "1755809582", "UNI56_010_B10", "box_Simple_Node_27.Out", "box_LookAtTrigger_v2_44.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_EntityTagListener_v4_15();
    l0 = self.box_EntityTagListener_v4_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|120435703", "120435703", "UNI56_010_B10", "box_Simple_Node_27.Out", "box_EntityTagListener_v4_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_OnceOnly_v3_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1409612525", "1409612525", "UNI56_010_B10", "box_Simple_Node_27.Out", "box_OnceOnly_v3_79.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_115_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_115_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_104();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|19031797", "19031797", "UNI56_010_B10", "box_SetEntity_v2_115.Out", "box_ActivityObjectiveMarkerModifier_v3_104.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_72_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = self.box_ProximityRadiusListener_v3_72;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1648693721", "1648693721", "UNI56_010_B10", "box_ProximityRadiusListener_v3_72.SomeoneNear", "box_OutputOrder_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_123_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetDistance_120();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|904875639", "904875639", "UNI56_010_B10", "box_Compare_Floats_123.A_gt_B", "box_GetDistance_120.Distance2D", clone:GetLuaBox(), l0:GetLuaBox());
    -- Distance2D
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_123_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetDistance_67();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|789608907", "789608907", "UNI56_010_B10", "box_Compare_Floats_123.A_lt_B", "box_GetDistance_67.Distance2D", clone:GetLuaBox(), l0:GetLuaBox());
    -- Distance2D
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_117_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_134();
    l0 = self.box_MultipleOR_117;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|570857843", "570857843", "UNI56_010_B10", "box_MultipleOR_117.Out", "box_OutputOrder_v2_134.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_160_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_159();
    l0 = self.box_EntityStatusListener_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|283176520", "283176520", "UNI56_010_B10", "box_OutputOrder_v2_160.Out", "box_EntityStatusListener_159.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_160_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_135();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|273439555", "273439555", "UNI56_010_B10", "box_OutputOrder_v2_160.Out", "box_Simple_Node_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_129_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_149();
    l0 = self.box_ProximityRadiusListener_v3_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1971197292", "1971197292", "UNI56_010_B10", "box_Compare_Floats_129.A_gt_B", "box_ProximityRadiusListener_v3_149.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Floats_129_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_150();
    l0 = self.box_ProximityRadiusListener_v3_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1992301978", "1992301978", "UNI56_010_B10", "box_Compare_Floats_129.A_lt_B", "box_ProximityRadiusListener_v3_150.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Bind_v4_152_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_160();
    l0 = self.box_Bind_v4_152;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1258916051", "1258916051", "UNI56_010_B10", "box_Bind_v4_152.Bound", "box_OutputOrder_v2_160.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_46_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_102();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|541262048", "541262048", "UNI56_010_B10", "box_EndActivityObjective_v2_46.Out", "box_OutputOrder_v2_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|887929607", "887929607", "UNI56_010_B10", "box_OutputOrder_v2_4.Out", "box_ActivityAcknowledgeGate_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|841272099", "841272099", "UNI56_010_B10", "box_OutputOrder_v2_4.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_80_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_155();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1475382258", "1475382258", "UNI56_010_B10", "box_ActivityObjectiveMarkerModifier_v3_80.Disabled", "box_SetEntity_v2_155.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetDistance_127_Out()
    local params, l0;
    self:OnExit_box_GetDistance_127_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_129();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|674784039", "674784039", "UNI56_010_B10", "box_GetDistance_127.Out", "box_Compare_Floats_129.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_103_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_89();
    l0 = self.box_MultipleOR_103;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2026149030", "2026149030", "UNI56_010_B10", "box_MultipleOR_103.Out", "box_GetPawnVehicleInfo_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v2_76_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_21();
    l0 = self.box_MultipleAND_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|49246016", "49246016", "UNI56_010_B10", "box_IsPawnAlive_v2_76.True", "box_MultipleAND_v2_21.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_ListLoop_165_GotData()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_118();
    l0 = self.box_ListLoop_165;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1578695831", "1578695831", "UNI56_010_B10", "box_ListLoop_165.GotData", "box_SetEntity_v2_118.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_161_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetDistance_125();
    l0 = self.box_MultipleOR_161;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2107488895", "2107488895", "UNI56_010_B10", "box_MultipleOR_161.Out", "box_GetDistance_125.Distance2D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance2D
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_148_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_ProximityRadiusListener_v3_148;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1365000938", "1365000938", "UNI56_010_B10", "box_ProximityRadiusListener_v3_148.SomeoneNear", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_78_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_MultipleOR_78;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1564294569", "1564294569", "UNI56_010_B10", "box_MultipleOR_78.Out", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_8_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = self.box_Bind_v4_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1514372520", "1514372520", "UNI56_010_B10", "box_Bind_v4_8.Bound", "box_OutputOrder_v2_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_31_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = self.box_EntityStatusListener_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1807533737", "1807533737", "UNI56_010_B10", "box_EntityStatusListener_31.Loaded", "box_OutputOrder_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_31_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_31;
    l1 = self.box_MultipleOR_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1147828418", "1147828418", "UNI56_010_B10", "box_EntityStatusListener_31.Unloaded", "box_MultipleOR_161.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|961277633", "961277633", "UNI56_010_B10", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1632246898", "1632246898", "UNI56_010_B10", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_97_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_107();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2043162333", "2043162333", "UNI56_010_B10", "box_Compare_Integers_97.A_lt_B", "box_VehicleModifier_v2_107.SetExplosion", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetExplosion
    l0:Exec(17, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_162_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_14();
    l0 = self.box_MultipleOR_162;
    l1 = self.box_HealthListener_v6_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1047422572", "1047422572", "UNI56_010_B10", "box_MultipleOR_162.Out", "box_HealthListener_v6_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_87_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_7();
    l0 = self.box_MultipleOR_87;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|661449492", "661449492", "UNI56_010_B10", "box_MultipleOR_87.Out", "box_ActivityObjectiveMarkerModifier_v3_7.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_108_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_98();
    l0 = self.box_ProximityRadiusListener_v3_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1627606874", "1627606874", "UNI56_010_B10", "box_OutputOrder_v2_108.Out", "box_ProximityRadiusListener_v3_98.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_108_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1510104055", "1510104055", "UNI56_010_B10", "box_OutputOrder_v2_108.Out", "box_OnceOnly_v3_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_121_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_121_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_80();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1953164577", "1953164577", "UNI56_010_B10", "box_SetEntity_v2_121.Out", "box_ActivityObjectiveMarkerModifier_v3_80.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_14_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_131();
    l0 = self.box_HealthListener_v6_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|987697409", "987697409", "UNI56_010_B10", "box_HealthListener_v6_14.Killed", "box_OutputOrder_v2_131.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_88_Disabled()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_88;
    l1 = self.box_MultipleOR_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1708501863", "1708501863", "UNI56_010_B10", "box_VehicleListener_v3_88.Disabled", "box_MultipleOR_103.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleListener_v3_88_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_7();
    l0 = self.box_VehicleListener_v3_88;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|490273932", "490273932", "UNI56_010_B10", "box_VehicleListener_v3_88.OnSit", "box_ActivityObjectiveMarkerModifier_v3_7.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_88_OnStandUp()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_88;
    l1 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|757481133", "757481133", "UNI56_010_B10", "box_VehicleListener_v3_88.OnStandUp", "box_MultipleOR_87.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_134_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_152();
    l0 = self.box_Bind_v4_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1335245403", "1335245403", "UNI56_010_B10", "box_OutputOrder_v2_134.Out", "box_Bind_v4_152.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_134_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_133();
    l0 = self.box_Gate_v3_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|486553026", "486553026", "UNI56_010_B10", "box_OutputOrder_v2_134.Out", "box_Gate_v3_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_9_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_63();
    l0 = self.box_ProximityRadiusListener_v3_9;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2017982861", "2017982861", "UNI56_010_B10", "box_ProximityRadiusListener_v3_9.SomeoneNear", "box_ActivityObjectiveMarkerModifier_v3_63.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListLoop_163_GotData()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_121();
    l0 = self.box_ListLoop_163;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2082259813", "2082259813", "UNI56_010_B10", "box_ListLoop_163.GotData", "box_SetEntity_v2_121.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_105_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_156();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1183259526", "1183259526", "UNI56_010_B10", "box_ActivityObjectiveMarkerModifier_v3_105.Disabled", "box_SetEntity_v2_156.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_94_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_94_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_93();
    l0 = self.box_Delay_v5_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|606824383", "606824383", "UNI56_010_B10", "box_RandomFloat_v2_94.Out", "box_Delay_v5_93.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_66_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_126();
    l0 = self.box_SpawnAI_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1809174083", "1809174083", "UNI56_010_B10", "box_OutputOrder_v2_66.Out", "box_SpawnAI_126.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_66_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_150();
    l0 = self.box_ProximityRadiusListener_v3_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|381679281", "381679281", "UNI56_010_B10", "box_OutputOrder_v2_66.Out", "box_ProximityRadiusListener_v3_150.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_133_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TaggingModifier_v3_132();
    l0 = self.box_Gate_v3_133;
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|294697608", "294697608", "UNI56_010_B10", "box_Gate_v3_133.Out", "box_TaggingModifier_v3_132.TagEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- TagEntity
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_29();
    l0 = self.box_Gate_v3_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|533714061", "533714061", "UNI56_010_B10", "box_OutputOrder_v2_16.Out", "box_Gate_v3_29.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_34();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|55461084", "55461084", "UNI56_010_B10", "box_OutputOrder_v2_16.Out", "box_EndActivityObjective_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_95_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_37();
    l0 = self.box_RemoveEntity_v2_95;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|694770022", "694770022", "UNI56_010_B10", "box_RemoveEntity_v2_95.Out", "box_ActivityRetry_37.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_29_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_70();
    l0 = self.box_Gate_v3_29;
    l1 = self.box_EntityStatusListener_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1102956482", "1102956482", "UNI56_010_B10", "box_Gate_v3_29.Closed", "box_EntityStatusListener_70.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_70();
    l0 = self.box_Gate_v3_29;
    l1 = self.box_EntityStatusListener_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|215057452", "215057452", "UNI56_010_B10", "box_Gate_v3_29.Out", "box_EntityStatusListener_70.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_104_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_154();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1726254721", "1726254721", "UNI56_010_B10", "box_ActivityObjectiveMarkerModifier_v3_104.Disabled", "box_SetEntity_v2_154.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_146_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_146;
    l1 = self.box_MultipleOR_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1087234075", "1087234075", "UNI56_010_B10", "box_RemoveEntity_v2_146.Out", "box_MultipleOR_147.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayerGroup_v2_10_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1981869259", "1981869259", "UNI56_010_B10", "box_GetPlayerGroup_v2_10.Out", "box_OutputOrder_v2_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v2_76();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1764105198", "1764105198", "UNI56_010_B10", "box_OutputOrder_v2_81.Out", "box_IsPawnAlive_v2_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_84();
    l0 = self.box_Delay_v5_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1605692926", "1605692926", "UNI56_010_B10", "box_OutputOrder_v2_81.Out", "box_Delay_v5_84.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_99_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_99_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2144522626", "2144522626", "UNI56_010_B10", "box_SetEntity_v2_99.Out", "box_OutputOrder_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_39_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_40();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|523764576", "523764576", "UNI56_010_B10", "box_UseContextualActionModifier_v3_39.Enabled", "box_UseContextualActionModifier_v3_40.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityTagListener_v4_15_Tagged()
    local l0, l1;
    l0 = self.box_EntityTagListener_v4_15;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1679929658", "1679929658", "UNI56_010_B10", "box_EntityTagListener_v4_15.Tagged", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_63_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_90();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2020554131", "2020554131", "UNI56_010_B10", "box_ActivityObjectiveMarkerModifier_v3_63.Disabled", "box_ActivityObjectiveMarkerModifier_v3_90.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_63_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|753530829", "753530829", "UNI56_010_B10", "box_ActivityObjectiveMarkerModifier_v3_63.Enabled", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_86_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_13();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|438796043", "438796043", "UNI56_010_B10", "box_EndActivityObjective_v2_86.Out", "box_AddActivityObjective_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_44_EnterFOV()
    local l0, l1;
    l0 = self.box_LookAtTrigger_v2_44;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2092827553", "2092827553", "UNI56_010_B10", "box_LookAtTrigger_v2_44.EnterFOV", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_86();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1444221519", "1444221519", "UNI56_010_B10", "box_OutputOrder_v2_24.Out", "box_EndActivityObjective_v2_86.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_27();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1554208993", "1554208993", "UNI56_010_B10", "box_OutputOrder_v2_24.Out", "box_Simple_Node_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_118_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_118_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_18();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2044001802", "2044001802", "UNI56_010_B10", "box_SetEntity_v2_118.Out", "box_ActivityObjectiveMarkerModifier_v3_18.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_82();
    l0 = self.box_Gate_v3_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|353069905", "353069905", "UNI56_010_B10", "box_OutputOrder_v2_83.Out", "box_Gate_v3_82.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_83_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1236225481", "1236225481", "UNI56_010_B10", "box_OutputOrder_v2_83.Out", "box_ActivityRetry_5.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_149_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_74();
    l0 = self.box_ProximityRadiusListener_v3_149;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2042095131", "2042095131", "UNI56_010_B10", "box_ProximityRadiusListener_v3_149.SomeoneNear", "box_OutputOrder_v2_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_126_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_126_Spawned();
    params = self:OnEnter_box_ListLoop_164();
    l0 = self.box_SpawnAI_126;
    l1 = self.box_ListLoop_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|184155000", "184155000", "UNI56_010_B10", "box_SpawnAI_126.Spawned", "box_ListLoop_164.Loop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Loop
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_65();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1578215929", "1578215929", "UNI56_010_B10", "box_OutputOrder_v2_77.Out", "box_IsEntityLoaded_v3_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_64();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1125889355", "1125889355", "UNI56_010_B10", "box_OutputOrder_v2_77.Out", "box_AddActivityObjective_v2_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_77_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_35();
    l0 = self.box_ExitZoneWarningListener_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1901560314", "1901560314", "UNI56_010_B10", "box_OutputOrder_v2_77.Out", "box_ExitZoneWarningListener_v3_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_VehicleDamageListener_v2_26_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_32();
    l0 = self.box_VehicleDamageListener_v2_26;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|382675949", "382675949", "UNI56_010_B10", "box_VehicleDamageListener_v2_26.Destroyed", "box_ActivityRetry_32.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_106_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_91();
    l0 = self.box_MultipleOR_106;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1129116829", "1129116829", "UNI56_010_B10", "box_MultipleOR_106.Out", "box_ActivityRetry_91.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_10();
    l0 = self.box_ActivityInitialized_3;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|748197066", "748197066", "UNI56_010_B10", "box_ActivityInitialized_3.Out", "box_GetPlayerGroup_v2_10.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1148899695", "1148899695", "UNI56_010_B10", "box_MultipleOR_1.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_AddActivityObjective_v2_64_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_63();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1048366196", "1048366196", "UNI56_010_B10", "box_AddActivityObjective_v2_64.Out", "box_ActivityObjectiveMarkerModifier_v3_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_41_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_45();
    l0 = self.box_Bind_v4_41;
    l1 = self.box_Bind_v4_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|373652634", "373652634", "UNI56_010_B10", "box_Bind_v4_41.Bound", "box_Bind_v4_45.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_45_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_8();
    l0 = self.box_Bind_v4_45;
    l1 = self.box_Bind_v4_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1109062123", "1109062123", "UNI56_010_B10", "box_Bind_v4_45.Bound", "box_Bind_v4_8.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_34_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_46();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|430774990", "430774990", "UNI56_010_B10", "box_EndActivityObjective_v2_34.Out", "box_EndActivityObjective_v2_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_70_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_71();
    l0 = self.box_EntityStatusListener_70;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1486406532", "1486406532", "UNI56_010_B10", "box_EntityStatusListener_70.Unloaded", "box_ActivityRetry_71.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetDistance_130_Out()
    local params, l0;
    self:OnExit_box_GetDistance_130_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_114();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|276670736", "276670736", "UNI56_010_B10", "box_GetDistance_130.Out", "box_Compare_Floats_114.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_84_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_82();
    l0 = self.box_Delay_v5_84;
    l1 = self.box_Gate_v3_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1163029046", "1163029046", "UNI56_010_B10", "box_Delay_v5_84.TimeElapsed", "box_Gate_v3_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_89_InVehicle()
    self:OnExit_box_GetPawnVehicleInfo_89_InVehicle();
end;

function export:f_box_GetPawnVehicleInfo_89_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_89_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1368094771", "1368094771", "UNI56_010_B10", "box_GetPawnVehicleInfo_89.NotInVehicle", "box_MultipleOR_87.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_89_Out()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_89_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_88();
    l0 = self.box_VehicleListener_v3_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|500140614", "500140614", "UNI56_010_B10", "box_GetPawnVehicleInfo_89.Out", "box_VehicleListener_v3_88.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1796181391", "1796181391", "UNI56_010_B10", "box_AddActivityObjective_v2_13.Out", "box_MultipleOR_103.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ExitZoneWarningListener_v3_35_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_81();
    l0 = self.box_ExitZoneWarningListener_v3_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|789885203", "789885203", "UNI56_010_B10", "box_ExitZoneWarningListener_v3_35.FailingZoneEntered", "box_OutputOrder_v2_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_124_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_124_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1766732557", "1766732557", "UNI56_010_B10", "box_SetEntity_v2_124.Out", "box_MultipleOR_117.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_73_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_73;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|414052227", "414052227", "UNI56_010_B10", "box_ProximityRadiusListener_v3_73.SomeoneNear", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_128();
    l0 = self.box_SpawnAI_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|449090038", "449090038", "UNI56_010_B10", "box_OutputOrder_v2_36.Out", "box_SpawnAI_128.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_148();
    l0 = self.box_ProximityRadiusListener_v3_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|419753651", "419753651", "UNI56_010_B10", "box_OutputOrder_v2_36.Out", "box_ProximityRadiusListener_v3_148.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_65_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1073220322", "1073220322", "UNI56_010_B10", "box_IsEntityLoaded_v3_65.False", "box_MultipleOR_147.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_65_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_146();
    l0 = self.box_RemoveEntity_v2_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1470336378", "1470336378", "UNI56_010_B10", "box_IsEntityLoaded_v3_65.True", "box_RemoveEntity_v2_146.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_43_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_12();
    l0 = self.box_SpawnAI_43;
    l1 = self.box_EntityStatusListener_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1355006518", "1355006518", "UNI56_010_B10", "box_SpawnAI_43.Spawned", "box_EntityStatusListener_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_122_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_122_Spawned();
    params = self:OnEnter_box_ListLoop_163();
    l0 = self.box_SpawnAI_122;
    l1 = self.box_ListLoop_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1370358167", "1370358167", "UNI56_010_B10", "box_SpawnAI_122.Spawned", "box_ListLoop_163.Loop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Loop
    l1:Exec(0, params);
end;

function export:f_box_ListLoop_164_GotData()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_115();
    l0 = self.box_ListLoop_164;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|132619651", "132619651", "UNI56_010_B10", "box_ListLoop_164.GotData", "box_SetEntity_v2_115.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_92_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_92;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|598554266", "598554266", "UNI56_010_B10", "box_VehicleDamageListener_v2_92.Destroyed", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_92_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetInventoryItemQuantity_96();
    l0 = self.box_VehicleDamageListener_v2_92;
    l1 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1570268753", "1570268753", "UNI56_010_B10", "box_VehicleDamageListener_v2_92.Disabled", "box_GetInventoryItemQuantity_96.GetNumberOfItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetNumberOfItems
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_150_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_66();
    l0 = self.box_ProximityRadiusListener_v3_150;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|677912794", "677912794", "UNI56_010_B10", "box_ProximityRadiusListener_v3_150.SomeoneNear", "box_OutputOrder_v2_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListLoop_166_GotData()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_68();
    l0 = self.box_ListLoop_166;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1410321696", "1410321696", "UNI56_010_B10", "box_ListLoop_166.GotData", "box_SetEntity_v2_68.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_131_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_27();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1233617431", "1233617431", "UNI56_010_B10", "box_OutputOrder_v2_131.Out", "box_Simple_Node_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_131_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|688050966", "688050966", "UNI56_010_B10", "box_OutputOrder_v2_131.Out", "box_OutputOrder_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_131_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_31();
    l0 = self.box_EntityStatusListener_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1971143426", "1971143426", "UNI56_010_B10", "box_OutputOrder_v2_131.Out", "box_EntityStatusListener_31.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_17();
    l0 = self.box_MultipleAND_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|179846393", "179846393", "UNI56_010_B10", "box_OutputOrder_v2_25.Out", "box_MultipleAND_v2_17.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_26();
    l0 = self.box_VehicleDamageListener_v2_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1104451837", "1104451837", "UNI56_010_B10", "box_OutputOrder_v2_25.Out", "box_VehicleDamageListener_v2_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_85();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1565261624", "1565261624", "UNI56_010_B10", "box_OutputOrder_v2_25.Out", "box_Simple_Node_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_29();
    l0 = self.box_Gate_v3_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1613117857", "1613117857", "UNI56_010_B10", "box_OutputOrder_v2_25.Out", "box_Gate_v3_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Brick_TakeControl_Vehicle_Specific_22_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_62();
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_22;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1783455143", "1783455143", "UNI56_010_B10", "box_Brick_TakeControl_Vehicle_Specific_22.Destroyed", "box_ActivityRetry_62.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_TakeControl_Vehicle_Specific_22_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_22;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1126697177", "1126697177", "UNI56_010_B10", "box_Brick_TakeControl_Vehicle_Specific_22.Success", "box_OutputOrder_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_TakeControl_Vehicle_Specific_22_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_23();
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_22;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1940882049", "1940882049", "UNI56_010_B10", "box_Brick_TakeControl_Vehicle_Specific_22.Unloaded", "box_ActivityRetry_23.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1143644903", "1143644903", "UNI56_010_B10", "box_OutputOrder_v2_60.Out", "box_MultipleOR_162.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_151();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|240605657", "240605657", "UNI56_010_B10", "box_OutputOrder_v2_60.Out", "box_SetEntity_v2_151.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_60_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_38();
    l0 = self.box_StateListener_v2_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1074732211", "1074732211", "UNI56_010_B10", "box_OutputOrder_v2_60.Out", "box_StateListener_v2_38.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_GetDistance_120_Out()
    local params, l0;
    self:OnExit_box_GetDistance_120_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetDistance_127();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1587968788", "1587968788", "UNI56_010_B10", "box_GetDistance_120.Out", "box_GetDistance_127.Distance2D", clone:GetLuaBox(), l0:GetLuaBox());
    -- Distance2D
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_128_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_128_Spawned();
    params = self:OnEnter_box_ListLoop_165();
    l0 = self.box_SpawnAI_128;
    l1 = self.box_ListLoop_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1217997963", "1217997963", "UNI56_010_B10", "box_SpawnAI_128.Spawned", "box_ListLoop_165.Loop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Loop
    l1:Exec(0, params);
end;

function export:f_box_GetDistance_125_Out()
    local params, l0;
    self:OnExit_box_GetDistance_125_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetDistance_119();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|444562860", "444562860", "UNI56_010_B10", "box_GetDistance_125.Out", "box_GetDistance_119.Distance2D", clone:GetLuaBox(), l0:GetLuaBox());
    -- Distance2D
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_68_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_68_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_105();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1309669954", "1309669954", "UNI56_010_B10", "box_SetEntity_v2_68.Out", "box_ActivityObjectiveMarkerModifier_v3_105.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_98_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_108();
    l0 = self.box_ProximityRadiusListener_v3_98;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|702351306", "702351306", "UNI56_010_B10", "box_ProximityRadiusListener_v3_98.SomeoneNear", "box_OutputOrder_v2_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_156_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_156_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2031905424", "2031905424", "UNI56_010_B10", "box_SetEntity_v2_156.Out", "box_MultipleOR_117.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MultipleOR_147_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_98();
    l0 = self.box_MultipleOR_147;
    l1 = self.box_ProximityRadiusListener_v3_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|806469695", "806469695", "UNI56_010_B10", "box_MultipleOR_147.Out", "box_ProximityRadiusListener_v3_98.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_18_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_124();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1685875204", "1685875204", "UNI56_010_B10", "box_ActivityObjectiveMarkerModifier_v3_18.Disabled", "box_SetEntity_v2_124.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_95();
    l0 = self.box_Gate_v3_82;
    l1 = self.box_RemoveEntity_v2_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1584617445", "1584617445", "UNI56_010_B10", "box_Gate_v3_82.Out", "box_RemoveEntity_v2_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_12_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_99();
    l0 = self.box_EntityStatusListener_12;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|512174781", "512174781", "UNI56_010_B10", "box_EntityStatusListener_12.Loaded", "box_SetEntity_v2_99.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_159_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_159;
    l1 = self.box_MultipleOR_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|232343888", "232343888", "UNI56_010_B10", "box_EntityStatusListener_159.Unloaded", "box_MultipleOR_161.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetDistance_119_Out()
    local params, l0;
    self:OnExit_box_GetDistance_119_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_123();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|551749438", "551749438", "UNI56_010_B10", "box_GetDistance_119.Out", "box_Compare_Floats_123.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_83();
    l0 = self.box_MultipleAND_v2_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|383615276", "383615276", "UNI56_010_B10", "box_MultipleAND_v2_21.Out", "box_OutputOrder_v2_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_9();
    l0 = self.box_ProximityRadiusListener_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|854820015", "854820015", "UNI56_010_B10", "box_OutputOrder_v2_33.Out", "box_ProximityRadiusListener_v3_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_94();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|901063621", "901063621", "UNI56_010_B10", "box_OutputOrder_v2_33.Out", "box_RandomFloat_v2_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_155_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_155_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|872197358", "872197358", "UNI56_010_B10", "box_SetEntity_v2_155.Out", "box_MultipleOR_117.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleAND_v2_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_61();
    l0 = self.box_MultipleAND_v2_17;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|348015214", "348015214", "UNI56_010_B10", "box_MultipleAND_v2_17.Out", "box_ActivityEnd_61.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_20_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_43();
    l0 = self.box_OnceOnly_v3_20;
    l1 = self.box_SpawnAI_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|81612987", "81612987", "UNI56_010_B10", "box_OnceOnly_v3_20.Out", "box_SpawnAI_43.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_102_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_17();
    l0 = self.box_MultipleAND_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|236239015", "236239015", "UNI56_010_B10", "box_OutputOrder_v2_102.Out", "box_MultipleAND_v2_17.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_102_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_101();
    l0 = self.box_ProximityRadiusListener_v3_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2049003938", "2049003938", "UNI56_010_B10", "box_OutputOrder_v2_102.Out", "box_ProximityRadiusListener_v3_101.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_154_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_154_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1600684027", "1600684027", "UNI56_010_B10", "box_SetEntity_v2_154.Out", "box_MultipleOR_117.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetInventoryItemQuantity_96_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_96_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_97();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1564770397", "1564770397", "UNI56_010_B10", "box_GetInventoryItemQuantity_96.Out", "box_Compare_Integers_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_79_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_TakeControl_Vehicle_Specific_22();
    l0 = self.box_OnceOnly_v3_79;
    l1 = self.box_Brick_TakeControl_Vehicle_Specific_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1318608913", "1318608913", "UNI56_010_B10", "box_OnceOnly_v3_79.Out", "box_Brick_TakeControl_Vehicle_Specific_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_116_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_116_Spawned();
    params = self:OnEnter_box_ListLoop_166();
    l0 = self.box_SpawnAI_116;
    l1 = self.box_ListLoop_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1342369437", "1342369437", "UNI56_010_B10", "box_SpawnAI_116.Spawned", "box_ListLoop_166.Loop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Loop
    l1:Exec(0, params);
end;

function export:f_box_StateListener_v2_38_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_39();
    l0 = self.box_StateListener_v2_38;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2002060288", "2002060288", "UNI56_010_B10", "box_StateListener_v2_38.StateStart", "box_UseContextualActionModifier_v3_39.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_101_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_100();
    l0 = self.box_ProximityRadiusListener_v3_101;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|112777069", "112777069", "UNI56_010_B10", "box_ProximityRadiusListener_v3_101.SomeoneFar", "box_VehicleModifier_v2_100.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(6, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_101_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_100();
    l0 = self.box_ProximityRadiusListener_v3_101;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|290722846", "290722846", "UNI56_010_B10", "box_ProximityRadiusListener_v3_101.SomeoneNear", "box_VehicleModifier_v2_100.SetAsUsable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUsable
    l1:Exec(7, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_93_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_69();
    l0 = self.box_Delay_v5_93;
    l1 = self.box_RequestPhoneCall_v2_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1976857282", "1976857282", "UNI56_010_B10", "box_Delay_v5_93.TimeElapsed", "box_RequestPhoneCall_v2_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_VehicleModifier_v2_107_OnSetExplosion()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|404346432", "404346432", "UNI56_010_B10", "box_VehicleModifier_v2_107.OnSetExplosion", "box_MultipleOR_106.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_92();
    l0 = self.box_VehicleDamageListener_v2_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1142097657", "1142097657", "UNI56_010_B10", "box_OutputOrder_v2_19.Out", "box_VehicleDamageListener_v2_92.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_31();
    l0 = self.box_EntityStatusListener_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|619870922", "619870922", "UNI56_010_B10", "box_OutputOrder_v2_19.Out", "box_EntityStatusListener_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Floats_114_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_72();
    l0 = self.box_ProximityRadiusListener_v3_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|741588574", "741588574", "UNI56_010_B10", "box_Compare_Floats_114.A_gt_B", "box_ProximityRadiusListener_v3_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Floats_114_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_148();
    l0 = self.box_ProximityRadiusListener_v3_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1832889617", "1832889617", "UNI56_010_B10", "box_Compare_Floats_114.A_lt_B", "box_ProximityRadiusListener_v3_148.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_151_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_151_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_41();
    l0 = self.box_Bind_v4_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|411421552", "411421552", "UNI56_010_B10", "box_SetEntity_v2_151.Out", "box_Bind_v4_41.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_122();
    l0 = self.box_SpawnAI_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1139600347", "1139600347", "UNI56_010_B10", "box_OutputOrder_v2_42.Out", "box_SpawnAI_122.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_72();
    l0 = self.box_ProximityRadiusListener_v3_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1268453167", "1268453167", "UNI56_010_B10", "box_OutputOrder_v2_42.Out", "box_ProximityRadiusListener_v3_72.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityTagListener_v4_15();
    l0 = self.box_EntityTagListener_v4_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1329674184", "1329674184", "UNI56_010_B10", "box_OutputOrder_v2_75.Out", "box_EntityTagListener_v4_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_73();
    l0 = self.box_ProximityRadiusListener_v3_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|101063829", "101063829", "UNI56_010_B10", "box_OutputOrder_v2_75.Out", "box_ProximityRadiusListener_v3_73.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_44();
    l0 = self.box_LookAtTrigger_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1994276518", "1994276518", "UNI56_010_B10", "box_OutputOrder_v2_75.Out", "box_LookAtTrigger_v2_44.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetDistance_67_Out()
    local params, l0;
    self:OnExit_box_GetDistance_67_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetDistance_130();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1994676312", "1994676312", "UNI56_010_B10", "box_GetDistance_67.Out", "box_GetDistance_130.Distance2D", clone:GetLuaBox(), l0:GetLuaBox());
    -- Distance2D
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_74_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_116();
    l0 = self.box_SpawnAI_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1155562493", "1155562493", "UNI56_010_B10", "box_OutputOrder_v2_74.Out", "box_SpawnAI_116.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_74_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_149();
    l0 = self.box_ProximityRadiusListener_v3_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|700045827", "700045827", "UNI56_010_B10", "box_OutputOrder_v2_74.Out", "box_ProximityRadiusListener_v3_149.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|@AboardHelico");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_85_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|@ChemistReloaded");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_135_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|@Tagged");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_27_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|7891137");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_115_Out,
    });
    l0 = self.box_ListLoop_164;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|50465752");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objective",
            item = "UNI56_010_B10_VipUnloadedFail",
            id = "851751",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_72()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayerGroup,
        -- id2,
        [3] = "2099530077405454217",
        -- nearZone,
        [4] = 150,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|111151204");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Floats_123_A_gt_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_123_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_125,
        -- B,
        [1] = self._sld_Distance_box_GetDistance_119,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|116673226");
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
                [0] = self.f_box_OutputOrder_v2_160_Out_0,
                [1] = self.f_box_OutputOrder_v2_160_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|155533084");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Floats_129_A_gt_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_129_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_120,
        -- B,
        [1] = self._sld_Distance_box_GetDistance_127,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_152()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine1",
        -- EntityA,
        [1] = self.eChemist,
        -- EntityB,
        [2] = self.eChemistMarker,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|191148514");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_46_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI56_010_B10_SurveyArea",
            id = "730619",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|192401272");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|216611874");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_80_Disabled,
    });
    params = {
        -- Marker,
        [1] = self.eChemistMarker,
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI56_010_B10_KillTakeHelico",
            id = "592955",
        },
    };
    return params;
end;

function export:OnEnter_box_GetDistance_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|250055406");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_127_Out,
    });
    params = {
        -- Entity1,
        [0] = "2099531771350622097",
        -- Entity2,
        [1] = "2099530077405454217",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|259675517");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|262477843");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_76_True,
    });
    params = {
        -- Pawn,
        [0] = self.eChemist,
    };
    return params;
end;

function export:OnEnter_box_ListLoop_165()
    local params, l0;
    l0 = self.box_SpawnAI_128;
    params = {
        -- Input,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|283671113");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = self.eChemist,
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_148()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayerGroup,
        -- id2,
        [3] = "2099530077405454217",
        -- nearZone,
        [4] = 150,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_8()
    local params;
    params = {
        -- BoneName,
        [0] = "Spine1",
        -- EntityA,
        [1] = self.eChemist,
        -- EntityB,
        [2] = self.eChemistMarker,
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_31()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eChemist,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|339681342");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_97_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_96,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|395870944");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = self.eChemistMarker,
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI56_010_B10_KillTakeHelico",
            id = "592955",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|437922909");
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
                [0] = self.f_box_OutputOrder_v2_108_Out_0,
                [1] = self.f_box_OutputOrder_v2_108_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|449234677");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_121_Out,
    });
    l0 = self.box_ListLoop_163;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_14()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eChemist,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_88()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = self.eChemist,
        -- vehicle,
        [4] = "2099530077405454217",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|499009149");
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

function export:OnEnter_box_ProximityRadiusListener_v3_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayerGroup,
        -- id2,
        [3] = "2100705999387123007",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ListLoop_163()
    local params, l0;
    l0 = self.box_SpawnAI_122;
    params = {
        -- Input,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|547853718");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_105_Disabled,
    });
    params = {
        -- Marker,
        [1] = self.eChemistMarker,
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI56_010_B10_KillTakeHelico",
            id = "592955",
        },
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|590105394");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_94_Out,
    });
    params = {
        -- Max,
        [0] = 17,
        -- Min,
        [1] = 14,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|619490118");
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

function export:OnEnter_box_Gate_v3_133()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|634908889");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_95()
    local params;
    params = {
        -- Group,
        [0] = "2099530077405454217",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_29()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|680599411");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objective",
            item = "UNI56_010_B10_HelicoDestroyed",
            id = "593008",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|703347571");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_104_Disabled,
    });
    params = {
        -- Marker,
        [1] = self.eChemistMarker,
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI56_010_B10_KillTakeHelico",
            id = "592955",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|724732822");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2100206579251948565",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI56_010_B10_SurveyArea",
            id = "730619",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|728350002");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objective",
            item = "UNI56_010_B10_HelicoDestroyed",
            id = "593008",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|735277411");
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
        [8] = "UNI056_010_B10 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_146()
    local params;
    params = {
        -- Group,
        [0] = "2099530077405454217",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|805576101");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|832748832");
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

function export:OnEnter_box_SetEntity_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|862619686");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_99_Out,
    });
    params = {
        -- Entity,
        [0] = "2099530080878337941",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|884688972");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_39_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101560643300628751",
    };
    return params;
end;

function export:OnEnter_box_EntityTagListener_v4_15()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- id,
        [1] = self.eChemist,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_69()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1513146580",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|923267014");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_63_Disabled,
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_63_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100705782365435219",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI56_010_B10_SurveyArea",
            id = "730619",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|961661035");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|962087650");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_86_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI56_010_B10_SurveyArea",
            id = "730619",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_44()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2105253796012652004",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1036242256");
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

function export:OnEnter_box_SetEntity_v2_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1075570979");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_118_Out,
    });
    l0 = self.box_ListLoop_165;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1123597833");
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
                [0] = self.f_box_OutputOrder_v2_83_Out_0,
                [1] = self.f_box_OutputOrder_v2_83_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_149()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayerGroup,
        -- id2,
        [3] = "2099530077405454217",
        -- nearZone,
        [4] = 150,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_126()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104550120356998880",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1159059892");
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
                [0] = self.f_box_OutputOrder_v2_77_Out_0,
                [1] = self.f_box_OutputOrder_v2_77_Out_1,
                [2] = self.f_box_OutputOrder_v2_77_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_26()
    local params;
    params = {
        -- Vehicle,
        [0] = "2099530077405454217",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1243593920");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_64_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI56_010_B10_SurveyArea",
            id = "730619",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_41()
    local params;
    params = {
        -- EntityA,
        [1] = "2099530077405454217",
        -- EntityB,
        [2] = "2100000651061766137",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_45()
    local params;
    params = {
        -- EntityA,
        [1] = "2099530077405454217",
        -- EntityB,
        [2] = "2105253796012652004",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1312974165");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_34_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI56_010_B10_KillTakeHelico",
            id = "592955",
        },
        -- Success,
        [1] = true,
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
        [2] = self.eChemist,
    };
    return params;
end;

function export:OnEnter_box_GetDistance_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1327074937");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_130_Out,
    });
    params = {
        -- Entity1,
        [0] = "2099531771350622097",
        -- Entity2,
        [1] = "2099530077405454217",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_84()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1365557657");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_89_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_89_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_89_Out,
    });
    params = {
        -- pawn,
        [0] = self.eChemist,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1368126385");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_13_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI56_010_B10_KillTakeHelico",
            id = "592955",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_35()
    local params;
    params = {
        -- bShowUI,
        [0] = false,
        -- CoopFailRequiresAllPlayer,
        [1] = true,
        -- FailingZoneTrigger,
        [2] = "2101522411936566926",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1369344465");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2101560643300628751",
        -- Entity,
        [1] = self.eChemist,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1403872073");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_124_Out,
    });
    params = {
        -- Entity,
        [0] = "2104549253750802140",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_73()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayerGroup,
        -- id2,
        [3] = self.eChemist,
        -- nearZone,
        [4] = 30,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1406889720");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1412115686");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_65_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_65_True,
    });
    params = {
        -- entityId,
        [0] = "2099530077405454217",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_43()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099530072428912477",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_122()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104550124085735163",
    };
    return params;
end;

function export:OnEnter_box_ListLoop_164()
    local params, l0;
    l0 = self.box_SpawnAI_126;
    params = {
        -- Input,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_92()
    local params;
    params = {
        -- Vehicle,
        [0] = "2099530077405454217",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_150()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayerGroup,
        -- id2,
        [3] = "2099530077405454217",
        -- nearZone,
        [4] = 150,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ListLoop_166()
    local params, l0;
    l0 = self.box_SpawnAI_116;
    params = {
        -- Input,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1530242066");
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
                [0] = self.f_box_OutputOrder_v2_131_Out_0,
                [1] = self.f_box_OutputOrder_v2_131_Out_1,
                [2] = self.f_box_OutputOrder_v2_131_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1556802112");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
                [2] = self.f_box_OutputOrder_v2_25_Out_2,
                [3] = self.f_box_OutputOrder_v2_25_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_TakeControl_Vehicle_Specific_22()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- e_MobileObjectiveMarker,
        [1] = "2100000651061766137",
        -- e_Vehicle,
        [2] = "2099530077405454217",
        -- hasObjective,
        [3] = true,
        -- o_Objective,
        [4] = {
            section = "Objective",
            item = "UNI56_010_B10_TakeControl",
            id = "828583",
        },
        -- opt_FailReason,
        [5] = {
            section = "Objective",
            item = "UNI56_010_B10_HelicoDestroyed",
            id = "593008",
        },
        -- opt_MarkerBone,
        [6] = "DRIVER_SITPOINT",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1562452725");
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
                [0] = self.f_box_OutputOrder_v2_60_Out_0,
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
                [2] = self.f_box_OutputOrder_v2_60_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetDistance_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1569889185");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_120_Out,
    });
    params = {
        -- Entity1,
        [0] = "2099531766562824077",
        -- Entity2,
        [1] = "2099530077405454217",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_128()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104550106006186727",
    };
    return params;
end;

function export:OnEnter_box_GetDistance_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1579108709");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_125_Out,
    });
    params = {
        -- Entity1,
        [0] = "2099531752256053129",
        -- Entity2,
        [1] = "2099530077405454217",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1590694537");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_68_Out,
    });
    l0 = self.box_ListLoop_166;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_98()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayerGroup,
        -- id2,
        [3] = "2100705999387123007",
        -- nearZone,
        [4] = 20,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1615194912");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2099530077405454217",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1620287750");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_156_Out,
    });
    params = {
        -- Entity,
        [0] = "2104549258576349180",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1677211710");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1691449464");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_18_Disabled,
    });
    params = {
        -- Marker,
        [1] = self.eChemistMarker,
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI56_010_B10_KillTakeHelico",
            id = "592955",
        },
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_82()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_12()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099530077405454217",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_159()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eChemist,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1770896833");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objective",
            item = "UNI56_010_B10_VipUnloadedFail",
            id = "851751",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_GetDistance_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1771313605");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_119_Out,
    });
    params = {
        -- Entity1,
        [0] = "2099531766562824077",
        -- Entity2,
        [1] = "2099530077405454217",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_21()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1836049988");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1868633422");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_155_Out,
    });
    params = {
        -- Entity,
        [0] = "2104549258576349180",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1884970431");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_17()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1964566625");
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
                [0] = self.f_box_OutputOrder_v2_102_Out_0,
                [1] = self.f_box_OutputOrder_v2_102_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1965708169");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_154_Out,
    });
    params = {
        -- Entity,
        [0] = "2104549256246413304",
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|1982562142");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_96_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015247148748112",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_116()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104550124085735163",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_38()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#8D1E5F52",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_101()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gPlayerGroup,
        -- farZone,
        [2] = 6,
        -- id2,
        [3] = "2099530077405454217",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2017028365");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objective",
            item = "UNI56_010_B10_HelicoDestroyed",
            id = "593008",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_93()
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

function export:OnEnter_box_VehicleModifier_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2043679101");
    l0:SetConnections({
        -- OnSetExplosion,
        [17] = self.f_box_VehicleModifier_v2_107_OnSetExplosion,
    });
    params = {
        -- targets,
        [0] = "2099530077405454217",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2070792192");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2076455013");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Floats_114_A_gt_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_114_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_67,
        -- B,
        [1] = self._sld_Distance_box_GetDistance_130,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2089291627");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_151_Out,
    });
    params = {
        -- Entity,
        [0] = "2100804613685915992",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2097400029");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2100202112");
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
                [0] = self.f_box_OutputOrder_v2_75_Out_0,
                [1] = self.f_box_OutputOrder_v2_75_Out_1,
                [2] = self.f_box_OutputOrder_v2_75_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetDistance_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2100485168");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_67_Out,
    });
    params = {
        -- Entity1,
        [0] = "2099531752256053129",
        -- Entity2,
        [1] = "2099530077405454217",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI56\\UNI56_010\\UNI56_010_B10.domino|@UNI56_010_B10|2113362175");
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
                [0] = self.f_box_OutputOrder_v2_74_Out_0,
                [1] = self.f_box_OutputOrder_v2_74_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_115_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eChemist = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_127_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_127 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_121_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eChemist = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_94_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_93;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_99_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eChemist = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_118_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eChemist = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_126_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_126;
    l1 = self.box_ListLoop_164;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_130_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_130 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_89_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eGetVehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_89_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eGetVehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_89_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eGetVehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetEntity_v2_124_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eChemistMarker = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_122_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_122;
    l1 = self.box_ListLoop_163;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_120_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_120 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_128_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_128;
    l1 = self.box_ListLoop_165;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_125_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_125 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_68_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eChemist = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_156_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eChemistMarker = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_119_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_119 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_155_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eChemistMarker = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_154_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eChemistMarker = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetInventoryItemQuantity_96_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_96 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_116_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_116;
    l1 = self.box_ListLoop_166;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_151_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eChemistMarker = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_67_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_67 = l0:GetDataOutValue(0);
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
