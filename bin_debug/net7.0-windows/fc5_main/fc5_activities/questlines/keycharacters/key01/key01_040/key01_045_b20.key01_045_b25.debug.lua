LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key01/key01_040/key01_045_b20.domino
-- User graph: KEY01_045_B25
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Generic.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/GetPreconditionState.lua");
        cboxRes:RegisterBox("Domino/System/AI/PreconditionListener.lua");
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/Coop/SetVehicleAsLeashAnchor.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/ForceInVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SaveOpenWorld.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.PlaneDistanceListener.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_040/KEY01_045_B10.KEY01_045_MissionZone.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3591573615.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2102059229.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3094105564.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3503274606.bnk]], "CSoundResource");
        cboxRes:LoadResource([[189462598.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_040/KEY01_045_B20.KEY01_045_B25.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Generic.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Started",
                delayed = false,
            },
            [1] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "aVehicleArchetype",
                type = "archetype",
            },
            [1] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [2] = {
                name = "hasObjective",
                type = "bool",
            },
            [3] = {
                name = "o_Objective",
                type = "oasis",
            },
            [4] = {
                name = "sVehicleType",
                type = "string",
            },
        },
        dataInCount = 5,
        dataOut = {
            [0] = {
                name = "e_GenericVehicleID",
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
    metadataTable[GetPathID("Domino/System/Activity/GetActivityFact.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetFact",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FactNotSet",
                delayed = false,
            },
            [1] = {
                name = "FactSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ActivityIDOrEncounterPrefabID",
                type = "genericdb",
            },
            [1] = {
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/AI/GetPreconditionState.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "NotValid",
                delayed = false,
            },
            [1] = {
                name = "Valid",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "PreconditionId",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/PreconditionListener.lua")] = {
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
                name = "PreconditionMet",
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
                name = "PreconditionId",
                type = "string",
            },
            [2] = {
                name = "TestOnEnable",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareStrings.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_contains_B",
                delayed = false,
            },
            [1] = {
                name = "A_eq_B",
                delayed = false,
            },
            [2] = {
                name = "A_ncontains_B",
                delayed = false,
            },
            [3] = {
                name = "A_neq_B",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "A",
                type = "string",
            },
            [1] = {
                name = "B",
                type = "string",
            },
            [2] = {
                name = "IgnoreCase",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/SetVehicleAsLeashAnchor.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ClearMissionVehicle",
            },
            [1] = {
                name = "SetMissionVehicle",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnMissionVehicleCleared",
                delayed = false,
            },
            [1] = {
                name = "OnMissionVehicleSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "targetVehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")] = {
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
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "SeatType",
                type = "int",
            },
            [2] = {
                name = "vehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/SaveOpenWorld.lua")] = {
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.PlaneDistanceListener.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableListeners",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "StopMusic",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "PlaneEntity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_040/KEY01_045_B10.KEY01_045_MissionZone.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableCustomUI",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "RingOut",
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
    self._name = "KEY01_045_B25";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25";
    self.ePlayerVehicle = nil;
    self.FriendPlayers = nil;
    self.DummyVarEntity = nil;
    self.box_PhoneCallExclusivityModifier_36 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|11549051");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_36_Enabled,
    });
    self.box_PhoneCallExclusivityModifier_16 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|68020051");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhoneCallExclusivityModifier_16_Disabled,
    });
    self.box_RequestPhoneCall_v2_4 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|171719536");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_4_Completed,
        -- Out,
        [3] = self.f_box_RequestPhoneCall_v2_4_Out,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|285777953");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|358428479");
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
        [0] = self.f_box_MultipleOR_18_Out,
    });
    self.box_SetVehicleAsLeashAnchor_44 = cbox:CreateBox("Domino/System/Coop/SetVehicleAsLeashAnchor.lua");
    l0 = self.box_SetVehicleAsLeashAnchor_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetVehicleAsLeashAnchor_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|416545519");
    l0:SetConnections({
    });
    self.box_SetVehicleAsLeashAnchor_40 = cbox:CreateBox("Domino/System/Coop/SetVehicleAsLeashAnchor.lua");
    l0 = self.box_SetVehicleAsLeashAnchor_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetVehicleAsLeashAnchor_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|427056018");
    l0:SetConnections({
        -- OnMissionVehicleSet,
        [1] = self.f_box_SetVehicleAsLeashAnchor_40_OnMissionVehicleSet,
    });
    self.box_PreconditionListener_83 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|438065552");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_83_PreconditionMet,
    });
    self.box_MultipleOR_86 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|536239686");
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
        [0] = self.f_box_MultipleOR_86_Out,
    });
    self.box_MultipleOR_116 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|537377969");
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
        [0] = self.f_box_MultipleOR_116_Out,
    });
    self.box_Brick_TakeControl_Vehicle_Generic_92 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Generic.debug.lua");
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_TakeControl_Vehicle_Generic_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|537551278");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_Brick_TakeControl_Vehicle_Generic_92_Started,
        -- Success,
        [1] = self.f_box_Brick_TakeControl_Vehicle_Generic_92_Success,
    });
    self.box_MultipleOR_51 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|599520489");
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
        [0] = self.f_box_MultipleOR_51_Out,
    });
    self.box_Delay_v5_112 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|660844765");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_112_TimeElapsed,
    });
    self.box_MultipleOR_97 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|678670431");
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
        [0] = self.f_box_MultipleOR_97_Out,
    });
    self.box_PlaneDistanceListener_29 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B40.PlaneDistanceListener.debug.lua");
    l0 = self.box_PlaneDistanceListener_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaneDistanceListener_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|786699936");
    l0:SetConnections({
    });
    self.box_VehicleListener_v3_104 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|814048911");
    l0:SetConnections({
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_104_OnAllStanding,
    });
    self.box_RequestPhoneCall_v2_12 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|904964040");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_12_Completed,
    });
    self.box_ProximityRadiusListener_v3_118 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|922761652");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_118_SomeoneFar,
    });
    self.box_ProximityRadiusListener_v3_110 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|941426164");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_110_SomeoneFar,
    });
    self.box_OnceOnly_v3_52 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|980869687");
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
                [0] = self.f_box_OnceOnly_v3_52_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_82 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1011610717");
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
        [0] = self.f_box_MultipleOR_82_Out,
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1096845242");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_Switch_8 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1102783325");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
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
                [0] = self.f_box_Switch_8_Output_0,
                [1] = self.f_box_Switch_8_Output_1,
            },
            count = 3,
        },
    });
    self.box_RequestPhoneCall_v2_98 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1155956218");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_98_Completed,
    });
    self.box_PreconditionListener_84 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1226713887");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_84_PreconditionMet,
    });
    self.box_MultipleOR_119 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1232764716");
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
        [0] = self.f_box_MultipleOR_119_Out,
    });
    self.box_Delay_v5_79 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1260240158");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_79_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_113 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1302592620");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_113_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_113_SomeoneNear,
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1353260723");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_KEY01_045_MissionZone_22 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_040/KEY01_045_B10.KEY01_045_MissionZone.debug.lua");
    l0 = self.box_KEY01_045_MissionZone_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY01_045_MissionZone_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1399407670");
    l0:SetConnections({
        -- RingOut,
        [0] = self.f_box_KEY01_045_MissionZone_22_RingOut,
    });
    self.box_PhoneCallExclusivityModifier_17 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1409154692");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_17_Enabled,
    });
    self.box_MultipleOR_81 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1452426614");
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
        [0] = self.f_box_MultipleOR_81_Out,
    });
    self.box_SetVehicleAsLeashAnchor_42 = cbox:CreateBox("Domino/System/Coop/SetVehicleAsLeashAnchor.lua");
    l0 = self.box_SetVehicleAsLeashAnchor_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetVehicleAsLeashAnchor_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1489625877");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_37 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1495865752");
    l0:SetConnections({
    });
    self.box_VehicleListener_v3_91 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1515126953");
    l0:SetConnections({
        -- OnAllSitting,
        [2] = self.f_box_VehicleListener_v3_91_OnAllSitting,
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_91_OnAllStanding,
    });
    self.box_OnceOnly_v3_89 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1523831409");
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
                [0] = self.f_box_OnceOnly_v3_89_Out_0,
            },
            count = 2,
        },
    });
    self.box_PhoneCallExclusivityModifier_31 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1526525794");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_1 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1543049435");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_1_Enabled,
    });
    self.box_Gate_v3_6 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1546519333");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_6_Out,
    });
    self.box_RequestPhoneCall_v2_3 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1809547978");
    l0:SetConnections({
        -- Out,
        [3] = self.f_box_RequestPhoneCall_v2_3_Out,
    });
    self.box_MultipleOR_111 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1908239555");
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
        [0] = self.f_box_MultipleOR_111_Out,
    });
    self.box_SoundModifier_v2_25 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1982897808");
    l0:SetConnections({
    });
    self.box_SetVehicleAsLeashAnchor_45 = cbox:CreateBox("Domino/System/Coop/SetVehicleAsLeashAnchor.lua");
    l0 = self.box_SetVehicleAsLeashAnchor_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetVehicleAsLeashAnchor_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|2008477030");
    l0:SetConnections({
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|2040412546");
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
    self.box_ProximityRadiusListener_v3_115 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|2060935103");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_115_SomeoneNear,
    });
    self.box_EntityStatusListener_11 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|2117193167");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_11_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_11_Unloaded,
    });
    self.box_ActivityAcknowledgeGate_15 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|2137422597");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_15_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_15_Reloaded,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|288073063", "288073063", "KEY01_045_B25", "In", "box_ActivityAcknowledgeGate_15.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_75_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_KEY01_045_MissionZone_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|12668560", "12668560", "KEY01_045_B25", "box_Simple_Node_75.Out", "box_KEY01_045_MissionZone_22.DisableCustomUI", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableCustomUI
    l0:Exec(0, {
    });
    params = self:OnEnter_box_PlaneDistanceListener_29();
    l0 = self.box_PlaneDistanceListener_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1661146664", "1661146664", "KEY01_045_B25", "box_Simple_Node_75.Out", "box_PlaneDistanceListener_29.DisableListeners", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableListeners
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_87_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_6();
    l0 = self.box_Gate_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|2122971225", "2122971225", "KEY01_045_B25", "box_Simple_Node_87.Out", "box_Gate_v3_6.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_49_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_11();
    l0 = self.box_EntityStatusListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1111478116", "1111478116", "KEY01_045_B25", "box_Simple_Node_49.Out", "box_EntityStatusListener_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_120_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_91();
    l0 = self.box_VehicleListener_v3_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1716552493", "1716552493", "KEY01_045_B25", "box_Simple_Node_120.Out", "box_VehicleListener_v3_91.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_VehicleListener_v3_104();
    l0 = self.box_VehicleListener_v3_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1182079316", "1182079316", "KEY01_045_B25", "box_Simple_Node_120.Out", "box_VehicleListener_v3_104.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_109();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|2093207456", "2093207456", "KEY01_045_B25", "box_Simple_Node_120.Out", "box_OutputOrder_v2_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_36_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_12();
    l0 = self.box_PhoneCallExclusivityModifier_36;
    l1 = self.box_RequestPhoneCall_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|606702472", "606702472", "KEY01_045_B25", "box_PhoneCallExclusivityModifier_36.Enabled", "box_RequestPhoneCall_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_16_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_54();
    l0 = self.box_PhoneCallExclusivityModifier_16;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|5948451", "5948451", "KEY01_045_B25", "box_PhoneCallExclusivityModifier_16.Disabled", "box_SetActivityFact_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_95_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_104();
    l0 = self.box_VehicleListener_v3_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1966966964", "1966966964", "KEY01_045_B25", "box_Compare_Strings_95.A_eq_B", "box_VehicleListener_v3_104.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Strings_95_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_102();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|915294546", "915294546", "KEY01_045_B25", "box_Compare_Strings_95.A_neq_B", "box_Simple_Node_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_4_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_4;
    l1 = self.box_PhoneCallExclusivityModifier_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|29627703", "29627703", "KEY01_045_B25", "box_RequestPhoneCall_v2_4.Completed", "box_PhoneCallExclusivityModifier_16.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_RequestPhoneCall_v2_4_Out()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_4;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|253039636", "253039636", "KEY01_045_B25", "box_RequestPhoneCall_v2_4.Out", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPreconditionState_85_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_84();
    l0 = self.box_PreconditionListener_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1028856745", "1028856745", "KEY01_045_B25", "box_GetPreconditionState_85.NotValid", "box_PreconditionListener_84.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_85_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1889528430", "1889528430", "KEY01_045_B25", "box_GetPreconditionState_85.Valid", "box_OutputOrder_v2_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_90();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|2107109932", "2107109932", "KEY01_045_B25", "box_ActivityInitialized_2.Out", "box_GetPlayerGroup_v2_90.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_18_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_18;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|168838541", "168838541", "KEY01_045_B25", "box_MultipleOR_18.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SetVehicleAsLeashAnchor_40_OnMissionVehicleSet()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Strings_95();
    l0 = self.box_SetVehicleAsLeashAnchor_40;
    l1 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|665247317", "665247317", "KEY01_045_B25", "box_SetVehicleAsLeashAnchor_40.OnMissionVehicleSet", "box_Compare_Strings_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_83_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_83;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1886532101", "1886532101", "KEY01_045_B25", "box_PreconditionListener_83.PreconditionMet", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_109_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_113();
    l0 = self.box_ProximityRadiusListener_v3_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|940360965", "940360965", "KEY01_045_B25", "box_OutputOrder_v2_109.Out", "box_ProximityRadiusListener_v3_113.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_110();
    l0 = self.box_ProximityRadiusListener_v3_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1491703220", "1491703220", "KEY01_045_B25", "box_OutputOrder_v2_109.Out", "box_ProximityRadiusListener_v3_110.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_GetPawnVehicleInfo_39_InVehicle()
    self:OnExit_box_GetPawnVehicleInfo_39_InVehicle();
