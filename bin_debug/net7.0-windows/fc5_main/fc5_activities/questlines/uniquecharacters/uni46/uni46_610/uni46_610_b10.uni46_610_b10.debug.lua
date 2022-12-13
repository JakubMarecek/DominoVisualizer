LUAC>R -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni46/uni46_610/uni46_610_b10.domino
-- User graph: UNI46_610_B10
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
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/AddToGroupFromList_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/List/ListReset.lua");
        cboxRes:RegisterBox("Domino/System/CreateUniqueGroup.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/ListWriter_v2.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/AllowAutoDrive_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_610/UNI46_610_B10.UNI46_610_B10_Array.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_610/UNI46_610_B10.UNI46_610_Fire_Manager.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2275944180.bnk]], "CSoundResource");
        cboxRes:LoadResource([[159871221.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4229290180.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3156433621.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1166372148.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1631701959.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1726784886.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2201716135.bnk]], "CSoundResource");
        cboxRes:LoadResource([[525636272.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3917468923.bnk]], "CSoundResource");
        cboxRes:LoadResource([[872003769.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1448427107.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_610/UNI46_610_B10.UNI46_610_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Coop/Group/AddToGroupFromList_v2.lua")] = {
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
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "Pawns",
                type = "list",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/List/ListReset.lua")] = {
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
                name = "List",
                type = "list",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CreateUniqueGroup.lua")] = {
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
                name = "OutGroup",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/ListWriter_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Remove",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Data",
                type = "entity",
            },
            [1] = {
                name = "Index",
                type = "int",
            },
            [2] = {
                name = "Input",
                type = "list",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/Mission_Flow/MissionAckTriggerListener.lua")] = {
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
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "triggerId",
                type = "entity",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_610/UNI46_610_B10.UNI46_610_B10_Array.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_610/UNI46_610_B10.UNI46_610_Fire_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out",
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
                name = "Delay",
                type = "float",
            },
            [1] = {
                name = "Fire_Length",
                type = "float",
            },
            [2] = {
                name = "Particle1",
                type = "entity",
            },
            [3] = {
                name = "Particle2",
                type = "entity",
            },
            [4] = {
                name = "Soundpoint1",
                type = "entity",
            },
            [5] = {
                name = "Soundpoint2",
                type = "entity",
            },
            [6] = {
                name = "Trigger",
                type = "entity",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI46_610_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10";
    self.eClient = nil;
    self.eHost = nil;
    self.iCeleb = "9015208488001815";
    self.eVehicle_Host = nil;
    self.eVehicle_Client = nil;
    self.iGatePassed = 0;
    self.ePlayerPassingGate = nil;
    self.bCoop = false;
    self.FailReason = {
        section = "Quest_Common",
        item = "UNI46_COMMON_FAIL_TIME",
        id = "782678",
    };
    self.lFireworks = {
    };
    self.gp_fireworks = "#62F625D5";
    self.box_ProximityTrigger_v2_177 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|41233627");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_177_Enter,
    });
    self.box_ProximityRadiusListener_v3_146 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|96697690");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_146_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_146_SomeoneNear,
    });
    self.box_ProximityTrigger_v2_130 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|102850670");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_130_Enter,
    });
    self.box_MessageListener_v3_159 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|120617116");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_159_Received,
    });
    self.box_Gate_v3_88 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|146625848");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_88_Out,
    });
    self.box_ProximityTrigger_v2_136 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|178212002");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_136_OnOccupied,
    });
    self.box_MultipleOR_84 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|197419671");
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
        [0] = self.f_box_MultipleOR_84_Out,
    });
    self.box_SoundModifier_v2_48 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|203943493");
    l0:SetConnections({
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|284496879");
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_Gate_v3_51 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|285207439");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_51_Out,
    });
    self.box_Gate_v3_277 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_277;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_277");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|326916096");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_277_Out,
    });
    self.box_Brick_GateRaces_CORE_70 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CORE.debug.lua");
    l0 = self.box_Brick_GateRaces_CORE_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CORE_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|379732456");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_Brick_GateRaces_CORE_70_Disabled,
        -- Fail,
        [1] = self.f_box_Brick_GateRaces_CORE_70_Fail,
        -- Finished,
        [2] = self.f_box_Brick_GateRaces_CORE_70_Finished,
        -- GatePassed,
        [3] = self.f_box_Brick_GateRaces_CORE_70_GatePassed,
        -- Started,
        [4] = self.f_box_Brick_GateRaces_CORE_70_Started,
    });
    self.box_ProximityRadiusListener_v3_138 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|384640049");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_138_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_138_SomeoneNear,
    });
    self.box_MultipleOR_100 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|404969405");
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
        [0] = self.f_box_MultipleOR_100_Out,
    });
    self.box_MessageListener_v3_174 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|419702888");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_174_Received,
    });
    self.box_EntityStatusListener_79 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|432116893");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_79_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_79_Unloaded,
    });
    self.box_Gate_v3_53 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|446633355");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_53_Out,
    });
    self.box_EntityStatusListener_161 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|453237188");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_161_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_161_Unloaded,
    });
    self.box_ProximityRadiusListener_v3_142 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|468763922");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_142_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_142_SomeoneNear,
    });
    self.box_RemoveEntity_v2_31 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|470691363");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_31_Out,
    });
    self.box_ProximityTrigger_v2_196 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|478014148");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_196_Enter,
    });
    self.box_UNI46_610_Fire_Manager_65 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_610/UNI46_610_B10.UNI46_610_Fire_Manager.debug.lua");
    l0 = self.box_UNI46_610_Fire_Manager_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_610_Fire_Manager_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|516936081");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_UNI46_610_Fire_Manager_65_Started,
    });
    self.box_Gate_v3_22 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|544580901");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_22_Out,
    });
    self.box_DisplayCustomUIMsg_v5_191 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|618664651");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_191_OnDisplay,
    });
    self.box_ProximityRadiusListener_v3_75 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|683325660");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_75_SomeoneNear,
    });
    self.box_SoundModifier_v2_56 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|684579679");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_56_Started,
    });
    self.box_SpawnAI_76 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|684867418");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_76_Spawned,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|689500692");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_SpawnAI_80 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|698971352");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_148 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|727342458");
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
    self.box_Random_197 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|729817429");
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
                [0] = self.f_box_Random_197_Output_0,
                [1] = self.f_box_Random_197_Output_1,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_44 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|753894037");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_44_Spawned,
    });
    self.box_UNI46_610_Fire_Manager_66 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_610/UNI46_610_B10.UNI46_610_Fire_Manager.debug.lua");
    l0 = self.box_UNI46_610_Fire_Manager_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_610_Fire_Manager_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|756235517");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_147 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|759316812");
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
                [0] = self.f_box_OnceOnly_v3_147_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_149 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|770016394");
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
                [0] = self.f_box_OnceOnly_v3_149_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_166 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|771424296");
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
        [0] = self.f_box_MultipleOR_166_Out,
    });
    self.box_MultipleOR_183 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|776749184");
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
        [0] = self.f_box_MultipleOR_183_Out,
    });
    self.box_MultipleAND_v2_39 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|779339474");
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
        [0] = self.f_box_MultipleAND_v2_39_Out,
    });
    self.box_Brick_GateRaces_Dialogs_167 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|789979907");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_78 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|797541058");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_78_OnOccupied,
    });
    self.box_Gate_v3_73 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|831905626");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_73_Out,
    });
    self.box_Gate_v3_181 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|843990355");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_181_Out,
    });
    self.box_SpawnAI_90 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|857399052");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_90_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_90_Spawned,
    });
    self.box_PlayDialog_v6_139 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|877296074");
    l0:SetConnections({
    });
    self.box_UNI46_610_B10_Array_63 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_610/UNI46_610_B10.UNI46_610_B10_Array.debug.lua");
    l0 = self.box_UNI46_610_B10_Array_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_610_B10_Array_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|878534409");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_UNI46_610_B10_Array_63_Out,
    });
    self.box_PlayDialog_v6_112 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|912040013");
    l0:SetConnections({
    });
    self.box_Random_194 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|936333820");
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
                [0] = self.f_box_Random_194_Output_0,
                [1] = self.f_box_Random_194_Output_1,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|960458909");
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
    self.box_SpawnAI_67 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1001727559");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_168 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1002061674");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_168_Received,
    });
    self.box_Brick_GateRaces_Dialogs_186 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1007695962");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_140 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1014931578");
    l0:SetConnections({
    });
    self.box_SpawnAI_91 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1030488940");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_91_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_91_Spawned,
    });
    self.box_PlayDialog_v6_113 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1050142758");
    l0:SetConnections({
    });
    self.box_Random_131 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1050808605");
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
                [0] = self.f_box_Random_131_Output_0,
                [1] = self.f_box_Random_131_Output_1,
                [2] = self.f_box_Random_131_Output_2,
            },
            count = 3,
        },
    });
    self.box_PlayDialog_v6_101 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1067654989");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_178 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1093916584");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_178_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_178_Unloaded,
    });
    self.box_SpawnAI_43 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1148590538");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_43_Spawned,
    });
    self.box_UNI46_610_Fire_Manager_47 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_610/UNI46_610_B10.UNI46_610_Fire_Manager.debug.lua");
    l0 = self.box_UNI46_610_Fire_Manager_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_610_Fire_Manager_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1189647142");
    l0:SetConnections({
    });
    self.box_MissionAckTriggerListener_275 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_275;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_275");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1201021271");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MissionAckTriggerListener_275_Enabled,
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1215476475");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_Gate_v3_3 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1246048742");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_3_Out,
    });
    self.box_SpawnAI_89 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1337766890");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_89_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_89_Spawned,
    });
    self.box_ProximityRadiusListener_v3_114 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1353595814");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_114_SomeoneNear,
    });
    self.box_ProximityTrigger_v2_276 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_276;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_276");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1431301976");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_276_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_276_Leave,
    });
    self.box_Brick_GateRaces_Outro_26 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Outro.debug.lua");
    l0 = self.box_Brick_GateRaces_Outro_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Outro_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1451562234");
    l0:SetConnections({
        -- CustomScript,
        [0] = self.f_box_Brick_GateRaces_Outro_26_CustomScript,
        -- Finished,
        [1] = self.f_box_Brick_GateRaces_Outro_26_Finished,
        -- Started,
        [2] = self.f_box_Brick_GateRaces_Outro_26_Started,
    });
    self.box_UNI46_610_Fire_Manager_36 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_610/UNI46_610_B10.UNI46_610_Fire_Manager.debug.lua");
    l0 = self.box_UNI46_610_Fire_Manager_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_610_Fire_Manager_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1472663276");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_176 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1495313017");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_176_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_176_Unloaded,
    });
    self.box_CoopActivePlayers_4 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1506448518");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_4_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_4_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_4_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_4_TwoPlayers,
    });
    self.box_DisplayCustomUIMsg_v5_150 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1515920061");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_150_OnDisplay,
    });
    self.box_SoundModifier_v2_27 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1582507509");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_193 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1619757623");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_193_Enter,
    });
    self.box_ProximityTrigger_v2_163 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1625614103");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_163_Enter,
    });
    self.box_PlayDialog_v6_135 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1631073164");
    l0:SetConnections({
    });
    self.box_MultipleOR_74 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1674325324");
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
        [0] = self.f_box_MultipleOR_74_Out,
    });
    self.box_Delay_v5_226 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_226;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1694802640");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_226_TimeElapsed,
    });
    self.box_Brick_GateRaces_Dialogs_160 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1710313119");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_173 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1745919006");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_173_Received,
    });
    self.box_ProximityTrigger_v2_144 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1761338679");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_144_OnOccupied,
    });
    self.box_PlayDialog_v6_141 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1776338487");
    l0:SetConnections({
    });
    self.box_Random_111 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1776866576");
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
                [0] = self.f_box_Random_111_Output_0,
                [1] = self.f_box_Random_111_Output_1,
                [2] = self.f_box_Random_111_Output_2,
            },
            count = 3,
        },
    });
    self.box_Brick_GateRaces_Dialogs_165 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1778388267");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_Dialogs_175 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1783201361");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_118 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1791231516");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_105 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1792117494");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_105_SomeoneNear,
    });
    self.box_ProximityTrigger_v2_10 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1810480379");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_10_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_10_Leave,
    });
    self.box_MultipleOR_190 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1814398372");
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
    self.box_ProximityTrigger_v2_143 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1815992880");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_143_OnOccupied,
    });
    self.box_SoundModifier_v2_57 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1885189334");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_57_Started,
    });
    self.box_ProximityTrigger_v2_179 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1896773993");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_179_Enter,
    });
    self.box_PlayDialog_v6_115 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1897371389");
    l0:SetConnections({
    });
    self.box_Random_185 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1950522788");
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
                [0] = self.f_box_Random_185_Output_0,
                [1] = self.f_box_Random_185_Output_1,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_227 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_227;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1965049084");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_227_TimeElapsed,
    });
    self.box_MultipleOR_77 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1965310041");
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
        [0] = self.f_box_MultipleOR_77_Out,
    });
    self.box_UNI46_610_Fire_Manager_60 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_610/UNI46_610_B10.UNI46_610_Fire_Manager.debug.lua");
    l0 = self.box_UNI46_610_Fire_Manager_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_610_Fire_Manager_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1965907571");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_UNI46_610_Fire_Manager_60_Started,
    });
    self.box_Gate_v3_32 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1966897327");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_32_Out,
    });
    self.box_Random_189 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2007742823");
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
                [0] = self.f_box_Random_189_Output_0,
                [1] = self.f_box_Random_189_Output_1,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_225 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2066794279");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_192 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2074461937");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_192_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_192_Unloaded,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2091930169");
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
    self.box_SpawnAI_42 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2104461289");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_42_Spawned,
    });
    self.box_EntityStatusListener_195 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2111207609");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_195_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_195_Unloaded,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1092076128", "1092076128", "UNI46_610_B10", "In", "box_ActivityAcknowledgeGate_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_155_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_CreateUniqueGroup_108();
    l0 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1078480817", "1078480817", "UNI46_610_B10", "box_Simple_Node_155.Out", "box_CreateUniqueGroup_108.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_228_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_132();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|568876698", "568876698", "UNI46_610_B10", "box_Simple_Node_228.Out", "box_ParticleSystem_v3_132.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_82_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_275();
    l0 = self.box_MissionAckTriggerListener_275;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|299884921", "299884921", "UNI46_610_B10", "box_OutputOrder_v2_82.Out", "box_MissionAckTriggerListener_275.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_82_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_276();
    l0 = self.box_ProximityTrigger_v2_276;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1520840114", "1520840114", "UNI46_610_B10", "box_OutputOrder_v2_82.Out", "box_ProximityTrigger_v2_276.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_82_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_219();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1164176958", "1164176958", "UNI46_610_B10", "box_OutputOrder_v2_82.Out", "box_Compare_Boolean_219.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_82_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_75();
    l0 = self.box_ProximityRadiusListener_v3_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1417857767", "1417857767", "UNI46_610_B10", "box_OutputOrder_v2_82.Out", "box_ProximityRadiusListener_v3_75.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_82_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_130();
    l0 = self.box_ProximityTrigger_v2_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1575502355", "1575502355", "UNI46_610_B10", "box_OutputOrder_v2_82.Out", "box_ProximityTrigger_v2_130.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_82_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_83();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1081669790", "1081669790", "UNI46_610_B10", "box_OutputOrder_v2_82.Out", "box_Compare_Boolean_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_82_Out_9()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|339231321", "339231321", "UNI46_610_B10", "box_OutputOrder_v2_82.Out", "box_CoopActivePlayers_4.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_152_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_138();
    l0 = self.box_ProximityRadiusListener_v3_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|216838965", "216838965", "UNI46_610_B10", "box_OutputOrder_v2_152.Out", "box_ProximityRadiusListener_v3_138.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_152_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_142();
    l0 = self.box_ProximityRadiusListener_v3_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|942088291", "942088291", "UNI46_610_B10", "box_OutputOrder_v2_152.Out", "box_ProximityRadiusListener_v3_142.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_152_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_146();
    l0 = self.box_ProximityRadiusListener_v3_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|339626249", "339626249", "UNI46_610_B10", "box_OutputOrder_v2_152.Out", "box_ProximityRadiusListener_v3_146.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_152_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_114();
    l0 = self.box_ProximityRadiusListener_v3_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|61754346", "61754346", "UNI46_610_B10", "box_OutputOrder_v2_152.Out", "box_ProximityRadiusListener_v3_114.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_152_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_104();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1238019314", "1238019314", "UNI46_610_B10", "box_OutputOrder_v2_152.Out", "box_OutputOrder_v2_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI46_610_Fire_Manager_36();
    l0 = self.box_UNI46_610_Fire_Manager_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|875443628", "875443628", "UNI46_610_B10", "box_Simple_Node_62.Out", "box_UNI46_610_Fire_Manager_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_94_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI46_610_Fire_Manager_47();
    l0 = self.box_UNI46_610_Fire_Manager_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1981094650", "1981094650", "UNI46_610_B10", "box_Simple_Node_94.Out", "box_UNI46_610_Fire_Manager_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_96_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI46_610_Fire_Manager_60();
    l0 = self.box_UNI46_610_Fire_Manager_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|294579561", "294579561", "UNI46_610_B10", "box_Simple_Node_96.Out", "box_UNI46_610_Fire_Manager_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_213_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|998444255", "998444255", "UNI46_610_B10", "box_Simple_Node_213.Out", "box_OutputOrder_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_97_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_AllowAutoDrive_v2_34();
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|651389205", "651389205", "UNI46_610_B10", "box_Simple_Node_97.Out", "box_AllowAutoDrive_v2_34.DoNotAllow", clone:GetLuaBox(), l0:GetLuaBox());
    -- DoNotAllow
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_93_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_AllowAutoDrive_v2_34();
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1129171524", "1129171524", "UNI46_610_B10", "box_Simple_Node_93.Out", "box_AllowAutoDrive_v2_34.Allow", clone:GetLuaBox(), l0:GetLuaBox());
    -- Allow
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_87_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|372904127", "372904127", "UNI46_610_B10", "box_OutputOrder_v2_87.Out", "box_MultipleOR_77.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_86_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1681808437", "1681808437", "UNI46_610_B10", "box_OutputOrder_v2_86.Out", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_92_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_12();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1474686837", "1474686837", "UNI46_610_B10", "box_Simple_Node_92.Out", "box_GetPawnVehicleInfo_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_24_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1134514306", "1134514306", "UNI46_610_B10", "box_Simple_Node_24.Out", "box_OutputOrder_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_64_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1445690174", "1445690174", "UNI46_610_B10", "box_Simple_Node_64.Out", "box_OutputOrder_v2_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_98_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_89();
    l0 = self.box_SpawnAI_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|219865234", "219865234", "UNI46_610_B10", "box_Simple_Node_98.Out", "box_SpawnAI_89.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_95_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_153();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|996375039", "996375039", "UNI46_610_B10", "box_Simple_Node_95.Out", "box_OutputOrder_v2_153.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_137_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_275();
    l0 = self.box_MissionAckTriggerListener_275;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1236927493", "1236927493", "UNI46_610_B10", "box_Simple_Node_137.Out", "box_MissionAckTriggerListener_275.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_81_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_159();
    l0 = self.box_MessageListener_v3_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1620173719", "1620173719", "UNI46_610_B10", "box_Simple_Node_81.Out", "box_MessageListener_v3_159.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_57();
    l0 = self.box_SoundModifier_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|298227275", "298227275", "UNI46_610_B10", "box_OutputOrder_v2_50.Out", "box_SoundModifier_v2_57.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_56();
    l0 = self.box_SoundModifier_v2_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|405474905", "405474905", "UNI46_610_B10", "box_OutputOrder_v2_50.Out", "box_SoundModifier_v2_56.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_48();
    l0 = self.box_SoundModifier_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1425875082", "1425875082", "UNI46_610_B10", "box_OutputOrder_v2_50.Out", "box_SoundModifier_v2_48.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_225();
    l0 = self.box_SoundModifier_v2_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|313133127", "313133127", "UNI46_610_B10", "box_OutputOrder_v2_50.Out", "box_SoundModifier_v2_225.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_132();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1369938608", "1369938608", "UNI46_610_B10", "box_OutputOrder_v2_50.Out", "box_ParticleSystem_v3_132.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_151_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_138();
    l0 = self.box_ProximityRadiusListener_v3_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|636738878", "636738878", "UNI46_610_B10", "box_OutputOrder_v2_151.Out", "box_ProximityRadiusListener_v3_138.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_151_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_142();
    l0 = self.box_ProximityRadiusListener_v3_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|924203770", "924203770", "UNI46_610_B10", "box_OutputOrder_v2_151.Out", "box_ProximityRadiusListener_v3_142.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_151_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_146();
    l0 = self.box_ProximityRadiusListener_v3_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|927917224", "927917224", "UNI46_610_B10", "box_OutputOrder_v2_151.Out", "box_ProximityRadiusListener_v3_146.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_151_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_114();
    l0 = self.box_ProximityRadiusListener_v3_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1687901398", "1687901398", "UNI46_610_B10", "box_OutputOrder_v2_151.Out", "box_ProximityRadiusListener_v3_114.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_151_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_161();
    l0 = self.box_EntityStatusListener_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1906076664", "1906076664", "UNI46_610_B10", "box_OutputOrder_v2_151.Out", "box_EntityStatusListener_161.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_151_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_169();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2110851558", "2110851558", "UNI46_610_B10", "box_OutputOrder_v2_151.Out", "box_OutputOrder_v2_169.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_151_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_182();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1517245259", "1517245259", "UNI46_610_B10", "box_OutputOrder_v2_151.Out", "box_OutputOrder_v2_182.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_215_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_191();
    l0 = self.box_DisplayCustomUIMsg_v5_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1338010330", "1338010330", "UNI46_610_B10", "box_Simple_Node_215.Out", "box_DisplayCustomUIMsg_v5_191.Display", clone:GetLuaBox(), l0:GetLuaBox());
    -- Display
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_216_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1007510359", "1007510359", "UNI46_610_B10", "box_Simple_Node_216.Out", "box_MultipleOR_77.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_187_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_150();
    l0 = self.box_DisplayCustomUIMsg_v5_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1089709137", "1089709137", "UNI46_610_B10", "box_Simple_Node_187.Out", "box_DisplayCustomUIMsg_v5_150.Display", clone:GetLuaBox(), l0:GetLuaBox());
    -- Display
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_188_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|716525642", "716525642", "UNI46_610_B10", "box_Simple_Node_188.Out", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_177_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Random_189();
    l0 = self.box_ProximityTrigger_v2_177;
    l1 = self.box_Random_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1877425779", "1877425779", "UNI46_610_B10", "box_ProximityTrigger_v2_177.Enter", "box_Random_189.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_110_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|104363222", "104363222", "UNI46_610_B10", "box_Compare_Boolean_110.A_is_False", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_110_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPawnVehicleInfo_13();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2112543170", "2112543170", "UNI46_610_B10", "box_Compare_Boolean_110.A_is_True", "box_GetPawnVehicleInfo_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_61_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_116();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1684015682", "1684015682", "UNI46_610_B10", "box_ListWriter_v2_61.Added", "box_ListWriter_v2_116.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_32();
    l0 = self.box_Gate_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1267442458", "1267442458", "UNI46_610_B10", "box_OutputOrder_v2_28.Out", "box_Gate_v3_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_51();
    l0 = self.box_Gate_v3_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|791991621", "791991621", "UNI46_610_B10", "box_OutputOrder_v2_28.Out", "box_Gate_v3_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_53();
    l0 = self.box_Gate_v3_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|37712490", "37712490", "UNI46_610_B10", "box_OutputOrder_v2_28.Out", "box_Gate_v3_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_22();
    l0 = self.box_Gate_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2037344797", "2037344797", "UNI46_610_B10", "box_OutputOrder_v2_28.Out", "box_Gate_v3_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_3();
    l0 = self.box_Gate_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|441628408", "441628408", "UNI46_610_B10", "box_OutputOrder_v2_28.Out", "box_Gate_v3_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_73();
    l0 = self.box_Gate_v3_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1223213018", "1223213018", "UNI46_610_B10", "box_OutputOrder_v2_28.Out", "box_Gate_v3_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_146_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_144();
    l0 = self.box_ProximityRadiusListener_v3_146;
    l1 = self.box_ProximityTrigger_v2_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1373309688", "1373309688", "UNI46_610_B10", "box_ProximityRadiusListener_v3_146.Disabled", "box_ProximityTrigger_v2_144.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_146_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_144();
    l0 = self.box_ProximityRadiusListener_v3_146;
    l1 = self.box_ProximityTrigger_v2_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1517255653", "1517255653", "UNI46_610_B10", "box_ProximityRadiusListener_v3_146.SomeoneNear", "box_ProximityTrigger_v2_144.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_130_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_132();
    l0 = self.box_ProximityTrigger_v2_130;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1383032025", "1383032025", "UNI46_610_B10", "box_ProximityTrigger_v2_130.Enter", "box_ParticleSystem_v3_132.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_159_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_76();
    l0 = self.box_MessageListener_v3_159;
    l1 = self.box_SpawnAI_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1076582223", "1076582223", "UNI46_610_B10", "box_MessageListener_v3_159.Received", "box_SpawnAI_76.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_88_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_Gate_v3_88;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|655847508", "655847508", "UNI46_610_B10", "box_Gate_v3_88.Out", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_136_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_136;
    l1 = self.box_OnceOnly_v3_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1317116750", "1317116750", "UNI46_610_B10", "box_ProximityTrigger_v2_136.OnOccupied", "box_OnceOnly_v3_148.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_219_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_10();
    l0 = self.box_ProximityTrigger_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|709303816", "709303816", "UNI46_610_B10", "box_Compare_Boolean_219.A_is_True", "box_ProximityTrigger_v2_10.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_169_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_173();
    l0 = self.box_MessageListener_v3_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|108094067", "108094067", "UNI46_610_B10", "box_OutputOrder_v2_169.Out", "box_MessageListener_v3_173.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_169_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_174();
    l0 = self.box_MessageListener_v3_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1624751940", "1624751940", "UNI46_610_B10", "box_OutputOrder_v2_169.Out", "box_MessageListener_v3_174.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_169_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_168();
    l0 = self.box_MessageListener_v3_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1855577970", "1855577970", "UNI46_610_B10", "box_OutputOrder_v2_169.Out", "box_MessageListener_v3_168.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_84_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_86();
    l0 = self.box_MultipleOR_84;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1670743021", "1670743021", "UNI46_610_B10", "box_MultipleOR_84.Out", "box_OutputOrder_v2_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_103();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1397021864", "1397021864", "UNI46_610_B10", "box_OutputOrder_v2_102.Out", "box_ListWriter_v2_103.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_61();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|172042716", "172042716", "UNI46_610_B10", "box_OutputOrder_v2_102.Out", "box_ListWriter_v2_61.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_117();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1932540325", "1932540325", "UNI46_610_B10", "box_OutputOrder_v2_102.Out", "box_ListWriter_v2_117.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_133();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|93882971", "93882971", "UNI46_610_B10", "box_OutputOrder_v2_102.Out", "box_ListWriter_v2_133.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_224();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|702377693", "702377693", "UNI46_610_B10", "box_OutputOrder_v2_102.Out", "box_ListWriter_v2_224.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_72_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_75();
    l0 = self.box_ProximityRadiusListener_v3_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|752118484", "752118484", "UNI46_610_B10", "box_OutputOrder_v2_72.Out", "box_ProximityRadiusListener_v3_75.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_72_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_3();
    l0 = self.box_Gate_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1903312924", "1903312924", "UNI46_610_B10", "box_OutputOrder_v2_72.Out", "box_Gate_v3_3.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_18();
    l0 = self.box_MultipleOR_17;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|335722289", "335722289", "UNI46_610_B10", "box_MultipleOR_17.Out", "box_Print_v2_18.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_46();
    l0 = self.box_Gate_v3_51;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1406884091", "1406884091", "UNI46_610_B10", "box_Gate_v3_51.Out", "box_Compare_Integers_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_277_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_279();
    l0 = self.box_Gate_v3_277;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1043065606", "1043065606", "UNI46_610_B10", "box_Gate_v3_277.Out", "box_OutputOrder_v2_279.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_46_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|463555710", "463555710", "UNI46_610_B10", "box_Compare_Integers_46.A_ge_B", "box_OutputOrder_v2_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_58_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_72();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1366435374", "1366435374", "UNI46_610_B10", "box_Compare_Integers_58.A_ge_B", "box_OutputOrder_v2_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_CORE_70_Disabled()
    self:OnExit_box_Brick_GateRaces_CORE_70_Disabled();
