LUAC�. -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni24/uni24_010/uni24_010_b20.domino
-- User graph: UNI24_010_B20
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_v5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ForceExitVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/ForceInVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleSeatModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI24/UNI24_010/UNI24_010_B20.UNI24_010_B20_Dialog.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI24/UNI24_010/UNI24_010_B10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[364711831.bnk]], "CSoundResource");
        cboxRes:LoadResource([[741569124.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2345151254.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3380164361.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2405366474.bnk]], "CSoundResource");
        cboxRes:LoadResource([[350421318.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2480851523.bnk]], "CSoundResource");
        cboxRes:LoadResource([[590130559.bnk]], "CSoundResource");
        cboxRes:LoadResource([[641952542.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI24/UNI24_010/UNI24_010_B20.UNI24_010_B20.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_v5.debug.lua")] = {
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
                name = "Failed",
                delayed = true,
            },
            [2] = {
                name = "Player_EnterVehicle",
                delayed = true,
            },
            [3] = {
                name = "Player_ExitVehicle",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = false,
            },
            [5] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bDisplayVehicleHealth",
                type = "bool",
            },
            [2] = {
                name = "bMustExitVehicle",
                type = "bool",
            },
            [3] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [4] = {
                name = "eTarget",
                type = "entity",
            },
            [5] = {
                name = "eTargetMarker",
                type = "entity",
            },
            [6] = {
                name = "eVehicle",
                type = "entity",
            },
            [7] = {
                name = "eVehicleMarker",
                type = "entity",
            },
            [8] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [9] = {
                name = "isTargetTrigger",
                type = "bool",
            },
            [10] = {
                name = "Objective",
                type = "oasis",
            },
            [11] = {
                name = "opt_FailReason",
                type = "oasis",
            },
        },
        dataInCount = 12,
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
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener.lua")] = {
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
                type = "string",
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
    metadataTable[GetPathID("Domino/System/CompareEntity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Equal",
                delayed = false,
            },
            [1] = {
                name = "NotEqual",
                delayed = false,
            },
        },
        controlOutCount = 2,
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
                name = "Result",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/GFHSystemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableGFHSystem",
            },
            [1] = {
                name = "EnableGFHSystem",
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
                name = "enableAfterBeat",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/IsValueNil_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Animation",
            },
            [1] = {
                name = "Archetype",
            },
            [2] = {
                name = "Boolean",
            },
            [3] = {
                name = "Database",
            },
            [4] = {
                name = "Entity",
            },
            [5] = {
                name = "Float",
            },
            [6] = {
                name = "GenericDb",
            },
            [7] = {
                name = "Group",
            },
            [8] = {
                name = "Integer",
            },
            [9] = {
                name = "MissionBlock",
            },
            [10] = {
                name = "MissionBlockLayer",
            },
            [11] = {
                name = "Oasis",
            },
            [12] = {
                name = "Script",
            },
            [13] = {
                name = "Sound",
            },
            [14] = {
                name = "String",
            },
        },
        controlInCount = 15,
        controlOut = {
            [0] = {
                name = "No",
                delayed = false,
            },
            [1] = {
                name = "Yes",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "archetypeId",
                type = "archetype",
            },
            [2] = {
                name = "bool",
                type = "bool",
            },
            [3] = {
                name = "databaseId",
                type = "database",
            },
            [4] = {
                name = "ent",
                type = "entity",
            },
            [5] = {
                name = "float",
                type = "float",
            },
            [6] = {
                name = "genericDbId",
                type = "genericdb",
            },
            [7] = {
                name = "group",
                type = "group",
            },
            [8] = {
                name = "int",
                type = "int",
            },
            [9] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [10] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
            [11] = {
                name = "oasis",
                type = "oasis",
            },
            [12] = {
                name = "script",
                type = "boxclass",
            },
            [13] = {
                name = "sound",
                type = "Sound",
            },
            [14] = {
                name = "str",
                type = "string",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI24/UNI24_010/UNI24_010_B20.UNI24_010_B20_Dialog.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "PlayDialog",
            },
            [1] = {
                name = "Stop",
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
                name = "e_NPCPlayingDialog",
                type = "entity",
            },
            [1] = {
                name = "s_LineID",
                type = "Sound",
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
    self._name = "UNI24_010_B20";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20";
    self.gFriendlyPlayer = nil;
    self.eQuestGiver = nil;
    self.bPlayerInMountedSeat = false;
    self.bIsGiverDown = false;
    self.eWrongVehicle = nil;
    self.box_Gate_v3_112 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|@nGateBark1");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_112_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_112_Out,
    });
    self.box_ProximityRadiusListener_v3_33 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|18460130");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_33_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_33_AllNear,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_33_Enabled,
    });
    self.box_MultipleOR_105 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|29234021");
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
        [0] = self.f_box_MultipleOR_105_Out,
    });
    self.box_Bind_v4_67 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|43682673");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_67_Bound,
    });
    self.box_VehicleListener_v3_93 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|54954753");
    l0:SetConnections({
        -- OnAllSitting,
        [2] = self.f_box_VehicleListener_v3_93_OnAllSitting,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_93_OnStandUp,
    });
    self.box_VehicleListener_v3_114 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|67680850");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_114_OnSit,
    });
    self.box_VehicleListener_v3_48 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|97717035");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_48_OnSit,
    });
    self.box_MultipleAND_v2_49 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|129312259");
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
        [0] = self.f_box_MultipleAND_v2_49_Out,
    });
    self.box_DisplayCustomUIMsg_v5_94 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|144898112");
    l0:SetConnections({
    });
    self.box_Gate_v3_98 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|184342873");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_98_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_98_Out,
    });
    self.box_PlayDialog_v6_22 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|217892451");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_22_Finished,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_22_QueueCancelled,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_22_Started,
    });
    self.box_UNI24_010_B20_Dialog_51 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI24/UNI24_010/UNI24_010_B20.UNI24_010_B20_Dialog.debug.lua");
    l0 = self.box_UNI24_010_B20_Dialog_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI24_010_B20_Dialog_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|222527628");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_UNI24_010_B20_Dialog_51_Out,
    });
    self.box_ActivityInitialized_7 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|302959663");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_7_Out,
    });
    self.box_MultipleOR_74 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|395206591");
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
        [0] = self.f_box_MultipleOR_74_Out,
    });
    self.box_UNI24_010_B20_Dialog_52 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI24/UNI24_010/UNI24_010_B20.UNI24_010_B20_Dialog.debug.lua");
    l0 = self.box_UNI24_010_B20_Dialog_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI24_010_B20_Dialog_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|417485488");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_UNI24_010_B20_Dialog_52_Out,
    });
    self.box_MultipleAND_v2_21 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|426221024");
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
    self.box_CharacterLoadedIdListener_6 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|534187277");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_6_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_6_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_6_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_6_LoadedIdReceived,
    });
    self.box_MultipleOR_64 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|541020740");
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
        [0] = self.f_box_MultipleOR_64_Out,
    });
    self.box_CharacterLoadedIdListener_124 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|623053796");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_124_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_124_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_124_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_124_LoadedIdReceived,
    });
    self.box_EntityStatusListener_69 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|623907697");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_69_Unloaded,
    });
    self.box_Gate_v3_90 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|635073955");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_90_Out,
    });
    self.box_SpawnAI_66 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|636434647");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_66_Spawned,
    });
    self.box_EntityStatusListener_10 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|662717401");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_10_Loaded,
    });
    self.box_HealthListener_v6_99 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|805706954");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_99_Downed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_99_Revived,
    });
    self.box_DisplayCustomUIMsg_v5_16 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|843806855");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_16_OnDisplay,
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v5_16_OnHide,
    });
    self.box_Delay_v5_126 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|900865750");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_126_TimeElapsed,
    });
    self.box_ExitZoneWarningListener_v3_28 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|908627103");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_28_FailingZoneEntered,
    });
    self.box_VehicleListener_v3_84 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|913989639");
    l0:SetConnections({
        -- OnAllSitting,
        [2] = self.f_box_VehicleListener_v3_84_OnAllSitting,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|933695193");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_Delay_v5_61 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|938373890");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_61_TimeElapsed,
    });
    self.box_MultipleOR_108 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|965598438");
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
        [0] = self.f_box_MultipleOR_108_Out,
    });
    self.box_Brick_Deliver_Vehicle_v5_138 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_v5.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_v5_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_v5_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|981790247");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_Brick_Deliver_Vehicle_v5_138_Disabled,
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_v5_138_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_v5_138_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_v5_138_Player_ExitVehicle,
        -- Started,
        [4] = self.f_box_Brick_Deliver_Vehicle_v5_138_Started,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_v5_138_Success,
    });
    self.box_Delay_v5_121 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|989956402");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_121_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_11 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1026144420");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_11_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_11_AllNear,
    });
    self.box_DisplayCustomUIMsg_v5_58 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1067168962");
    l0:SetConnections({
    });
    self.box_MultipleOR_103 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1104582183");
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
    self.box_MultipleOR_104 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1110673027");
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
        [0] = self.f_box_MultipleOR_104_Out,
    });
    self.box_MultipleOR_132 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1130998073");
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
        [0] = self.f_box_MultipleOR_132_Out,
    });
    self.box_UNI24_010_B20_Dialog_50 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI24/UNI24_010/UNI24_010_B20.UNI24_010_B20_Dialog.debug.lua");
    l0 = self.box_UNI24_010_B20_Dialog_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI24_010_B20_Dialog_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1226853126");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_UNI24_010_B20_Dialog_50_Out,
    });
    self.box_MultipleOR_63 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1264666757");
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
        [0] = self.f_box_MultipleOR_63_Out,
    });
    self.box_UNI24_010_B20_Dialog_26 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI24/UNI24_010/UNI24_010_B20.UNI24_010_B20_Dialog.debug.lua");
    l0 = self.box_UNI24_010_B20_Dialog_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI24_010_B20_Dialog_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1315994764");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_UNI24_010_B20_Dialog_26_Out,
    });
    self.box_MultipleOR_130 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1349245815");
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
        [0] = self.f_box_MultipleOR_130_Out,
    });
    self.box_VehicleDamageListener_v2_72 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1353135610");
    l0:SetConnections({
        -- Broken,
        [1] = self.f_box_VehicleDamageListener_v2_72_Broken,
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_72_Destroyed,
        -- Disabled,
        [3] = self.f_box_VehicleDamageListener_v2_72_Disabled,
        -- OnFire,
        [8] = self.f_box_VehicleDamageListener_v2_72_OnFire,
    });
    self.box_OnceOnly_v3_70 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1361841787");
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
                [0] = self.f_box_OnceOnly_v3_70_Out_0,
            },
            count = 2,
        },
    });
    self.box_DisplayCustomUIMsg_v5_37 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1452217228");
    l0:SetConnections({
    });
    self.box_GunsForHireSystemModifier_71 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1492178988");
    l0:SetConnections({
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1497580750");
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
        [0] = self.f_box_MultipleOR_20_Out,
    });
    self.box_Delay_v5_46 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1564524628");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_46_TimeElapsed,
    });
    self.box_UNI24_010_B20_Dialog_53 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI24/UNI24_010/UNI24_010_B20.UNI24_010_B20_Dialog.debug.lua");
    l0 = self.box_UNI24_010_B20_Dialog_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI24_010_B20_Dialog_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1596517699");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_UNI24_010_B20_Dialog_53_Out,
    });
    self.box_VehicleListener_v3_87 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1607808983");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_87_Enabled,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_87_OnSit,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_87_OnStandUp,
    });
    self.box_MultipleOR_128 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1734539213");
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
        [0] = self.f_box_MultipleOR_128_Out,
    });
    self.box_Delay_v5_65 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1739372567");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_65_TimeElapsed,
    });
    self.box_PlayDialog_v6_62 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1752870391");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_5 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1836560561");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_5_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_5_Downed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_5_Revived,
    });
    self.box_VehicleListener_v3_120 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1863207770");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_120_OnSit,
    });
    self.box_Delay_v5_78 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1888645280");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_78_TimeElapsed,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1911441275");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_VehicleListener_v3_80 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1925198086");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_80_OnSit,
    });
    self.box_UNI24_010_B20_Dialog_47 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI24/UNI24_010/UNI24_010_B20.UNI24_010_B20_Dialog.debug.lua");
    l0 = self.box_UNI24_010_B20_Dialog_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI24_010_B20_Dialog_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1933429662");
    l0:SetConnections({
    });
    self.box_UNI24_010_B20_Dialog_31 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI24/UNI24_010/UNI24_010_B20.UNI24_010_B20_Dialog.debug.lua");
    l0 = self.box_UNI24_010_B20_Dialog_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI24_010_B20_Dialog_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1969572443");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_UNI24_010_B20_Dialog_31_Out,
    });
    self.box_ProximityRadiusListener_v3_36 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1976432706");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_36_AllFar,
    });
    self.box_RemoveEntity_v2_92 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2061777133");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_92_Out,
    });
    self.box_VehicleListener_v3_55 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2091890902");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_55_Enabled,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_55_OnSit,
    });
    self.box_Brick_Deliver_Vehicle_v5_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_v5.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_v5_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2099485122");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_Brick_Deliver_Vehicle_v5_12_Disabled,
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_v5_12_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_v5_12_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_v5_12_Player_ExitVehicle,
        -- Started,
        [4] = self.f_box_Brick_Deliver_Vehicle_v5_12_Started,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_v5_12_Success,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1520863207", "1520863207", "UNI24_010_B20", "In", "box_OutputOrder_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_133_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1374879450", "1374879450", "UNI24_010_B20", "box_Simple_Node_133.Out", "box_MultipleOR_108.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1356221875", "1356221875", "UNI24_010_B20", "box_Simple_Node_133.Out", "box_MultipleOR_130.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_HealthListener_v6_5();
    l0 = self.box_HealthListener_v6_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1170669723", "1170669723", "UNI24_010_B20", "box_Simple_Node_133.Out", "box_HealthListener_v6_5.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1247479597", "1247479597", "UNI24_010_B20", "box_Simple_Node_133.Out", "box_MultipleOR_132.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_ExitZoneWarningListener_v3_28();
    l0 = self.box_ExitZoneWarningListener_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1311850844", "1311850844", "UNI24_010_B20", "box_Simple_Node_133.Out", "box_ExitZoneWarningListener_v3_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_56_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_98();
    l0 = self.box_Gate_v3_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|694959012", "694959012", "UNI24_010_B20", "box_Simple_Node_56.Out", "box_Gate_v3_98.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_37();
    l0 = self.box_DisplayCustomUIMsg_v5_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1864676551", "1864676551", "UNI24_010_B20", "box_Simple_Node_42.Out", "box_DisplayCustomUIMsg_v5_37.Display", clone:GetLuaBox(), l0:GetLuaBox());
    -- Display
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_112_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_62();
    l0 = self.box_Gate_v3_112;
    l1 = self.box_PlayDialog_v6_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1468589895", "1468589895", "UNI24_010_B20", "box_Gate_v3_112.Closed", "box_PlayDialog_v6_62.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_112_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_22();
    l0 = self.box_Gate_v3_112;
    l1 = self.box_PlayDialog_v6_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1621860258", "1621860258", "UNI24_010_B20", "box_Gate_v3_112.Out", "box_PlayDialog_v6_22.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_119_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_120();
    l0 = self.box_VehicleListener_v3_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1646464689", "1646464689", "UNI24_010_B20", "box_Simple_Node_119.Out", "box_VehicleListener_v3_120.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_VehicleListener_v3_114();
    l0 = self.box_VehicleListener_v3_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1072677089", "1072677089", "UNI24_010_B20", "box_Simple_Node_119.Out", "box_VehicleListener_v3_114.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_111_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_102();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1490904400", "1490904400", "UNI24_010_B20", "box_Simple_Node_111.Out", "box_Compare_Boolean_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Compare_Boolean_106();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|791439931", "791439931", "UNI24_010_B20", "box_Simple_Node_111.Out", "box_Compare_Boolean_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|759301136", "759301136", "UNI24_010_B20", "box_Simple_Node_111.Out", "box_MultipleOR_104.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_19_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1384754475", "1384754475", "UNI24_010_B20", "box_Simple_Node_19.Out", "box_MultipleOR_108.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_43_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2119773743", "2119773743", "UNI24_010_B20", "box_Simple_Node_43.Out", "box_MultipleOR_130.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_76_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_49();
    l0 = self.box_MultipleAND_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1339555585", "1339555585", "UNI24_010_B20", "box_Simple_Node_76.Out", "box_MultipleAND_v2_49.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_57_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1875110111", "1875110111", "UNI24_010_B20", "box_Simple_Node_57.Out", "box_MultipleOR_103.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_MultipleAND_v2_21();
    l0 = self.box_MultipleAND_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2050033882", "2050033882", "UNI24_010_B20", "box_Simple_Node_57.Out", "box_MultipleAND_v2_21.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_Brick_Deliver_Vehicle_v5_138();
    l0 = self.box_Brick_Deliver_Vehicle_v5_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|970817740", "970817740", "UNI24_010_B20", "box_Simple_Node_57.Out", "box_Brick_Deliver_Vehicle_v5_138.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_HealthListener_v6_5();
    l0 = self.box_HealthListener_v6_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|658521179", "658521179", "UNI24_010_B20", "box_Simple_Node_57.Out", "box_HealthListener_v6_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0 = self.box_MultipleOR_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|374446545", "374446545", "UNI24_010_B20", "box_Simple_Node_57.Out", "box_MultipleOR_105.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_EndActivityObjective_v2_40();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1577872453", "1577872453", "UNI24_010_B20", "box_Simple_Node_57.Out", "box_EndActivityObjective_v2_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_75_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_87();
    l0 = self.box_VehicleListener_v3_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|17838121", "17838121", "UNI24_010_B20", "box_Simple_Node_75.Out", "box_VehicleListener_v3_87.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_95_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_93();
    l0 = self.box_VehicleListener_v3_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1667213663", "1667213663", "UNI24_010_B20", "box_Simple_Node_95.Out", "box_VehicleListener_v3_93.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_18_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_16();
    l0 = self.box_DisplayCustomUIMsg_v5_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2065962058", "2065962058", "UNI24_010_B20", "box_Simple_Node_18.Out", "box_DisplayCustomUIMsg_v5_16.Display", clone:GetLuaBox(), l0:GetLuaBox());
    -- Display
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_41_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1208145461", "1208145461", "UNI24_010_B20", "box_Simple_Node_41.Out", "box_OutputOrder_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_44_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI24_010_B20_Dialog_53();
    l0 = self.box_UNI24_010_B20_Dialog_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|902664518", "902664518", "UNI24_010_B20", "box_Simple_Node_44.Out", "box_UNI24_010_B20_Dialog_53.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_UNI24_010_B20_Dialog_51();
    l0 = self.box_UNI24_010_B20_Dialog_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|470313695", "470313695", "UNI24_010_B20", "box_Simple_Node_44.Out", "box_UNI24_010_B20_Dialog_51.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_UNI24_010_B20_Dialog_50();
    l0 = self.box_UNI24_010_B20_Dialog_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|909488188", "909488188", "UNI24_010_B20", "box_Simple_Node_44.Out", "box_UNI24_010_B20_Dialog_50.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_UNI24_010_B20_Dialog_52();
    l0 = self.box_UNI24_010_B20_Dialog_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1279738310", "1279738310", "UNI24_010_B20", "box_Simple_Node_44.Out", "box_UNI24_010_B20_Dialog_52.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_UNI24_010_B20_Dialog_31();
    l0 = self.box_UNI24_010_B20_Dialog_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1713805039", "1713805039", "UNI24_010_B20", "box_Simple_Node_44.Out", "box_UNI24_010_B20_Dialog_31.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_UNI24_010_B20_Dialog_26();
    l0 = self.box_UNI24_010_B20_Dialog_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|843018759", "843018759", "UNI24_010_B20", "box_Simple_Node_44.Out", "box_UNI24_010_B20_Dialog_26.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_UNI24_010_B20_Dialog_47();
    l0 = self.box_UNI24_010_B20_Dialog_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1013992141", "1013992141", "UNI24_010_B20", "box_Simple_Node_44.Out", "box_UNI24_010_B20_Dialog_47.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    params = self:OnEnter_box_EndActivityObjective_v2_29();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|499357011", "499357011", "UNI24_010_B20", "box_Simple_Node_44.Out", "box_EndActivityObjective_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_33_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = self.box_ProximityRadiusListener_v3_33;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1497652563", "1497652563", "UNI24_010_B20", "box_ProximityRadiusListener_v3_33.AllFar", "box_Simple_Node_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_33_AllNear()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = self.box_ProximityRadiusListener_v3_33;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1574594573", "1574594573", "UNI24_010_B20", "box_ProximityRadiusListener_v3_33.AllNear", "box_Simple_Node_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_33_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_36();
    l0 = self.box_ProximityRadiusListener_v3_33;
    l1 = self.box_ProximityRadiusListener_v3_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|696383764", "696383764", "UNI24_010_B20", "box_ProximityRadiusListener_v3_33.Enabled", "box_ProximityRadiusListener_v3_36.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_97_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_85();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|448021192", "448021192", "UNI24_010_B20", "box_OutputOrder_v2_97.Out", "box_VehicleSeatModifier_v2_85.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_97_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_84();
    l0 = self.box_VehicleListener_v3_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|298296119", "298296119", "UNI24_010_B20", "box_OutputOrder_v2_97.Out", "box_VehicleListener_v3_84.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_105_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_107();
    l0 = self.box_MultipleOR_105;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2074709468", "2074709468", "UNI24_010_B20", "box_MultipleOR_105.Out", "box_OutputOrder_v2_107.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_67_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_45();
    l0 = self.box_Bind_v4_67;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1523163765", "1523163765", "UNI24_010_B20", "box_Bind_v4_67.Bound", "box_AddActivityObjective_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_123_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_118();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1074403123", "1074403123", "UNI24_010_B20", "box_Compare_Entity_123.NotEqual", "box_VehicleModifier_v2_118.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(6, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_93_OnAllSitting()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_93;
    l1 = self.box_MultipleOR_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1901526001", "1901526001", "UNI24_010_B20", "box_VehicleListener_v3_93.OnAllSitting", "box_MultipleOR_132.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleListener_v3_93_OnStandUp()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_94();
    l0 = self.box_VehicleListener_v3_93;
    l1 = self.box_DisplayCustomUIMsg_v5_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|960815375", "960815375", "UNI24_010_B20", "box_VehicleListener_v3_93.OnStandUp", "box_DisplayCustomUIMsg_v5_94.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_82_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|833461821", "833461821", "UNI24_010_B20", "box_OutputOrder_v2_82.Out", "box_OutputOrder_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_82_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_75();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1250888861", "1250888861", "UNI24_010_B20", "box_OutputOrder_v2_82.Out", "box_Simple_Node_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_82_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|525584249", "525584249", "UNI24_010_B20", "box_OutputOrder_v2_82.Out", "box_Simple_Node_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_82_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_119();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|892289379", "892289379", "UNI24_010_B20", "box_OutputOrder_v2_82.Out", "box_Simple_Node_119.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_114_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_115();
    l0 = self.box_VehicleListener_v3_114;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1390191514", "1390191514", "UNI24_010_B20", "box_VehicleListener_v3_114.OnSit", "box_GetPawnVehicleInfo_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_48_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_76();
    l0 = self.box_VehicleListener_v3_48;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1554503400", "1554503400", "UNI24_010_B20", "box_VehicleListener_v3_48.OnSit", "box_Simple_Node_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1441744782", "1441744782", "UNI24_010_B20", "box_OutputOrder_v2_38.Out", "box_Simple_Node_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_133();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1753478571", "1753478571", "UNI24_010_B20", "box_OutputOrder_v2_38.Out", "box_Simple_Node_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_35();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1664589739", "1664589739", "UNI24_010_B20", "box_OutputOrder_v2_38.Out", "box_ActivityRetry_35.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_49_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_49;
    l1 = self.box_OnceOnly_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|651993758", "651993758", "UNI24_010_B20", "box_MultipleAND_v2_49.Out", "box_OnceOnly_v3_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_98_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_98;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1205940787", "1205940787", "UNI24_010_B20", "box_Gate_v3_98.Opened", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_98_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_101();
    l0 = self.box_Gate_v3_98;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|271738076", "271738076", "UNI24_010_B20", "box_Gate_v3_98.Out", "box_Compare_Boolean_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_22_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_22;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1683822794", "1683822794", "UNI24_010_B20", "box_PlayDialog_v6_22.Finished", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_22_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_22;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|616178362", "616178362", "UNI24_010_B20", "box_PlayDialog_v6_22.QueueCancelled", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_22_Started()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_21();
    l0 = self.box_PlayDialog_v6_22;
    l1 = self.box_MultipleAND_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2062836070", "2062836070", "UNI24_010_B20", "box_PlayDialog_v6_22.Started", "box_MultipleAND_v2_21.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_UNI24_010_B20_Dialog_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UNI24_010_B20_Dialog_52();
    l0 = self.box_UNI24_010_B20_Dialog_51;
    l1 = self.box_UNI24_010_B20_Dialog_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|738443633", "738443633", "UNI24_010_B20", "box_UNI24_010_B20_Dialog_51.Out", "box_UNI24_010_B20_Dialog_52.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_101_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_112();
    l0 = self.box_Gate_v3_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1403989728", "1403989728", "UNI24_010_B20", "box_Compare_Boolean_101.A_is_False", "box_Gate_v3_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_127_InVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_127_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1128111422", "1128111422", "UNI24_010_B20", "box_GetPawnVehicleInfo_127.InVehicle", "box_MultipleOR_128.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPawnVehicleInfo_127_NotInVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_127_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_66();
    l0 = self.box_SpawnAI_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|453979247", "453979247", "UNI24_010_B20", "box_GetPawnVehicleInfo_127.NotInVehicle", "box_SpawnAI_66.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_127_Out()
    self:OnExit_box_GetPawnVehicleInfo_127_Out();
end;

function export:f_box_AddActivityObjective_v2_45_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_59();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1680212910", "1680212910", "UNI24_010_B20", "box_AddActivityObjective_v2_45.Out", "box_ActivityObjectiveMarkerModifier_v3_59.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityForceAndLockTracking_96();
    l0 = self.box_ActivityInitialized_7;
    l1 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1749024057", "1749024057", "UNI24_010_B20", "box_ActivityInitialized_7.Out", "box_ActivityForceAndLockTracking_96.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_67();
    l0 = self.box_Bind_v4_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|795715961", "795715961", "UNI24_010_B20", "box_OutputOrder_v2_1.Out", "box_Bind_v4_67.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_41();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|722990738", "722990738", "UNI24_010_B20", "box_OutputOrder_v2_1.Out", "box_Simple_Node_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_131();
    l0 = self.box_MultipleOR_74;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1653588977", "1653588977", "UNI24_010_B20", "box_MultipleOR_74.Out", "box_OutputOrder_v2_131.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI24_010_B20_Dialog_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UNI24_010_B20_Dialog_26();
    l0 = self.box_UNI24_010_B20_Dialog_52;
    l1 = self.box_UNI24_010_B20_Dialog_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1294978429", "1294978429", "UNI24_010_B20", "box_UNI24_010_B20_Dialog_52.Out", "box_UNI24_010_B20_Dialog_26.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UNI24_010_B20_Dialog_31();
    l0 = self.box_MultipleAND_v2_21;
    l1 = self.box_UNI24_010_B20_Dialog_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2066030145", "2066030145", "UNI24_010_B20", "box_MultipleAND_v2_21.Out", "box_UNI24_010_B20_Dialog_31.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(0, params);
end;

function export:f_box_ForceInVehicle_v2_25_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1244191679", "1244191679", "UNI24_010_B20", "box_ForceInVehicle_v2_25.Out", "box_MultipleOR_128.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsValueNil_v3_15_No()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|559404883", "559404883", "UNI24_010_B20", "box_IsValueNil_v3_15.No", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_15_Yes()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|891620481", "891620481", "UNI24_010_B20", "box_IsValueNil_v3_15.Yes", "box_MultipleOR_20.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2058060855", "2058060855", "UNI24_010_B20", "box_OutputOrder_v2_54.Out", "box_OutputOrder_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_56();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1209192904", "1209192904", "UNI24_010_B20", "box_OutputOrder_v2_54.Out", "box_Simple_Node_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_34();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2045921917", "2045921917", "UNI24_010_B20", "box_OutputOrder_v2_32.Out", "box_VehicleSeatModifier_v2_34.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_6();
    l0 = self.box_CharacterLoadedIdListener_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2097289153", "2097289153", "UNI24_010_B20", "box_OutputOrder_v2_32.Out", "box_CharacterLoadedIdListener_6.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_32_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_99();
    l0 = self.box_HealthListener_v6_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|402967827", "402967827", "UNI24_010_B20", "box_OutputOrder_v2_32.Out", "box_HealthListener_v6_99.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_113_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_133();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|946026157", "946026157", "UNI24_010_B20", "box_OutputOrder_v2_113.Out", "box_Simple_Node_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_113_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_17();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|252724400", "252724400", "UNI24_010_B20", "box_OutputOrder_v2_113.Out", "box_ActivityRetry_17.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_6_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_6_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_CharacterLoadedIdListener_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1851401232", "1851401232", "UNI24_010_B20", "box_CharacterLoadedIdListener_6.LoadedIdReceived", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_64_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_58();
    l0 = self.box_MultipleOR_64;
    l1 = self.box_DisplayCustomUIMsg_v5_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1804679015", "1804679015", "UNI24_010_B20", "box_MultipleOR_64.Out", "box_DisplayCustomUIMsg_v5_58.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_89_Out()
    self:OnExit_box_SetBoolean_v2_89_Out();
end;

function export:f_box_Compare_Entity_116_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_123();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|441896219", "441896219", "UNI24_010_B20", "box_Compare_Entity_116.NotEqual", "box_Compare_Entity_123.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ForceInVehicle_v2_125_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1220122181", "1220122181", "UNI24_010_B20", "box_ForceInVehicle_v2_125.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_79_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_90();
    l0 = self.box_Gate_v3_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1370522220", "1370522220", "UNI24_010_B20", "box_OutputOrder_v2_79.Out", "box_Gate_v3_90.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_79_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_83();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|174564736", "174564736", "UNI24_010_B20", "box_OutputOrder_v2_79.Out", "box_VehicleSeatModifier_v2_83.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_102_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1227320128", "1227320128", "UNI24_010_B20", "box_Compare_Boolean_102.A_is_True", "box_MultipleOR_103.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CharacterLoadedIdListener_124_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_124_LoadedIdReceived();
    params = self:OnEnter_box_Delay_v5_126();
    l0 = self.box_CharacterLoadedIdListener_124;
    l1 = self.box_Delay_v5_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1091331651", "1091331651", "UNI24_010_B20", "box_CharacterLoadedIdListener_124.LoadedIdReceived", "box_Delay_v5_126.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_69_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_139();
    l0 = self.box_EntityStatusListener_69;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|345630605", "345630605", "UNI24_010_B20", "box_EntityStatusListener_69.Unloaded", "box_ActivityRetry_139.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_90_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_76();
    l0 = self.box_Gate_v3_90;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1160197387", "1160197387", "UNI24_010_B20", "box_Gate_v3_90.Out", "box_Simple_Node_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_66_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_10();
    l0 = self.box_SpawnAI_66;
    l1 = self.box_EntityStatusListener_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|393706750", "393706750", "UNI24_010_B20", "box_SpawnAI_66.Spawned", "box_EntityStatusListener_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|110782613", "110782613", "UNI24_010_B20", "box_OutputOrder_v2_2.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_8();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|715798837", "715798837", "UNI24_010_B20", "box_OutputOrder_v2_2.Out", "box_Print_v2_8.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_10_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_24();
    l0 = self.box_EntityStatusListener_10;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1160518194", "1160518194", "UNI24_010_B20", "box_EntityStatusListener_10.Loaded", "box_SetEntity_v2_24.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_135_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_89();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|734537744", "734537744", "UNI24_010_B20", "box_OutputOrder_v2_135.Out", "box_SetBoolean_v2_89.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_135_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceExitVehicle_v2_134();
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1955314025", "1955314025", "UNI24_010_B20", "box_OutputOrder_v2_135.Out", "box_ForceExitVehicle_v2_134.TryExit", clone:GetLuaBox(), l0:GetLuaBox());
    -- TryExit
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_140_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_6();
    l0 = self.box_CharacterLoadedIdListener_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1117006163", "1117006163", "UNI24_010_B20", "box_OutputOrder_v2_140.Out", "box_CharacterLoadedIdListener_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_140_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceInVehicle_v2_68();
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1147718304", "1147718304", "UNI24_010_B20", "box_OutputOrder_v2_140.Out", "box_ForceInVehicle_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_40_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_60();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|246369828", "246369828", "UNI24_010_B20", "box_EndActivityObjective_v2_40.Out", "box_ActivityObjectiveMarkerModifier_v3_60.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_80();
    l0 = self.box_VehicleListener_v3_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1123282003", "1123282003", "UNI24_010_B20", "box_OutputOrder_v2_77.Out", "box_VehicleListener_v3_80.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_48();
    l0 = self.box_VehicleListener_v3_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1785582959", "1785582959", "UNI24_010_B20", "box_OutputOrder_v2_77.Out", "box_VehicleListener_v3_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_VehicleModifier_v2_118_OnSetAsUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceExitVehicle_v2_117();
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1743250663", "1743250663", "UNI24_010_B20", "box_VehicleModifier_v2_118.OnSetAsUnusable", "box_ForceExitVehicle_v2_117.TryExit", clone:GetLuaBox(), l0:GetLuaBox());
    -- TryExit
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_99_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_100();
    l0 = self.box_HealthListener_v6_99;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|94714836", "94714836", "UNI24_010_B20", "box_HealthListener_v6_99.Downed", "box_SetBoolean_v2_100.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_99_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_100();
    l0 = self.box_HealthListener_v6_99;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1464747735", "1464747735", "UNI24_010_B20", "box_HealthListener_v6_99.Revived", "box_SetBoolean_v2_100.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_91_OnSetCommandeerDisabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_82();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1070158118", "1070158118", "UNI24_010_B20", "box_VehicleModifier_v2_91.OnSetCommandeerDisabled", "box_OutputOrder_v2_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DisplayCustomUIMsg_v5_16_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_46();
    l0 = self.box_DisplayCustomUIMsg_v5_16;
    l1 = self.box_Delay_v5_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|994654201", "994654201", "UNI24_010_B20", "box_DisplayCustomUIMsg_v5_16.OnDisplay", "box_Delay_v5_46.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_DisplayCustomUIMsg_v5_16_OnHide()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_46();
    l0 = self.box_DisplayCustomUIMsg_v5_16;
    l1 = self.box_Delay_v5_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2043811651", "2043811651", "UNI24_010_B20", "box_DisplayCustomUIMsg_v5_16.OnHide", "box_Delay_v5_46.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_33();
    l0 = self.box_ProximityRadiusListener_v3_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|515110187", "515110187", "UNI24_010_B20", "box_OutputOrder_v2_27.Out", "box_ProximityRadiusListener_v3_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_72();
    l0 = self.box_VehicleDamageListener_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1649486662", "1649486662", "UNI24_010_B20", "box_OutputOrder_v2_27.Out", "box_VehicleDamageListener_v2_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_69();
    l0 = self.box_EntityStatusListener_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1724612269", "1724612269", "UNI24_010_B20", "box_OutputOrder_v2_27.Out", "box_EntityStatusListener_69.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_100_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_100_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_111();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|435137784", "435137784", "UNI24_010_B20", "box_SetBoolean_v2_100.Out", "box_Simple_Node_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_126_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ForceInVehicle_v2_125();
    l0 = self.box_Delay_v5_126;
    l1 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|957830290", "957830290", "UNI24_010_B20", "box_Delay_v5_126.TimeElapsed", "box_ForceInVehicle_v2_125.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_28_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_129();
    l0 = self.box_ExitZoneWarningListener_v3_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1754624623", "1754624623", "UNI24_010_B20", "box_ExitZoneWarningListener_v3_28.FailingZoneEntered", "box_OutputOrder_v2_129.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_84_OnAllSitting()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_97();
    l0 = self.box_VehicleListener_v3_84;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1056401955", "1056401955", "UNI24_010_B20", "box_VehicleListener_v3_84.OnAllSitting", "box_OutputOrder_v2_97.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|122367426", "122367426", "UNI24_010_B20", "box_MultipleOR_3.Out", "box_ActivityInitialized_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_61_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UNI24_010_B20_Dialog_53();
    l0 = self.box_Delay_v5_61;
    l1 = self.box_UNI24_010_B20_Dialog_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|283627701", "283627701", "UNI24_010_B20", "box_Delay_v5_61.TimeElapsed", "box_UNI24_010_B20_Dialog_53.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(0, params);
end;

function export:f_box_ForceInVehicle_v2_68_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_71();
    l0 = self.box_GunsForHireSystemModifier_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2051357121", "2051357121", "UNI24_010_B20", "box_ForceInVehicle_v2_68.Out", "box_GunsForHireSystemModifier_71.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_108_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_16();
    l0 = self.box_MultipleOR_108;
    l1 = self.box_DisplayCustomUIMsg_v5_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|505376194", "505376194", "UNI24_010_B20", "box_MultipleOR_108.Out", "box_DisplayCustomUIMsg_v5_16.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_Brick_Deliver_Vehicle_v5_138_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_137();
    l0 = self.box_Brick_Deliver_Vehicle_v5_138;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1181654053", "1181654053", "UNI24_010_B20", "box_Brick_Deliver_Vehicle_v5_138.Failed", "box_OutputOrder_v2_137.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_v5_138_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_v5_12();
    l0 = self.box_Brick_Deliver_Vehicle_v5_138;
    l1 = self.box_Brick_Deliver_Vehicle_v5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1642378645", "1642378645", "UNI24_010_B20", "box_Brick_Deliver_Vehicle_v5_138.Success", "box_Brick_Deliver_Vehicle_v5_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_121_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_118();
    l0 = self.box_Delay_v5_121;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|246988207", "246988207", "UNI24_010_B20", "box_Delay_v5_121.TimeElapsed", "box_VehicleModifier_v2_118.SetAsUsable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUsable
    l1:Exec(7, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_11_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_18();
    l0 = self.box_ProximityRadiusListener_v3_11;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1089100654", "1089100654", "UNI24_010_B20", "box_ProximityRadiusListener_v3_11.AllFar", "box_Simple_Node_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_11_AllNear()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_19();
    l0 = self.box_ProximityRadiusListener_v3_11;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1493016572", "1493016572", "UNI24_010_B20", "box_ProximityRadiusListener_v3_11.AllNear", "box_Simple_Node_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_85_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceExitVehicle_v2_86();
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1251137238", "1251137238", "UNI24_010_B20", "box_VehicleSeatModifier_v2_85.Unlocked", "box_ForceExitVehicle_v2_86.ForceExit", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceExit
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|612225904", "612225904", "UNI24_010_B20", "box_OutputOrder_v2_39.Out", "box_Simple_Node_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_92();
    l0 = self.box_RemoveEntity_v2_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1883999469", "1883999469", "UNI24_010_B20", "box_OutputOrder_v2_39.Out", "box_RemoveEntity_v2_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_103_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_22();
    l0 = self.box_MultipleOR_103;
    l1 = self.box_PlayDialog_v6_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|817839711", "817839711", "UNI24_010_B20", "box_MultipleOR_103.Out", "box_PlayDialog_v6_22.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_104_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_98();
    l0 = self.box_MultipleOR_104;
    l1 = self.box_Gate_v3_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|368317238", "368317238", "UNI24_010_B20", "box_MultipleOR_104.Out", "box_Gate_v3_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_132_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_94();
    l0 = self.box_MultipleOR_132;
    l1 = self.box_DisplayCustomUIMsg_v5_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|49649738", "49649738", "UNI24_010_B20", "box_MultipleOR_132.Out", "box_DisplayCustomUIMsg_v5_94.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_UNI24_010_B20_Dialog_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UNI24_010_B20_Dialog_51();
    l0 = self.box_UNI24_010_B20_Dialog_50;
    l1 = self.box_UNI24_010_B20_Dialog_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|191383539", "191383539", "UNI24_010_B20", "box_UNI24_010_B20_Dialog_50.Out", "box_UNI24_010_B20_Dialog_51.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(0, params);
end;

function export:f_box_ForceExitVehicle_v2_117_TryExitted()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_121();
    l0 = self.box_Delay_v5_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2099154975", "2099154975", "UNI24_010_B20", "box_ForceExitVehicle_v2_117.TryExitted", "box_Delay_v5_121.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ActivityForceAndLockTracking_96_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_13();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1435341875", "1435341875", "UNI24_010_B20", "box_ActivityForceAndLockTracking_96.Enabled", "box_GetPlayerGroup_v2_13.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_112();
    l0 = self.box_MultipleOR_63;
    l1 = self.box_Gate_v3_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1475732999", "1475732999", "UNI24_010_B20", "box_MultipleOR_63.Out", "box_Gate_v3_112.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_UNI24_010_B20_Dialog_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UNI24_010_B20_Dialog_47();
    l0 = self.box_UNI24_010_B20_Dialog_26;
    l1 = self.box_UNI24_010_B20_Dialog_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|82172422", "82172422", "UNI24_010_B20", "box_UNI24_010_B20_Dialog_26.Out", "box_UNI24_010_B20_Dialog_47.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_130_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_37();
    l0 = self.box_MultipleOR_130;
    l1 = self.box_DisplayCustomUIMsg_v5_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|193144662", "193144662", "UNI24_010_B20", "box_MultipleOR_130.Out", "box_DisplayCustomUIMsg_v5_37.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_VehicleDamageListener_v2_72_Broken()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_72;
    l1 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1985681290", "1985681290", "UNI24_010_B20", "box_VehicleDamageListener_v2_72.Broken", "box_MultipleOR_74.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_VehicleDamageListener_v2_72_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_72;
    l1 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1165734519", "1165734519", "UNI24_010_B20", "box_VehicleDamageListener_v2_72.Destroyed", "box_MultipleOR_74.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_72_Disabled()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_72;
    l1 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1859270862", "1859270862", "UNI24_010_B20", "box_VehicleDamageListener_v2_72.Disabled", "box_MultipleOR_74.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_VehicleDamageListener_v2_72_OnFire()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_72;
    l1 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|974453345", "974453345", "UNI24_010_B20", "box_VehicleDamageListener_v2_72.OnFire", "box_MultipleOR_74.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_70_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_57();
    l0 = self.box_OnceOnly_v3_70;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1507240395", "1507240395", "UNI24_010_B20", "box_OnceOnly_v3_70.Out", "box_Simple_Node_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_107_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_62();
    l0 = self.box_PlayDialog_v6_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|841421621", "841421621", "UNI24_010_B20", "box_OutputOrder_v2_107.Out", "box_PlayDialog_v6_62.CancelQueued", clone:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_107_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_62();
    l0 = self.box_PlayDialog_v6_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1951488917", "1951488917", "UNI24_010_B20", "box_OutputOrder_v2_107.Out", "box_PlayDialog_v6_62.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_ForceExitVehicle_v2_81_ForceExitted()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_84();
    l0 = self.box_VehicleListener_v3_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2106905087", "2106905087", "UNI24_010_B20", "box_ForceExitVehicle_v2_81.ForceExitted", "box_VehicleListener_v3_84.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_131_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_133();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1849951876", "1849951876", "UNI24_010_B20", "box_OutputOrder_v2_131.Out", "box_Simple_Node_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_131_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_73();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2125798352", "2125798352", "UNI24_010_B20", "box_OutputOrder_v2_131.Out", "box_ActivityRetry_73.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_127();
    l0 = self.box_MultipleOR_20;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|86774547", "86774547", "UNI24_010_B20", "box_MultipleOR_20.Out", "box_GetPawnVehicleInfo_127.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_46_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_113();
    l0 = self.box_Delay_v5_46;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|781258953", "781258953", "UNI24_010_B20", "box_Delay_v5_46.TimeElapsed", "box_OutputOrder_v2_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_88_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_55();
    l0 = self.box_VehicleListener_v3_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1438396927", "1438396927", "UNI24_010_B20", "box_Compare_Boolean_88.A_is_False", "box_VehicleListener_v3_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_88_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_76();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|435032756", "435032756", "UNI24_010_B20", "box_Compare_Boolean_88.A_is_True", "box_Simple_Node_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_34_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_91();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|276122347", "276122347", "UNI24_010_B20", "box_VehicleSeatModifier_v2_34.Locked", "box_VehicleModifier_v2_91.SetCommandeerDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetCommandeerDisabled
    l0:Exec(9, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UNI24_010_B20_Dialog_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UNI24_010_B20_Dialog_50();
    l0 = self.box_UNI24_010_B20_Dialog_53;
    l1 = self.box_UNI24_010_B20_Dialog_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1623288652", "1623288652", "UNI24_010_B20", "box_UNI24_010_B20_Dialog_53.Out", "box_UNI24_010_B20_Dialog_50.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(0, params);
end;

function export:f_box_VehicleListener_v3_87_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = self.box_VehicleListener_v3_87;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|285658008", "285658008", "UNI24_010_B20", "box_VehicleListener_v3_87.Enabled", "box_OutputOrder_v2_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_87_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_89();
    l0 = self.box_VehicleListener_v3_87;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1834770373", "1834770373", "UNI24_010_B20", "box_VehicleListener_v3_87.OnSit", "box_SetBoolean_v2_89.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_87_OnStandUp()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_135();
    l0 = self.box_VehicleListener_v3_87;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1988625702", "1988625702", "UNI24_010_B20", "box_VehicleListener_v3_87.OnStandUp", "box_OutputOrder_v2_135.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_137_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_133();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1066846992", "1066846992", "UNI24_010_B20", "box_OutputOrder_v2_137.Out", "box_Simple_Node_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_137_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_136();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1063020528", "1063020528", "UNI24_010_B20", "box_OutputOrder_v2_137.Out", "box_ActivityRetry_136.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_129_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_133();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1324218576", "1324218576", "UNI24_010_B20", "box_OutputOrder_v2_129.Out", "box_Simple_Node_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_129_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_30();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|397483610", "397483610", "UNI24_010_B20", "box_OutputOrder_v2_129.Out", "box_ActivityRetry_30.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_128_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_124();
    l0 = self.box_MultipleOR_128;
    l1 = self.box_CharacterLoadedIdListener_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1866918011", "1866918011", "UNI24_010_B20", "box_MultipleOR_128.Out", "box_CharacterLoadedIdListener_124.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_65_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ForceInVehicle_v2_25();
    l0 = self.box_Delay_v5_65;
    l1 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1542720140", "1542720140", "UNI24_010_B20", "box_Delay_v5_65.TimeElapsed", "box_ForceInVehicle_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_122_InVehicle()
    self:OnExit_box_GetPawnVehicleInfo_122_InVehicle();
end;

function export:f_box_GetPawnVehicleInfo_122_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_122_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_122_Out()
    self:OnExit_box_GetPawnVehicleInfo_122_Out();
end;

function export:f_box_OutputOrder_v2_110_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_133();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|46113552", "46113552", "UNI24_010_B20", "box_OutputOrder_v2_110.Out", "box_Simple_Node_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_110_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_14();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1063580040", "1063580040", "UNI24_010_B20", "box_OutputOrder_v2_110.Out", "box_ActivityRetry_14.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|904512353", "904512353", "UNI24_010_B20", "box_OutputOrder_v2_23.Out", "box_OutputOrder_v2_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_11();
    l0 = self.box_ProximityRadiusListener_v3_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1309507847", "1309507847", "UNI24_010_B20", "box_OutputOrder_v2_23.Out", "box_ProximityRadiusListener_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_28();
    l0 = self.box_ExitZoneWarningListener_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|786245718", "786245718", "UNI24_010_B20", "box_OutputOrder_v2_23.Out", "box_ExitZoneWarningListener_v3_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_13_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_140();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1452074509", "1452074509", "UNI24_010_B20", "box_GetPlayerGroup_v2_13.Out", "box_OutputOrder_v2_140.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_5_Disabled()
    local l0, l1;
    l0 = self.box_HealthListener_v6_5;
    l1 = self.box_MultipleOR_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|873859215", "873859215", "UNI24_010_B20", "box_HealthListener_v6_5.Disabled", "box_MultipleOR_64.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_5_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_58();
    l0 = self.box_HealthListener_v6_5;
    l1 = self.box_DisplayCustomUIMsg_v5_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|197323883", "197323883", "UNI24_010_B20", "box_HealthListener_v6_5.Downed", "box_DisplayCustomUIMsg_v5_58.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_5_Revived()
    local l0, l1;
    l0 = self.box_HealthListener_v6_5;
    l1 = self.box_MultipleOR_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1166604824", "1166604824", "UNI24_010_B20", "box_HealthListener_v6_5.Revived", "box_MultipleOR_64.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleListener_v3_120_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_122();
    l0 = self.box_VehicleListener_v3_120;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|857571458", "857571458", "UNI24_010_B20", "box_VehicleListener_v3_120.OnSit", "box_GetPawnVehicleInfo_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_78_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_90();
    l0 = self.box_Delay_v5_78;
    l1 = self.box_Gate_v3_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|399747650", "399747650", "UNI24_010_B20", "box_Delay_v5_78.TimeElapsed", "box_Gate_v3_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_15();
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1530176046", "1530176046", "UNI24_010_B20", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_IsValueNil_v3_15.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1090083436", "1090083436", "UNI24_010_B20", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleListener_v3_80_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_88();
    l0 = self.box_VehicleListener_v3_80;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|710258047", "710258047", "UNI24_010_B20", "box_VehicleListener_v3_80.OnSit", "box_Compare_Boolean_88.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_106_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1705594839", "1705594839", "UNI24_010_B20", "box_Compare_Boolean_106.A_is_True", "box_MultipleOR_105.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UNI24_010_B20_Dialog_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_61();
    l0 = self.box_UNI24_010_B20_Dialog_31;
    l1 = self.box_Delay_v5_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2005773906", "2005773906", "UNI24_010_B20", "box_UNI24_010_B20_Dialog_31.Out", "box_Delay_v5_61.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_36_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_ProximityRadiusListener_v3_36;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1798547143", "1798547143", "UNI24_010_B20", "box_ProximityRadiusListener_v3_36.AllFar", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_83_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceExitVehicle_v2_81();
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2030952367", "2030952367", "UNI24_010_B20", "box_VehicleSeatModifier_v2_83.Locked", "box_ForceExitVehicle_v2_81.ForceExit", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceExit
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_92_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_109();
    l0 = self.box_RemoveEntity_v2_92;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|983961153", "983961153", "UNI24_010_B20", "box_RemoveEntity_v2_92.Out", "box_OutputOrder_v2_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_24_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_24_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_65();
    l0 = self.box_Delay_v5_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|500644804", "500644804", "UNI24_010_B20", "box_SetEntity_v2_24.Out", "box_Delay_v5_65.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_109_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_133();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1735841925", "1735841925", "UNI24_010_B20", "box_OutputOrder_v2_109.Out", "box_Simple_Node_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_109_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1980466338", "1980466338", "UNI24_010_B20", "box_OutputOrder_v2_109.Out", "box_ActivityEnd_9.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_55_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_78();
    l0 = self.box_VehicleListener_v3_55;
    l1 = self.box_Delay_v5_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1038722610", "1038722610", "UNI24_010_B20", "box_VehicleListener_v3_55.Enabled", "box_Delay_v5_78.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_VehicleListener_v3_55_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_79();
    l0 = self.box_VehicleListener_v3_55;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|576894438", "576894438", "UNI24_010_B20", "box_VehicleListener_v3_55.OnSit", "box_OutputOrder_v2_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_v5_12_Failed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_110();
    l0 = self.box_Brick_Deliver_Vehicle_v5_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1045135373", "1045135373", "UNI24_010_B20", "box_Brick_Deliver_Vehicle_v5_12.Failed", "box_OutputOrder_v2_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_v5_12_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = self.box_Brick_Deliver_Vehicle_v5_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2047958547", "2047958547", "UNI24_010_B20", "box_Brick_Deliver_Vehicle_v5_12.Success", "box_OutputOrder_v2_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_115_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_115_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_116();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|272108719", "272108719", "UNI24_010_B20", "box_GetPawnVehicleInfo_115.InVehicle", "box_Compare_Entity_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_115_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_115_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_115_Out()
    self:OnExit_box_GetPawnVehicleInfo_115_Out();
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_59_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_49();
    l0 = self.box_MultipleAND_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1764582079", "1764582079", "UNI24_010_B20", "box_ActivityObjectiveMarkerModifier_v3_59.Enabled", "box_MultipleAND_v2_49.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:OnEnter_box_Simple_Node_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|@nCleanCustomUI");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_133_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|@nDialogManager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_56_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|@nDisplayWarning");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_42_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_112()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|@nGiverSeatInWrongVehicle");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_119_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|@nHealthChanged");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_111_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|@nHideTimerAbandonChevy");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_19_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|@nHideWarning");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_43_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|@nMelreSeated");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_76_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|@nMerleInVehicle");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_57_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|@nMerleTurretManager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_75_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|@nPlayerOutsideVehicle");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_95_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|@nShowTimerAbandonChevy");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_18_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|@nVehicleManager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_41_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|@nYardReach");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_44_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|170063");
    l0:SetConnections({
    });
    l0 = self.box_Brick_Deliver_Vehicle_v5_12;
    params = {
        -- ReasonId,
        [0] = l0:GetDataOutValue(0),
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_33()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gFriendlyPlayer,
        -- farZone,
        [2] = 60,
        -- id2,
        [3] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
        -- nearZone,
        [4] = 50,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|28865155");
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
                [0] = self.f_box_OutputOrder_v2_97_Out_0,
                [1] = self.f_box_OutputOrder_v2_97_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_67()
    local params;
    params = {
        -- BoneName,
        [0] = "DRIVER_SITPOINT_00",
        -- EntityA,
        [1] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
        -- EntityB,
        [2] = "2100967226747143717",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|54600271");
    l0:SetConnections({
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_123_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self._sld_vehicle_box_GetPawnVehicleInfo_122,
        -- Entity2,
        [1] = self.eWrongVehicle,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_93()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = self.gFriendlyPlayer,
        -- vehicle,
        [4] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|62933893");
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
                [0] = self.f_box_OutputOrder_v2_82_Out_0,
                [1] = self.f_box_OutputOrder_v2_82_Out_1,
                [2] = self.f_box_OutputOrder_v2_82_Out_2,
                [3] = self.f_box_OutputOrder_v2_82_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_114()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_48()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = "#AFC926D9",
        -- SeatType,
        [3] = 2,
        -- vehicle,
        [4] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|113952734");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
                [2] = self.f_box_OutputOrder_v2_38_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_49()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_94()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "UNI24_010_B20_WARN_EnterVehicle",
            id = "869870",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = self.gFriendlyPlayer,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_98()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_22()
    local params;
    params = {
        -- Group,
        [0] = self.eQuestGiver,
        -- RelevancyTime,
        [1] = 6,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2345151254",
    };
    return params;
end;

function export:OnEnter_box_UNI24_010_B20_Dialog_51()
    local params;
    params = {
        -- e_NPCPlayingDialog,
        [0] = self.eQuestGiver,
        -- s_LineID,
        [1] = "2480851523",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|259724501");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_101_A_is_False,
    });
    params = {
        -- A,
        [0] = self.bIsGiverDown,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|271643144");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_127_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_127_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_127_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|294130709");
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
        [8] = "UNI24_010_B20 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|302901202");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_45_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI24_010_B20_OBJ_WaitForZip",
            id = "656986",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|361685798");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UNI24_010_B20_Dialog_52()
    local params;
    params = {
        -- e_NPCPlayingDialog,
        [0] = self.eQuestGiver,
        -- s_LineID,
        [1] = "3380164361",
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

function export:OnEnter_box_ForceInVehicle_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceInVehicle_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|430633598");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ForceInVehicle_v2_25_Out,
    });
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- SeatType,
        [1] = 1,
        -- vehicleEntity,
        [2] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|438372112");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_15_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_15_Yes,
    });
    params = {
        -- ent,
        [4] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|457545686");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "BRICK_Steal_Vehicle",
            item = "BRICK_Steal_Vehicle_FAIL",
            id = "376563",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|510966664");
    l0:SetConnections({
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#AFC926D9",
        -- vehicle,
        [2] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|512257441");
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
                [0] = self.f_box_OutputOrder_v2_54_Out_0,
                [1] = self.f_box_OutputOrder_v2_54_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|513905387");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
                [2] = self.f_box_OutputOrder_v2_32_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|526870120");
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
                [0] = self.f_box_OutputOrder_v2_113_Out_0,
                [1] = self.f_box_OutputOrder_v2_113_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_6()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- CharacterId,
        [1] = "9015184608221198",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|560717239");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_89_Out,
    });
    params = {
        -- Bool,
        [0] = self.bPlayerInMountedSeat,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|590310564");
    l0:SetConnections({
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_116_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.eWrongVehicle,
        -- Entity2,
        [1] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_ForceInVehicle_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceInVehicle_v2_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|597265211");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ForceInVehicle_v2_125_Out,
    });
    params = {
        -- pawns,
        [0] = self.eQuestGiver,
        -- SeatType,
        [1] = 2,
        -- vehicleEntity,
        [2] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|599994292");
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

function export:OnEnter_box_Compare_Boolean_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|618016111");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_102_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bIsGiverDown,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_124()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- CharacterId,
        [1] = "9015184608221198",
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
        [2] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_90()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_66()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101041431188640672",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|658795827");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101041431201223590",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|666753598");
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
                [0] = self.f_box_OutputOrder_v2_135_Out_0,
                [1] = self.f_box_OutputOrder_v2_135_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|697850126");
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
                [0] = self.f_box_OutputOrder_v2_140_Out_0,
                [1] = self.f_box_OutputOrder_v2_140_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|703097036");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_40_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI24_010_B20_OBJ_WaitForZip",
            id = "656986",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|704125966");
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

function export:OnEnter_box_VehicleModifier_v2_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|716214443");
    l0:SetConnections({
        -- OnSetAsUnusable,
        [6] = self.f_box_VehicleModifier_v2_118_OnSetAsUnusable,
    });
    params = {
        -- targets,
        [0] = self.eWrongVehicle,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_99()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|837819071");
    l0:SetConnections({
        -- OnSetCommandeerDisabled,
        [9] = self.f_box_VehicleModifier_v2_91_OnSetCommandeerDisabled,
    });
    params = {
        -- targets,
        [0] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_16()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "UNI24_010_B20_WARN_Leaving",
            id = "621248",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|856284322");
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

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|866482078");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
                [2] = self.f_box_OutputOrder_v2_27_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|897789933");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_100_Out,
    });
    params = {
        -- Bool,
        [0] = self.bIsGiverDown,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|897844675");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI24_010_B20_OBJ_Reach",
            id = "656959",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_126()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_28()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2101164922829324387",
        -- WarningZoneTrigger,
        [3] = "2101164886210953314",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_84()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = "#C439C73D",
        -- SeatType,
        [3] = 3,
        -- vehicle,
        [4] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_61()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.6,
    };
    return params;
end;

function export:OnEnter_box_ForceInVehicle_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceInVehicle_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|938887100");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ForceInVehicle_v2_68_Out,
    });
    params = {
        -- pawns,
        [0] = "#C439C73D",
        -- SeatType,
        [1] = 1,
        -- vehicleEntity,
        [2] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_v5_138()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bDisplayVehicleHealth,
        [1] = false,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2105035492398491902",
        -- eTargetMarker,
        [5] = "2105035492398491906",
        -- eVehicle,
        [6] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
        -- eVehicleMarker,
        [7] = "2100967226747143717",
        -- fDistanceFromTarget,
        [8] = 150,
        -- isTargetTrigger,
        [9] = false,
        -- Objective,
        [10] = {
            section = "Objectives",
            item = "UNI24_010_B20_OBJ_Reach",
            id = "656959",
        },
        -- opt_FailReason,
        [11] = {
            section = "BRICK_Steal_Vehicle",
            item = "BRICK_Steal_Vehicle_FAIL",
            id = "376563",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_121()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_11()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gFriendlyPlayer,
        -- farZone,
        [2] = 64,
        -- id2,
        [3] = self.eQuestGiver,
        -- nearZone,
        [4] = 60,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1030198433");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "BRICK_Steal_Vehicle",
            item = "BRICK_Steal_Vehicle_FAIL",
            id = "376563",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_58()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "UNI24_010_B30_OBJ_Revive",
            id = "711392",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1097003120");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_85_Unlocked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 2,
        -- vehicleEntity,
        [4] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1097215986");
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

function export:OnEnter_box_ActivityEnd_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1184854983");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1215909153");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI24_010_B20_FAIL_LeftChevy",
            id = "656960",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_UNI24_010_B20_Dialog_50()
    local params;
    params = {
        -- e_NPCPlayingDialog,
        [0] = self.eQuestGiver,
        -- s_LineID,
        [1] = "590130559",
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1243376829");
    l0:SetConnections({
        -- TryExitted,
        [1] = self.f_box_ForceExitVehicle_v2_117_TryExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = self.eQuestGiver,
        -- vehicle,
        [2] = self.eWrongVehicle,
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1245498851");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_96_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UNI24_010_B20_Dialog_26()
    local params;
    params = {
        -- e_NPCPlayingDialog,
        [0] = self.eQuestGiver,
        -- s_LineID,
        [1] = "350421318",
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_72()
    local params;
    params = {
        -- Vehicle,
        [0] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1397650378");
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
                [0] = self.f_box_OutputOrder_v2_107_Out_0,
                [1] = self.f_box_OutputOrder_v2_107_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1424413779");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_81_ForceExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#C439C73D",
        -- vehicle,
        [2] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1430795839");
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

function export:OnEnter_box_ActivityRetry_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1442295297");
    l0:SetConnections({
    });
    l0 = self.box_Brick_Deliver_Vehicle_v5_138;
    params = {
        -- ReasonId,
        [0] = l0:GetDataOutValue(0),
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_37()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "UNI24_010_B20_WARN_LeftVehicle",
            id = "656961",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = self.gFriendlyPlayer,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_71()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_46()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 25,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1579091596");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_88_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_88_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bPlayerInMountedSeat,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1590283149");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_34_Locked,
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
        [4] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_UNI24_010_B20_Dialog_53()
    local params;
    params = {
        -- e_NPCPlayingDialog,
        [0] = self.eQuestGiver,
        -- s_LineID,
        [1] = "741569124",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_87()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = "#ED455357",
        -- SeatType,
        [3] = 2,
        -- vehicle,
        [4] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1642918583");
    l0:SetConnections({
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#AFC926D9",
        -- vehicle,
        [2] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1652665536");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = self.eQuestGiver,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI24_010_B20_OBJ_WaitForZip",
            id = "656986",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1673672109");
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
                [0] = self.f_box_OutputOrder_v2_137_Out_0,
                [1] = self.f_box_OutputOrder_v2_137_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1675590467");
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
                [0] = self.f_box_OutputOrder_v2_129_Out_0,
                [1] = self.f_box_OutputOrder_v2_129_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_65()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_62()
    local params;
    params = {
        -- Group,
        [0] = self.eQuestGiver,
        -- RelevancyTime,
        [1] = 6,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "641952542",
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1767763077");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_122_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_122_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_122_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1774441162");
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

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1786402138");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
                [2] = self.f_box_OutputOrder_v2_23_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1798343933");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_13_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_5()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_120()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_78()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_80()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = "#AFC926D9",
        -- SeatType,
        [3] = 3,
        -- vehicle,
        [4] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_UNI24_010_B20_Dialog_47()
    local params;
    params = {
        -- e_NPCPlayingDialog,
        [0] = self.eQuestGiver,
        -- s_LineID,
        [1] = "2405366474",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1953174035");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_106_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bIsGiverDown,
    };
    return params;
end;

function export:OnEnter_box_UNI24_010_B20_Dialog_31()
    local params;
    params = {
        -- e_NPCPlayingDialog,
        [0] = self.eQuestGiver,
        -- s_LineID,
        [1] = "364711831",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_36()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gFriendlyPlayer,
        -- farZone,
        [2] = 80,
        -- id2,
        [3] = "2101041431201223590",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1986019420");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI24_010_B20_FAIL_LeftVehicle",
            id = "656962",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|1990745565");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_83_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 2,
        -- vehicleEntity,
        [4] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_92()
    local params;
    params = {
        -- Group,
        [0] = "2101166026652652329",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2076159205");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_24_Out,
    });
    params = {
        -- Entity,
        [0] = "2101041431201223590",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2087213816");
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

function export:OnEnter_box_VehicleListener_v3_55()
    local params;
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = "#C439C73D",
        -- SeatType,
        [3] = 2,
        -- vehicle,
        [4] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_v5_12()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = false,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2100968819659903307",
        -- eTargetMarker,
        [5] = "2100968826555339085",
        -- eVehicle,
        [6] = PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle,
        -- eVehicleMarker,
        [7] = "2100967226747143717",
        -- fDistanceFromTarget,
        [8] = 150,
        -- isTargetTrigger,
        [9] = false,
        -- Objective,
        [10] = {
            section = "Objectives",
            item = "UNI24_010_B20_OBJ_Reach",
            id = "656959",
        },
        -- opt_FailReason,
        [11] = {
            section = "BRICK_Steal_Vehicle",
            item = "BRICK_Steal_Vehicle_FAIL",
            id = "376563",
        },
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2120794689");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_115_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_115_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_115_Out,
    });
    params = {
        -- pawn,
        [0] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI24\\UNI24_010\\UNI24_010_B20.domino|@UNI24_010_B20|2146532983");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_59_Enabled,
    });
    params = {
        -- Marker,
        [1] = self.eQuestGiver,
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI24_010_B20_OBJ_WaitForZip",
            id = "656986",
        },
    };
    return params;
end;

function export:OnExit_box_GetPawnVehicleInfo_127_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_127_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_127_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CharacterLoadedIdListener_6_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_6;
    self.eQuestGiver = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_89_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bPlayerInMountedSeat = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_124_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_124;
    self.eQuestGiver = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_100_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bIsGiverDown = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_122_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_122 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_122_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_122 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_122_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_122 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPlayerGroup_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gFriendlyPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    PersistentGlobals.UNI24_010_B10.UNI24_010_B20_Vehicle = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_115_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eWrongVehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_115_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eWrongVehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_115_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eWrongVehicle = l0:GetDataOutValue(2);
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
