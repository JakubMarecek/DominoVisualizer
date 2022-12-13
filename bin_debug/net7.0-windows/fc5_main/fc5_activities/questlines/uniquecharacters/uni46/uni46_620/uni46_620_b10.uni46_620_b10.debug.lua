LUAC,� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni46/uni46_620/uni46_620_b10.domino
-- User graph: UNI46_620_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CORE.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Outro.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/CreateVector3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/AllowAutoDrive_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Array.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Fire_Manager.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1831277069.bnk]], "CSoundResource");
        cboxRes:LoadResource([[576106946.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3687190630.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2447742352.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1438862067.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2439201467.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2936872521.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3688083077.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2126093703.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3917468923.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2374431541.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CORE.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Start_OnFoot",
            },
            [2] = {
                name = "Start_Vehicle",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Disabled",
                delayed = false,
            },
            [1] = {
                name = "Fail",
                delayed = false,
            },
            [2] = {
                name = "Finished",
                delayed = true,
            },
            [3] = {
                name = "GatePassed",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bTeleportPlayer",
                type = "bool",
            },
            [1] = {
                name = "eMobileMarker_Vehicle_Client",
                type = "entity",
            },
            [2] = {
                name = "eMobileMarker_Vehicle_Host",
                type = "entity",
            },
            [3] = {
                name = "eTeleportPointClient",
                type = "entity",
            },
            [4] = {
                name = "eTeleportPointHost",
                type = "entity",
            },
            [5] = {
                name = "eTriggerAroundStartingVehicles",
                type = "entity",
            },
            [6] = {
                name = "eVehicleSpawnerClient",
                type = "entity",
            },
            [7] = {
                name = "eVehicleSpawnerHost",
                type = "entity",
            },
            [8] = {
                name = "fDelayBeforeStart",
                type = "float",
            },
            [9] = {
                name = "fTimer",
                type = "float",
            },
            [10] = {
                name = "iBonusTimeGates",
                type = "int",
            },
            [11] = {
                name = "VehicleLockCountdown",
                type = "bool",
            },
        },
        dataInCount = 12,
        dataOut = {
            [0] = {
                name = "FailReason",
                type = "oasis",
            },
            [1] = {
                name = "Gate",
                type = "int",
            },
            [2] = {
                name = "PlayerPassingGate",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Crash",
            },
            [1] = {
                name = "Encouragement",
            },
            [2] = {
                name = "Landing",
            },
            [3] = {
                name = "OutOfTime",
            },
            [4] = {
                name = "Success",
            },
        },
        controlInCount = 5,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Outro.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "CustomScript",
                delayed = false,
            },
            [1] = {
                name = "Finished",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "ClientTeleport",
                type = "entity",
            },
            [1] = {
                name = "HostTeleport",
                type = "entity",
            },
            [2] = {
                name = "Region",
                type = "int",
            },
            [3] = {
                name = "SceneEntity",
                type = "entity",
            },
            [4] = {
                name = "SequenceFile",
                type = "sequence",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/MessageListener_v3.lua")] = {
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
                name = "Received",
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
                name = "message",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/ParticleSystem_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Clean",
            },
            [1] = {
                name = "Pause",
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
                name = "Cleaned",
                delayed = false,
            },
            [1] = {
                name = "Paused",
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
                name = "TargetEntities",
                type = "group",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Allow",
            },
            [1] = {
                name = "DoNotAllow",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnAllow",
                delayed = false,
            },
            [1] = {
                name = "OnDoNotAllow",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Array.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In_Fireworks",
            },
            [1] = {
                name = "In_Rings",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out_Fireworks",
                delayed = false,
            },
            [1] = {
                name = "Out_Rings",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "Fireworks",
                type = "group",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Fire_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable_Veh_Fire",
            },
            [1] = {
                name = "Enable_Flame",
            },
            [2] = {
                name = "Enable_Veh_Fire",
            },
            [3] = {
                name = "Start",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Disabled_Veh_Fire",
                delayed = false,
            },
            [1] = {
                name = "Enabled_Flame",
                delayed = false,
            },
            [2] = {
                name = "Enabled_Veh_Fire",
                delayed = false,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bCoop",
                type = "bool",
            },
            [1] = {
                name = "Delay",
                type = "float",
            },
            [2] = {
                name = "Fire_Length",
                type = "float",
            },
            [3] = {
                name = "Particle_Fire_Client",
                type = "entity",
            },
            [4] = {
                name = "Particle_Fire_Host",
                type = "entity",
            },
            [5] = {
                name = "Particle1",
                type = "entity",
            },
            [6] = {
                name = "Particle2",
                type = "entity",
            },
            [7] = {
                name = "Soundpoint_Fire_Client",
                type = "entity",
            },
            [8] = {
                name = "Soundpoint_Fire_Host",
                type = "entity",
            },
            [9] = {
                name = "Soundpoint1",
                type = "entity",
            },
            [10] = {
                name = "Soundpoint2",
                type = "entity",
            },
            [11] = {
                name = "Start_VEH_Fire_Sound",
                type = "Sound",
            },
            [12] = {
                name = "Stop_VEH_Fire_Sound",
                type = "Sound",
            },
            [13] = {
                name = "Trigger",
                type = "entity",
            },
        },
        dataInCount = 14,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI46_620_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10";
    self.iCeleb = "9015208488001815";
    self.oObjective = {
        section = "Objectives",
        item = "UNI46_620_B10C_OBJ",
        id = "683116",
    };
    self.ePlayer = nil;
    self.fTimer = 25;
    self.fTimeBonus = 4;
    self.bTimeFail = false;
    self.eHost = nil;
    self.eClient = nil;
    self.bIsCoop = false;
    self.OObjectiveTimer = {
        section = "Objectives",
        item = "UNI46_610_B10D_OBJ",
        id = "711073",
    };
    self.iCPCounter = 0;
    self.iHostCounter = 0;
    self.iClientCounter = 0;
    self.eVehicle_1 = nil;
    self.eVehicle_2 = nil;
    self.bCoop = false;
    self.ePlayerClient = nil;
    self.ePlayerPassingGate = nil;
    self.ePlayerHost = nil;
    self.eActiveDriver_1 = nil;
    self.eVehicle_Client = nil;
    self.eActiveDriver_2 = nil;
    self.eVehicle_Host = nil;
    self.lTeleportPoints_Client = {
    };
    self.lTeleportPoints_Host = {
    };
    self.iGateCurrent = 0;
    self.iGatePassed = 0;
    self.iTeleportCP_Host = 0;
    self.iTeleportCP_Client = 0;
    self.CPCounter = 0;
    self.FailReason = {
        section = "Quest_Common",
        item = "UNI46_COMMON_FAIL_TIME",
        id = "782678",
    };
    self.bFinishGate = true;
    self.gp_fireworks = nil;
    self.box_ProximityRadiusListener_v3_149 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|17246413");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_149_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_149_SomeoneNear,
    });
    self.box_MultipleOR_70 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|43383310");
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
        [0] = self.f_box_MultipleOR_70_Out,
    });
    self.box_SoundModifier_v2_76 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|80515449");
    l0:SetConnections({
    });
    self.box_UNI46_620_B10_Fire_Manager_12 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Fire_Manager.debug.lua");
    l0 = self.box_UNI46_620_B10_Fire_Manager_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_620_B10_Fire_Manager_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|80589775");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_153 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|81309087");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_153_Enabled,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_153_OnOccupied,
    });
    self.box_Brick_GateRaces_Dialogs_58 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|91857876");
    l0:SetConnections({
    });
    self.box_Random_84 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|140427562");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
            [1] = 2,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_84_Output_0,
                [1] = self.f_box_Random_84_Output_1,
            },
            count = 2,
        },
    });
    self.box_PositionModifier_v2_204 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|146837982");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_204_StartOut,
    });
    self.box_EntityStatusListener_63 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|148821684");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_63_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_63_Unloaded,
    });
    self.box_PlayDialog_v6_169 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|181771176");
    l0:SetConnections({
    });
    self.box_Bind_v4_125 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|232251906");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_125_Bound,
    });
    self.box_MultipleAND_v2_23 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|244300897");
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
        [0] = self.f_box_MultipleAND_v2_23_Out,
    });
    self.box_Random_86 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|251463616");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
            [1] = 2,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_86_Output_0,
                [1] = self.f_box_Random_86_Output_1,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|287645042");
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
    self.box_UNI46_620_B10_Fire_Manager_7 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Fire_Manager.debug.lua");
    l0 = self.box_UNI46_620_B10_Fire_Manager_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_620_B10_Fire_Manager_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|300083522");
    l0:SetConnections({
    });
    self.box_Random_82 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|301756012");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
            [1] = 2,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_82_Output_0,
                [1] = self.f_box_Random_82_Output_1,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_171 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|313419301");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_171_Enabled,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_171_OnOccupied,
    });
    self.box_MultipleOR_54 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|322692293");
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
        [0] = self.f_box_MultipleOR_54_Out,
    });
    self.box_Brick_GateRaces_Outro_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Outro.debug.lua");
    l0 = self.box_Brick_GateRaces_Outro_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Outro_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|327818045");
    l0:SetConnections({
        -- CustomScript,
        [0] = self.f_box_Brick_GateRaces_Outro_22_CustomScript,
        -- Finished,
        [1] = self.f_box_Brick_GateRaces_Outro_22_Finished,
        -- Started,
        [2] = self.f_box_Brick_GateRaces_Outro_22_Started,
    });
    self.box_OnceOnly_v3_170 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|389300431");
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
                [0] = self.f_box_OnceOnly_v3_170_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_59 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|475782641");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_59_Enter,
    });
    self.box_ProximityRadiusListener_v3_140 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|477377082");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_140_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_140_SomeoneNear,
    });
    self.box_Bind_v4_64 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|533609767");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_64_Bound,
    });
    self.box_Gate_v3_20 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|541017856");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_20_Out,
    });
    self.box_PlayDialog_v6_155 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|615355014");
    l0:SetConnections({
    });
    self.box_Bind_v4_217 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|624972474");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_147 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|636598257");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_83 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|664908617");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_83_Received,
    });
    self.box_MessageListener_v3_72 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|715153153");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_72_Received,
    });
    self.box_UNI46_620_B10_Fire_Manager_8 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Fire_Manager.debug.lua");
    l0 = self.box_UNI46_620_B10_Fire_Manager_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_620_B10_Fire_Manager_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|728255077");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_UNI46_620_B10_Fire_Manager_8_Started,
    });
    self.box_ProximityTrigger_v2_158 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|759461182");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_158_OnOccupied,
    });
    self.box_CoopActivePlayers_173 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|816153304");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_173_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_173_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_173_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_173_TwoPlayers,
    });
    self.box_Delay_v5_102 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|877502794");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_102_TimeElapsed,
    });
    self.box_Bind_v4_85 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|955964921");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_85_Bound,
    });
    self.box_EntityStatusListener_78 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|956546995");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_78_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_78_Unloaded,
    });
    self.box_OnceOnly_v3_32 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|991663837");
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
                [0] = self.f_box_OnceOnly_v3_32_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_53 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1000580480");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_53_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_53_Unloaded,
    });
    self.box_ProximityRadiusListener_v3_138 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1029935800");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_138_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_138_SomeoneNear,
    });
    self.box_ProximityTrigger_v2_57 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1075282107");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_57_Enter,
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1084473013");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_SpawnAI_136 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1086769270");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_136_Spawned,
    });
    self.box_ProximityTrigger_v2_154 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1088840729");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_154_OnOccupied,
    });
    self.box_ProximityTrigger_v2_87 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1127564076");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_87_Enter,
    });
    self.box_PositionModifier_v2_206 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1128884390");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_206_StartOut,
    });
    self.box_Random_65 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1129590110");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
        },
        dataIn = {
            [1] = 2,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_65_Output_0,
                [1] = self.f_box_Random_65_Output_1,
            },
            count = 2,
        },
    });
    self.box_Bind_v4_216 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1135719213");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_162 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1172479604");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_162_OnOccupied,
    });
    self.box_MessageListener_v3_135 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1186405047");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_135_Received,
    });
    self.box_Bind_v4_123 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1197386552");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_123_Bound,
    });
    self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1211660414");
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
        [0] = self.f_box_MultipleOR_45_Out,
    });
    self.box_Brick_GateRaces_Dialogs_75 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1220794398");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_79 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1221855795");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_79_Received,
    });
    self.box_EntityStatusListener_66 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1241323310");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_66_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_66_Unloaded,
    });
    self.box_Brick_GateRaces_Dialogs_90 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1271641974");
    l0:SetConnections({
    });
    self.box_UNI46_620_B10_Array_4 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Array.debug.lua");
    l0 = self.box_UNI46_620_B10_Array_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_620_B10_Array_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1287193532");
    l0:SetConnections({
        -- Out_Rings,
        [1] = self.f_box_UNI46_620_B10_Array_4_Out_Rings,
    });
    self.box_OnceOnly_v3_17 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1287715502");
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
                [0] = self.f_box_OnceOnly_v3_17_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1316346497");
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
    self.box_Bind_v4_215 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1335583090");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_215_Bound,
    });
    self.box_OnceOnly_v3_150 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1340652844");
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
                [0] = self.f_box_OnceOnly_v3_150_Out_0,
            },
            count = 2,
        },
    });
    self.box_UNI46_620_B10_Fire_Manager_15 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Fire_Manager.debug.lua");
    l0 = self.box_UNI46_620_B10_Fire_Manager_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_620_B10_Fire_Manager_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1376484551");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_139 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1383822531");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_139_Enabled,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_139_OnOccupied,
    });
    self.box_UNI46_620_B10_Array_2 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Array.debug.lua");
    l0 = self.box_UNI46_620_B10_Array_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_620_B10_Array_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1391532788");
    l0:SetConnections({
        -- Out_Fireworks,
        [0] = self.f_box_UNI46_620_B10_Array_2_Out_Fireworks,
        -- Out_Rings,
        [1] = self.f_box_UNI46_620_B10_Array_2_Out_Rings,
    });
    self.box_Brick_GateRaces_Dialogs_55 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1414889411");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_Dialogs_92 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1427714378");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_137 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1445972609");
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
                [0] = self.f_box_OnceOnly_v3_137_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityRadiusListener_v3_172 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1500944231");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_172_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_172_SomeoneNear,
    });
    self.box_ProximityTrigger_v2_73 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1504543763");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_73_Enter,
    });
    self.box_PositionModifier_v2_197 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1508473053");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_197_StartOut,
    });
    self.box_OnceOnly_v3_167 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1557779862");
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
    self.box_EntityStatusListener_94 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1578887150");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_94_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_94_Unloaded,
    });
    self.box_PositionModifier_v2_195 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1589660308");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_195_StartOut,
    });
    self.box_UNI46_620_B10_Fire_Manager_18 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Fire_Manager.debug.lua");
    l0 = self.box_UNI46_620_B10_Fire_Manager_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_620_B10_Fire_Manager_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1596477252");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CORE_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CORE.debug.lua");
    l0 = self.box_Brick_GateRaces_CORE_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CORE_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1598793998");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_Brick_GateRaces_CORE_10_Disabled,
        -- Fail,
        [1] = self.f_box_Brick_GateRaces_CORE_10_Fail,
        -- Finished,
        [2] = self.f_box_Brick_GateRaces_CORE_10_Finished,
        -- GatePassed,
        [3] = self.f_box_Brick_GateRaces_CORE_10_GatePassed,
        -- Started,
        [4] = self.f_box_Brick_GateRaces_CORE_10_Started,
    });
    self.box_ProximityRadiusListener_v3_143 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1612138743");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_143_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_143_SomeoneNear,
    });
    self.box_OnceOnly_v3_148 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1627694083");
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
                [0] = self.f_box_OnceOnly_v3_148_Out_0,
            },
            count = 2,
        },
    });
    self.box_UNI46_620_B10_Fire_Manager_11 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Fire_Manager.debug.lua");
    l0 = self.box_UNI46_620_B10_Fire_Manager_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_620_B10_Fire_Manager_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1662462734");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_168 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1778384741");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_142 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1790470320");
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
                [0] = self.f_box_OnceOnly_v3_142_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityRadiusListener_v3_160 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1807298079");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_160_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_160_SomeoneNear,
    });
    self.box_PlayDialog_v6_146 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1822831764");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_68 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1844592025");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_68_Enter,
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1938248202");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_Bind_v4_214 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2018865113");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_214_Bound,
    });
    self.box_UNI46_620_B10_Fire_Manager_13 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Fire_Manager.debug.lua");
    l0 = self.box_UNI46_620_B10_Fire_Manager_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_620_B10_Fire_Manager_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2031643804");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_UNI46_620_B10_Fire_Manager_13_Started,
    });
    self.box_OnceOnly_v3_31 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2064470418");
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
                [0] = self.f_box_OnceOnly_v3_31_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_145 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2090363873");
    l0:SetConnections({
    });
    self.box_UNI46_620_B10_Fire_Manager_9 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Fire_Manager.debug.lua");
    l0 = self.box_UNI46_620_B10_Fire_Manager_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_620_B10_Fire_Manager_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2090630120");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|623736848", "623736848", "UNI46_620_B10", "In", "box_ActivityAcknowledgeGate_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_181_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_226();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2061552185", "2061552185", "UNI46_620_B10", "box_Simple_Node_181.Out", "box_OutputOrder_v2_226.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_184_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|690970716", "690970716", "UNI46_620_B10", "box_OutputOrder_v2_184.Out", "box_CoopActivePlayers_173.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_183_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_138();
    l0 = self.box_ProximityRadiusListener_v3_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|823239217", "823239217", "UNI46_620_B10", "box_OutputOrder_v2_183.Out", "box_ProximityRadiusListener_v3_138.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_183_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_143();
    l0 = self.box_ProximityRadiusListener_v3_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|66078735", "66078735", "UNI46_620_B10", "box_OutputOrder_v2_183.Out", "box_ProximityRadiusListener_v3_143.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_183_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_149();
    l0 = self.box_ProximityRadiusListener_v3_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|457469605", "457469605", "UNI46_620_B10", "box_OutputOrder_v2_183.Out", "box_ProximityRadiusListener_v3_149.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_183_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_140();
    l0 = self.box_ProximityRadiusListener_v3_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1895327598", "1895327598", "UNI46_620_B10", "box_OutputOrder_v2_183.Out", "box_ProximityRadiusListener_v3_140.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_183_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_160();
    l0 = self.box_ProximityRadiusListener_v3_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1021756949", "1021756949", "UNI46_620_B10", "box_OutputOrder_v2_183.Out", "box_ProximityRadiusListener_v3_160.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_183_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_172();
    l0 = self.box_ProximityRadiusListener_v3_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|977290935", "977290935", "UNI46_620_B10", "box_OutputOrder_v2_183.Out", "box_ProximityRadiusListener_v3_172.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_105_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_151();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1995259972", "1995259972", "UNI46_620_B10", "box_Simple_Node_105.Out", "box_ParticleSystem_v3_151.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_229_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_UNI46_620_B10_Array_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|453947652", "453947652", "UNI46_620_B10", "box_Simple_Node_229.Out", "box_UNI46_620_B10_Array_2.In_Fireworks", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Fireworks
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_240_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_96();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1232816332", "1232816332", "UNI46_620_B10", "box_Simple_Node_240.Out", "box_OutputOrder_v2_96.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_104_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_AllowAutoDrive_v2_47();
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|961500279", "961500279", "UNI46_620_B10", "box_Simple_Node_104.Out", "box_AllowAutoDrive_v2_47.DoNotAllow", clone:GetLuaBox(), l0:GetLuaBox());
    -- DoNotAllow
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_103_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_AllowAutoDrive_v2_47();
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1783563556", "1783563556", "UNI46_620_B10", "box_Simple_Node_103.Out", "box_AllowAutoDrive_v2_47.Allow", clone:GetLuaBox(), l0:GetLuaBox());
    -- Allow
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_89_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_74();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|803219462", "803219462", "UNI46_620_B10", "box_Simple_Node_89.Out", "box_Compare_Boolean_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_6_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_135();
    l0 = self.box_MessageListener_v3_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2131870092", "2131870092", "UNI46_620_B10", "box_Simple_Node_6.Out", "box_MessageListener_v3_135.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_230_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI46_620_B10_Fire_Manager_15();
    l0 = self.box_UNI46_620_B10_Fire_Manager_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1191431908", "1191431908", "UNI46_620_B10", "box_Simple_Node_230.Out", "box_UNI46_620_B10_Fire_Manager_15.Disable_Veh_Fire", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable_Veh_Fire
    l0:Exec(0, params);
    params = self:OnEnter_box_UNI46_620_B10_Fire_Manager_18();
    l0 = self.box_UNI46_620_B10_Fire_Manager_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|612369970", "612369970", "UNI46_620_B10", "box_Simple_Node_230.Out", "box_UNI46_620_B10_Fire_Manager_18.Disable_Veh_Fire", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable_Veh_Fire
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_182_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_138();
    l0 = self.box_ProximityRadiusListener_v3_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1138105579", "1138105579", "UNI46_620_B10", "box_OutputOrder_v2_182.Out", "box_ProximityRadiusListener_v3_138.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_182_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_143();
    l0 = self.box_ProximityRadiusListener_v3_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1474743837", "1474743837", "UNI46_620_B10", "box_OutputOrder_v2_182.Out", "box_ProximityRadiusListener_v3_143.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_182_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_149();
    l0 = self.box_ProximityRadiusListener_v3_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|720822606", "720822606", "UNI46_620_B10", "box_OutputOrder_v2_182.Out", "box_ProximityRadiusListener_v3_149.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_182_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_140();
    l0 = self.box_ProximityRadiusListener_v3_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|994255380", "994255380", "UNI46_620_B10", "box_OutputOrder_v2_182.Out", "box_ProximityRadiusListener_v3_140.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_182_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_160();
    l0 = self.box_ProximityRadiusListener_v3_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2036284095", "2036284095", "UNI46_620_B10", "box_OutputOrder_v2_182.Out", "box_ProximityRadiusListener_v3_160.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_182_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_172();
    l0 = self.box_ProximityRadiusListener_v3_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|182582712", "182582712", "UNI46_620_B10", "box_OutputOrder_v2_182.Out", "box_ProximityRadiusListener_v3_172.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_182_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_67();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|373654340", "373654340", "UNI46_620_B10", "box_OutputOrder_v2_182.Out", "box_OutputOrder_v2_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_182_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_63();
    l0 = self.box_EntityStatusListener_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1199316953", "1199316953", "UNI46_620_B10", "box_OutputOrder_v2_182.Out", "box_EntityStatusListener_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_182_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1743993278", "1743993278", "UNI46_620_B10", "box_OutputOrder_v2_182.Out", "box_OutputOrder_v2_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_182_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI46_620_B10_Fire_Manager_7();
    l0 = self.box_UNI46_620_B10_Fire_Manager_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|886501195", "886501195", "UNI46_620_B10", "box_OutputOrder_v2_182.Out", "box_UNI46_620_B10_Fire_Manager_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(3, params);