end;

function export:f_box_Brick_GateRaces_CORE_70_Fail()
    local params, l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_70_Fail();
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_Brick_GateRaces_CORE_70;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|673452773", "673452773", "UNI46_610_B10", "box_Brick_GateRaces_CORE_70.Fail", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_CORE_70_Finished()
    local params, l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_70_Finished();
    params = self:OnEnter_box_Gate_v3_88();
    l0 = self.box_Brick_GateRaces_CORE_70;
    l1 = self.box_Gate_v3_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1110458210", "1110458210", "UNI46_610_B10", "box_Brick_GateRaces_CORE_70.Finished", "box_Gate_v3_88.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_GateRaces_CORE_70_GatePassed()
    local params, l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_70_GatePassed();
    params = self:OnEnter_box_Simple_Node_213();
    l0 = self.box_Brick_GateRaces_CORE_70;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|174347952", "174347952", "UNI46_610_B10", "box_Brick_GateRaces_CORE_70.GatePassed", "box_Simple_Node_213.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_CORE_70_Started()
    local params, l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_70_Started();
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_Brick_GateRaces_CORE_70;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1200440641", "1200440641", "UNI46_610_B10", "box_Brick_GateRaces_CORE_70.Started", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_138_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_136();
    l0 = self.box_ProximityRadiusListener_v3_138;
    l1 = self.box_ProximityTrigger_v2_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2097108581", "2097108581", "UNI46_610_B10", "box_ProximityRadiusListener_v3_138.Disabled", "box_ProximityTrigger_v2_136.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_138_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_136();
    l0 = self.box_ProximityRadiusListener_v3_138;
    l1 = self.box_ProximityTrigger_v2_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1940983138", "1940983138", "UNI46_610_B10", "box_ProximityRadiusListener_v3_138.SomeoneNear", "box_ProximityTrigger_v2_136.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_100_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = self.box_MultipleOR_100;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1673677010", "1673677010", "UNI46_610_B10", "box_MultipleOR_100.Out", "box_OutputOrder_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_174_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_174;
    l1 = self.box_MultipleOR_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1405003794", "1405003794", "UNI46_610_B10", "box_MessageListener_v3_174.Received", "box_MultipleOR_166.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_79_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_78();
    l0 = self.box_EntityStatusListener_79;
    l1 = self.box_ProximityTrigger_v2_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|456909011", "456909011", "UNI46_610_B10", "box_EntityStatusListener_79.Loaded", "box_ProximityTrigger_v2_78.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_79_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_78();
    l0 = self.box_EntityStatusListener_79;
    l1 = self.box_ProximityTrigger_v2_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1505832569", "1505832569", "UNI46_610_B10", "box_EntityStatusListener_79.Unloaded", "box_ProximityTrigger_v2_78.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_278_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_277();
    l0 = self.box_Gate_v3_277;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2043702073", "2043702073", "UNI46_610_B10", "box_OutputOrder_v2_278.Out", "box_Gate_v3_277.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_278_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_187();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2004274947", "2004274947", "UNI46_610_B10", "box_OutputOrder_v2_278.Out", "box_Simple_Node_187.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_49();
    l0 = self.box_Gate_v3_53;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|508335246", "508335246", "UNI46_610_B10", "box_Gate_v3_53.Out", "box_Compare_Integers_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_161_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_163();
    l0 = self.box_EntityStatusListener_161;
    l1 = self.box_ProximityTrigger_v2_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|226327332", "226327332", "UNI46_610_B10", "box_EntityStatusListener_161.Loaded", "box_ProximityTrigger_v2_163.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_161_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_163();
    l0 = self.box_EntityStatusListener_161;
    l1 = self.box_ProximityTrigger_v2_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1127399550", "1127399550", "UNI46_610_B10", "box_EntityStatusListener_161.Unloaded", "box_ProximityTrigger_v2_163.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_142_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_143();
    l0 = self.box_ProximityRadiusListener_v3_142;
    l1 = self.box_ProximityTrigger_v2_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1393524234", "1393524234", "UNI46_610_B10", "box_ProximityRadiusListener_v3_142.Disabled", "box_ProximityTrigger_v2_143.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_142_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_143();
    l0 = self.box_ProximityRadiusListener_v3_142;
    l1 = self.box_ProximityTrigger_v2_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1623822368", "1623822368", "UNI46_610_B10", "box_ProximityRadiusListener_v3_142.SomeoneNear", "box_ProximityTrigger_v2_143.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_38();
    l0 = self.box_RemoveEntity_v2_31;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1916439906", "1916439906", "UNI46_610_B10", "box_RemoveEntity_v2_31.Out", "box_ActivityEnd_38.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_196_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Random_197();
    l0 = self.box_ProximityTrigger_v2_196;
    l1 = self.box_Random_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|239752062", "239752062", "UNI46_610_B10", "box_ProximityTrigger_v2_196.Enter", "box_Random_197.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_182_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_176();
    l0 = self.box_EntityStatusListener_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|748784262", "748784262", "UNI46_610_B10", "box_OutputOrder_v2_182.Out", "box_EntityStatusListener_176.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_182_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_178();
    l0 = self.box_EntityStatusListener_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|825726272", "825726272", "UNI46_610_B10", "box_OutputOrder_v2_182.Out", "box_EntityStatusListener_178.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_182_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_192();
    l0 = self.box_EntityStatusListener_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1745277911", "1745277911", "UNI46_610_B10", "box_OutputOrder_v2_182.Out", "box_EntityStatusListener_192.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_182_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_195();
    l0 = self.box_EntityStatusListener_195;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1566280260", "1566280260", "UNI46_610_B10", "box_OutputOrder_v2_182.Out", "box_EntityStatusListener_195.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_220_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_10();
    l0 = self.box_ProximityTrigger_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|326927960", "326927960", "UNI46_610_B10", "box_Compare_Boolean_220.A_is_True", "box_ProximityTrigger_v2_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ListWriter_v2_224_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_162();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1696669312", "1696669312", "UNI46_610_B10", "box_ListWriter_v2_224.Added", "box_ListWriter_v2_162.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_162_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddToGroupFromList_v2_128();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroupFromList_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|860312443", "860312443", "UNI46_610_B10", "box_ListWriter_v2_162.Added", "box_AddToGroupFromList_v2_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UNI46_610_Fire_Manager_65_Started()
    local params, l0, l1;
    params = self:OnEnter_box_UNI46_610_Fire_Manager_66();
    l0 = self.box_UNI46_610_Fire_Manager_65;
    l1 = self.box_UNI46_610_Fire_Manager_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|30824277", "30824277", "UNI46_610_B10", "box_UNI46_610_Fire_Manager_65.Started", "box_UNI46_610_Fire_Manager_66.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_55();
    l0 = self.box_Gate_v3_22;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1103439092", "1103439092", "UNI46_610_B10", "box_Gate_v3_22.Out", "box_Compare_Integers_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_133_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_134();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|563712811", "563712811", "UNI46_610_B10", "box_ListWriter_v2_133.Added", "box_ListWriter_v2_134.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_184_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_216();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1304099211", "1304099211", "UNI46_610_B10", "box_OutputOrder_v2_184.Out", "box_Simple_Node_216.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_184_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_181();
    l0 = self.box_Gate_v3_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|737091834", "737091834", "UNI46_610_B10", "box_OutputOrder_v2_184.Out", "box_Gate_v3_181.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_92();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1188951848", "1188951848", "UNI46_610_B10", "box_OutputOrder_v2_6.Out", "box_Simple_Node_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_137();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2118387798", "2118387798", "UNI46_610_B10", "box_OutputOrder_v2_6.Out", "box_Simple_Node_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_151();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1775893460", "1775893460", "UNI46_610_B10", "box_OutputOrder_v2_6.Out", "box_OutputOrder_v2_151.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DisplayCustomUIMsg_v5_191_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_23();
    l0 = self.box_DisplayCustomUIMsg_v5_191;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1202944530", "1202944530", "UNI46_610_B10", "box_DisplayCustomUIMsg_v5_191.OnDisplay", "box_Print_v2_23.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_88();
    l0 = self.box_Gate_v3_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|792424478", "792424478", "UNI46_610_B10", "box_OutputOrder_v2_7.Out", "box_Gate_v3_88.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_25();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|262109547", "262109547", "UNI46_610_B10", "box_OutputOrder_v2_7.Out", "box_ActivityRetry_25.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_82();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|550451345", "550451345", "UNI46_610_B10", "box_OutputOrder_v2_7.Out", "box_OutputOrder_v2_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_152();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|310620503", "310620503", "UNI46_610_B10", "box_OutputOrder_v2_7.Out", "box_OutputOrder_v2_152.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_75_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_24();
    l0 = self.box_ProximityRadiusListener_v3_75;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1035488541", "1035488541", "UNI46_610_B10", "box_ProximityRadiusListener_v3_75.SomeoneNear", "box_Simple_Node_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_56_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_227();
    l0 = self.box_SoundModifier_v2_56;
    l1 = self.box_Delay_v5_227;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|196242807", "196242807", "UNI46_610_B10", "box_SoundModifier_v2_56.Started", "box_Delay_v5_227.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_76_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_SpawnAI_76;
    l1 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|144221865", "144221865", "UNI46_610_B10", "box_SpawnAI_76.Spawned", "box_Delay_v5_29.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1594653370", "1594653370", "UNI46_610_B10", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_100.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|891735096", "891735096", "UNI46_610_B10", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_100.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_148_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_139();
    l0 = self.box_OnceOnly_v3_148;
    l1 = self.box_PlayDialog_v6_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1408240626", "1408240626", "UNI46_610_B10", "box_OnceOnly_v3_148.Out", "box_PlayDialog_v6_139.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_197_Output_0()
    local l0, l1;
    l0 = self.box_Random_197;
    l1 = self.box_MultipleOR_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1917374089", "1917374089", "UNI46_610_B10", "box_Random_197.Output", "box_MultipleOR_183.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Random_197_Output_1()
    local l0, l1;
    l0 = self.box_Random_197;
    l1 = self.box_MultipleOR_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|695360643", "695360643", "UNI46_610_B10", "box_Random_197.Output", "box_MultipleOR_190.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_SpawnAI_44_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_39();
    l0 = self.box_SpawnAI_44;
    l1 = self.box_MultipleAND_v2_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1156814992", "1156814992", "UNI46_610_B10", "box_SpawnAI_44.Spawned", "box_MultipleAND_v2_39.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_OnceOnly_v3_147_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_140();
    l0 = self.box_OnceOnly_v3_147;
    l1 = self.box_PlayDialog_v6_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|667134683", "667134683", "UNI46_610_B10", "box_OnceOnly_v3_147.Out", "box_PlayDialog_v6_140.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_149_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_141();
    l0 = self.box_OnceOnly_v3_149;
    l1 = self.box_PlayDialog_v6_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2083461241", "2083461241", "UNI46_610_B10", "box_OnceOnly_v3_149.Out", "box_PlayDialog_v6_141.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_166_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_166;
    l1 = self.box_Brick_GateRaces_Dialogs_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|546572322", "546572322", "UNI46_610_B10", "box_MultipleOR_166.Out", "box_Brick_GateRaces_Dialogs_165.Crash", l0:GetLuaBox(), l1:GetLuaBox());
    -- Crash
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_183_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_183;
    l1 = self.box_Brick_GateRaces_Dialogs_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|103277139", "103277139", "UNI46_610_B10", "box_MultipleOR_183.Out", "box_Brick_GateRaces_Dialogs_186.Encouragement", l0:GetLuaBox(), l1:GetLuaBox());
    -- Encouragement
    l1:Exec(1, {
    });