end;

function export:f_box_GetPawnVehicleInfo_39_NotInVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_39_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_38();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1499306108", "1499306108", "KEY01_045_B25", "box_GetPawnVehicleInfo_39.NotInVehicle", "box_EndActivityObjective_v2_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_39_Out()
    self:OnExit_box_GetPawnVehicleInfo_39_Out();
end;

function export:f_box_OutputOrder_v2_93_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_112();
    l0 = self.box_Delay_v5_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1991348787", "1991348787", "KEY01_045_B25", "box_OutputOrder_v2_93.Out", "box_Delay_v5_112.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_93_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_TakeControl_Vehicle_Generic_92();
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|599639037", "599639037", "KEY01_045_B25", "box_OutputOrder_v2_93.Out", "box_Brick_TakeControl_Vehicle_Generic_92.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_86_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_86;
    l1 = self.box_MultipleOR_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|2105316582", "2105316582", "KEY01_045_B25", "box_MultipleOR_86.Out", "box_MultipleOR_81.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_116_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_94();
    l0 = self.box_MultipleOR_116;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|31175670", "31175670", "KEY01_045_B25", "box_MultipleOR_116.Out", "box_ActivityObjectiveMarkerModifier_v3_94.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_TakeControl_Vehicle_Generic_92_Started()
    self:OnExit_box_Brick_TakeControl_Vehicle_Generic_92_Started();