end;

function export:f_box_ProximityRadiusListener_v3_149_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_153();
    l0 = self.box_ProximityRadiusListener_v3_149;
    l1 = self.box_ProximityTrigger_v2_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1916826294", "1916826294", "UNI46_620_B10", "box_ProximityRadiusListener_v3_149.Disabled", "box_ProximityTrigger_v2_153.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_149_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_153();
    l0 = self.box_ProximityRadiusListener_v3_149;
    l1 = self.box_ProximityTrigger_v2_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1867425426", "1867425426", "UNI46_620_B10", "box_ProximityRadiusListener_v3_149.SomeoneNear", "box_ProximityTrigger_v2_153.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_93_InVehicle()
    self:OnExit_box_GetPawnVehicleInfo_93_InVehicle();
end;

function export:f_box_GetPawnVehicleInfo_93_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_93_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_93_Out()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_93_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_25();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|489892894", "489892894", "UNI46_620_B10", "box_GetPawnVehicleInfo_93.Out", "box_SetEntity_v2_25.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_70_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_70;
    l1 = self.box_Brick_GateRaces_Dialogs_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|652031408", "652031408", "UNI46_620_B10", "box_MultipleOR_70.Out", "box_Brick_GateRaces_Dialogs_92.Crash", l0:GetLuaBox(), l1:GetLuaBox());
    -- Crash
    l1:Exec(0, {
    });