end;

function export:f_box_MultipleAND_v2_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_107();
    l0 = self.box_MultipleAND_v2_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1572851569", "1572851569", "UNI46_610_B10", "box_MultipleAND_v2_39.Out", "box_OutputOrder_v2_107.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_98();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1296203685", "1296203685", "UNI46_610_B10", "box_OutputOrder_v2_15.Out", "box_Simple_Node_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_22();
    l0 = self.box_Gate_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1755142171", "1755142171", "UNI46_610_B10", "box_OutputOrder_v2_15.Out", "box_Gate_v3_22.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_78_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_80();
    l0 = self.box_ProximityTrigger_v2_78;
    l1 = self.box_SpawnAI_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2026852326", "2026852326", "UNI46_610_B10", "box_ProximityTrigger_v2_78.OnOccupied", "box_SpawnAI_80.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_73_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_69();
    l0 = self.box_Gate_v3_73;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1750028712", "1750028712", "UNI46_610_B10", "box_Gate_v3_73.Out", "box_Compare_Integers_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1630325997", "1630325997", "UNI46_610_B10", "box_OutputOrder_v2_71.Out", "box_Simple_Node_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_73();
    l0 = self.box_Gate_v3_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1433155627", "1433155627", "UNI46_610_B10", "box_OutputOrder_v2_71.Out", "box_Gate_v3_73.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_181_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_184();
    l0 = self.box_Gate_v3_181;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|839539655", "839539655", "UNI46_610_B10", "box_Gate_v3_181.Out", "box_OutputOrder_v2_184.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_90_Fail()
    local l0, l1;
    l0 = self.box_SpawnAI_90;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|550777574", "550777574", "UNI46_610_B10", "box_SpawnAI_90.Fail", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_90_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_90;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1798770983", "1798770983", "UNI46_610_B10", "box_SpawnAI_90.Spawned", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_97();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|738686133", "738686133", "UNI46_610_B10", "box_OutputOrder_v2_35.Out", "box_Simple_Node_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|688350990", "688350990", "UNI46_610_B10", "box_OutputOrder_v2_35.Out", "box_CoopActivePlayers_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_156_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CORE_70();
    l0 = self.box_Brick_GateRaces_CORE_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1710134408", "1710134408", "UNI46_610_B10", "box_OutputOrder_v2_156.Out", "box_Brick_GateRaces_CORE_70.Start_Vehicle", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_Vehicle
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_156_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_81();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|397151595", "397151595", "UNI46_610_B10", "box_OutputOrder_v2_156.Out", "box_Simple_Node_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UNI46_610_B10_Array_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_156();
    l0 = self.box_UNI46_610_B10_Array_63;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|772170414", "772170414", "UNI46_610_B10", "box_UNI46_610_B10_Array_63.Out", "box_OutputOrder_v2_156.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_90();
    l0 = self.box_SpawnAI_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1744694551", "1744694551", "UNI46_610_B10", "box_OutputOrder_v2_5.Out", "box_SpawnAI_90.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_91();
    l0 = self.box_SpawnAI_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2110502143", "2110502143", "UNI46_610_B10", "box_OutputOrder_v2_5.Out", "box_SpawnAI_91.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_57();
    l0 = self.box_SoundModifier_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|375436548", "375436548", "UNI46_610_B10", "box_OutputOrder_v2_54.Out", "box_SoundModifier_v2_57.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_56();
    l0 = self.box_SoundModifier_v2_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1782902458", "1782902458", "UNI46_610_B10", "box_OutputOrder_v2_54.Out", "box_SoundModifier_v2_56.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_49_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1795553954", "1795553954", "UNI46_610_B10", "box_Compare_Integers_49.A_ge_B", "box_OutputOrder_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_194_Output_0()
    local l0, l1;
    l0 = self.box_Random_194;
    l1 = self.box_MultipleOR_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1814861725", "1814861725", "UNI46_610_B10", "box_Random_194.Output", "box_MultipleOR_183.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Random_194_Output_1()
    local l0, l1;
    l0 = self.box_Random_194;
    l1 = self.box_MultipleOR_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1779407060", "1779407060", "UNI46_610_B10", "box_Random_194.Output", "box_MultipleOR_190.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_153_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_155();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|503023698", "503023698", "UNI46_610_B10", "box_OutputOrder_v2_153.Out", "box_Simple_Node_155.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_153_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_130();
    l0 = self.box_ProximityTrigger_v2_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|238473517", "238473517", "UNI46_610_B10", "box_OutputOrder_v2_153.Out", "box_ProximityTrigger_v2_130.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_153_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_96();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|125455422", "125455422", "UNI46_610_B10", "box_OutputOrder_v2_153.Out", "box_Simple_Node_96.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_9_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|132726954", "132726954", "UNI46_610_B10", "box_SetEntity_v2_9.Out", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_20();
    l0 = self.box_MultipleOR_19;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|222973478", "222973478", "UNI46_610_B10", "box_MultipleOR_19.Out", "box_Print_v2_20.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_276();
    l0 = self.box_ProximityTrigger_v2_276;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|434048387", "434048387", "UNI46_610_B10", "box_OutputOrder_v2_52.Out", "box_ProximityTrigger_v2_276.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_220();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1327273240", "1327273240", "UNI46_610_B10", "box_OutputOrder_v2_52.Out", "box_Compare_Boolean_220.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_55_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|4587383", "4587383", "UNI46_610_B10", "box_Compare_Integers_55.A_ge_B", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_85_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_87();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|39569902", "39569902", "UNI46_610_B10", "box_OutputOrder_v2_85.Out", "box_OutputOrder_v2_87.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_85_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1387103636", "1387103636", "UNI46_610_B10", "box_OutputOrder_v2_85.Out", "box_MultipleOR_84.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MessageListener_v3_168_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_168;
    l1 = self.box_Brick_GateRaces_Dialogs_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|883852886", "883852886", "UNI46_610_B10", "box_MessageListener_v3_168.Received", "box_Brick_GateRaces_Dialogs_167.OutOfTime", l0:GetLuaBox(), l1:GetLuaBox());
    -- OutOfTime
    l1:Exec(3, {
    });
