LUAC -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key02/key02_005/key02_005_b15.domino
-- User graph: KEY02_005_B15_RespawnChecker
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Specific.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ForceExitVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/ForceInVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/RadioStationModifier.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetOasis.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleSeatModifier_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B10.globals.lua");
        cboxRes:RegisterGlobals("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B15.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[entityarchetypeslibrary/9015247012959947.ark.fcb]], "CEntityArchetypeRes");
    end;
end;

function export:ResetLocalGlobals()
    Globals.KEY02_005_B15 = nil;
    Globals.KEY02_005_B15 = {
        var_Reloaded = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B15.KEY02_005_B15_RespawnChecker.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/RadioStationModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "AddBlockToPlay",
            },
            [1] = {
                name = "Censor",
            },
            [2] = {
                name = "Uncensor",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "AddedBlockToPlay",
                delayed = false,
            },
            [1] = {
                name = "Censored",
                delayed = false,
            },
            [2] = {
                name = "Uncensored",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "FadeDuration",
                type = "float",
            },
            [1] = {
                name = "IsRadioBlockPermanent",
                type = "bool",
            },
            [2] = {
                name = "MustPlayRadioBlockImmediately",
                type = "bool",
            },
            [3] = {
                name = "RadioBlockToPlay",
                type = "genericdb",
            },
            [4] = {
                name = "TargetStation",
                type = "genericdb",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/SetOasis.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromDuniaOasis",
            },
            [1] = {
                name = "FromOasis",
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
                name = "Oasis",
                type = "oasis",
            },
            [1] = {
                name = "OasisFromEditor",
                type = "oasiseditor",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Target",
                type = "oasis",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "KEY02_005_B15_RespawnChecker";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker";
    self.Out = DummyFunction;
    self.var_Reloaded = false;
    self.g_PlayerGroup = nil;
    self.var_FailureReason = {
        section = "",
        item = "",
        id = "",
    };
    self.box_Brick_TakeControl_Vehicle_Specific_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Specific.debug.lua");
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_TakeControl_Vehicle_Specific_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|200742888");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Brick_TakeControl_Vehicle_Specific_9_Started,
        -- Success,
        [2] = self.f_box_Brick_TakeControl_Vehicle_Specific_9_Success,
    });
    self.box_RadioStationModifier_33 = cbox:CreateBox("Domino/System/RadioStationModifier.lua");
    l0 = self.box_RadioStationModifier_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioStationModifier_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|230041483");
    l0:SetConnections({
        -- AddedBlockToPlay,
        [0] = self.f_box_RadioStationModifier_33_AddedBlockToPlay,
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|300106342");
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
        [0] = self.f_box_MultipleOR_19_Out,
    });
    self.box_ActivityInitialized_40 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|416757814");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_40_Out,
    });
    self.box_EntityStatusListener_1 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|418983287");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_1_Loaded,
    });
    self.box_Gate_v3_41 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|450078892");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_41_Out,
    });
    self.box_EntityStatusListener_29 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|537568216");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_29_Loaded,
    });
    self.box_SpawnAI_6 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|666626345");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_6_Out,
    });
    self.box_ActivityInitialized_15 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|724521195");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_15_Out,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|790762205");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_VehicleListener_v3_39 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|835287638");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VehicleListener_v3_39_Disabled,
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_39_Enabled,
        -- OnAllSitting,
        [2] = self.f_box_VehicleListener_v3_39_OnAllSitting,
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_39_OnAllStanding,
        -- OnChangeSeat,
        [4] = self.f_box_VehicleListener_v3_39_OnChangeSeat,
        -- OnInteract,
        [5] = self.f_box_VehicleListener_v3_39_OnInteract,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_39_OnSit,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_39_OnStandUp,
    });
    self.box_SpawnAI_26 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|937737505");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_26_Out,
    });
    self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|966795809");
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
        [0] = self.f_box_MultipleOR_45_Out,
    });
    self.box_Delay_v5_37 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1211220650");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_37_TimeElapsed,
    });
    self.box_OnceOnly_v3_22 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1318859152");
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
                [0] = self.f_box_OnceOnly_v3_22_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1389670591");
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
    self.box_VehicleListener_v3_43 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1418527385");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_43_Enabled,
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_43_OnAllStanding,
    });
    self.box_EntityStatusListener_28 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1754911378");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_28_Loaded,
    });
    self.box_OnceOnly_v3_10 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1769314714");
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
                [0] = self.f_box_OnceOnly_v3_10_Out_0,
            },
            count = 2,
        },
    });
    self.box_RemoveEntity_v2_44 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1993069660");
    l0:SetConnections({
    });
    self.box_Brick_TakeControl_Vehicle_Generic_16 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Generic.debug.lua");
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_TakeControl_Vehicle_Generic_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|2021773422");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_Brick_TakeControl_Vehicle_Generic_16_Started,
        -- Success,
        [1] = self.f_box_Brick_TakeControl_Vehicle_Generic_16_Success,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_VehicleListener_v3_39();
    l0 = self.box_VehicleListener_v3_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|785371715", "785371715", "KEY02_005_B15_RespawnChecker", "In", "box_VehicleListener_v3_39.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_39();
    l0 = self.box_VehicleListener_v3_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|566064279", "566064279", "KEY02_005_B15_RespawnChecker", "box_OutputOrder_v2_32.Out", "box_VehicleListener_v3_39.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_41();
    l0 = self.box_Gate_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1431386417", "1431386417", "KEY02_005_B15_RespawnChecker", "box_OutputOrder_v2_32.Out", "box_Gate_v3_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_42_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_42_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_43();
    l0 = self.box_VehicleListener_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|2027694559", "2027694559", "KEY02_005_B15_RespawnChecker", "box_GetPawnVehicleInfo_42.InVehicle", "box_VehicleListener_v3_43.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_42_NotInVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_42_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1077244091", "1077244091", "KEY02_005_B15_RespawnChecker", "box_GetPawnVehicleInfo_42.NotInVehicle", "box_MultipleOR_45.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPawnVehicleInfo_42_Out()
    self:OnExit_box_GetPawnVehicleInfo_42_Out();