end;

function export:f_box_ProximityTrigger_v2_153_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UNI46_620_B10_Fire_Manager_11();
    l0 = self.box_ProximityTrigger_v2_153;
    l1 = self.box_UNI46_620_B10_Fire_Manager_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|244810660", "244810660", "UNI46_620_B10", "box_ProximityTrigger_v2_153.Enabled", "box_UNI46_620_B10_Fire_Manager_11.Enable_Flame", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable_Flame
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_153_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_153;
    l1 = self.box_OnceOnly_v3_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2053306537", "2053306537", "UNI46_620_B10", "box_ProximityTrigger_v2_153.OnOccupied", "box_OnceOnly_v3_142.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_84_Output_0()
    local l0, l1;
    l0 = self.box_Random_84;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1655559500", "1655559500", "UNI46_620_B10", "box_Random_84.Output", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Random_84_Output_1()
    local l0, l1;
    l0 = self.box_Random_84;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|169910953", "169910953", "UNI46_620_B10", "box_Random_84.Output", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PositionModifier_v2_204_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_64();
    l0 = self.box_PositionModifier_v2_204;
    l1 = self.box_Bind_v4_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1765842876", "1765842876", "UNI46_620_B10", "box_PositionModifier_v2_204.StartOut", "box_Bind_v4_64.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_63_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_73();
    l0 = self.box_EntityStatusListener_63;
    l1 = self.box_ProximityTrigger_v2_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1444809586", "1444809586", "UNI46_620_B10", "box_EntityStatusListener_63.Loaded", "box_ProximityTrigger_v2_73.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_63_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_73();
    l0 = self.box_EntityStatusListener_63;
    l1 = self.box_ProximityTrigger_v2_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|996723151", "996723151", "UNI46_620_B10", "box_EntityStatusListener_63.Unloaded", "box_ProximityTrigger_v2_73.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_96_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_56();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2072360398", "2072360398", "UNI46_620_B10", "box_OutputOrder_v2_96.Out", "box_IntegerArithmetics_v2_56.Mod", clone:GetLuaBox(), l0:GetLuaBox());
    -- Mod
    l0:Exec(6, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_96_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_180();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|819692975", "819692975", "UNI46_620_B10", "box_OutputOrder_v2_96.Out", "box_Compare_Integers_180.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_125_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_CreateVector3_196();
    l0 = self.box_Bind_v4_125;
    l1 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|897451835", "897451835", "UNI46_620_B10", "box_Bind_v4_125.Bound", "box_CreateVector3_196.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_23_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_23;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|615669646", "615669646", "UNI46_620_B10", "box_MultipleAND_v2_23.Out", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_86_Output_0()
    local l0, l1;
    l0 = self.box_Random_86;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1349949893", "1349949893", "UNI46_620_B10", "box_Random_86.Output", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_86_Output_1()
    local l0, l1;
    l0 = self.box_Random_86;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1555255612", "1555255612", "UNI46_620_B10", "box_Random_86.Output", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = self.box_MultipleOR_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|948237289", "948237289", "UNI46_620_B10", "box_MultipleOR_3.Out", "box_OutputOrder_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_82_Output_0()
    local l0, l1;
    l0 = self.box_Random_82;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1527354903", "1527354903", "UNI46_620_B10", "box_Random_82.Output", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Random_82_Output_1()
    local l0, l1;
    l0 = self.box_Random_82;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1231016046", "1231016046", "UNI46_620_B10", "box_Random_82.Output", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_ProximityTrigger_v2_171_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UNI46_620_B10_Fire_Manager_13();
    l0 = self.box_ProximityTrigger_v2_171;
    l1 = self.box_UNI46_620_B10_Fire_Manager_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1754039164", "1754039164", "UNI46_620_B10", "box_ProximityTrigger_v2_171.Enabled", "box_UNI46_620_B10_Fire_Manager_13.Enable_Flame", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable_Flame
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_171_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_171;
    l1 = self.box_OnceOnly_v3_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|496052016", "496052016", "UNI46_620_B10", "box_ProximityTrigger_v2_171.OnOccupied", "box_OnceOnly_v3_170.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_81();
    l0 = self.box_MultipleOR_54;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1186782378", "1186782378", "UNI46_620_B10", "box_MultipleOR_54.Out", "box_Print_v2_81.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_Outro_22_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = self.box_Brick_GateRaces_Outro_22;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|31994985", "31994985", "UNI46_620_B10", "box_Brick_GateRaces_Outro_22.CustomScript", "box_OutputOrder_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_Outro_22_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_21();
    l0 = self.box_Brick_GateRaces_Outro_22;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|617988168", "617988168", "UNI46_620_B10", "box_Brick_GateRaces_Outro_22.Finished", "box_ActivityEnd_21.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_Outro_22_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_223();
    l0 = self.box_Brick_GateRaces_Outro_22;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1729662595", "1729662595", "UNI46_620_B10", "box_Brick_GateRaces_Outro_22.Started", "box_OutputOrder_v2_223.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_52_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_52_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_24();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2084016504", "2084016504", "UNI46_620_B10", "box_SetEntity_v2_52.Out", "box_Compare_Boolean_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CreateVector3_196_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_196_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_195();
    l0 = self.box_PositionModifier_v2_195;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1322045652", "1322045652", "UNI46_620_B10", "box_CreateVector3_196.Out", "box_PositionModifier_v2_195.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_170_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_169();
    l0 = self.box_OnceOnly_v3_170;
    l1 = self.box_PlayDialog_v6_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|631267563", "631267563", "UNI46_620_B10", "box_OnceOnly_v3_170.Out", "box_PlayDialog_v6_169.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_133_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|513627446", "513627446", "UNI46_620_B10", "box_OutputOrder_v2_133.Out", "box_Simple_Node_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_133_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_182();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|740655408", "740655408", "UNI46_620_B10", "box_OutputOrder_v2_133.Out", "box_OutputOrder_v2_182.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_59_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Random_65();
    l0 = self.box_ProximityTrigger_v2_59;
    l1 = self.box_Random_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|321670638", "321670638", "UNI46_620_B10", "box_ProximityTrigger_v2_59.Enter", "box_Random_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_140_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_158();
    l0 = self.box_ProximityRadiusListener_v3_140;
    l1 = self.box_ProximityTrigger_v2_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1451329701", "1451329701", "UNI46_620_B10", "box_ProximityRadiusListener_v3_140.Disabled", "box_ProximityTrigger_v2_158.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_140_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_158();
    l0 = self.box_ProximityRadiusListener_v3_140;
    l1 = self.box_ProximityTrigger_v2_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|895202496", "895202496", "UNI46_620_B10", "box_ProximityRadiusListener_v3_140.SomeoneNear", "box_ProximityTrigger_v2_158.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Bind_v4_64_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_CreateVector3_205();
    l0 = self.box_Bind_v4_64;
    l1 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1283392169", "1283392169", "UNI46_620_B10", "box_Bind_v4_64.Bound", "box_CreateVector3_205.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_157();
    l0 = self.box_Gate_v3_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1607007173", "1607007173", "UNI46_620_B10", "box_Gate_v3_20.Out", "box_OutputOrder_v2_157.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_180_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_229();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1869933706", "1869933706", "UNI46_620_B10", "box_Compare_Integers_180.A_ge_B", "box_Simple_Node_229.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_83_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_83;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2115916350", "2115916350", "UNI46_620_B10", "box_MessageListener_v3_83.Received", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_20();
    l0 = self.box_Gate_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1276882109", "1276882109", "UNI46_620_B10", "box_OutputOrder_v2_27.Out", "box_Gate_v3_20.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_101();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|64442840", "64442840", "UNI46_620_B10", "box_OutputOrder_v2_27.Out", "box_ActivityRetry_101.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_183();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1650655677", "1650655677", "UNI46_620_B10", "box_OutputOrder_v2_27.Out", "box_OutputOrder_v2_183.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_184();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|446109335", "446109335", "UNI46_620_B10", "box_OutputOrder_v2_27.Out", "box_OutputOrder_v2_184.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|183617828", "183617828", "UNI46_620_B10", "box_OutputOrder_v2_27.Out", "box_Simple_Node_230.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_72_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_72;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|550767097", "550767097", "UNI46_620_B10", "box_MessageListener_v3_72.Received", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UNI46_620_B10_Fire_Manager_8_Started()
    local params, l0, l1;
    params = self:OnEnter_box_UNI46_620_B10_Fire_Manager_9();
    l0 = self.box_UNI46_620_B10_Fire_Manager_8;
    l1 = self.box_UNI46_620_B10_Fire_Manager_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1276498341", "1276498341", "UNI46_620_B10", "box_UNI46_620_B10_Fire_Manager_8.Started", "box_UNI46_620_B10_Fire_Manager_9.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(3, params);
end;

function export:f_box_ProximityTrigger_v2_158_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_158;
    l1 = self.box_OnceOnly_v3_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|448451314", "448451314", "UNI46_620_B10", "box_ProximityTrigger_v2_158.OnOccupied", "box_OnceOnly_v3_150.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_97_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_123();
    l0 = self.box_Bind_v4_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|568578765", "568578765", "UNI46_620_B10", "box_Compare_Boolean_97.A_is_True", "box_Bind_v4_123.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_CreateVector3_199_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_199_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_204();
    l0 = self.box_PositionModifier_v2_204;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1109473228", "1109473228", "UNI46_620_B10", "box_CreateVector3_199.Out", "box_PositionModifier_v2_204.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_CoopActivePlayers_173_OnePlayer()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_173_OnePlayer();
    params = self:OnEnter_box_SetBoolean_v2_16();
    l0 = self.box_CoopActivePlayers_173;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1592179386", "1592179386", "UNI46_620_B10", "box_CoopActivePlayers_173.OnePlayer", "box_SetBoolean_v2_16.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_173_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_174();
    l0 = self.box_CoopActivePlayers_173;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1368383915", "1368383915", "UNI46_620_B10", "box_CoopActivePlayers_173.PlayerAdded", "box_Print_v2_174.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_173_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_173_TwoPlayers();
    params = self:OnEnter_box_SetBoolean_v2_16();
    l0 = self.box_CoopActivePlayers_173;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|905684401", "905684401", "UNI46_620_B10", "box_CoopActivePlayers_173.TwoPlayers", "box_SetBoolean_v2_16.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_102_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_76();
    l0 = self.box_Delay_v5_102;
    l1 = self.box_SoundModifier_v2_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1946640898", "1946640898", "UNI46_620_B10", "box_Delay_v5_102.TimeElapsed", "box_SoundModifier_v2_76.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_85_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_CreateVector3_198();
    l0 = self.box_Bind_v4_85;
    l1 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|917595208", "917595208", "UNI46_620_B10", "box_Bind_v4_85.Bound", "box_CreateVector3_198.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_78_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_59();
    l0 = self.box_EntityStatusListener_78;
    l1 = self.box_ProximityTrigger_v2_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1024148754", "1024148754", "UNI46_620_B10", "box_EntityStatusListener_78.Loaded", "box_ProximityTrigger_v2_59.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_78_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_59();
    l0 = self.box_EntityStatusListener_78;
    l1 = self.box_ProximityTrigger_v2_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1289427783", "1289427783", "UNI46_620_B10", "box_EntityStatusListener_78.Unloaded", "box_ProximityTrigger_v2_59.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_32_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UNI46_620_B10_Fire_Manager_15();
    l0 = self.box_OnceOnly_v3_32;
    l1 = self.box_UNI46_620_B10_Fire_Manager_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|890550299", "890550299", "UNI46_620_B10", "box_OnceOnly_v3_32.Out", "box_UNI46_620_B10_Fire_Manager_15.Enable_Veh_Fire", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable_Veh_Fire
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_53_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_68();
    l0 = self.box_EntityStatusListener_53;
    l1 = self.box_ProximityTrigger_v2_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|39879211", "39879211", "UNI46_620_B10", "box_EntityStatusListener_53.Loaded", "box_ProximityTrigger_v2_68.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_53_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_68();
    l0 = self.box_EntityStatusListener_53;
    l1 = self.box_ProximityTrigger_v2_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|859972695", "859972695", "UNI46_620_B10", "box_EntityStatusListener_53.Unloaded", "box_ProximityTrigger_v2_68.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_95_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CORE_10();
    l0 = self.box_Brick_GateRaces_CORE_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2062574609", "2062574609", "UNI46_620_B10", "box_OutputOrder_v2_95.Out", "box_Brick_GateRaces_CORE_10.Start_Vehicle", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_Vehicle
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_95_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_6();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|55295775", "55295775", "UNI46_620_B10", "box_OutputOrder_v2_95.Out", "box_Simple_Node_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_24_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|364579495", "364579495", "UNI46_620_B10", "box_Compare_Boolean_24.A_is_False", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_24_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|689704160", "689704160", "UNI46_620_B10", "box_Compare_Boolean_24.A_is_True", "box_MultipleAND_v2_23.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_ProximityRadiusListener_v3_138_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_154();
    l0 = self.box_ProximityRadiusListener_v3_138;
    l1 = self.box_ProximityTrigger_v2_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1455593957", "1455593957", "UNI46_620_B10", "box_ProximityRadiusListener_v3_138.Disabled", "box_ProximityTrigger_v2_154.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_138_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_154();
    l0 = self.box_ProximityRadiusListener_v3_138;
    l1 = self.box_ProximityTrigger_v2_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|221134178", "221134178", "UNI46_620_B10", "box_ProximityRadiusListener_v3_138.SomeoneNear", "box_ProximityTrigger_v2_154.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_57_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Random_84();
    l0 = self.box_ProximityTrigger_v2_57;
    l1 = self.box_Random_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1233472450", "1233472450", "UNI46_620_B10", "box_ProximityTrigger_v2_57.Enter", "box_Random_84.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_CreateVector3_205_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_205_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_206();
    l0 = self.box_PositionModifier_v2_206;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|981006456", "981006456", "UNI46_620_B10", "box_CreateVector3_205.Out", "box_PositionModifier_v2_206.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_91();
    l0 = self.box_MultipleOR_26;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1508596908", "1508596908", "UNI46_620_B10", "box_MultipleOR_26.Out", "box_GetPawnVehicleInfo_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_136_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_102();
    l0 = self.box_SpawnAI_136;
    l1 = self.box_Delay_v5_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1382758705", "1382758705", "UNI46_620_B10", "box_SpawnAI_136.Spawned", "box_Delay_v5_102.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_154_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_154;
    l1 = self.box_OnceOnly_v3_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2117721457", "2117721457", "UNI46_620_B10", "box_ProximityTrigger_v2_154.OnOccupied", "box_OnceOnly_v3_148.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_87_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Random_86();
    l0 = self.box_ProximityTrigger_v2_87;
    l1 = self.box_Random_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1203161701", "1203161701", "UNI46_620_B10", "box_ProximityTrigger_v2_87.Enter", "box_Random_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_206_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_215();
    l0 = self.box_PositionModifier_v2_206;
    l1 = self.box_Bind_v4_215;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|944130951", "944130951", "UNI46_620_B10", "box_PositionModifier_v2_206.StartOut", "box_Bind_v4_215.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Random_65_Output_0()
    local l0, l1;
    l0 = self.box_Random_65;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2012691693", "2012691693", "UNI46_620_B10", "box_Random_65.Output", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_65_Output_1()
    local l0, l1;
    l0 = self.box_Random_65;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1484002386", "1484002386", "UNI46_620_B10", "box_Random_65.Output", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_162_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_162;
    l1 = self.box_OnceOnly_v3_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2018983450", "2018983450", "UNI46_620_B10", "box_ProximityTrigger_v2_162.OnOccupied", "box_OnceOnly_v3_167.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MessageListener_v3_135_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_136();
    l0 = self.box_MessageListener_v3_135;
    l1 = self.box_SpawnAI_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|60535135", "60535135", "UNI46_620_B10", "box_MessageListener_v3_135.Received", "box_SpawnAI_136.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Bind_v4_123_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_CreateVector3_199();
    l0 = self.box_Bind_v4_123;
    l1 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1549465975", "1549465975", "UNI46_620_B10", "box_Bind_v4_123.Bound", "box_CreateVector3_199.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_45_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_45;
    l1 = self.box_Brick_GateRaces_Dialogs_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|271071313", "271071313", "UNI46_620_B10", "box_MultipleOR_45.Out", "box_Brick_GateRaces_Dialogs_90.Encouragement", l0:GetLuaBox(), l1:GetLuaBox());
    -- Encouragement
    l1:Exec(1, {
    });
end;

function export:f_box_MessageListener_v3_79_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_79;
    l1 = self.box_Brick_GateRaces_Dialogs_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1103062583", "1103062583", "UNI46_620_B10", "box_MessageListener_v3_79.Received", "box_Brick_GateRaces_Dialogs_55.OutOfTime", l0:GetLuaBox(), l1:GetLuaBox());
    -- OutOfTime
    l1:Exec(3, {
    });
end;

function export:f_box_OutputOrder_v2_223_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Brick_GateRaces_Dialogs_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|804873313", "804873313", "UNI46_620_B10", "box_OutputOrder_v2_223.Out", "box_Brick_GateRaces_Dialogs_58.Success", clone:GetLuaBox(), l0:GetLuaBox());
    -- Success
    l0:Exec(4, {
    });
end;

function export:f_box_OutputOrder_v2_223_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2078590221", "2078590221", "UNI46_620_B10", "box_OutputOrder_v2_223.Out", "box_Simple_Node_230.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_66_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_87();
    l0 = self.box_EntityStatusListener_66;
    l1 = self.box_ProximityTrigger_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1832494007", "1832494007", "UNI46_620_B10", "box_EntityStatusListener_66.Loaded", "box_ProximityTrigger_v2_87.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_66_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_87();
    l0 = self.box_EntityStatusListener_66;
    l1 = self.box_ProximityTrigger_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|96823934", "96823934", "UNI46_620_B10", "box_EntityStatusListener_66.Unloaded", "box_ProximityTrigger_v2_87.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_93();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1342654097", "1342654097", "UNI46_620_B10", "box_OutputOrder_v2_14.Out", "box_GetPawnVehicleInfo_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1503629050", "1503629050", "UNI46_620_B10", "box_OutputOrder_v2_14.Out", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_157_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_Outro_22();
    l0 = self.box_Brick_GateRaces_Outro_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|827832266", "827832266", "UNI46_620_B10", "box_OutputOrder_v2_157.Out", "box_Brick_GateRaces_Outro_22.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_157_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_184();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1566871278", "1566871278", "UNI46_620_B10", "box_OutputOrder_v2_157.Out", "box_OutputOrder_v2_184.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_157_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_183();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|161551827", "161551827", "UNI46_620_B10", "box_OutputOrder_v2_157.Out", "box_OutputOrder_v2_183.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UNI46_620_B10_Array_4_Out_Rings()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_95();
    l0 = self.box_UNI46_620_B10_Array_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1101503758", "1101503758", "UNI46_620_B10", "box_UNI46_620_B10_Array_4.Out_Rings", "box_OutputOrder_v2_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_17_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_181();
    l0 = self.box_OnceOnly_v3_17;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1046623780", "1046623780", "UNI46_620_B10", "box_OnceOnly_v3_17.Out", "box_Simple_Node_181.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_151_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_151();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1161488308", "1161488308", "UNI46_620_B10", "box_ParticleSystem_v3_151.Stopped", "box_ParticleSystem_v3_151.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_19_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_19;
    l1 = self.box_OnceOnly_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2142276373", "2142276373", "UNI46_620_B10", "box_MultipleOR_19.Out", "box_OnceOnly_v3_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Bind_v4_215_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_217();
    l0 = self.box_Bind_v4_215;
    l1 = self.box_Bind_v4_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|38917532", "38917532", "UNI46_620_B10", "box_Bind_v4_215.Bound", "box_Bind_v4_217.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_150_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_147();
    l0 = self.box_OnceOnly_v3_150;
    l1 = self.box_PlayDialog_v6_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1109241539", "1109241539", "UNI46_620_B10", "box_OnceOnly_v3_150.Out", "box_PlayDialog_v6_147.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_105();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|44691647", "44691647", "UNI46_620_B10", "box_OutputOrder_v2_1.Out", "box_Simple_Node_105.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_103();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1919225024", "1919225024", "UNI46_620_B10", "box_OutputOrder_v2_1.Out", "box_Simple_Node_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_227();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|414211153", "414211153", "UNI46_620_B10", "box_OutputOrder_v2_1.Out", "box_MissionBlockLayer_227.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_139_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UNI46_620_B10_Fire_Manager_8();
    l0 = self.box_ProximityTrigger_v2_139;
    l1 = self.box_UNI46_620_B10_Fire_Manager_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1567957210", "1567957210", "UNI46_620_B10", "box_ProximityTrigger_v2_139.Enabled", "box_UNI46_620_B10_Fire_Manager_8.Enable_Flame", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable_Flame
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_139_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_139;
    l1 = self.box_OnceOnly_v3_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2050560571", "2050560571", "UNI46_620_B10", "box_ProximityTrigger_v2_139.OnOccupied", "box_OnceOnly_v3_137.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UNI46_620_B10_Array_2_Out_Fireworks()
    local params, l0, l1;
    self:OnExit_box_UNI46_620_B10_Array_2_Out_Fireworks();
    params = self:OnEnter_box_ParticleSystem_v3_151();
    l0 = self.box_UNI46_620_B10_Array_2;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|706570208", "706570208", "UNI46_620_B10", "box_UNI46_620_B10_Array_2.Out_Fireworks", "box_ParticleSystem_v3_151.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI46_620_B10_Array_2_Out_Rings()
    self:OnExit_box_UNI46_620_B10_Array_2_Out_Rings();
end;

function export:f_box_OnceOnly_v3_137_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_155();
    l0 = self.box_OnceOnly_v3_137;
    l1 = self.box_PlayDialog_v6_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1784197018", "1784197018", "UNI46_620_B10", "box_OnceOnly_v3_137.Out", "box_PlayDialog_v6_155.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_172_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_171();
    l0 = self.box_ProximityRadiusListener_v3_172;
    l1 = self.box_ProximityTrigger_v2_171;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|217075350", "217075350", "UNI46_620_B10", "box_ProximityRadiusListener_v3_172.Disabled", "box_ProximityTrigger_v2_171.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_172_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_171();
    l0 = self.box_ProximityRadiusListener_v3_172;
    l1 = self.box_ProximityTrigger_v2_171;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1452354614", "1452354614", "UNI46_620_B10", "box_ProximityRadiusListener_v3_172.SomeoneNear", "box_ProximityTrigger_v2_171.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_73_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_73;
    l1 = self.box_Brick_GateRaces_Dialogs_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|655950278", "655950278", "UNI46_620_B10", "box_ProximityTrigger_v2_73.Enter", "box_Brick_GateRaces_Dialogs_75.Landing", l0:GetLuaBox(), l1:GetLuaBox());
    -- Landing
    l1:Exec(2, {
    });
end;

function export:f_box_PositionModifier_v2_197_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_214();
    l0 = self.box_PositionModifier_v2_197;
    l1 = self.box_Bind_v4_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1083336646", "1083336646", "UNI46_620_B10", "box_PositionModifier_v2_197.StartOut", "box_Bind_v4_214.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_167_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_168();
    l0 = self.box_OnceOnly_v3_167;
    l1 = self.box_PlayDialog_v6_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1935629918", "1935629918", "UNI46_620_B10", "box_OnceOnly_v3_167.Out", "box_PlayDialog_v6_168.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_94_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_57();
    l0 = self.box_EntityStatusListener_94;
    l1 = self.box_ProximityTrigger_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|294659055", "294659055", "UNI46_620_B10", "box_EntityStatusListener_94.Loaded", "box_ProximityTrigger_v2_57.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_94_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_57();
    l0 = self.box_EntityStatusListener_94;
    l1 = self.box_ProximityTrigger_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1108879412", "1108879412", "UNI46_620_B10", "box_EntityStatusListener_94.Unloaded", "box_ProximityTrigger_v2_57.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_195_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_85();
    l0 = self.box_PositionModifier_v2_195;
    l1 = self.box_Bind_v4_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1927415190", "1927415190", "UNI46_620_B10", "box_PositionModifier_v2_195.StartOut", "box_Bind_v4_85.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Brick_GateRaces_CORE_10_Disabled()
    self:OnExit_box_Brick_GateRaces_CORE_10_Disabled();
end;

function export:f_box_Brick_GateRaces_CORE_10_Fail()
    local params, l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_10_Fail();
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_Brick_GateRaces_CORE_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1540621354", "1540621354", "UNI46_620_B10", "box_Brick_GateRaces_CORE_10.Fail", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_CORE_10_Finished()
    local params, l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_10_Finished();
    params = self:OnEnter_box_Gate_v3_20();
    l0 = self.box_Brick_GateRaces_CORE_10;
    l1 = self.box_Gate_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|310142251", "310142251", "UNI46_620_B10", "box_Brick_GateRaces_CORE_10.Finished", "box_Gate_v3_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_GateRaces_CORE_10_GatePassed()
    local params, l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_10_GatePassed();
    params = self:OnEnter_box_Simple_Node_240();
    l0 = self.box_Brick_GateRaces_CORE_10;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|173477408", "173477408", "UNI46_620_B10", "box_Brick_GateRaces_CORE_10.GatePassed", "box_Simple_Node_240.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_CORE_10_Started()
    local params, l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_10_Started();
    params = self:OnEnter_box_OutputOrder_v2_133();
    l0 = self.box_Brick_GateRaces_CORE_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1872435550", "1872435550", "UNI46_620_B10", "box_Brick_GateRaces_CORE_10.Started", "box_OutputOrder_v2_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_143_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_139();
    l0 = self.box_ProximityRadiusListener_v3_143;
    l1 = self.box_ProximityTrigger_v2_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|243077866", "243077866", "UNI46_620_B10", "box_ProximityRadiusListener_v3_143.Disabled", "box_ProximityTrigger_v2_139.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_143_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_139();
    l0 = self.box_ProximityRadiusListener_v3_143;
    l1 = self.box_ProximityTrigger_v2_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|6107568", "6107568", "UNI46_620_B10", "box_ProximityRadiusListener_v3_143.SomeoneNear", "box_ProximityTrigger_v2_139.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_74_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1429099915", "1429099915", "UNI46_620_B10", "box_Compare_Boolean_74.A_is_False", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_74_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|333061364", "333061364", "UNI46_620_B10", "box_Compare_Boolean_74.A_is_True", "box_OutputOrder_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_148_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_146();
    l0 = self.box_OnceOnly_v3_148;
    l1 = self.box_PlayDialog_v6_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|578562700", "578562700", "UNI46_620_B10", "box_OnceOnly_v3_148.Out", "box_PlayDialog_v6_146.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_GetPawnVehicleInfo_91_InVehicle()
    self:OnExit_box_GetPawnVehicleInfo_91_InVehicle();
end;

function export:f_box_GetPawnVehicleInfo_91_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_91_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_91_Out()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_91_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_52();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|645893420", "645893420", "UNI46_620_B10", "box_GetPawnVehicleInfo_91.Out", "box_SetEntity_v2_52.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_16_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_16_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_UNI46_620_B10_Array_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|4269185", "4269185", "UNI46_620_B10", "box_SetBoolean_v2_16.Out", "box_UNI46_620_B10_Array_4.In_Rings", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Rings
    l0:Exec(1, {
    });
end;

function export:f_box_OnceOnly_v3_142_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_145();
    l0 = self.box_OnceOnly_v3_142;
    l1 = self.box_PlayDialog_v6_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1802757468", "1802757468", "UNI46_620_B10", "box_OnceOnly_v3_142.Out", "box_PlayDialog_v6_145.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_160_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_162();
    l0 = self.box_ProximityRadiusListener_v3_160;
    l1 = self.box_ProximityTrigger_v2_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|213144571", "213144571", "UNI46_620_B10", "box_ProximityRadiusListener_v3_160.Disabled", "box_ProximityTrigger_v2_162.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_160_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_162();
    l0 = self.box_ProximityRadiusListener_v3_160;
    l1 = self.box_ProximityTrigger_v2_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1380342520", "1380342520", "UNI46_620_B10", "box_ProximityRadiusListener_v3_160.SomeoneNear", "box_ProximityTrigger_v2_162.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IntegerArithmetics_v2_56_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_56_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_51();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1065715175", "1065715175", "UNI46_620_B10", "box_IntegerArithmetics_v2_56.Out", "box_Compare_Integers_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_68_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Random_82();
    l0 = self.box_ProximityTrigger_v2_68;
    l1 = self.box_Random_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|204851958", "204851958", "UNI46_620_B10", "box_ProximityTrigger_v2_68.Enter", "box_Random_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1384155912", "1384155912", "UNI46_620_B10", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1072748899", "1072748899", "UNI46_620_B10", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_51_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1881955403", "1881955403", "UNI46_620_B10", "box_Compare_Integers_51.A_eq_B", "box_OnceOnly_v3_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_51_A_ne_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|535212659", "535212659", "UNI46_620_B10", "box_Compare_Integers_51.A_ne_B", "box_OnceOnly_v3_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_104();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|429832579", "429832579", "UNI46_620_B10", "box_OutputOrder_v2_48.Out", "box_Simple_Node_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1852476976", "1852476976", "UNI46_620_B10", "box_OutputOrder_v2_48.Out", "box_CoopActivePlayers_173.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_226_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_125();
    l0 = self.box_Bind_v4_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1187606442", "1187606442", "UNI46_620_B10", "box_OutputOrder_v2_226.Out", "box_Bind_v4_125.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_226_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_97();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|484545822", "484545822", "UNI46_620_B10", "box_OutputOrder_v2_226.Out", "box_Compare_Boolean_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_214_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_216();
    l0 = self.box_Bind_v4_214;
    l1 = self.box_Bind_v4_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2072739362", "2072739362", "UNI46_620_B10", "box_Bind_v4_214.Bound", "box_Bind_v4_216.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_UNI46_620_B10_Fire_Manager_13_Started()
    local params, l0, l1;
    params = self:OnEnter_box_UNI46_620_B10_Fire_Manager_12();
    l0 = self.box_UNI46_620_B10_Fire_Manager_13;
    l1 = self.box_UNI46_620_B10_Fire_Manager_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1724082653", "1724082653", "UNI46_620_B10", "box_UNI46_620_B10_Fire_Manager_13.Started", "box_UNI46_620_B10_Fire_Manager_12.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_67_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_72();
    l0 = self.box_MessageListener_v3_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1622182275", "1622182275", "UNI46_620_B10", "box_OutputOrder_v2_67.Out", "box_MessageListener_v3_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_67_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_83();
    l0 = self.box_MessageListener_v3_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|366452530", "366452530", "UNI46_620_B10", "box_OutputOrder_v2_67.Out", "box_MessageListener_v3_83.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_67_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_79();
    l0 = self.box_MessageListener_v3_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1625276847", "1625276847", "UNI46_620_B10", "box_OutputOrder_v2_67.Out", "box_MessageListener_v3_79.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_31_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UNI46_620_B10_Fire_Manager_18();
    l0 = self.box_OnceOnly_v3_31;
    l1 = self.box_UNI46_620_B10_Fire_Manager_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1490104845", "1490104845", "UNI46_620_B10", "box_OnceOnly_v3_31.Out", "box_UNI46_620_B10_Fire_Manager_18.Enable_Veh_Fire", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable_Veh_Fire
    l1:Exec(2, params);
end;

function export:f_box_CreateVector3_198_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_198_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_197();
    l0 = self.box_PositionModifier_v2_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|771276273", "771276273", "UNI46_620_B10", "box_CreateVector3_198.Out", "box_PositionModifier_v2_197.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_25_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_25_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1286133522", "1286133522", "UNI46_620_B10", "box_SetEntity_v2_25.Out", "box_MultipleAND_v2_23.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_78();
    l0 = self.box_EntityStatusListener_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|892671216", "892671216", "UNI46_620_B10", "box_OutputOrder_v2_77.Out", "box_EntityStatusListener_78.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_66();
    l0 = self.box_EntityStatusListener_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|826698488", "826698488", "UNI46_620_B10", "box_OutputOrder_v2_77.Out", "box_EntityStatusListener_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_94();
    l0 = self.box_EntityStatusListener_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|984831504", "984831504", "UNI46_620_B10", "box_OutputOrder_v2_77.Out", "box_EntityStatusListener_94.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_53();
    l0 = self.box_EntityStatusListener_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|885958631", "885958631", "UNI46_620_B10", "box_OutputOrder_v2_77.Out", "box_EntityStatusListener_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|@BindParticles");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_181_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|@DisableListeners");
    l0:SetDynAnchorCount({
        controlIn = {
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
                [0] = self.f_box_OutputOrder_v2_184_Out_0,
            },
            count = 1,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|@DisableVOListeners");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
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
                [0] = self.f_box_OutputOrder_v2_183_Out_0,
                [1] = self.f_box_OutputOrder_v2_183_Out_1,
                [2] = self.f_box_OutputOrder_v2_183_Out_2,
                [3] = self.f_box_OutputOrder_v2_183_Out_3,
                [4] = self.f_box_OutputOrder_v2_183_Out_4,
                [5] = self.f_box_OutputOrder_v2_183_Out_5,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|@EndFireWorks");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_105_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|@Fireworks");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_229_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_240()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_240");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|@GatePassed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_240_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|@ModifiersOff");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_104_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|@ModifiersOn");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_103_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|@SetVehicles");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_89_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|@StartupEagle");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_6_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_230()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|@Stop Fire");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_230_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|@voStart");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 10,
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
                [0] = self.f_box_OutputOrder_v2_182_Out_0,
                [1] = self.f_box_OutputOrder_v2_182_Out_1,
                [2] = self.f_box_OutputOrder_v2_182_Out_2,
                [3] = self.f_box_OutputOrder_v2_182_Out_3,
                [4] = self.f_box_OutputOrder_v2_182_Out_4,
                [5] = self.f_box_OutputOrder_v2_182_Out_5,
                [6] = self.f_box_OutputOrder_v2_182_Out_6,
                [7] = self.f_box_OutputOrder_v2_182_Out_7,
                [8] = self.f_box_OutputOrder_v2_182_Out_8,
                [9] = self.f_box_OutputOrder_v2_182_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|7446356");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_149()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#ED455357",
        -- id2,
        [3] = "2103995289378507819",
        -- nearZone,
        [4] = 40,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|26000414");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_93_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_93_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_93_Out,
    });
    params = {
        -- pawn,
        [0] = self.eClient,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_76()
    local params;
    params = {
        -- Pawns,
        [0] = "2104367038551048771",
        -- SoundId,
        [1] = "3917468923",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UNI46_620_B10_Fire_Manager_12()
    local params;
    params = {
        -- Delay,
        [1] = 0.15,
        -- Fire Length,
        [2] = 8,
        -- Particle1,
        [5] = "2104452559642045974",
        -- Particle2,
        [6] = "2104452559925161502",
        -- Soundpoint1,
        [9] = "2104452559639948820",
        -- Soundpoint2,
        [10] = "2104452559923064348",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_153()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#ED455357",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103995295518968879",
    };
    return params;
end;

function export:OnEnter_box_Random_84()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_204()
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
        [6] = "2103873056567999693",
        -- useSmallestAngleDiff,
        [7] = false,
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
        [2] = "2104091982772049149",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_169()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2439201467",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|190478825");
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
                [0] = self.f_box_OutputOrder_v2_96_Out_0,
                [1] = self.f_box_OutputOrder_v2_96_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_125()
    local params;
    params = {
        -- BoneName,
        [0] = "HEADLIGHT_RIGHT",
        -- EntityA,
        [1] = self.eVehicle_Host,
        -- EntityB,
        [2] = "2103873053682318539",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_23()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Random_86()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_UNI46_620_B10_Fire_Manager_7()
    local params;
    params = {
        -- Delay,
        [1] = 5,
        -- Fire Length,
        [2] = 8,
        -- Particle1,
        [5] = "2104439566457902324",
        -- Particle2,
        [6] = "2104438334685204742",
        -- Soundpoint1,
        [9] = "2104439566453708016",
        -- Soundpoint2,
        [10] = "2104438345263239438",
    };
    return params;
end;

function export:OnEnter_box_Random_82()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_171()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#ED455357",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103995440690121803",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|315544183");
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
        [8] = "PlayerAdded",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_Outro_22()
    local params;
    params = {
        -- ClientTeleport,
        [0] = "2103790090611344530",
        -- HostTeleport,
        [1] = "2103790089237709966",
        -- Region,
        [2] = 2,
        -- SceneEntity,
        [3] = "2103597072998490119",
        -- SequenceFile,
        [4] = "sequences/zeta_main/uni46/uni46_620_cin_camera.seq",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|333022798");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_52_Out,
    });
    params = {
        -- Entity,
        [0] = self.eVehicle_1,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|360419391");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_196_Out,
    });
    params = {
        -- x,
        [0] = 0,
        -- y,
        [1] = 0,
        -- z,
        [2] = -1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|471935713");
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
                [0] = self.f_box_OutputOrder_v2_133_Out_0,
                [1] = self.f_box_OutputOrder_v2_133_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_59()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104092008644613380",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_140()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#ED455357",
        -- id2,
        [3] = "2103995345043213367",
        -- nearZone,
        [4] = 40,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_64()
    local params;
    params = {
        -- BoneName,
        [0] = "HEADLIGHT_LEFT",
        -- EntityA,
        [1] = self.eVehicle_Client,
        -- EntityB,
        [2] = "2104092340210636040",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_20()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|563123666");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_180_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 22,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_155()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2126093703",
    };
    return params;
end;

function export:OnEnter_box_AllowAutoDrive_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AllowAutoDrive_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|624772954");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_217()
    local params;
    params = {
        -- BoneName,
        [0] = "HEADLIGHT_LEFT",
        -- EntityA,
        [1] = self.eVehicle_Client,
        -- EntityB,
        [2] = "2104480016382301815",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_147()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3688083077",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_83()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_Player_Killed",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|680977271");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = self.FailReason,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|700437479");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
                [2] = self.f_box_OutputOrder_v2_27_Out_2,
                [3] = self.f_box_OutputOrder_v2_27_Out_3,
                [4] = self.f_box_OutputOrder_v2_27_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_72()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_Vehicle_Destroyed",
    };
    return params;