end;

function export:f_box_Brick_TakeControl_Vehicle_Generic_92_Success()
    local params, l0, l1;
    self:OnExit_box_Brick_TakeControl_Vehicle_Generic_92_Success();
    params = self:OnEnter_box_OutputOrder_v2_105();
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_92;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|746129239", "746129239", "KEY01_045_B25", "box_Brick_TakeControl_Vehicle_Generic_92.Success", "box_OutputOrder_v2_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_75();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1347841694", "1347841694", "KEY01_045_B25", "box_OutputOrder_v2_71.Out", "box_Simple_Node_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_19();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|582740262", "582740262", "KEY01_045_B25", "box_OutputOrder_v2_71.Out", "box_ActivityRetry_19.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_11();
    l0 = self.box_MultipleOR_51;
    l1 = self.box_EntityStatusListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|95644081", "95644081", "KEY01_045_B25", "box_MultipleOR_51.Out", "box_EntityStatusListener_11.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPreconditionState_77_NotValid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_83();
    l0 = self.box_PreconditionListener_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1329401480", "1329401480", "KEY01_045_B25", "box_GetPreconditionState_77.NotValid", "box_PreconditionListener_83.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPreconditionState_77_Valid()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_80();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|164350695", "164350695", "KEY01_045_B25", "box_GetPreconditionState_77.Valid", "box_OutputOrder_v2_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_103_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1081832084", "1081832084", "KEY01_045_B25", "box_OutputOrder_v2_103.Out", "box_OnceOnly_v3_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_103_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_99();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1080734318", "1080734318", "KEY01_045_B25", "box_OutputOrder_v2_103.Out", "box_GetPawnVehicleInfo_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_112_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_114();
    l0 = self.box_Delay_v5_112;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1977766946", "1977766946", "KEY01_045_B25", "box_Delay_v5_112.TimeElapsed", "box_OutputOrder_v2_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_97_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_93();
    l0 = self.box_MultipleOR_97;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|2126978667", "2126978667", "KEY01_045_B25", "box_MultipleOR_97.Out", "box_OutputOrder_v2_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_27_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|131041767", "131041767", "KEY01_045_B25", "box_SetActivityObjectiveProgress_v2_27.Out", "box_OutputOrder_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_104_OnAllStanding()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_104;
    l1 = self.box_MultipleOR_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|634821255", "634821255", "KEY01_045_B25", "box_VehicleListener_v3_104.OnAllStanding", "box_MultipleOR_97.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Strings_50_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_13();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1524773002", "1524773002", "KEY01_045_B25", "box_Compare_Strings_50.A_eq_B", "box_Simple_Node_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_50_A_neq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1370048417", "1370048417", "KEY01_045_B25", "box_Compare_Strings_50.A_neq_B", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_12_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_12;
    l1 = self.box_PhoneCallExclusivityModifier_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|557738393", "557738393", "KEY01_045_B25", "box_RequestPhoneCall_v2_12.Completed", "box_PhoneCallExclusivityModifier_37.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_ForceInVehicle_v2_43_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1328286927", "1328286927", "KEY01_045_B25", "box_ForceInVehicle_v2_43.Out", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ProximityRadiusListener_v3_118_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_118;
    l1 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|330013593", "330013593", "KEY01_045_B25", "box_ProximityRadiusListener_v3_118.SomeoneFar", "box_MultipleOR_116.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_110_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_110;
    l1 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1408455578", "1408455578", "KEY01_045_B25", "box_ProximityRadiusListener_v3_110.SomeoneFar", "box_MultipleOR_111.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_52_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityFact_47();
    l0 = self.box_OnceOnly_v3_52;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1552849486", "1552849486", "KEY01_045_B25", "box_OnceOnly_v3_52.Out", "box_GetActivityFact_47.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_47_FactNotSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1487300384", "1487300384", "KEY01_045_B25", "box_GetActivityFact_47.FactNotSet", "box_PhoneCallExclusivityModifier_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_GetActivityFact_47_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1433984755", "1433984755", "KEY01_045_B25", "box_GetActivityFact_47.FactSet", "box_MultipleOR_53.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayerGroup_v2_90_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_90_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_103();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1486668388", "1486668388", "KEY01_045_B25", "box_GetPlayerGroup_v2_90.Out", "box_OutputOrder_v2_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_82_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_82;
    l1 = self.box_MultipleOR_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|327661581", "327661581", "KEY01_045_B25", "box_MultipleOR_82.Out", "box_MultipleOR_81.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EndActivityObjective_v2_67_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1846637373", "1846637373", "KEY01_045_B25", "box_EndActivityObjective_v2_67.Out", "box_Delay_v5_28.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_80_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|2107314754", "2107314754", "KEY01_045_B25", "box_OutputOrder_v2_80.Out", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_80_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_87();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1501596505", "1501596505", "KEY01_045_B25", "box_OutputOrder_v2_80.Out", "box_Simple_Node_87.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ForceInVehicle_v2_43();
    l0 = self.box_Delay_v5_41;
    l1 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1889588714", "1889588714", "KEY01_045_B25", "box_Delay_v5_41.TimeElapsed", "box_ForceInVehicle_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_8_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_9();
    l0 = self.box_Switch_8;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1670364004", "1670364004", "KEY01_045_B25", "box_Switch_8.Output", "box_SetActivityObjectiveProgress_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_8_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_27();
    l0 = self.box_Switch_8;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1229265630", "1229265630", "KEY01_045_B25", "box_Switch_8.Output", "box_SetActivityObjectiveProgress_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_98_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_98;
    l1 = self.box_PhoneCallExclusivityModifier_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|704630630", "704630630", "KEY01_045_B25", "box_RequestPhoneCall_v2_98.Completed", "box_PhoneCallExclusivityModifier_31.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_PreconditionListener_84_PreconditionMet()
    local l0, l1;
    l0 = self.box_PreconditionListener_84;
    l1 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|486164277", "486164277", "KEY01_045_B25", "box_PreconditionListener_84.PreconditionMet", "box_MultipleOR_86.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_119_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_88();
    l0 = self.box_MultipleOR_119;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|45189423", "45189423", "KEY01_045_B25", "box_MultipleOR_119.Out", "box_ActivityObjectiveMarkerModifier_v3_88.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_79_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_8();
    l0 = self.box_Delay_v5_79;
    l1 = self.box_Switch_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|761938876", "761938876", "KEY01_045_B25", "box_Delay_v5_79.TimeElapsed", "box_Switch_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Simple_Node_102_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|2098293794", "2098293794", "KEY01_045_B25", "box_Simple_Node_102.Out", "box_MultipleOR_97.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_113_Enabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_113;
    l1 = self.box_MultipleOR_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|2097562188", "2097562188", "KEY01_045_B25", "box_ProximityRadiusListener_v3_113.Enabled", "box_MultipleOR_111.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_113_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_107();
    l0 = self.box_ProximityRadiusListener_v3_113;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|2098595247", "2098595247", "KEY01_045_B25", "box_ProximityRadiusListener_v3_113.SomeoneNear", "box_ActivityObjectiveMarkerModifier_v3_107.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_99_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_99_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetVehicleAsLeashAnchor_40();
    l0 = self.box_SetVehicleAsLeashAnchor_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|747045216", "747045216", "KEY01_045_B25", "box_GetPawnVehicleInfo_99.InVehicle", "box_SetVehicleAsLeashAnchor_40.SetMissionVehicle", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetMissionVehicle
    l0:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_99_NotInVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_99_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_106();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|347118961", "347118961", "KEY01_045_B25", "box_GetPawnVehicleInfo_99.NotInVehicle", "box_Simple_Node_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_99_Out()
    self:OnExit_box_GetPawnVehicleInfo_99_Out();