end;

function export:f_box_SpawnAI_91_Fail()
    local l0, l1;
    l0 = self.box_SpawnAI_91;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|948660812", "948660812", "UNI46_610_B10", "box_SpawnAI_91.Fail", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_91_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_91;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1160849447", "1160849447", "UNI46_610_B10", "box_SpawnAI_91.Spawned", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_131_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_115();
    l0 = self.box_Random_131;
    l1 = self.box_PlayDialog_v6_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|31033365", "31033365", "UNI46_610_B10", "box_Random_131.Output", "box_PlayDialog_v6_115.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_131_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_118();
    l0 = self.box_Random_131;
    l1 = self.box_PlayDialog_v6_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|234553916", "234553916", "UNI46_610_B10", "box_Random_131.Output", "box_PlayDialog_v6_118.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_131_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_135();
    l0 = self.box_Random_131;
    l1 = self.box_PlayDialog_v6_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1135626134", "1135626134", "UNI46_610_B10", "box_Random_131.Output", "box_PlayDialog_v6_135.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_178_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_179();
    l0 = self.box_EntityStatusListener_178;
    l1 = self.box_ProximityTrigger_v2_179;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|12652746", "12652746", "UNI46_610_B10", "box_EntityStatusListener_178.Loaded", "box_ProximityTrigger_v2_179.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_178_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_179();
    l0 = self.box_EntityStatusListener_178;
    l1 = self.box_ProximityTrigger_v2_179;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|642420267", "642420267", "UNI46_610_B10", "box_EntityStatusListener_178.Unloaded", "box_ProximityTrigger_v2_179.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_GetPawnVehicleInfo_12_InVehicle()
    self:OnExit_box_GetPawnVehicleInfo_12_InVehicle();