end;

function export:OnEnter_box_UNI46_620_B10_Fire_Manager_8()
    local params;
    params = {
        -- Delay,
        [1] = 0,
        -- Fire Length,
        [2] = 8,
        -- Particle1,
        [5] = "2104451560307184664",
        -- Particle2,
        [6] = "2104451580311917608",
        -- Soundpoint1,
        [9] = "2104451560302990356",
        -- Soundpoint2,
        [10] = "2104451580307723300",
        -- Trigger,
        [13] = "2104452157982921780",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_158()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#ED455357",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103995346783849531",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|775462287");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_97_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bCoop,
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|813940292");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_199_Out,
    });
    params = {
        -- x,
        [0] = 0,
        -- y,
        [1] = 0,
        -- z,
        [2] = -1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_102()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_85()
    local params;
    params = {
        -- BoneName,
        [0] = "HEADLIGHT_LEFT",
        -- EntityA,
        [1] = self.eVehicle_Host,
        -- EntityB,
        [2] = "2104092338342073606",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_78()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104092008644613380",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_53()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104092029949580560",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1023727870");
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
                [0] = self.f_box_OutputOrder_v2_95_Out_0,
                [1] = self.f_box_OutputOrder_v2_95_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1024036264");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_24_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_24_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bCoop,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_138()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#ED455357",
        -- id2,
        [3] = "2103995231247551510",
        -- nearZone,
        [4] = 40,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_57()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104092024784295180",
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1077939088");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_205_Out,
    });
    params = {
        -- x,
        [0] = 0,
        -- y,
        [1] = 0,
        -- z,
        [2] = -1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_136()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103995036046740414",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_154()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#ED455357",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103995244514135068",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_87()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104092018606085384",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_206()
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
        [6] = "2104092340210636040",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_Random_65()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 2,
        },
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_216()
    local params;
    params = {
        -- BoneName,
        [0] = "HEADLIGHT_LEFT",
        -- EntityA,
        [1] = self.eVehicle_Host,
        -- EntityB,
        [2] = "2104480010424292979",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1148369126");
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
        [8] = "No Dialog",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_162()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#ED455357",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103995374768245827",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_135()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "clutchnixon_precountdown",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_123()
    local params;
    params = {
        -- BoneName,
        [0] = "HEADLIGHT_RIGHT",
        -- EntityA,
        [1] = self.eVehicle_Client,
        -- EntityB,
        [2] = "2103873056567999693",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_79()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_OutOfTime",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1236361973");
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

function export:OnEnter_box_EntityStatusListener_66()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104092018606085384",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1274869951");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_157()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1284363430");
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
                [0] = self.f_box_OutputOrder_v2_157_Out_0,
                [1] = self.f_box_OutputOrder_v2_157_Out_1,
                [2] = self.f_box_OutputOrder_v2_157_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1306331922");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_151_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.gp_fireworks,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_215()
    local params;
    params = {
        -- BoneName,
        [0] = "HEADLIGHT_RIGHT",
        -- EntityA,
        [1] = self.eVehicle_Client,
        -- EntityB,
        [2] = "2104479951932626540",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1353863220");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
                [2] = self.f_box_OutputOrder_v2_1_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UNI46_620_B10_Fire_Manager_15()
    local params;
    params = {
        -- bCoop,
        [0] = self.bCoop,
        -- Delay,
        [1] = 0,
        -- Fire Length,
        [2] = 8,
        -- Particle_Fire_Client,
        [3] = "2104092340210636040",
        -- Particle_Fire_Host,
        [4] = "2104092338342073606",
        -- Soundpoint_Fire_Client,
        [7] = "2104480016382301815",
        -- Soundpoint_Fire_Host,
        [8] = "2104480010424292979",
        -- Start_VEH_Fire_Sound,
        [11] = "2374431541",
        -- Stop_VEH_Fire_Sound,
        [12] = "3687190630",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_139()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#ED455357",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103995276023843879",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_172()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#ED455357",
        -- id2,
        [3] = "2103995438030933063",
        -- nearZone,
        [4] = 40,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_73()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104091982772049149",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_197()
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
        [6] = "2104092338342073606",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_94()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104092024784295180",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_195()
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
        [6] = "2103873053682318539",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_UNI46_620_B10_Fire_Manager_18()
    local params;
    params = {
        -- bCoop,
        [0] = self.bCoop,
        -- Delay,
        [1] = 0,
        -- Fire Length,
        [2] = 8,
        -- Particle_Fire_Client,
        [3] = "2103873056567999693",
        -- Particle_Fire_Host,
        [4] = "2103873053682318539",
        -- Soundpoint_Fire_Client,
        [7] = "2104479951932626540",
        -- Soundpoint_Fire_Host,
        [8] = "2104479948770121320",
        -- Start_VEH_Fire_Sound,
        [11] = "2447742352",
        -- Stop_VEH_Fire_Sound,
        [12] = "1831277069",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CORE_10()
    local params;
    params = {
        -- bTeleportPlayer,
        [0] = false,
        -- eMobileMarker_Vehicle_Client,
        [1] = "2103278825646346037",
        -- eMobileMarker_Vehicle_Host,
        [2] = "2103278816504860465",
        -- eTeleportPointClient,
        [3] = "2103596664236302341",
        -- eTeleportPointHost,
        [4] = "2103596664238399495",
        -- eTriggerAroundStartingVehicles,
        [5] = "2103596617534824445",
        -- eVehicleSpawnerClient,
        [6] = "2103871993014155892",
        -- eVehicleSpawnerHost,
        [7] = "2103871781436684467",
        -- fDelayBeforeStart,
        [8] = 0,
        -- fTimer,
        [9] = 15,
        -- iBonusTimeGates,
        [10] = 3,
        -- VehicleLockCountdown,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_143()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#ED455357",
        -- id2,
        [3] = "2103995271603047459",
        -- nearZone,
        [4] = 40,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1627204830");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_74_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_74_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bCoop,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1653266211");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_91_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_91_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_91_Out,
    });
    params = {
        -- pawn,
        [0] = self.eHost,
    };
    return params;
end;

function export:OnEnter_box_UNI46_620_B10_Fire_Manager_11()
    local params;
    params = {
        -- Delay,
        [1] = 0,
        -- Fire Length,
        [2] = 8,
        -- Particle1,
        [5] = "2104452380056638528",
        -- Particle2,
        [6] = "2104452380855653448",
        -- Soundpoint1,
        [9] = "2104452380054541374",
        -- Soundpoint2,
        [10] = "2104452380855653446",
        -- Trigger,
        [13] = "2104452409278354510",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1675624728");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_168()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1438862067",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1799177177");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "81203414255836134",
        -- missionLayerId,
        [1] = "99217812765318146",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_160()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#ED455357",
        -- id2,
        [3] = "2103995372710939711",
        -- nearZone,
        [4] = 40,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_146()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "576106946",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1842336157");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_56_Out,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_68()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104092029949580560",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1953663780");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_51_A_eq_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_51_A_ne_B,
    });
    params = {
        -- A,
        [0] = 0,
        -- B,
        [1] = self._sld_Result_box_IntegerArithmetics_v2_56,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1978094558");
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

function export:OnEnter_box_OutputOrder_v2_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|1979977894");
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
                [0] = self.f_box_OutputOrder_v2_226_Out_0,
                [1] = self.f_box_OutputOrder_v2_226_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_214()
    local params;
    params = {
        -- BoneName,
        [0] = "HEADLIGHT_RIGHT",
        -- EntityA,
        [1] = self.eVehicle_Host,
        -- EntityB,
        [2] = "2104479948770121320",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_UNI46_620_B10_Fire_Manager_13()
    local params;
    params = {
        -- Delay,
        [1] = 0,
        -- Fire Length,
        [2] = 8,
        -- Particle1,
        [5] = "2104452555370147342",
        -- Particle2,
        [6] = "2104452553310744070",
        -- Soundpoint1,
        [9] = "2104452555368050188",
        -- Soundpoint2,
        [10] = "2104452553308646916",
        -- Trigger,
        [13] = "2104453665344466475",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2044181361");
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
                [0] = self.f_box_OutputOrder_v2_67_Out_0,
                [1] = self.f_box_OutputOrder_v2_67_Out_1,
                [2] = self.f_box_OutputOrder_v2_67_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2073648053");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_198_Out,
    });
    params = {
        -- x,
        [0] = 0,
        -- y,
        [1] = 0,
        -- z,
        [2] = -1,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2083619462");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_25_Out,
    });
    params = {
        -- Entity,
        [0] = self.eVehicle_2,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_145()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2936872521",
    };
    return params;