end;

function export:f_box_GetPawnVehicleInfo_14_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_14_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_50();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|793428412", "793428412", "KEY01_045_B25", "box_GetPawnVehicleInfo_14.InVehicle", "box_Compare_Strings_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_14_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_14_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1631585387", "1631585387", "KEY01_045_B25", "box_GetPawnVehicleInfo_14.NotInVehicle", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_14_Out()
    self:OnExit_box_GetPawnVehicleInfo_14_Out();
end;

function export:f_box_Simple_Node_106_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1932427941", "1932427941", "KEY01_045_B25", "box_Simple_Node_106.Out", "box_MultipleOR_97.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = self.box_Delay_v5_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|985280582", "985280582", "KEY01_045_B25", "box_Delay_v5_28.TimeElapsed", "box_OutputOrder_v2_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_85();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|146895080", "146895080", "KEY01_045_B25", "box_OutputOrder_v2_78.Out", "box_GetPreconditionState_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPreconditionState_77();
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1117634529", "1117634529", "KEY01_045_B25", "box_OutputOrder_v2_78.Out", "box_GetPreconditionState_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_117_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|208913583", "208913583", "KEY01_045_B25", "box_OutputOrder_v2_117.Out", "box_MultipleOR_116.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_117_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_115();
    l0 = self.box_ProximityRadiusListener_v3_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1483574471", "1483574471", "KEY01_045_B25", "box_OutputOrder_v2_117.Out", "box_ProximityRadiusListener_v3_115.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_117_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_118();
    l0 = self.box_ProximityRadiusListener_v3_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1569339457", "1569339457", "KEY01_045_B25", "box_OutputOrder_v2_117.Out", "box_ProximityRadiusListener_v3_118.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_117_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetVehicleAsLeashAnchor_44();
    l0 = self.box_SetVehicleAsLeashAnchor_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1208103380", "1208103380", "KEY01_045_B25", "box_OutputOrder_v2_117.Out", "box_SetVehicleAsLeashAnchor_44.ClearMissionVehicle", clone:GetLuaBox(), l0:GetLuaBox());
    -- ClearMissionVehicle
    l0:Exec(0, params);