end;

function export:f_box_GetPawnVehicleInfo_12_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_12_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_12_Out()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_12_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_324();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1412269653", "1412269653", "UNI46_610_B10", "box_GetPawnVehicleInfo_12.Out", "box_SetEntity_v2_324.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_94();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1052716953", "1052716953", "UNI46_610_B10", "box_OutputOrder_v2_45.Out", "box_Simple_Node_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_51();
    l0 = self.box_Gate_v3_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|431290667", "431290667", "UNI46_610_B10", "box_OutputOrder_v2_45.Out", "box_Gate_v3_51.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_43_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_39();
    l0 = self.box_SpawnAI_43;
    l1 = self.box_MultipleAND_v2_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|954303119", "954303119", "UNI46_610_B10", "box_SpawnAI_43.Spawned", "box_MultipleAND_v2_39.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_27();
    l0 = self.box_SoundModifier_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2010431498", "2010431498", "UNI46_610_B10", "box_OutputOrder_v2_68.Out", "box_SoundModifier_v2_27.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_67();
    l0 = self.box_SpawnAI_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|7997671", "7997671", "UNI46_610_B10", "box_OutputOrder_v2_68.Out", "box_SpawnAI_67.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_68_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_79();
    l0 = self.box_EntityStatusListener_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|971639624", "971639624", "UNI46_610_B10", "box_OutputOrder_v2_68.Out", "box_EntityStatusListener_79.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionAckTriggerListener_275_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = self.box_MissionAckTriggerListener_275;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2101862095", "2101862095", "UNI46_610_B10", "box_MissionAckTriggerListener_275.Enabled", "box_OutputOrder_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_83_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|935439813", "935439813", "UNI46_610_B10", "box_Compare_Boolean_83.A_is_False", "box_MultipleOR_84.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_83_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_85();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|820737212", "820737212", "UNI46_610_B10", "box_Compare_Boolean_83.A_is_True", "box_OutputOrder_v2_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = self.box_Delay_v5_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|75920340", "75920340", "UNI46_610_B10", "box_Delay_v5_29.TimeElapsed", "box_OutputOrder_v2_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_58();
    l0 = self.box_Gate_v3_3;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1418080377", "1418080377", "UNI46_610_B10", "box_Gate_v3_3.Out", "box_Compare_Integers_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CreateUniqueGroup_108_Out()
    local params, l0;
    self:OnExit_box_CreateUniqueGroup_108_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListReset_170();
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|862845331", "862845331", "UNI46_610_B10", "box_CreateUniqueGroup_108.Out", "box_ListReset_170.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_89_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_14();
    l0 = self.box_SpawnAI_89;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1326340303", "1326340303", "UNI46_610_B10", "box_SpawnAI_89.Fail", "box_Print_v2_14.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_89_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_21();
    l0 = self.box_SpawnAI_89;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1500488444", "1500488444", "UNI46_610_B10", "box_SpawnAI_89.Spawned", "box_Print_v2_21.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_114_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Random_131();
    l0 = self.box_ProximityRadiusListener_v3_114;
    l1 = self.box_Random_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1536492210", "1536492210", "UNI46_610_B10", "box_ProximityRadiusListener_v3_114.SomeoneNear", "box_Random_131.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ListWriter_v2_103_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_59();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1229404980", "1229404980", "UNI46_610_B10", "box_ListWriter_v2_103.Added", "box_ListWriter_v2_59.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_117_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_129();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1831867022", "1831867022", "UNI46_610_B10", "box_ListWriter_v2_117.Added", "box_ListWriter_v2_129.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_276_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_277();
    l0 = self.box_ProximityTrigger_v2_276;
    l1 = self.box_Gate_v3_277;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1408169135", "1408169135", "UNI46_610_B10", "box_ProximityTrigger_v2_276.Enter", "box_Gate_v3_277.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_276_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_278();
    l0 = self.box_ProximityTrigger_v2_276;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1396258596", "1396258596", "UNI46_610_B10", "box_ProximityTrigger_v2_276.Leave", "box_OutputOrder_v2_278.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_107_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_105();
    l0 = self.box_ProximityRadiusListener_v3_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|197192095", "197192095", "UNI46_610_B10", "box_OutputOrder_v2_107.Out", "box_ProximityRadiusListener_v3_105.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_107_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_40();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|349009184", "349009184", "UNI46_610_B10", "box_OutputOrder_v2_107.Out", "box_Print_v2_40.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_Outro_26_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_Brick_GateRaces_Outro_26;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|76722830", "76722830", "UNI46_610_B10", "box_Brick_GateRaces_Outro_26.CustomScript", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_Outro_26_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_31();
    l0 = self.box_Brick_GateRaces_Outro_26;
    l1 = self.box_RemoveEntity_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1825316030", "1825316030", "UNI46_610_B10", "box_Brick_GateRaces_Outro_26.Finished", "box_RemoveEntity_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_GateRaces_Outro_26_Started()
    local l0, l1;
    l0 = self.box_Brick_GateRaces_Outro_26;
    l1 = self.box_Brick_GateRaces_Dialogs_175;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1713254052", "1713254052", "UNI46_610_B10", "box_Brick_GateRaces_Outro_26.Started", "box_Brick_GateRaces_Dialogs_175.Success", l0:GetLuaBox(), l1:GetLuaBox());
    -- Success
    l1:Exec(4, {
    });
end;