end;

function export:OnEnter_box_UNI46_620_B10_Fire_Manager_9()
    local params;
    params = {
        -- Delay,
        [1] = 0.15,
        -- Fire Length,
        [2] = 8,
        -- Particle1,
        [5] = "2104451579458376736",
        -- Particle2,
        [6] = "2104451580620198960",
        -- Soundpoint1,
        [9] = "2104451579454182428",
        -- Soundpoint2,
        [10] = "2104451580616004652",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10|2104288208");
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
                [0] = self.f_box_OutputOrder_v2_77_Out_0,
                [1] = self.f_box_OutputOrder_v2_77_Out_1,
                [2] = self.f_box_OutputOrder_v2_77_Out_2,
                [3] = self.f_box_OutputOrder_v2_77_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_GetPawnVehicleInfo_93_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eVehicle_2 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_93_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eVehicle_2 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_93_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eVehicle_2 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetEntity_v2_52_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eVehicle_Host = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_196_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_195;
    l1:GetLuaBox().endPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_199_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_204;
    l1:GetLuaBox().endPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_173_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_173;
    self.eHost = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_173_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_173;
    self.eHost = l0:GetDataOutValue(0);
    self.eClient = l0:GetDataOutValue(1);
end;

function export:OnExit_box_CreateVector3_205_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_206;
    l1:GetLuaBox().endPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI46_620_B10_Array_2_Out_Fireworks()
    local l0;
    l0 = self.box_UNI46_620_B10_Array_2;
    self.gp_fireworks = l0:GetDataOutValue(0);
end;

function export:OnExit_box_UNI46_620_B10_Array_2_Out_Rings()
    local l0;
    l0 = self.box_UNI46_620_B10_Array_2;
    self.gp_fireworks = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_GateRaces_CORE_10_Disabled()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_10;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
    self.FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_GateRaces_CORE_10_Fail()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_10;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
    self.FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_GateRaces_CORE_10_Finished()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_10;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
    self.FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_GateRaces_CORE_10_GatePassed()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_10;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
    self.FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_GateRaces_CORE_10_Started()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_10;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
    self.FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_91_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eVehicle_1 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_91_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eVehicle_1 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_91_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eVehicle_1 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetBoolean_v2_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bCoop = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_56_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self._sld_Result_box_IntegerArithmetics_v2_56 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_198_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_197;
    l1:GetLuaBox().endPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_25_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eVehicle_Client = l0:GetDataOutValue(0);
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