end;

function export:f_box_KEY01_045_MissionZone_22_RingOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_71();
    l0 = self.box_KEY01_045_MissionZone_22;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1473565920", "1473565920", "KEY01_045_B25", "box_KEY01_045_MissionZone_22.RingOut", "box_OutputOrder_v2_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_17_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_98();
    l0 = self.box_PhoneCallExclusivityModifier_17;
    l1 = self.box_RequestPhoneCall_v2_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|685642450", "685642450", "KEY01_045_B25", "box_PhoneCallExclusivityModifier_17.Enabled", "box_RequestPhoneCall_v2_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1005110655", "1005110655", "KEY01_045_B25", "box_Simple_Node_13.Out", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_81_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_79();
    l0 = self.box_MultipleOR_81;
    l1 = self.box_Delay_v5_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1090467662", "1090467662", "KEY01_045_B25", "box_MultipleOR_81.Out", "box_Delay_v5_79.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetActivityFact_54_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SaveOpenWorldBox_55();
    l0 = Boxes[GetPathID("Domino/System/SaveOpenWorld.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1619762880", "1619762880", "KEY01_045_B25", "box_SetActivityFact_54.Out", "box_SaveOpenWorldBox_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_100_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|542646999", "542646999", "KEY01_045_B25", "box_OutputOrder_v2_100.Out", "box_PhoneCallExclusivityModifier_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_100_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_101();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1664267418", "1664267418", "KEY01_045_B25", "box_OutputOrder_v2_100.Out", "box_AddActivityObjective_v2_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_91_OnAllSitting()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_96();
    l0 = self.box_VehicleListener_v3_91;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|2075959141", "2075959141", "KEY01_045_B25", "box_VehicleListener_v3_91.OnAllSitting", "box_OutputOrder_v2_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_91_OnAllStanding()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_117();
    l0 = self.box_VehicleListener_v3_91;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1690473380", "1690473380", "KEY01_045_B25", "box_VehicleListener_v3_91.OnAllStanding", "box_OutputOrder_v2_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_89_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_100();
    l0 = self.box_OnceOnly_v3_89;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|91662026", "91662026", "KEY01_045_B25", "box_OnceOnly_v3_89.Out", "box_OutputOrder_v2_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_49();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1180339903", "1180339903", "KEY01_045_B25", "box_OutputOrder_v2_48.Out", "box_Simple_Node_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1486158789", "1486158789", "KEY01_045_B25", "box_OutputOrder_v2_48.Out", "box_Delay_v5_41.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PhoneCallExclusivityModifier_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_4();
    l0 = self.box_PhoneCallExclusivityModifier_1;
    l1 = self.box_RequestPhoneCall_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1114708565", "1114708565", "KEY01_045_B25", "box_PhoneCallExclusivityModifier_1.Enabled", "box_RequestPhoneCall_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_6_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_6;
    l1 = self.box_PhoneCallExclusivityModifier_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|882863058", "882863058", "KEY01_045_B25", "box_Gate_v3_6.Out", "box_PhoneCallExclusivityModifier_36.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_75();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|210109066", "210109066", "KEY01_045_B25", "box_OutputOrder_v2_69.Out", "box_Simple_Node_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_39();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1659077455", "1659077455", "KEY01_045_B25", "box_OutputOrder_v2_69.Out", "box_GetPawnVehicleInfo_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetVehicleAsLeashAnchor_45();
    l0 = self.box_SetVehicleAsLeashAnchor_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|531606824", "531606824", "KEY01_045_B25", "box_OutputOrder_v2_69.Out", "box_SetVehicleAsLeashAnchor_45.ClearMissionVehicle", clone:GetLuaBox(), l0:GetLuaBox());
    -- ClearMissionVehicle
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_69_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|472980542", "472980542", "KEY01_045_B25", "box_OutputOrder_v2_69.Out", "box_ActivityEnd_7.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_67();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1940635122", "1940635122", "KEY01_045_B25", "box_OutputOrder_v2_26.Out", "box_EndActivityObjective_v2_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_25();
    l0 = self.box_SoundModifier_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1088309295", "1088309295", "KEY01_045_B25", "box_OutputOrder_v2_26.Out", "box_SoundModifier_v2_25.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|225910834", "225910834", "KEY01_045_B25", "box_OutputOrder_v2_76.Out", "box_MultipleOR_86.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_87();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|628523048", "628523048", "KEY01_045_B25", "box_OutputOrder_v2_76.Out", "box_Simple_Node_87.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_105_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_112();
    l0 = self.box_Delay_v5_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|508296336", "508296336", "KEY01_045_B25", "box_OutputOrder_v2_105.Out", "box_Delay_v5_112.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_105_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_24();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1378679303", "1378679303", "KEY01_045_B25", "box_OutputOrder_v2_105.Out", "box_ActivityObjectiveMarkerModifier_v3_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_105_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|522841207", "522841207", "KEY01_045_B25", "box_OutputOrder_v2_105.Out", "box_Simple_Node_120.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_105_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetVehicleAsLeashAnchor_42();
    l0 = self.box_SetVehicleAsLeashAnchor_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1774606418", "1774606418", "KEY01_045_B25", "box_OutputOrder_v2_105.Out", "box_SetVehicleAsLeashAnchor_42.SetMissionVehicle", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetMissionVehicle
    l0:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = self.box_RequestPhoneCall_v2_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1836200132", "1836200132", "KEY01_045_B25", "box_RequestPhoneCall_v2_3.Out", "box_OutputOrder_v2_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_114_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1342711624", "1342711624", "KEY01_045_B25", "box_OutputOrder_v2_114.Out", "box_OnceOnly_v3_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_114_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_113();
    l0 = self.box_ProximityRadiusListener_v3_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|350776982", "350776982", "KEY01_045_B25", "box_OutputOrder_v2_114.Out", "box_ProximityRadiusListener_v3_113.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_114_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_110();
    l0 = self.box_ProximityRadiusListener_v3_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1355175462", "1355175462", "KEY01_045_B25", "box_OutputOrder_v2_114.Out", "box_ProximityRadiusListener_v3_110.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_AddActivityObjectiveProgress_v2_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_3();
    l0 = self.box_RequestPhoneCall_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1411815191", "1411815191", "KEY01_045_B25", "box_AddActivityObjectiveProgress_v2_10.Out", "box_RequestPhoneCall_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_111_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_108();
    l0 = self.box_MultipleOR_111;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|776375490", "776375490", "KEY01_045_B25", "box_MultipleOR_111.Out", "box_ActivityObjectiveMarkerModifier_v3_108.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_6();
    l0 = self.box_Gate_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1040709508", "1040709508", "KEY01_045_B25", "box_SetActivityObjectiveProgress_v2_9.Out", "box_Gate_v3_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_96_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1032288621", "1032288621", "KEY01_045_B25", "box_OutputOrder_v2_96.Out", "box_MultipleOR_119.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_96_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_115();
    l0 = self.box_ProximityRadiusListener_v3_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|748072812", "748072812", "KEY01_045_B25", "box_OutputOrder_v2_96.Out", "box_ProximityRadiusListener_v3_115.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_96_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_118();
    l0 = self.box_ProximityRadiusListener_v3_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1969631374", "1969631374", "KEY01_045_B25", "box_OutputOrder_v2_96.Out", "box_ProximityRadiusListener_v3_118.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_5();
    l0 = self.box_MultipleOR_53;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1670079097", "1670079097", "KEY01_045_B25", "box_MultipleOR_53.Out", "box_AddActivityObjective_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_115_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_115;
    l1 = self.box_MultipleOR_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|632716736", "632716736", "KEY01_045_B25", "box_ProximityRadiusListener_v3_115.SomeoneNear", "box_MultipleOR_119.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AddActivityObjective_v2_5_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1354733429", "1354733429", "KEY01_045_B25", "box_AddActivityObjective_v2_5.Out", "box_AddActivityObjectiveProgress_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_11_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = self.box_EntityStatusListener_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|2076307451", "2076307451", "KEY01_045_B25", "box_EntityStatusListener_11.Loaded", "box_OutputOrder_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_11_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_11;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|975370504", "975370504", "KEY01_045_B25", "box_EntityStatusListener_11.Unloaded", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_ActivityAcknowledgeGate_15_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_15;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1128956407", "1128956407", "KEY01_045_B25", "box_ActivityAcknowledgeGate_15.Acknowledged", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_15_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_14();
    l0 = self.box_ActivityAcknowledgeGate_15;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|216062320", "216062320", "KEY01_045_B25", "box_ActivityAcknowledgeGate_15.Reloaded", "box_GetPawnVehicleInfo_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|@nCleanCustomUI");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_75_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|@nDisablePhoneCall");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_87_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|@nDisableSpawnerListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_49_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|@ReEnableSeatListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_120_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|53119805");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2105061809944820738",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "KEY01_010_B30_OBJ_GetinPlane",
            id = "730953",
        },
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|72817357");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_95_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_95_A_neq_B,
    });
    params = {
        -- A,
        [0] = self._sld_vehicleType_box_GetPawnVehicleInfo_99,
        -- B,
        [1] = "Plane",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|117780725");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2105061809944820738",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "KEY01_010_B30_OBJ_GetinPlane",
            id = "730953",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|170567549");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2105061809944820738",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "KEY01_010_B30_OBJ_GetinPlane",
            id = "730953",
        },
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_4()
    local params;
    params = {
        -- Delay,
        [2] = 2,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3591573615",
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|193055383");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_85_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_85_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015292493486241",
    };
    return params;