end;

function export:f_box_Brick_TakeControl_Vehicle_Specific_9_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SetOasis_4();
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_9;
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|930104854", "930104854", "KEY02_005_B15_RespawnChecker", "box_Brick_TakeControl_Vehicle_Specific_9.Started", "box_SetOasis_4.FromOasis", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromOasis
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_TakeControl_Vehicle_Specific_9_Success()
    local l0, l1;
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_9;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|914169860", "914169860", "KEY02_005_B15_RespawnChecker", "box_Brick_TakeControl_Vehicle_Specific_9.Success", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_AddActivityObjective_v2_8_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1563485416", "1563485416", "KEY02_005_B15_RespawnChecker", "box_AddActivityObjective_v2_8.Out", "box_ActivityObjectiveMarkerModifier_v3_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RadioStationModifier_33_AddedBlockToPlay()
    local l0, l1;
    l0 = self.box_RadioStationModifier_33;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|728399449", "728399449", "KEY02_005_B15_RespawnChecker", "box_RadioStationModifier_33.AddedBlockToPlay", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_36_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_36_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1625239530", "1625239530", "KEY02_005_B15_RespawnChecker", "box_SetEntity_v2_36.Out", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_19_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_19;
    l1 = self.box_OnceOnly_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|233173680", "233173680", "KEY02_005_B15_RespawnChecker", "box_MultipleOR_19.Out", "box_OnceOnly_v3_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ForceInVehicle_v2_24_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_TakeControl_Vehicle_Specific_9();
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1751027267", "1751027267", "KEY02_005_B15_RespawnChecker", "box_ForceInVehicle_v2_24.Out", "box_Brick_TakeControl_Vehicle_Specific_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_ActivityInitialized_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = self.box_ActivityInitialized_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1021615163", "1021615163", "KEY02_005_B15_RespawnChecker", "box_ActivityInitialized_40.Out", "box_OutputOrder_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_1_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_5();
    l0 = self.box_EntityStatusListener_1;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1609450920", "1609450920", "KEY02_005_B15_RespawnChecker", "box_EntityStatusListener_1.Loaded", "box_SetEntity_v2_5.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_30();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|618798049", "618798049", "KEY02_005_B15_RespawnChecker", "box_OutputOrder_v2_31.Out", "box_VehicleSeatModifier_v2_30.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|964233282", "964233282", "KEY02_005_B15_RespawnChecker", "box_OutputOrder_v2_31.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_Gate_v3_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_11();
    l0 = self.box_Gate_v3_41;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|220765879", "220765879", "KEY02_005_B15_RespawnChecker", "box_Gate_v3_41.Out", "box_IsEntityLoaded_v3_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_27_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_23();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1090686486", "1090686486", "KEY02_005_B15_RespawnChecker", "box_ActivityObjectiveMarkerModifier_v3_27.Disabled", "box_EndActivityObjective_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_29_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_26();
    l0 = self.box_EntityStatusListener_29;
    l1 = self.box_SpawnAI_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1509036483", "1509036483", "KEY02_005_B15_RespawnChecker", "box_EntityStatusListener_29.Loaded", "box_SpawnAI_26.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_1();
    l0 = self.box_SpawnAI_6;
    l1 = self.box_EntityStatusListener_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|626126880", "626126880", "KEY02_005_B15_RespawnChecker", "box_SpawnAI_6.Out", "box_EntityStatusListener_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_8();
    l0 = self.box_ActivityInitialized_15;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1300391838", "1300391838", "KEY02_005_B15_RespawnChecker", "box_ActivityInitialized_15.Out", "box_AddActivityObjective_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_7_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_7;
    l1 = self.box_ActivityInitialized_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1222684078", "1222684078", "KEY02_005_B15_RespawnChecker", "box_MultipleOR_7.Out", "box_ActivityInitialized_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_VehicleListener_v3_39_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_37();
    l0 = self.box_VehicleListener_v3_39;
    l1 = self.box_Delay_v5_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|22521349", "22521349", "KEY02_005_B15_RespawnChecker", "box_VehicleListener_v3_39.Enabled", "box_Delay_v5_37.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_VehicleListener_v3_39_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = self.box_VehicleListener_v3_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|965320", "965320", "KEY02_005_B15_RespawnChecker", "box_VehicleListener_v3_39.OnSit", "box_OutputOrder_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_28();
    l0 = self.box_SpawnAI_26;
    l1 = self.box_EntityStatusListener_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1930117614", "1930117614", "KEY02_005_B15_RespawnChecker", "box_SpawnAI_26.Out", "box_EntityStatusListener_28.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ForceInVehicle_v2_18();
    l0 = self.box_MultipleOR_45;
    l1 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|2001655519", "2001655519", "KEY02_005_B15_RespawnChecker", "box_MultipleOR_45.Out", "box_ForceInVehicle_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ForceExitVehicle_v2_46_ForceExitted()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_44();
    l0 = self.box_RemoveEntity_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|64079420", "64079420", "KEY02_005_B15_RespawnChecker", "box_ForceExitVehicle_v2_46.ForceExitted", "box_RemoveEntity_v2_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_17_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|833708636", "833708636", "KEY02_005_B15_RespawnChecker", "box_Compare_Boolean_17.A_is_False", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_17_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_42();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|728433064", "728433064", "KEY02_005_B15_RespawnChecker", "box_Compare_Boolean_17.A_is_True", "box_GetPawnVehicleInfo_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1902568318", "1902568318", "KEY02_005_B15_RespawnChecker", "box_EndActivityObjective_v2_23.Out", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_12_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_12_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1793937103", "1793937103", "KEY02_005_B15_RespawnChecker", "box_SetEntity_v2_12.Out", "box_OutputOrder_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_37_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_Delay_v5_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|899424475", "899424475", "KEY02_005_B15_RespawnChecker", "box_Delay_v5_37.TimeElapsed", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_22_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_22;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|2122842005", "2122842005", "KEY02_005_B15_RespawnChecker", "box_OnceOnly_v3_22.Out", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_25_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_25;
    l1 = self.box_OnceOnly_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|584493491", "584493491", "KEY02_005_B15_RespawnChecker", "box_MultipleOR_25.Out", "box_OnceOnly_v3_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleListener_v3_43_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ForceExitVehicle_v2_46();
    l0 = self.box_VehicleListener_v3_43;
    l1 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|148864577", "148864577", "KEY02_005_B15_RespawnChecker", "box_VehicleListener_v3_43.Enabled", "box_ForceExitVehicle_v2_46.ForceExit", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceExit
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_43_OnAllStanding()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_43;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|702532470", "702532470", "KEY02_005_B15_RespawnChecker", "box_VehicleListener_v3_43.OnAllStanding", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayerGroup_v2_20_Out()
    local l0;
    self:OnExit_box_GetPlayerGroup_v2_20_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1584622822", "1584622822", "KEY02_005_B15_RespawnChecker", "box_GetPlayerGroup_v2_20.Out", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceInVehicle_v2_24();
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1166347676", "1166347676", "KEY02_005_B15_RespawnChecker", "box_OutputOrder_v2_14.Out", "box_ForceInVehicle_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_TakeControl_Vehicle_Generic_16();
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|915277834", "915277834", "KEY02_005_B15_RespawnChecker", "box_OutputOrder_v2_14.Out", "box_Brick_TakeControl_Vehicle_Generic_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_14_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_21();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1112580103", "1112580103", "KEY02_005_B15_RespawnChecker", "box_OutputOrder_v2_14.Out", "box_VehicleSeatModifier_v2_21.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_2_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_27();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1191678274", "1191678274", "KEY02_005_B15_RespawnChecker", "box_SetEntity_v2_2.Out", "box_ActivityObjectiveMarkerModifier_v3_27.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ForceInVehicle_v2_18_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioStationModifier_33();
    l0 = self.box_RadioStationModifier_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|323257165", "323257165", "KEY02_005_B15_RespawnChecker", "box_ForceInVehicle_v2_18.Out", "box_RadioStationModifier_33.AddBlockToPlay", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddBlockToPlay
    l0:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_3_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_29();
    l0 = self.box_EntityStatusListener_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|77421377", "77421377", "KEY02_005_B15_RespawnChecker", "box_ActivityObjectiveMarkerModifier_v3_3.Enabled", "box_EntityStatusListener_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_11_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_ActivityInitialized_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1292491616", "1292491616", "KEY02_005_B15_RespawnChecker", "box_IsEntityLoaded_v3_11.False", "box_ActivityInitialized_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_IsEntityLoaded_v3_11_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_6();
    l0 = self.box_SpawnAI_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|681760889", "681760889", "KEY02_005_B15_RespawnChecker", "box_IsEntityLoaded_v3_11.True", "box_SpawnAI_6.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_28_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_12();
    l0 = self.box_EntityStatusListener_28;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|744661103", "744661103", "KEY02_005_B15_RespawnChecker", "box_EntityStatusListener_28.Loaded", "box_SetEntity_v2_12.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_37();
    l0 = self.box_Delay_v5_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1484951638", "1484951638", "KEY02_005_B15_RespawnChecker", "box_OutputOrder_v2_35.Out", "box_Delay_v5_37.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_38();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|2027264945", "2027264945", "KEY02_005_B15_RespawnChecker", "box_OutputOrder_v2_35.Out", "box_GetPawnVehicleInfo_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_41();
    l0 = self.box_Gate_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|230259969", "230259969", "KEY02_005_B15_RespawnChecker", "box_OutputOrder_v2_35.Out", "box_Gate_v3_41.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_10_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetOasis_13();
    l0 = self.box_OnceOnly_v3_10;
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|638855859", "638855859", "KEY02_005_B15_RespawnChecker", "box_OnceOnly_v3_10.Out", "box_SetOasis_13.FromOasis", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromOasis
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_38_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_38_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_36();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1848688475", "1848688475", "KEY02_005_B15_RespawnChecker", "box_GetPawnVehicleInfo_38.InVehicle", "box_SetEntity_v2_36.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_38_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_38_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_38_Out()
    self:OnExit_box_GetPawnVehicleInfo_38_Out();