function export:f_box_OutputOrder_v2_104_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_173();
    l0 = self.box_MessageListener_v3_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|768168493", "768168493", "UNI46_610_B10", "box_OutputOrder_v2_104.Out", "box_MessageListener_v3_173.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_104_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_174();
    l0 = self.box_MessageListener_v3_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1250084674", "1250084674", "UNI46_610_B10", "box_OutputOrder_v2_104.Out", "box_MessageListener_v3_174.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_104_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_168();
    l0 = self.box_MessageListener_v3_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|94797121", "94797121", "UNI46_610_B10", "box_OutputOrder_v2_104.Out", "box_MessageListener_v3_168.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_44();
    l0 = self.box_SpawnAI_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|512802315", "512802315", "UNI46_610_B10", "box_OutputOrder_v2_41.Out", "box_SpawnAI_44.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_43();
    l0 = self.box_SpawnAI_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2057118302", "2057118302", "UNI46_610_B10", "box_OutputOrder_v2_41.Out", "box_SpawnAI_43.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_41_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_42();
    l0 = self.box_SpawnAI_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2008187389", "2008187389", "UNI46_610_B10", "box_OutputOrder_v2_41.Out", "box_SpawnAI_42.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_176_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_177();
    l0 = self.box_EntityStatusListener_176;
    l1 = self.box_ProximityTrigger_v2_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1342426876", "1342426876", "UNI46_610_B10", "box_EntityStatusListener_176.Loaded", "box_ProximityTrigger_v2_177.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_176_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_177();
    l0 = self.box_EntityStatusListener_176;
    l1 = self.box_ProximityTrigger_v2_177;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1007303782", "1007303782", "UNI46_610_B10", "box_EntityStatusListener_176.Unloaded", "box_ProximityTrigger_v2_177.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_CoopActivePlayers_4_OnePlayer()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_4_OnePlayer();
    params = self:OnEnter_box_SetBoolean_v2_109();
    l0 = self.box_CoopActivePlayers_4;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1015324898", "1015324898", "UNI46_610_B10", "box_CoopActivePlayers_4.OnePlayer", "box_SetBoolean_v2_109.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_4_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_157();
    l0 = self.box_CoopActivePlayers_4;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1050512300", "1050512300", "UNI46_610_B10", "box_CoopActivePlayers_4.PlayerAdded", "box_Print_v2_157.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_4_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_4_TwoPlayers();
    params = self:OnEnter_box_SetBoolean_v2_109();
    l0 = self.box_CoopActivePlayers_4;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1684512833", "1684512833", "UNI46_610_B10", "box_CoopActivePlayers_4.TwoPlayers", "box_SetBoolean_v2_109.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DisplayCustomUIMsg_v5_150_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_8();
    l0 = self.box_DisplayCustomUIMsg_v5_150;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|417063041", "417063041", "UNI46_610_B10", "box_DisplayCustomUIMsg_v5_150.OnDisplay", "box_Print_v2_8.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_Outro_26();
    l0 = self.box_Brick_GateRaces_Outro_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1710551152", "1710551152", "UNI46_610_B10", "box_OutputOrder_v2_16.Out", "box_Brick_GateRaces_Outro_26.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_82();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|113097762", "113097762", "UNI46_610_B10", "box_OutputOrder_v2_16.Out", "box_OutputOrder_v2_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_152();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1035442779", "1035442779", "UNI46_610_B10", "box_OutputOrder_v2_16.Out", "box_OutputOrder_v2_152.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_13_InVehicle()
    self:OnExit_box_GetPawnVehicleInfo_13_InVehicle();
end;

function export:f_box_GetPawnVehicleInfo_13_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_13_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_13_Out()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_13_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_9();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2105648682", "2105648682", "UNI46_610_B10", "box_GetPawnVehicleInfo_13.Out", "box_SetEntity_v2_9.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_228();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1278200329", "1278200329", "UNI46_610_B10", "box_OutputOrder_v2_11.Out", "box_Simple_Node_228.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_93();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1168127049", "1168127049", "UNI46_610_B10", "box_OutputOrder_v2_11.Out", "box_Simple_Node_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_99();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1312853205", "1312853205", "UNI46_610_B10", "box_OutputOrder_v2_11.Out", "box_MissionBlockLayer_99.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_193_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Random_194();
    l0 = self.box_ProximityTrigger_v2_193;
    l1 = self.box_Random_194;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1480796884", "1480796884", "UNI46_610_B10", "box_ProximityTrigger_v2_193.Enter", "box_Random_194.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_163_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_163;
    l1 = self.box_Brick_GateRaces_Dialogs_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1623132641", "1623132641", "UNI46_610_B10", "box_ProximityTrigger_v2_163.Enter", "box_Brick_GateRaces_Dialogs_160.Landing", l0:GetLuaBox(), l1:GetLuaBox());
    -- Landing
    l1:Exec(2, {
    });
end;