end;

function export:OnEnter_box_SaveOpenWorldBox_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SaveOpenWorld.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SaveOpenWorldBox_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|256820914");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetVehicleAsLeashAnchor_44()
    local params;
    params = {
        -- targetVehicleEntity,
        [0] = self.ePlayerVehicle,
    };
    return params;
end;

function export:OnEnter_box_SetVehicleAsLeashAnchor_40()
    local params;
    params = {
        -- targetVehicleEntity,
        [0] = self.ePlayerVehicle,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|435730851");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_83()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015292493519636",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|449453504");
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
                [0] = self.f_box_OutputOrder_v2_109_Out_0,
                [1] = self.f_box_OutputOrder_v2_109_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|451206083");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_39_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_39_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_39_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|474010413");
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
                [0] = self.f_box_OutputOrder_v2_93_Out_0,
                [1] = self.f_box_OutputOrder_v2_93_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_TakeControl_Vehicle_Generic_92()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [1] = false,
        -- hasObjective,
        [2] = false,
        -- o_Objective,
        [3] = {
            section = "BRICK_Steal_Vehicle",
            item = "BRICK_Steal_Vehicle_OBJ",
            id = "376562",
        },
        -- sVehicleType,
        [4] = "Plane",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|577313766");
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
                [0] = self.f_box_OutputOrder_v2_71_Out_0,
                [1] = self.f_box_OutputOrder_v2_71_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPreconditionState_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetPreconditionState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPreconditionState_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|607873865");
    l0:SetConnections({
        -- NotValid,
        [0] = self.f_box_GetPreconditionState_77_NotValid,
        -- Valid,
        [1] = self.f_box_GetPreconditionState_77_Valid,
    });
    params = {
        -- PreconditionId,
        [0] = "9015292493519636",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|637051053");
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
                [0] = self.f_box_OutputOrder_v2_103_Out_0,
                [1] = self.f_box_OutputOrder_v2_103_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_112()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|680476495");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_27_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "KEY01_045_B25_¸OBJ",
            id = "427670",
        },
        -- Progress,
        [1] = 2,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlaneDistanceListener_29()
    local params;
    params = {
        -- PlaneEntity,
        [0] = self.ePlayerVehicle,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|802590988");
    l0:SetConnections({
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "KEY01_010_B30_OBJ_GetinPlane",
            id = "730953",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_104()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = self.ePlayerVehicle,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|821287805");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_50_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_50_A_neq_B,
    });
    params = {
        -- A,
        [0] = "Plane",
        -- B,
        [1] = self._sld_vehicleType_box_GetPawnVehicleInfo_14,
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|853605705");
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

function export:OnEnter_box_RequestPhoneCall_v2_12()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3094105564",
    };
    return params;
end;

function export:OnEnter_box_ForceInVehicle_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceInVehicle_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|913863916");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ForceInVehicle_v2_43_Out,
    });
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- SeatType,
        [1] = 1,
        -- vehicleEntity,
        [2] = "2098521210296998639",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_118()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.FriendPlayers,
        -- farZone,
        [2] = 35,
        -- id2,
        [3] = "2105061809944820738",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|924263063");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2105061809944820738",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "KEY01_010_B30_OBJ_GetinPlane",
            id = "730953",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_110()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.FriendPlayers,
        -- farZone,
        [2] = 35,
        -- id2,
        [3] = "2105061809944820738",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|983242862");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_47_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_47_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015280148432329",
        -- Fact,
        [1] = "calldone",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1010346065");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_90_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1053640467");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_67_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "KEY01_045_B25_¸OBJ",
            id = "427670",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1068732346");
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
                [0] = self.f_box_OutputOrder_v2_80_Out_0,
                [1] = self.f_box_OutputOrder_v2_80_Out_1,
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
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Switch_8()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_98()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3503274606",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1182218196");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2105061809944820738",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "KEY01_010_B30_OBJ_GetinPlane",
            id = "730953",
        },
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_84()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015292493486241",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_79()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1289105802");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_102_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_113()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.FriendPlayers,
        -- id2,
        [3] = "2105061809944820738",
        -- nearZone,
        [4] = 35,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1305006458");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_99_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_99_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_99_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1313614717");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_14_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_14_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_14_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1346309512");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_106_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_28()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1359235128");
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