end;

function export:f_box_SetOasis_13_Out()
    local params, l0;
    self:OnExit_box_SetOasis_13_Out();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_20();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|377228303", "377228303", "KEY02_005_B15_RespawnChecker", "box_SetOasis_13.Out", "box_GetPlayerGroup_v2_20.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetOasis_4_Out()
    self:OnExit_box_SetOasis_4_Out();
end;

function export:f_box_Brick_TakeControl_Vehicle_Generic_16_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_2();
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_16;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1625366843", "1625366843", "KEY02_005_B15_RespawnChecker", "box_Brick_TakeControl_Vehicle_Generic_16.Success", "box_SetEntity_v2_2.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_5_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_17();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|627024108", "627024108", "KEY02_005_B15_RespawnChecker", "box_SetEntity_v2_5.Out", "box_Compare_Boolean_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|54992344");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|119434003");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_42_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_42_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_42_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_TakeControl_Vehicle_Specific_9()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- e_MobileObjectiveMarker,
        [1] = "2103126410431342381",
        -- e_Vehicle,
        [2] = PersistentGlobals.KEY02_005_B10.var_e_WidowMaker,
        -- hasObjective,
        [3] = false,
        -- o_Objective,
        [4] = {
            section = "BRICK_Steal_Vehicle",
            item = "BRICK_Steal_Vehicle_OBJ",
            id = "376562",
        },
        -- opt_FailReason,
        [5] = {
            section = "BRICK_Steal_Vehicle",
            item = "BRICK_Steal_Vehicle_FAIL",
            id = "376563",
        },
        -- opt_MarkerBone,
        [6] = "DRIVER_SITPOINT",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|228077468");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_8_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "KEy02_005_BX_OBJ",
            id = "742860",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_RadioStationModifier_33()
    local params;
    params = {
        -- FadeDuration,
        [0] = 3,
        -- IsRadioBlockPermanent,
        [1] = false,
        -- MustPlayRadioBlockImmediately,
        [2] = true,
        -- RadioBlockToPlay,
        [3] = "9015207160140708",
        -- TargetStation,
        [4] = "9015204464899149",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|250100435");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_36_Out,
    });
    params = {
        -- Entity,
        [0] = self._sld_vehicle_box_GetPawnVehicleInfo_38,
    };
    return params;