function export:f_box_MultipleOR_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_150();
    l0 = self.box_MultipleOR_74;
    l1 = self.box_DisplayCustomUIMsg_v5_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1402386681", "1402386681", "UNI46_610_B10", "box_MultipleOR_74.Out", "box_DisplayCustomUIMsg_v5_150.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_145_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_181();
    l0 = self.box_Gate_v3_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1029145603", "1029145603", "UNI46_610_B10", "box_OutputOrder_v2_145.Out", "box_Gate_v3_181.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_145_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_215();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1255788196", "1255788196", "UNI46_610_B10", "box_OutputOrder_v2_145.Out", "box_Simple_Node_215.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_226_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_48();
    l0 = self.box_Delay_v5_226;
    l1 = self.box_SoundModifier_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1490223836", "1490223836", "UNI46_610_B10", "box_Delay_v5_226.TimeElapsed", "box_SoundModifier_v2_48.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MessageListener_v3_173_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_173;
    l1 = self.box_MultipleOR_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|611122826", "611122826", "UNI46_610_B10", "box_MessageListener_v3_173.Received", "box_MultipleOR_166.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_30_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1176476535", "1176476535", "UNI46_610_B10", "box_Compare_Integers_30.A_ge_B", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_144_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_144;
    l1 = self.box_OnceOnly_v3_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1280603832", "1280603832", "UNI46_610_B10", "box_ProximityTrigger_v2_144.OnOccupied", "box_OnceOnly_v3_149.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_62();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1648088062", "1648088062", "UNI46_610_B10", "box_OutputOrder_v2_33.Out", "box_Simple_Node_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_32();
    l0 = self.box_Gate_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1694036842", "1694036842", "UNI46_610_B10", "box_OutputOrder_v2_33.Out", "box_Gate_v3_32.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Random_111_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_101();
    l0 = self.box_Random_111;
    l1 = self.box_PlayDialog_v6_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1359559782", "1359559782", "UNI46_610_B10", "box_Random_111.Output", "box_PlayDialog_v6_101.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_111_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_112();
    l0 = self.box_Random_111;
    l1 = self.box_PlayDialog_v6_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1745328085", "1745328085", "UNI46_610_B10", "box_Random_111.Output", "box_PlayDialog_v6_112.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_111_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_113();
    l0 = self.box_Random_111;
    l1 = self.box_PlayDialog_v6_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1636039165", "1636039165", "UNI46_610_B10", "box_Random_111.Output", "box_PlayDialog_v6_113.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_324_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_324_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_110();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1250236447", "1250236447", "UNI46_610_B10", "box_SetEntity_v2_324.Out", "box_Compare_Boolean_110.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_105_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_Random_111();
    l0 = self.box_ProximityRadiusListener_v3_105;
    l1 = self.box_Random_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|374454621", "374454621", "UNI46_610_B10", "box_ProximityRadiusListener_v3_105.SomeoneNear", "box_Random_111.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|849491020", "849491020", "UNI46_610_B10", "box_OutputOrder_v2_37.Out", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_53();
    l0 = self.box_Gate_v3_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|661140397", "661140397", "UNI46_610_B10", "box_OutputOrder_v2_37.Out", "box_Gate_v3_53.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_10_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_181();
    l0 = self.box_ProximityTrigger_v2_10;
    l1 = self.box_Gate_v3_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1420996161", "1420996161", "UNI46_610_B10", "box_ProximityTrigger_v2_10.Enter", "box_Gate_v3_181.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_10_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_145();
    l0 = self.box_ProximityTrigger_v2_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2144004064", "2144004064", "UNI46_610_B10", "box_ProximityTrigger_v2_10.Leave", "box_OutputOrder_v2_145.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_132_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1401266713", "1401266713", "UNI46_610_B10", "box_ParticleSystem_v3_132.Started", "box_OutputOrder_v2_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_132_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|469988386", "469988386", "UNI46_610_B10", "box_ParticleSystem_v3_132.Stopped", "box_OutputOrder_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_190_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_198();
    l0 = self.box_MultipleOR_190;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|388693084", "388693084", "UNI46_610_B10", "box_MultipleOR_190.Out", "box_Print_v2_198.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_143_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_143;
    l1 = self.box_OnceOnly_v3_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|941564564", "941564564", "UNI46_610_B10", "box_ProximityTrigger_v2_143.OnOccupied", "box_OnceOnly_v3_147.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ListReset_170_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_102();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1516606469", "1516606469", "UNI46_610_B10", "box_ListReset_170.Out", "box_OutputOrder_v2_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_69_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_71();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|568165832", "568165832", "UNI46_610_B10", "box_Compare_Integers_69.A_ge_B", "box_OutputOrder_v2_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_57_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_226();
    l0 = self.box_SoundModifier_v2_57;
    l1 = self.box_Delay_v5_226;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1525678501", "1525678501", "UNI46_610_B10", "box_SoundModifier_v2_57.Started", "box_Delay_v5_226.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_179_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Random_185();
    l0 = self.box_ProximityTrigger_v2_179;
    l1 = self.box_Random_185;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|871118992", "871118992", "UNI46_610_B10", "box_ProximityTrigger_v2_179.Enter", "box_Random_185.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_279_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_188();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1384245304", "1384245304", "UNI46_610_B10", "box_OutputOrder_v2_279.Out", "box_Simple_Node_188.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_279_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_277();
    l0 = self.box_Gate_v3_277;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1649098317", "1649098317", "UNI46_610_B10", "box_OutputOrder_v2_279.Out", "box_Gate_v3_277.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Random_185_Output_0()
    local l0, l1;
    l0 = self.box_Random_185;
    l1 = self.box_MultipleOR_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|419077350", "419077350", "UNI46_610_B10", "box_Random_185.Output", "box_MultipleOR_183.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_185_Output_1()
    local l0, l1;
    l0 = self.box_Random_185;
    l1 = self.box_MultipleOR_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1202728891", "1202728891", "UNI46_610_B10", "box_Random_185.Output", "box_MultipleOR_190.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_109_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_109_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_UNI46_610_B10_Array_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|500865717", "500865717", "UNI46_610_B10", "box_SetBoolean_v2_109.Out", "box_UNI46_610_B10_Array_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Delay_v5_227_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_225();
    l0 = self.box_Delay_v5_227;
    l1 = self.box_SoundModifier_v2_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1755446278", "1755446278", "UNI46_610_B10", "box_Delay_v5_227.TimeElapsed", "box_SoundModifier_v2_225.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_77_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_191();
    l0 = self.box_MultipleOR_77;
    l1 = self.box_DisplayCustomUIMsg_v5_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1639733759", "1639733759", "UNI46_610_B10", "box_MultipleOR_77.Out", "box_DisplayCustomUIMsg_v5_191.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_UNI46_610_Fire_Manager_60_Started()
    local params, l0, l1;
    params = self:OnEnter_box_UNI46_610_Fire_Manager_65();
    l0 = self.box_UNI46_610_Fire_Manager_60;
    l1 = self.box_UNI46_610_Fire_Manager_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1359201718", "1359201718", "UNI46_610_B10", "box_UNI46_610_Fire_Manager_60.Started", "box_UNI46_610_Fire_Manager_65.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_30();
    l0 = self.box_Gate_v3_32;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|112751987", "112751987", "UNI46_610_B10", "box_Gate_v3_32.Out", "box_Compare_Integers_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_189_Output_0()
    local l0, l1;
    l0 = self.box_Random_189;
    l1 = self.box_MultipleOR_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1878216769", "1878216769", "UNI46_610_B10", "box_Random_189.Output", "box_MultipleOR_183.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_189_Output_1()
    local l0, l1;
    l0 = self.box_Random_189;
    l1 = self.box_MultipleOR_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2132164841", "2132164841", "UNI46_610_B10", "box_Random_189.Output", "box_MultipleOR_190.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_192_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_193();
    l0 = self.box_EntityStatusListener_192;
    l1 = self.box_ProximityTrigger_v2_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|651929", "651929", "UNI46_610_B10", "box_EntityStatusListener_192.Loaded", "box_ProximityTrigger_v2_193.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_192_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_193();
    l0 = self.box_EntityStatusListener_192;
    l1 = self.box_ProximityTrigger_v2_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|810600271", "810600271", "UNI46_610_B10", "box_EntityStatusListener_192.Unloaded", "box_ProximityTrigger_v2_193.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_218();
    l0 = self.box_MultipleOR_1;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1833651438", "1833651438", "UNI46_610_B10", "box_MultipleOR_1.Out", "box_Print_v2_218.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_42_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_39();
    l0 = self.box_SpawnAI_42;
    l1 = self.box_MultipleAND_v2_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1084847409", "1084847409", "UNI46_610_B10", "box_SpawnAI_42.Spawned", "box_MultipleAND_v2_39.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_EntityStatusListener_195_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_196();
    l0 = self.box_EntityStatusListener_195;
    l1 = self.box_ProximityTrigger_v2_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|865603409", "865603409", "UNI46_610_B10", "box_EntityStatusListener_195.Loaded", "box_ProximityTrigger_v2_196.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_195_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_196();
    l0 = self.box_EntityStatusListener_195;
    l1 = self.box_ProximityTrigger_v2_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|486876464", "486876464", "UNI46_610_B10", "box_EntityStatusListener_195.Unloaded", "box_ProximityTrigger_v2_196.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@CreateFXFinale");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_155_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_228()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@DisableFireworks");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_228_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@DisableListeners");
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
                [0] = self.f_box_OutputOrder_v2_82_Out_0,
                [1] = self.f_box_OutputOrder_v2_82_Out_1,
                [2] = self.f_box_OutputOrder_v2_82_Out_2,
                [6] = self.f_box_OutputOrder_v2_82_Out_6,
                [7] = self.f_box_OutputOrder_v2_82_Out_7,
                [8] = self.f_box_OutputOrder_v2_82_Out_8,
                [9] = self.f_box_OutputOrder_v2_82_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@DisableVOListeners");
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
                [0] = self.f_box_OutputOrder_v2_152_Out_0,
                [1] = self.f_box_OutputOrder_v2_152_Out_1,
                [2] = self.f_box_OutputOrder_v2_152_Out_2,
                [3] = self.f_box_OutputOrder_v2_152_Out_3,
                [4] = self.f_box_OutputOrder_v2_152_Out_4,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@FirePillar1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_62_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@FirePillar2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_94_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@FirePillarFinale");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_96_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_213()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@GatePassed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_213_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@ModifiersOff");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_97_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@ModifiersOn");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_93_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@RemoveClientWarnings");
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
                [0] = self.f_box_OutputOrder_v2_87_Out_0,
            },
            count = 1,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@RemoveHostWarnings");
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
                [0] = self.f_box_OutputOrder_v2_86_Out_0,
            },
            count = 1,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@SetVehicles");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_92_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@SpawnATVs");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_24_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@SpawnMoose");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_64_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@SpawnTruck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_98_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@StartFinale");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_95_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@StartTracker");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_137_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@Startup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_81_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@StopFireworks");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
                [2] = self.f_box_OutputOrder_v2_50_Out_2,
                [3] = self.f_box_OutputOrder_v2_50_Out_3,
                [4] = self.f_box_OutputOrder_v2_50_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@voStart");
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
                [0] = self.f_box_OutputOrder_v2_151_Out_0,
                [1] = self.f_box_OutputOrder_v2_151_Out_1,
                [2] = self.f_box_OutputOrder_v2_151_Out_2,
                [3] = self.f_box_OutputOrder_v2_151_Out_3,
                [4] = self.f_box_OutputOrder_v2_151_Out_4,
                [5] = self.f_box_OutputOrder_v2_151_Out_5,
                [6] = self.f_box_OutputOrder_v2_151_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@WarnTrackClient");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_215_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_216()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@WarnTrackClient_off");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_216_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@WarnTrackHost");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_187_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|@WarnTrackHost_off");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_188_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_177()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104053859551834832",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|42050697");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_110_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_110_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bCoop,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|58961903");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_61_Added,
    });
    params = {
        -- Data,
        [0] = "2103597914182924262",
        -- Input,
        [2] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|66964431");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
                [2] = self.f_box_OutputOrder_v2_28_Out_2,
                [3] = self.f_box_OutputOrder_v2_28_Out_3,
                [4] = self.f_box_OutputOrder_v2_28_Out_4,
                [5] = self.f_box_OutputOrder_v2_28_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|87772559");
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
        [8] = "ATV Spawned",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|89936993");
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
        [8] = "All Moose Spawned",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_146()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#ED455357",
        -- id2,
        [3] = "2103938546581663311",
        -- nearZone,
        [4] = 40,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_130()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#ED455357",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103598000321345533",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_159()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "clutchnixon_precountdown",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_88()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_136()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#ED455357",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103938622800555613",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|180552359");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_219_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bCoop,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|186094330");
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
                [0] = self.f_box_OutputOrder_v2_169_Out_0,
                [1] = self.f_box_OutputOrder_v2_169_Out_1,
                [2] = self.f_box_OutputOrder_v2_169_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_48()
    local params;
    params = {
        -- Pawns,
        [0] = "2103597914185021418",
        -- SoundId,
        [1] = "159871221",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|207337899");
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
                [0] = self.f_box_OutputOrder_v2_102_Out_0,
                [1] = self.f_box_OutputOrder_v2_102_Out_1,
                [2] = self.f_box_OutputOrder_v2_102_Out_2,
                [3] = self.f_box_OutputOrder_v2_102_Out_3,
                [4] = self.f_box_OutputOrder_v2_102_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|244645209");
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
                [0] = self.f_box_OutputOrder_v2_72_Out_0,
                [1] = self.f_box_OutputOrder_v2_72_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_51()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_277()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|327077475");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_46_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 7,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|334833102");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_58_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 22,
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CORE_70()
    local params;
    params = {
        -- bTeleportPlayer,
        [0] = false,
        -- eMobileMarker_Vehicle_Client,
        [1] = "2103278030253219426",
        -- eMobileMarker_Vehicle_Host,
        [2] = "2103278019750682206",
        -- eTeleportPointClient,
        [3] = "2102781142670258106",
        -- eTeleportPointHost,
        [4] = "2102781131188350904",
        -- eTriggerAroundStartingVehicles,
        [5] = "2104811859898019442",
        -- eVehicleSpawnerClient,
        [6] = "2102737635599471898",
        -- eVehicleSpawnerHost,
        [7] = "2102737627020022947",
        -- fDelayBeforeStart,
        [8] = 0,
        -- fTimer,
        [9] = 16,
        -- iBonusTimeGates,
        [10] = 5,
        -- VehicleLockCountdown,
        [11] = false,
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
        [3] = "2103938534466416199",
        -- nearZone,
        [4] = 40,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_174()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_Player_Killed",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_79()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104438773289875075",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_278()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_278");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|434862071");
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

function export:OnEnter_box_Gate_v3_53()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_161()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104053811447362252",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_142()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#ED455357",
        -- id2,
        [3] = "2103938540653014603",
        -- nearZone,
        [4] = 40,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_31()
    local params;
    params = {
        -- Group,
        [0] = "2103568968399723319",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_196()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104054043774055134",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|489594500");
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
                [0] = self.f_box_OutputOrder_v2_182_Out_0,
                [1] = self.f_box_OutputOrder_v2_182_Out_1,
                [2] = self.f_box_OutputOrder_v2_182_Out_2,
                [3] = self.f_box_OutputOrder_v2_182_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|492135925");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_220_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bCoop,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|501491282");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_224_Added,
    });
    params = {
        -- Data,
        [0] = "2101716064739015709",
        -- Input,
        [2] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|507417841");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_162_Added,
    });
    params = {
        -- Data,
        [0] = "2102697676112944280",
        -- Input,
        [2] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_UNI46_610_Fire_Manager_65()
    local params;
    params = {
        -- Delay,
        [0] = 0.5,
        -- Fire Length,
        [1] = 15,
        -- Particle1,
        [2] = "2104438418017645915",
        -- Particle2,
        [3] = "2104438418013451602",
        -- Soundpoint1,
        [4] = "2104438418017645919",
        -- Soundpoint2,
        [5] = "2104438418015548758",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_22()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_AddToGroupFromList_v2_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroupFromList_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddToGroupFromList_v2_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|550674811");
    l0:SetConnections({
    });
    params = {
        -- Group,
        [0] = self.gp_fireworks,
        -- Pawns,
        [1] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|556574216");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_133_Added,
    });
    params = {
        -- Data,
        [0] = "2102697661957168278",
        -- Input,
        [2] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|557217914");
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
                [0] = self.f_box_OutputOrder_v2_184_Out_0,
                [1] = self.f_box_OutputOrder_v2_184_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|603322704");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
                [2] = self.f_box_OutputOrder_v2_6_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_191()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "UNI46_610_B10_TRACK",
            id = "730074",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = self.eClient,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|636438621");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "63189015728490648",
        -- missionLayerId,
        [1] = "81203414237972635",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|646866181");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
                [2] = self.f_box_OutputOrder_v2_7_Out_2,
                [3] = self.f_box_OutputOrder_v2_7_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|655195335");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_75()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#ED455357",
        -- id2,
        [3] = "2103872773234404685",
        -- nearZone,
        [4] = 80,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_56()
    local params;
    params = {
        -- Pawns,
        [0] = "2103597924840650740",
        -- SoundId,
        [1] = "525636272",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_76()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103941771231784661",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_80()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104438557448894010",
    };
    return params;
end;

function export:OnEnter_box_Random_197()
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

function export:OnEnter_box_SpawnAI_44()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101551000054681480",
    };
    return params;
end;

function export:OnEnter_box_UNI46_610_Fire_Manager_66()
    local params;
    params = {
        -- Delay,
        [0] = 1,
        -- Fire Length,
        [1] = 15,
        -- Particle1,
        [2] = "2104438418940392813",
        -- Particle2,
        [3] = "2104438418936198500",
        -- Soundpoint1,
        [4] = "2104438418942489969",
        -- Soundpoint2,
        [5] = "2104438418938295656",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_39()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|793554546");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_78()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104438773289875075",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_73()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|840807308");
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

function export:OnEnter_box_Gate_v3_181()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_90()
    local params;
    DrawTextToScreen("Comment: ATV", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: ATV");
    params = {
        -- EntitySpawner,
        [0] = "2102213662977569006",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|858173741");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|858605988");
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
        [8] = "Truck Failed to Spawn",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|871822334");
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
                [0] = self.f_box_OutputOrder_v2_156_Out_0,
                [1] = self.f_box_OutputOrder_v2_156_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|872711709");
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

function export:OnEnter_box_PlayDialog_v6_139()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2275944180",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|906382477");
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

function export:OnEnter_box_PlayDialog_v6_112()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1631701959",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|914080193");
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

function export:OnEnter_box_Compare_Integers_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|918157678");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_49_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 15,
    };
    return params;