function export:OnEnter_box_OutputOrder_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1377385280");
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
                [0] = self.f_box_OutputOrder_v2_117_Out_0,
                [1] = self.f_box_OutputOrder_v2_117_Out_1,
                [2] = self.f_box_OutputOrder_v2_117_Out_2,
                [3] = self.f_box_OutputOrder_v2_117_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1446634503");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_13_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1469389845");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_54_Out,
    });
    params = {
        -- Fact,
        [0] = "calldone",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1476383728");
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
                [0] = self.f_box_OutputOrder_v2_100_Out_0,
                [1] = self.f_box_OutputOrder_v2_100_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetVehicleAsLeashAnchor_42()
    local params;
    params = {
        -- targetVehicleEntity,
        [0] = self.ePlayerVehicle,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_91()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = "#ED455357",
        -- vehicleTypeFilter,
        [5] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1531711794");
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

function export:OnEnter_box_Gate_v3_6()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1587064785");
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
                [0] = self.f_box_OutputOrder_v2_69_Out_0,
                [1] = self.f_box_OutputOrder_v2_69_Out_1,
                [2] = self.f_box_OutputOrder_v2_69_Out_2,
                [3] = self.f_box_OutputOrder_v2_69_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1654108650");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1681658887");
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
                [0] = self.f_box_OutputOrder_v2_76_Out_0,
                [1] = self.f_box_OutputOrder_v2_76_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1684098890");
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
                [0] = self.f_box_OutputOrder_v2_105_Out_0,
                [1] = self.f_box_OutputOrder_v2_105_Out_1,
                [2] = self.f_box_OutputOrder_v2_105_Out_2,
                [3] = self.f_box_OutputOrder_v2_105_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_3()
    local params;
    params = {
        -- Delay,
        [2] = 10,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "189462598",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1819001396");
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
                [0] = self.f_box_OutputOrder_v2_114_Out_0,
                [1] = self.f_box_OutputOrder_v2_114_Out_1,
                [2] = self.f_box_OutputOrder_v2_114_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1845846683");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_10_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "KEY01_045_B25_¸OBJ",
            id = "427670",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1910837283");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_9_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "KEY01_045_B25_¸OBJ",
            id = "427670",
        },
        -- Progress,
        [1] = 1,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|1971066618");
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
                [0] = self.f_box_OutputOrder_v2_96_Out_0,
                [1] = self.f_box_OutputOrder_v2_96_Out_1,
                [2] = self.f_box_OutputOrder_v2_96_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_25()
    local params;
    DrawTextToScreen("Comment: ConvoyDestroyed", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: ConvoyDestroyed");
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2102059229",
        -- SoundType,
        [2] = 17,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetVehicleAsLeashAnchor_45()
    local params;
    params = {
        -- targetVehicleEntity,
        [0] = self.ePlayerVehicle,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_115()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.FriendPlayers,
        -- id2,
        [3] = "2105061809944820738",
        -- nearZone,
        [4] = 35,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|2105483702");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "KEY01_010_B30_OBJ_GetinPlane",
            id = "730953",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_040\\KEY01_045_B20.domino|@KEY01_045_B25|2115419542");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_5_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "KEY01_045_B25_¸OBJ",
            id = "427670",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_11()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2098521210296998639",
    };
    return params;
end;

function export:OnExit_box_GetPawnVehicleInfo_39_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.DummyVarEntity = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_39_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.DummyVarEntity = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_39_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.DummyVarEntity = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_TakeControl_Vehicle_Generic_92_Started()
    local l0;
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_92;
    self.ePlayerVehicle = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_TakeControl_Vehicle_Generic_92_Success()
    local l0;
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_92;
    self.ePlayerVehicle = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_90_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.FriendPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_99_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.ePlayerVehicle = l0:GetDataOutValue(2);
    self._sld_vehicleType_box_GetPawnVehicleInfo_99 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_99_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.ePlayerVehicle = l0:GetDataOutValue(2);
    self._sld_vehicleType_box_GetPawnVehicleInfo_99 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_99_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.ePlayerVehicle = l0:GetDataOutValue(2);
    self._sld_vehicleType_box_GetPawnVehicleInfo_99 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_14_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.ePlayerVehicle = l0:GetDataOutValue(2);
    self._sld_vehicleType_box_GetPawnVehicleInfo_14 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_14_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.ePlayerVehicle = l0:GetDataOutValue(2);
    self._sld_vehicleType_box_GetPawnVehicleInfo_14 = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.ePlayerVehicle = l0:GetDataOutValue(2);
    self._sld_vehicleType_box_GetPawnVehicleInfo_14 = l0:GetDataOutValue(3);
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