end;

function export:OnEnter_box_ForceInVehicle_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceInVehicle_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|320284303");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ForceInVehicle_v2_24_Out,
    });
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- SeatType,
        [1] = 1,
        -- vehicleEntity,
        [2] = PersistentGlobals.KEY02_005_B10.var_e_WidowMaker,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101288357171567470",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|442443198");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_41()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|462828748");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_27_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2103126410431342381",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "KEy02_005_BX_OBJ",
            id = "742860",
        },
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_29()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102682144871622380",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_6()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101288357158984550",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_39()
    local params;
    params = {
        -- archetypeId,
        [0] = "9015247012959947",
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_26()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102682144871622380",
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1008281337");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_46_ForceExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- vehicle,
        [2] = self._sld_vehicle_box_GetPawnVehicleInfo_42,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1086993346");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_17_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_17_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.KEY02_005_B15.var_Reloaded,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1107107215");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_23_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "KEy02_005_BX_OBJ",
            id = "742860",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1209213439");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_12_Out,
    });
    params = {
        -- Entity,
        [0] = "2102682144882108148",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_37()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1455270799");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_20_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1459776323");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
                [2] = self.f_box_OutputOrder_v2_14_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1486900909");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_2_Out,
    });
    l0 = self.box_Brick_TakeControl_Vehicle_Generic_16;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_ForceInVehicle_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceInVehicle_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1648358583");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ForceInVehicle_v2_18_Out,
    });
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- SeatType,
        [1] = 1,
        -- vehicleEntity,
        [2] = PersistentGlobals.KEY02_005_B10.var_e_WidowMaker,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1693333446");
    l0:SetConnections({
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = false,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 1,
        -- vehicleEntity,
        [4] = PersistentGlobals.KEY02_005_B10.var_e_WidowMaker,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1737040636");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_3_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2103126410431342381",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "KEy02_005_BX_OBJ",
            id = "742860",
        },
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1748739535");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_11_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_11_True,
    });
    params = {
        -- entityId,
        [0] = "2101288357158984550",
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
        [2] = "2102682144882108148",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1764489790");
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

function export:OnEnter_box_GetPawnVehicleInfo_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1809149930");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_38_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_38_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_38_Out,
    });
    l0 = self.box_VehicleListener_v3_39;
    params = {
        -- pawn,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_SetOasis_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetOasis_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1902808992");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetOasis_13_Out,
    });
    params = {
        -- Oasis,
        [0] = {
            section = "Objectives",
            item = "KEY02_005_Fail_TruckLost",
            id = "546016",
        },
    };
    return params;