end;

function export:OnEnter_box_Random_194()
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

function export:OnEnter_box_OutputOrder_v2_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|952285222");
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
                [0] = self.f_box_OutputOrder_v2_153_Out_0,
                [1] = self.f_box_OutputOrder_v2_153_Out_1,
                [2] = self.f_box_OutputOrder_v2_153_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|960344673");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_9_Out,
    });
    params = {
        -- Entity,
        [0] = self._sld_vehicle_box_GetPawnVehicleInfo_13,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|972692032");
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

function export:OnEnter_box_Compare_Integers_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|982724462");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_55_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 20,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|997369584");
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
                [0] = self.f_box_OutputOrder_v2_85_Out_0,
                [1] = self.f_box_OutputOrder_v2_85_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_67()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104438489360659849",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_168()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_OutOfTime",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_140()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1448427107",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_91()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102213680541217127",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1034425719");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2103597924834359276",
        -- Input,
        [2] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_113()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4229290180",
    };
    return params;
end;

function export:OnEnter_box_Random_131()
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

function export:OnEnter_box_PlayDialog_v6_101()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "872003769",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_178()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104053907975074518",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1110552085");
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
        [8] = "Host Off Track",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1121732966");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_12_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_12_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_12_Out,
    });
    params = {
        -- pawn,
        [0] = self.eHost,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1142502356");
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

function export:OnEnter_box_SpawnAI_43()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101550995298340702",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1167672533");
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
        [8] = "ATV Failed to Spawn",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1172119424");
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
                [0] = self.f_box_OutputOrder_v2_68_Out_0,
                [1] = self.f_box_OutputOrder_v2_68_Out_1,
                [2] = self.f_box_OutputOrder_v2_68_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1174287356");
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

function export:OnEnter_box_UNI46_610_Fire_Manager_47()
    local params;
    params = {
        -- Delay,
        [0] = 0,
        -- Fire Length,
        [1] = 15,
        -- Particle1,
        [2] = "2104438325774415142",
        -- Particle2,
        [3] = "2104438323582891293",
        -- Soundpoint1,
        [4] = "2104438325776512298",
        -- Soundpoint2,
        [5] = "2104438323582891297",
        -- Trigger,
        [6] = "2104438339223450926",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_275()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2102601287718764926",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1208357952");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_83_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_83_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bCoop,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_29()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_3()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_CreateUniqueGroup_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateUniqueGroup_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1308043489");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateUniqueGroup_108_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_89()
    local params;
    DrawTextToScreen("Comment: Truck", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: Truck");
    params = {
        -- EntitySpawner,
        [0] = "2102212627263393904",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_114()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#ED455357",
        -- id2,
        [3] = "2103938459828776507",
        -- nearZone,
        [4] = 50,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1363348347");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_103_Added,
    });
    params = {
        -- Data,
        [0] = "2103597914180827106",
        -- Input,
        [2] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1373781808");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_117_Added,
    });
    params = {
        -- Data,
        [0] = "2103597914180827108",
        -- Input,
        [2] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_276()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.eHost,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102601287718764926",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1431538164");
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

function export:OnEnter_box_AllowAutoDrive_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AllowAutoDrive_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1449394146");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_Outro_26()
    local params;
    params = {
        -- ClientTeleport,
        [0] = "2103598885353041435",
        -- HostTeleport,
        [1] = "2103598882618355225",
        -- Region,
        [2] = 2,
        -- SceneEntity,
        [3] = "2103567026141274328",
        -- SequenceFile,
        [4] = "sequences/zeta_main/uni46/uni46_610_cin_camera.seq",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1464908519");
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
                [0] = self.f_box_OutputOrder_v2_104_Out_0,
                [1] = self.f_box_OutputOrder_v2_104_Out_1,
                [2] = self.f_box_OutputOrder_v2_104_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    DrawTextToScreen("Comment: Start Moose Spawn", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OutputOrder_v2')-- Comment: Start Moose Spawn");
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1470601997");
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
                [0] = self.f_box_OutputOrder_v2_41_Out_0,
                [1] = self.f_box_OutputOrder_v2_41_Out_1,
                [2] = self.f_box_OutputOrder_v2_41_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UNI46_610_Fire_Manager_36()
    local params;
    params = {
        -- Delay,
        [0] = 0,
        -- Fire Length,
        [1] = 15,
        -- Particle1,
        [2] = "2104437967809443057",
        -- Particle2,
        [3] = "2104437970095338746",
        -- Soundpoint1,
        [4] = "2104437967809443061",
        -- Soundpoint2,
        [5] = "2104437970097435902",
        -- Trigger,
        [6] = "2104438066388169995",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_176()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104053859551834832",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1507779636");
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
        [8] = "Client Off Track",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_150()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "UNI46_610_B10_TRACK",
            id = "730074",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = self.eHost,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1537138181");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
                [2] = self.f_box_OutputOrder_v2_16_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1569983351");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_13_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_13_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_13_Out,
    });
    params = {
        -- pawn,
        [0] = self.eClient,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_27()
    local params;
    params = {
        -- Pawns,
        [0] = "2104366617648462720",
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

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1615317305");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
                [2] = self.f_box_OutputOrder_v2_11_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_193()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104053993230594778",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_163()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104053811447362252",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_135()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1166372148",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1676269749");
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
                [0] = self.f_box_OutputOrder_v2_145_Out_0,
                [1] = self.f_box_OutputOrder_v2_145_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_226()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_218()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1719943016");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Vehicle Assigned",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1738706747");
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
        [8] = "Truck Spawned",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_173()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_Vehicle_Destroyed",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1758566078");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_30_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_144()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#ED455357",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103938606302260825",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1765536652");
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

function export:OnEnter_box_PlayDialog_v6_141()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2201716135",
    };
    return params;
end;

function export:OnEnter_box_Random_111()
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

function export:OnEnter_box_PlayDialog_v6_118()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1726784886",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_324()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_324");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1791307461");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_324_Out,
    });
    params = {
        -- Entity,
        [0] = self._sld_vehicle_box_GetPawnVehicleInfo_12,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_105()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#ED455357",
        -- id2,
        [3] = "2102489883378466709",
        -- nearZone,
        [4] = 40,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1799087390");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2101716104142404639",
        -- Input,
        [2] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1807290702");
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
                [0] = self.f_box_OutputOrder_v2_37_Out_0,
                [1] = self.f_box_OutputOrder_v2_37_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_10()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.eClient,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102601287718764926",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1814232335");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_132_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_132_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.gp_fireworks,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_143()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#ED455357",
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103938632189505121",
    };
    return params;
end;

function export:OnEnter_box_ListReset_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReset_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1847994017");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListReset_170_Out,
    });
    params = {
        -- List,
        [0] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1858170472");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_69_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 28,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_57()
    local params;
    params = {
        -- Pawns,
        [0] = "2103597914185021418",
        -- SoundId,
        [1] = "525636272",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_179()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104053907975074518",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_115()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3156433621",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_279()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_279");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1922888949");
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

function export:OnEnter_box_Random_185()
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

function export:OnEnter_box_SetBoolean_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1952893322");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_109_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_227()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UNI46_610_Fire_Manager_60()
    local params;
    params = {
        -- Delay,
        [0] = 0,
        -- Fire Length,
        [1] = 15,
        -- Particle1,
        [2] = "2104438372371035456",
        -- Particle2,
        [3] = "2104438414490236233",
        -- Soundpoint1,
        [4] = "2104438372373132612",
        -- Soundpoint2,
        [5] = "2104438414490236237",
        -- Trigger,
        [6] = "2104438917666184158",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_32()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|1986739179");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2103597924838553584",
        -- Input,
        [2] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_Random_189()
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

function export:OnEnter_box_SoundModifier_v2_225()
    local params;
    params = {
        -- Pawns,
        [0] = "2103597924840650740",
        -- SoundId,
        [1] = "159871221",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_192()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104053993230594778",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_42()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101551032910761993",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_157()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2107585044");
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
        [8] = "FAKE",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_195()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104054043774055134",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10|2143136274");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2103597924836456430",
        -- Input,
        [2] = self.lFireworks,
    };
    return params;
end;

function export:OnExit_box_Brick_GateRaces_CORE_70_Disabled()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_70;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
    self.FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_GateRaces_CORE_70_Fail()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_70;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
    self.FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_GateRaces_CORE_70_Finished()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_70;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
    self.FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_GateRaces_CORE_70_GatePassed()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_70;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
    self.FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_GateRaces_CORE_70_Started()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_70;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
    self.FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eVehicle_Client = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_12_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_12 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_12_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_12 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_12 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CreateUniqueGroup_108_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    self.gp_fireworks = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_4_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_4;
    self.eHost = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_4_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_4;
    self.eHost = l0:GetDataOutValue(0);
    self.eClient = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPawnVehicleInfo_13_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_13 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_13_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_13 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_13 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetEntity_v2_324_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eVehicle_Host = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_109_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bCoop = l0:GetDataOutValue(0);
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