end;

function export:OnEnter_box_SetOasis_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetOasis_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|1955654266");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetOasis_4_Out,
    });
    params = {
        -- Oasis,
        [0] = {
            section = "Objectives",
            item = "KEY02_005_Fail_TruckLost",
            id = "546016",
        },
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_Brick_TakeControl_Vehicle_Generic_16()
    local params;
    params = {
        -- aVehicleArchetype,
        [0] = "9015247012959947",
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
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|2051922933");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_5_Out,
    });
    params = {
        -- Entity,
        [0] = "2101288357171567470",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B15.domino|@KEY02_005_B15_RespawnChecker|2052033977");
    l0:SetConnections({
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = false,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 1,
        -- vehicleEntity,
        [4] = PersistentGlobals.KEY02_005_B10.var_e_WidowMaker,
    };
    return params;
end;

function export:OnExit_box_GetPawnVehicleInfo_42_InVehicle()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l1 = self.box_RemoveEntity_v2_44;
    l1:GetLuaBox().Group = l0:GetDataOutValue(2);
    self._sld_vehicle_box_GetPawnVehicleInfo_42 = l0:GetDataOutValue(2);
    l1 = self.box_VehicleListener_v3_43;
    l1:GetLuaBox().vehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_42_NotInVehicle()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l1 = self.box_RemoveEntity_v2_44;
    l1:GetLuaBox().Group = l0:GetDataOutValue(2);
    self._sld_vehicle_box_GetPawnVehicleInfo_42 = l0:GetDataOutValue(2);
    l1 = self.box_VehicleListener_v3_43;
    l1:GetLuaBox().vehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_42_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l1 = self.box_RemoveEntity_v2_44;
    l1:GetLuaBox().Group = l0:GetDataOutValue(2);
    self._sld_vehicle_box_GetPawnVehicleInfo_42 = l0:GetDataOutValue(2);
    l1 = self.box_VehicleListener_v3_43;
    l1:GetLuaBox().vehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetEntity_v2_36_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    PersistentGlobals.KEY02_005_B10.var_e_WidowMaker = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    PersistentGlobals.KEY02_005_B10.var_e_WidowMaker = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.g_PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    PersistentGlobals.KEY02_005_B10.var_e_WidowMaker = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_38_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_38 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_38_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_38 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_38_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_38 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetOasis_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.var_FailureReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetOasis_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.var_FailureReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    PersistentGlobals.KEY02_005_B10.var_e_WidowMaker = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
