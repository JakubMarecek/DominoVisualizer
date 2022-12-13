LUACWZ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni46/uni46_310/uni46_310_b10.domino
-- User graph: UNI46_310_B10_Graph
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Outro.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/JoinInProgresModifier.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_310/UNI46_310_B10.UNI46_310_B10_Fireworks.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3475996310.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3370233176.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2452891458.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1543979071.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4252090758.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1824337172.bnk]], "CSoundResource");
        cboxRes:LoadResource([[768826185.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1657379041.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2696896564.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_310/UNI46_310_B10.UNI46_310_B10_Graph.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "ClearLists",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "Cleared",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "EntityProximity",
                type = "entity",
            },
            [1] = {
                name = "EntityProximityMiss",
                type = "entity",
            },
            [2] = {
                name = "FX",
                type = "entity",
            },
            [3] = {
                name = "FX_Off",
                type = "entity",
            },
            [4] = {
                name = "Marker",
                type = "entity",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/Coop/JoinInProgresModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "LockSession",
            },
            [1] = {
                name = "UnlockSession",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnLockSession",
                delayed = false,
            },
            [1] = {
                name = "OnUnlockSession",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_310/UNI46_310_B10.UNI46_310_B10_Fireworks.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Disable",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI46_310_B10_Graph";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph";
    self.LocalPlayer = nil;
    self.Players = nil;
    self.iGatePassed = 0;
    self.box_Brick_GateRaces_CreateLists_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|18638237");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_27 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|46877697");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|64546730");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|81433315");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CORE_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CORE.debug.lua");
    l0 = self.box_Brick_GateRaces_CORE_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CORE_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|104877822");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_Brick_GateRaces_CORE_17_Disabled,
        -- Fail,
        [1] = self.f_box_Brick_GateRaces_CORE_17_Fail,
        -- Finished,
        [2] = self.f_box_Brick_GateRaces_CORE_17_Finished,
        -- GatePassed,
        [3] = self.f_box_Brick_GateRaces_CORE_17_GatePassed,
        -- Started,
        [4] = self.f_box_Brick_GateRaces_CORE_17_Started,
    });
    self.box_EntityStatusListener_130 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|106084674");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_130_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_130_Unloaded,
    });
    self.box_PlayDialog_v6_116 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|110760362");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_117 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|112023367");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_117_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_117_Unloaded,
    });
    self.box_PlayDialog_v6_120 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|195687238");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_127 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|198744533");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_87 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|223240981");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_87_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_87_Unloaded,
    });
    self.box_Brick_GateRaces_Dialogs_90 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|305396026");
    l0:SetConnections({
    });
    self.box_UNI46_310_B10_Fireworks_32 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_310/UNI46_310_B10.UNI46_310_B10_Fireworks.debug.lua");
    l0 = self.box_UNI46_310_B10_Fireworks_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_310_B10_Fireworks_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|315120907");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|383105338");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_42 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|397310624");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|476954171");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_126 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|491778683");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_16 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|522858014");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_22 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|535007377");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_22_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_22_Reloaded,
    });
    self.box_MessageListener_v3_110 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|540676532");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_110_Received,
    });
    self.box_MultipleOR_108 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|584358154");
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
    self.box_Brick_GateRaces_CreateLists_28 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|605240128");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_29 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|635856526");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_107 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|688727675");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_107_Received,
    });
    self.box_PlayDialog_v6_98 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|692570763");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_Dialogs_92 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|736578647");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_Dialogs_124 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|736994635");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_Dialogs_38 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|750008299");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_41 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|786035998");
    l0:SetConnections({
    });
    self.box_Delay_v5_81 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|786861634");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_81_TimeElapsed,
    });
    self.box_Random_99 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|803001208");
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
                [0] = self.f_box_Random_99_Output_0,
                [1] = self.f_box_Random_99_Output_1,
                [2] = self.f_box_Random_99_Output_2,
            },
            count = 3,
        },
    });
    self.box_UNI46_310_B10_Fireworks_31 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_310/UNI46_310_B10.UNI46_310_B10_Fireworks.debug.lua");
    l0 = self.box_UNI46_310_B10_Fireworks_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_310_B10_Fireworks_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|812723382");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|853140850");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_104 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|870875580");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_101 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|905671473");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_33 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|918735165");
    l0:SetConnections({
    });
    self.box_Delay_v5_62 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|925012033");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_62_TimeElapsed,
    });
    self.box_Brick_GateRaces_CreateLists_30 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|930161931");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_131 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|938367051");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_131_Enter,
    });
    self.box_MultipleOR_96 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|948806736");
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
    self.box_ProximityTrigger_v2_24 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1063699594");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_24_Enter,
    });
    self.box_Brick_GateRaces_Dialogs_122 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1113202689");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1127649785");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_40 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1167670439");
    l0:SetConnections({
    });
    self.box_JoinInProgressModifier_34 = cbox:CreateBox("Domino/System/Coop/JoinInProgresModifier.lua");
    l0 = self.box_JoinInProgressModifier_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_JoinInProgressModifier_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1176914365");
    l0:SetConnections({
        -- OnLockSession,
        [0] = self.f_box_JoinInProgressModifier_34_OnLockSession,
    });
    self.box_Random_105 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1193799049");
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
                [0] = self.f_box_Random_105_Output_0,
                [1] = self.f_box_Random_105_Output_1,
                [2] = self.f_box_Random_105_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1197310987");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_Brick_GateRaces_CreateLists_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1339595587");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_97 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1359001331");
    l0:SetConnections({
    });
    self.box_MultipleOR_128 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1371888881");
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
    self.box_Brick_GateRaces_CreateLists_19 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1439554309");
    l0:SetConnections({
    });
    self.box_Delay_v5_61 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1441721188");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_61_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_61_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_112 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1471083354");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_112_Enter,
    });
    self.box_ProximityTrigger_v2_47 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1480739125");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_47_Enter,
    });
    self.box_Brick_GateRaces_CreateLists_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1482654550");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_114 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1534453150");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_114_Enter,
    });
    self.box_EntityStatusListener_86 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1539401220");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_86_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_86_Unloaded,
    });
    self.box_Delay_v5_77 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1546727270");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_77_TimeElapsed,
    });
    self.box_Brick_GateRaces_CreateLists_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1572782486");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_119 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1616736591");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_119_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_119_Unloaded,
    });
    self.box_PlayDialog_v6_113 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1700998618");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_115 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1701788916");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_115_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_115_Unloaded,
    });
    self.box_Brick_GateRaces_Outro_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Outro.debug.lua");
    l0 = self.box_Brick_GateRaces_Outro_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Outro_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1718229183");
    l0:SetConnections({
        -- CustomScript,
        [0] = self.f_box_Brick_GateRaces_Outro_7_CustomScript,
        -- Finished,
        [1] = self.f_box_Brick_GateRaces_Outro_7_Finished,
        -- Started,
        [2] = self.f_box_Brick_GateRaces_Outro_7_Started,
    });
    self.box_MessageListener_v3_106 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1728538099");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_106_Received,
    });
    self.box_EntityStatusListener_88 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1746331049");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_88_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_88_Unloaded,
    });
    self.box_ProximityTrigger_v2_46 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1801680353");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_46_Enter,
    });
    self.box_Random_111 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1803109470");
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
    self.box_RemoveEntity_v2_135 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1832095911");
    l0:SetConnections({
    });
    self.box_Delay_v5_82 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1836121418");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_82_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_121 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1844382787");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_121_Enter,
    });
    self.box_PlayDialog_v6_123 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1870648108");
    l0:SetConnections({
    });
    self.box_Random_132 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|2001166262");
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
                [0] = self.f_box_Random_132_Output_0,
                [1] = self.f_box_Random_132_Output_1,
            },
            count = 2,
        },
    });
    self.box_Brick_GateRaces_CreateLists_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|2146139769");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1493163691", "1493163691", "UNI46_310_B10_Graph", "In", "box_ActivityAcknowledgeGate_22.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_20();
    l0 = self.box_Brick_GateRaces_CreateLists_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1705346021", "1705346021", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_20.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_8();
    l0 = self.box_Brick_GateRaces_CreateLists_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|693348818", "693348818", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_8.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_12();
    l0 = self.box_Brick_GateRaces_CreateLists_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|267911179", "267911179", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_12.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_28();
    l0 = self.box_Brick_GateRaces_CreateLists_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1055806080", "1055806080", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_28.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_4();
    l0 = self.box_Brick_GateRaces_CreateLists_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1236155014", "1236155014", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_4.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_11();
    l0 = self.box_Brick_GateRaces_CreateLists_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|301863175", "301863175", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_11.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_14();
    l0 = self.box_Brick_GateRaces_CreateLists_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1292664790", "1292664790", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_14.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_1();
    l0 = self.box_Brick_GateRaces_CreateLists_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|740007392", "740007392", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_1.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_27();
    l0 = self.box_Brick_GateRaces_CreateLists_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1646439838", "1646439838", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_27.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_33();
    l0 = self.box_Brick_GateRaces_CreateLists_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1168825632", "1168825632", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_33.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_3();
    l0 = self.box_Brick_GateRaces_CreateLists_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1620983602", "1620983602", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_3.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_16();
    l0 = self.box_Brick_GateRaces_CreateLists_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|614219841", "614219841", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_16.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_10();
    l0 = self.box_Brick_GateRaces_CreateLists_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|719693696", "719693696", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_10.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_19();
    l0 = self.box_Brick_GateRaces_CreateLists_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|935447720", "935447720", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_19.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_9();
    l0 = self.box_Brick_GateRaces_CreateLists_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1797267637", "1797267637", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_9.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_30();
    l0 = self.box_Brick_GateRaces_CreateLists_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|48003454", "48003454", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_30.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_29();
    l0 = self.box_Brick_GateRaces_CreateLists_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1359578184", "1359578184", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_29.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_40();
    l0 = self.box_Brick_GateRaces_CreateLists_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1959251268", "1959251268", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_40.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_41();
    l0 = self.box_Brick_GateRaces_CreateLists_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1526081478", "1526081478", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_41.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_42();
    l0 = self.box_Brick_GateRaces_CreateLists_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1078897935", "1078897935", "UNI46_310_B10_Graph", "box_OutputOrder_v2_6.Out", "box_Brick_GateRaces_CreateLists_42.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_64_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_60();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|897725904", "897725904", "UNI46_310_B10_Graph", "box_OutputOrder_v2_64.Out", "box_ParticleSystem_v3_60.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_64_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_59();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|75830740", "75830740", "UNI46_310_B10_Graph", "box_OutputOrder_v2_64.Out", "box_ParticleSystem_v3_59.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_CORE_17_Disabled()
    self:OnExit_box_Brick_GateRaces_CORE_17_Disabled();
end;

function export:f_box_Brick_GateRaces_CORE_17_Fail()
    local params, l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_17_Fail();
    params = self:OnEnter_box_ActivityRetry_23();
    l0 = self.box_Brick_GateRaces_CORE_17;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1036468072", "1036468072", "UNI46_310_B10_Graph", "box_Brick_GateRaces_CORE_17.Fail", "box_ActivityRetry_23.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_CORE_17_Finished()
    local params, l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_17_Finished();
    params = self:OnEnter_box_Brick_GateRaces_Outro_7();
    l0 = self.box_Brick_GateRaces_CORE_17;
    l1 = self.box_Brick_GateRaces_Outro_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|15881536", "15881536", "UNI46_310_B10_Graph", "box_Brick_GateRaces_CORE_17.Finished", "box_Brick_GateRaces_Outro_7.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_Brick_GateRaces_CORE_17_GatePassed()
    local params, l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_17_GatePassed();
    params = self:OnEnter_box_OutputOrder_v2_102();
    l0 = self.box_Brick_GateRaces_CORE_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|709282853", "709282853", "UNI46_310_B10_Graph", "box_Brick_GateRaces_CORE_17.GatePassed", "box_OutputOrder_v2_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_CORE_17_Started()
    local params, l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_17_Started();
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_Brick_GateRaces_CORE_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1423561889", "1423561889", "UNI46_310_B10_Graph", "box_Brick_GateRaces_CORE_17.Started", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_130_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_131();
    l0 = self.box_EntityStatusListener_130;
    l1 = self.box_ProximityTrigger_v2_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|853272711", "853272711", "UNI46_310_B10_Graph", "box_EntityStatusListener_130.Loaded", "box_ProximityTrigger_v2_131.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_130_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_131();
    l0 = self.box_EntityStatusListener_130;
    l1 = self.box_ProximityTrigger_v2_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1590213492", "1590213492", "UNI46_310_B10_Graph", "box_EntityStatusListener_130.Unloaded", "box_ProximityTrigger_v2_131.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_117_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_112();
    l0 = self.box_EntityStatusListener_117;
    l1 = self.box_ProximityTrigger_v2_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1231972596", "1231972596", "UNI46_310_B10_Graph", "box_EntityStatusListener_117.Loaded", "box_ProximityTrigger_v2_112.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_117_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_112();
    l0 = self.box_EntityStatusListener_117;
    l1 = self.box_ProximityTrigger_v2_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|135973736", "135973736", "UNI46_310_B10_Graph", "box_EntityStatusListener_117.Unloaded", "box_ProximityTrigger_v2_112.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_87_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_46();
    l0 = self.box_EntityStatusListener_87;
    l1 = self.box_ProximityTrigger_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1939153089", "1939153089", "UNI46_310_B10_Graph", "box_EntityStatusListener_87.Loaded", "box_ProximityTrigger_v2_46.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_87_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_46();
    l0 = self.box_EntityStatusListener_87;
    l1 = self.box_ProximityTrigger_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1497744666", "1497744666", "UNI46_310_B10_Graph", "box_EntityStatusListener_87.Unloaded", "box_ProximityTrigger_v2_46.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_88();
    l0 = self.box_EntityStatusListener_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|895157885", "895157885", "UNI46_310_B10_Graph", "box_OutputOrder_v2_56.Out", "box_EntityStatusListener_88.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_57();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|518043107", "518043107", "UNI46_310_B10_Graph", "box_OutputOrder_v2_56.Out", "box_ParticleSystem_v3_57.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_58();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1946534175", "1946534175", "UNI46_310_B10_Graph", "box_OutputOrder_v2_56.Out", "box_ParticleSystem_v3_58.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_95();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|845739042", "845739042", "UNI46_310_B10_Graph", "box_OutputOrder_v2_56.Out", "box_ParticleSystem_v3_95.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_94();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1009671066", "1009671066", "UNI46_310_B10_Graph", "box_OutputOrder_v2_56.Out", "box_ParticleSystem_v3_94.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_61();
    l0 = self.box_Delay_v5_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1995498254", "1995498254", "UNI46_310_B10_Graph", "box_OutputOrder_v2_56.Out", "box_Delay_v5_61.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_56_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_62();
    l0 = self.box_Delay_v5_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|744784850", "744784850", "UNI46_310_B10_Graph", "box_OutputOrder_v2_56.Out", "box_Delay_v5_62.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_56_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_81();
    l0 = self.box_Delay_v5_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1147523977", "1147523977", "UNI46_310_B10_Graph", "box_OutputOrder_v2_56.Out", "box_Delay_v5_81.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_56_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_82();
    l0 = self.box_Delay_v5_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|636907838", "636907838", "UNI46_310_B10_Graph", "box_OutputOrder_v2_56.Out", "box_Delay_v5_82.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_56_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_77();
    l0 = self.box_Delay_v5_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|283132790", "283132790", "UNI46_310_B10_Graph", "box_OutputOrder_v2_56.Out", "box_Delay_v5_77.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_66();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|12221231", "12221231", "UNI46_310_B10_Graph", "box_OutputOrder_v2_65.Out", "box_ParticleSystem_v3_66.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_68();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|2073923636", "2073923636", "UNI46_310_B10_Graph", "box_OutputOrder_v2_65.Out", "box_ParticleSystem_v3_68.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_22_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_22;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|616915934", "616915934", "UNI46_310_B10_Graph", "box_ActivityAcknowledgeGate_22.Acknowledged", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_22_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_22;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1495907769", "1495907769", "UNI46_310_B10_Graph", "box_ActivityAcknowledgeGate_22.Reloaded", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MessageListener_v3_110_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_110;
    l1 = self.box_Brick_GateRaces_Dialogs_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1788306737", "1788306737", "UNI46_310_B10_Graph", "box_MessageListener_v3_110.Received", "box_Brick_GateRaces_Dialogs_90.OutOfTime", l0:GetLuaBox(), l1:GetLuaBox());
    -- OutOfTime
    l1:Exec(3, {
    });
end;

function export:f_box_MultipleOR_108_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_111();
    l0 = self.box_MultipleOR_108;
    l1 = self.box_Random_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|416168751", "416168751", "UNI46_310_B10_Graph", "box_MultipleOR_108.Out", "box_Random_111.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_109_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|149118534", "149118534", "UNI46_310_B10_Graph", "box_Compare_Integers_109.A_eq_B", "box_MultipleOR_96.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_73_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_74();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|393739033", "393739033", "UNI46_310_B10_Graph", "box_OutputOrder_v2_73.Out", "box_ParticleSystem_v3_74.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_73_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_76();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|383259832", "383259832", "UNI46_310_B10_Graph", "box_OutputOrder_v2_73.Out", "box_ParticleSystem_v3_76.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_125_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_106();
    l0 = self.box_MessageListener_v3_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1320186621", "1320186621", "UNI46_310_B10_Graph", "box_OutputOrder_v2_125.Out", "box_MessageListener_v3_106.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_125_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_107();
    l0 = self.box_MessageListener_v3_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1538057151", "1538057151", "UNI46_310_B10_Graph", "box_OutputOrder_v2_125.Out", "box_MessageListener_v3_107.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_125_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_110();
    l0 = self.box_MessageListener_v3_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1097796428", "1097796428", "UNI46_310_B10_Graph", "box_OutputOrder_v2_125.Out", "box_MessageListener_v3_110.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MessageListener_v3_107_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_107;
    l1 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1191204923", "1191204923", "UNI46_310_B10_Graph", "box_MessageListener_v3_107.Received", "box_MultipleOR_128.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_81_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_84();
    l0 = self.box_Delay_v5_81;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|242112690", "242112690", "UNI46_310_B10_Graph", "box_Delay_v5_81.TimeElapsed", "box_OutputOrder_v2_84.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_64();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1213434031", "1213434031", "UNI46_310_B10_Graph", "box_OutputOrder_v2_83.Out", "box_OutputOrder_v2_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_71();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1093448662", "1093448662", "UNI46_310_B10_Graph", "box_OutputOrder_v2_83.Out", "box_OutputOrder_v2_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_99_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_104();
    l0 = self.box_Random_99;
    l1 = self.box_PlayDialog_v6_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1016065139", "1016065139", "UNI46_310_B10_Graph", "box_Random_99.Output", "box_PlayDialog_v6_104.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_99_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_101();
    l0 = self.box_Random_99;
    l1 = self.box_PlayDialog_v6_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1308810748", "1308810748", "UNI46_310_B10_Graph", "box_Random_99.Output", "box_PlayDialog_v6_101.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_99_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_97();
    l0 = self.box_Random_99;
    l1 = self.box_PlayDialog_v6_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|2065324923", "2065324923", "UNI46_310_B10_Graph", "box_Random_99.Output", "box_PlayDialog_v6_97.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_63_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_60();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1614731314", "1614731314", "UNI46_310_B10_Graph", "box_OutputOrder_v2_63.Out", "box_ParticleSystem_v3_60.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_59();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1289093", "1289093", "UNI46_310_B10_Graph", "box_OutputOrder_v2_63.Out", "box_ParticleSystem_v3_59.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_74();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1939923808", "1939923808", "UNI46_310_B10_Graph", "box_OutputOrder_v2_75.Out", "box_ParticleSystem_v3_74.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_76();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|564269043", "564269043", "UNI46_310_B10_Graph", "box_OutputOrder_v2_75.Out", "box_ParticleSystem_v3_76.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_129();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|2069797164", "2069797164", "UNI46_310_B10_Graph", "box_OutputOrder_v2_5.Out", "box_IsEntityLoaded_v3_129.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_134();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|288664470", "288664470", "UNI46_310_B10_Graph", "box_OutputOrder_v2_5.Out", "box_IsEntityLoaded_v3_134.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_UNI46_310_B10_Fireworks_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|236310266", "236310266", "UNI46_310_B10_Graph", "box_OutputOrder_v2_5.Out", "box_UNI46_310_B10_Fireworks_31.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_5_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_39();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1594338379", "1594338379", "UNI46_310_B10_Graph", "box_OutputOrder_v2_5.Out", "box_MissionBlockLayer_39.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|346442712", "346442712", "UNI46_310_B10_Graph", "box_OutputOrder_v2_21.Out", "box_OutputOrder_v2_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_103();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1067838448", "1067838448", "UNI46_310_B10_Graph", "box_OutputOrder_v2_21.Out", "box_OutputOrder_v2_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_125();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|256928291", "256928291", "UNI46_310_B10_Graph", "box_OutputOrder_v2_21.Out", "box_OutputOrder_v2_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_70();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1866428817", "1866428817", "UNI46_310_B10_Graph", "box_OutputOrder_v2_71.Out", "box_ParticleSystem_v3_70.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_72();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1558785884", "1558785884", "UNI46_310_B10_Graph", "box_OutputOrder_v2_71.Out", "box_ParticleSystem_v3_72.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_100_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_99();
    l0 = self.box_Random_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1804012909", "1804012909", "UNI46_310_B10_Graph", "box_Compare_Integers_100.A_eq_B", "box_Random_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_62_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_83();
    l0 = self.box_Delay_v5_62;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1017082092", "1017082092", "UNI46_310_B10_Graph", "box_Delay_v5_62.TimeElapsed", "box_OutputOrder_v2_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_131_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Random_132();
    l0 = self.box_ProximityTrigger_v2_131;
    l1 = self.box_Random_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1390673572", "1390673572", "UNI46_310_B10_Graph", "box_ProximityTrigger_v2_131.Enter", "box_Random_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_96_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_105();
    l0 = self.box_MultipleOR_96;
    l1 = self.box_Random_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|458208826", "458208826", "UNI46_310_B10_Graph", "box_MultipleOR_96.Out", "box_Random_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_70();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1229836710", "1229836710", "UNI46_310_B10_Graph", "box_OutputOrder_v2_69.Out", "box_ParticleSystem_v3_70.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_72();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|946160617", "946160617", "UNI46_310_B10_Graph", "box_OutputOrder_v2_69.Out", "box_ParticleSystem_v3_72.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_134_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_127();
    l0 = self.box_RemoveEntity_v2_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|980384246", "980384246", "UNI46_310_B10_Graph", "box_IsEntityLoaded_v3_134.True", "box_RemoveEntity_v2_127.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_24_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = self.box_ProximityTrigger_v2_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|524943884", "524943884", "UNI46_310_B10_Graph", "box_ProximityTrigger_v2_24.Enter", "box_OutputOrder_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_118_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1975829066", "1975829066", "UNI46_310_B10_Graph", "box_Compare_Integers_118.A_eq_B", "box_MultipleOR_96.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_JoinInProgressModifier_34_OnLockSession()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_JoinInProgressModifier_34;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|597948389", "597948389", "UNI46_310_B10_Graph", "box_JoinInProgressModifier_34.OnLockSession", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_105_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_116();
    l0 = self.box_Random_105;
    l1 = self.box_PlayDialog_v6_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|2108691698", "2108691698", "UNI46_310_B10_Graph", "box_Random_105.Output", "box_PlayDialog_v6_116.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_105_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_120();
    l0 = self.box_Random_105;
    l1 = self.box_PlayDialog_v6_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|942515576", "942515576", "UNI46_310_B10_Graph", "box_Random_105.Output", "box_PlayDialog_v6_120.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_105_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_98();
    l0 = self.box_Random_105;
    l1 = self.box_PlayDialog_v6_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|2036219776", "2036219776", "UNI46_310_B10_Graph", "box_Random_105.Output", "box_PlayDialog_v6_98.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_15_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_15;
    l1 = self.box_JoinInProgressModifier_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|489444576", "489444576", "UNI46_310_B10_Graph", "box_MultipleOR_15.Out", "box_JoinInProgressModifier_34.LockSession", l0:GetLuaBox(), l1:GetLuaBox());
    -- LockSession
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_85_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1731595867", "1731595867", "UNI46_310_B10_Graph", "box_OutputOrder_v2_85.Out", "box_OutputOrder_v2_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_85_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_UNI46_310_B10_Fireworks_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1355509478", "1355509478", "UNI46_310_B10_Graph", "box_OutputOrder_v2_85.Out", "box_UNI46_310_B10_Fireworks_32.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_87();
    l0 = self.box_EntityStatusListener_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1914571107", "1914571107", "UNI46_310_B10_Graph", "box_OutputOrder_v2_50.Out", "box_EntityStatusListener_87.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_54();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|87860575", "87860575", "UNI46_310_B10_Graph", "box_OutputOrder_v2_50.Out", "box_ParticleSystem_v3_54.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_55();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|668377366", "668377366", "UNI46_310_B10_Graph", "box_OutputOrder_v2_50.Out", "box_ParticleSystem_v3_55.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_48();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|920136", "920136", "UNI46_310_B10_Graph", "box_OutputOrder_v2_50.Out", "box_ParticleSystem_v3_48.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_49();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|434089926", "434089926", "UNI46_310_B10_Graph", "box_OutputOrder_v2_50.Out", "box_ParticleSystem_v3_49.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_89();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|672897029", "672897029", "UNI46_310_B10_Graph", "box_OutputOrder_v2_50.Out", "box_ParticleSystem_v3_89.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_93();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|148267137", "148267137", "UNI46_310_B10_Graph", "box_OutputOrder_v2_50.Out", "box_ParticleSystem_v3_93.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_128_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_128;
    l1 = self.box_Brick_GateRaces_Dialogs_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|2000721703", "2000721703", "UNI46_310_B10_Graph", "box_MultipleOR_128.Out", "box_Brick_GateRaces_Dialogs_38.Crash", l0:GetLuaBox(), l1:GetLuaBox());
    -- Crash
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_103_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_115();
    l0 = self.box_EntityStatusListener_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|26643668", "26643668", "UNI46_310_B10_Graph", "box_OutputOrder_v2_103.Out", "box_EntityStatusListener_115.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_103_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_117();
    l0 = self.box_EntityStatusListener_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|162548186", "162548186", "UNI46_310_B10_Graph", "box_OutputOrder_v2_103.Out", "box_EntityStatusListener_117.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_103_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_119();
    l0 = self.box_EntityStatusListener_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|192301726", "192301726", "UNI46_310_B10_Graph", "box_OutputOrder_v2_103.Out", "box_EntityStatusListener_119.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_103_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_130();
    l0 = self.box_EntityStatusListener_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|351946743", "351946743", "UNI46_310_B10_Graph", "box_OutputOrder_v2_103.Out", "box_EntityStatusListener_130.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_61_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = self.box_Delay_v5_61;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|2028820645", "2028820645", "UNI46_310_B10_Graph", "box_Delay_v5_61.Started", "box_OutputOrder_v2_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_61_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_67();
    l0 = self.box_Delay_v5_61;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|102690044", "102690044", "UNI46_310_B10_Graph", "box_Delay_v5_61.TimeElapsed", "box_OutputOrder_v2_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_112_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_112;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1768583696", "1768583696", "UNI46_310_B10_Graph", "box_ProximityTrigger_v2_112.Enter", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_47_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_ProximityTrigger_v2_47;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|2084421198", "2084421198", "UNI46_310_B10_Graph", "box_ProximityTrigger_v2_47.Enter", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_37_OnSetAsIndestructible()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_43();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|773255598", "773255598", "UNI46_310_B10_Graph", "box_VehicleModifier_v2_37.OnSetAsIndestructible", "box_VehicleModifier_v2_43.SetAsIndestructable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsIndestructable
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_114_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_114;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|752991559", "752991559", "UNI46_310_B10_Graph", "box_ProximityTrigger_v2_114.Enter", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_86_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_24();
    l0 = self.box_EntityStatusListener_86;
    l1 = self.box_ProximityTrigger_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1725347458", "1725347458", "UNI46_310_B10_Graph", "box_EntityStatusListener_86.Loaded", "box_ProximityTrigger_v2_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_86_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_24();
    l0 = self.box_EntityStatusListener_86;
    l1 = self.box_ProximityTrigger_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|5821002", "5821002", "UNI46_310_B10_Graph", "box_EntityStatusListener_86.Unloaded", "box_ProximityTrigger_v2_24.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_77_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_73();
    l0 = self.box_Delay_v5_77;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|245101394", "245101394", "UNI46_310_B10_Graph", "box_Delay_v5_77.TimeElapsed", "box_OutputOrder_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_18_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CORE_17();
    l0 = self.box_Brick_GateRaces_CORE_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1986117010", "1986117010", "UNI46_310_B10_Graph", "box_Simple_Node_18.Out", "box_Brick_GateRaces_CORE_17.Start_Vehicle", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_Vehicle
    l0:Exec(2, params);
end;

function export:f_box_EntityStatusListener_119_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_121();
    l0 = self.box_EntityStatusListener_119;
    l1 = self.box_ProximityTrigger_v2_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|573168046", "573168046", "UNI46_310_B10_Graph", "box_EntityStatusListener_119.Loaded", "box_ProximityTrigger_v2_121.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_119_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_121();
    l0 = self.box_EntityStatusListener_119;
    l1 = self.box_ProximityTrigger_v2_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|257010436", "257010436", "UNI46_310_B10_Graph", "box_EntityStatusListener_119.Unloaded", "box_ProximityTrigger_v2_121.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_115_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_114();
    l0 = self.box_EntityStatusListener_115;
    l1 = self.box_ProximityTrigger_v2_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1347757953", "1347757953", "UNI46_310_B10_Graph", "box_EntityStatusListener_115.Loaded", "box_ProximityTrigger_v2_114.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_115_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_114();
    l0 = self.box_EntityStatusListener_115;
    l1 = self.box_ProximityTrigger_v2_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|794325812", "794325812", "UNI46_310_B10_Graph", "box_EntityStatusListener_115.Unloaded", "box_ProximityTrigger_v2_114.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Brick_GateRaces_Outro_7_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_Brick_GateRaces_Outro_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|745755256", "745755256", "UNI46_310_B10_Graph", "box_Brick_GateRaces_Outro_7.CustomScript", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_Outro_7_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_2();
    l0 = self.box_Brick_GateRaces_Outro_7;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1247486151", "1247486151", "UNI46_310_B10_Graph", "box_Brick_GateRaces_Outro_7.Finished", "box_ActivityEnd_2.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_Outro_7_Started()
    local l0, l1;
    l0 = self.box_Brick_GateRaces_Outro_7;
    l1 = self.box_Brick_GateRaces_Dialogs_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1043532295", "1043532295", "UNI46_310_B10_Graph", "box_Brick_GateRaces_Outro_7.Started", "box_Brick_GateRaces_Dialogs_124.Success", l0:GetLuaBox(), l1:GetLuaBox());
    -- Success
    l1:Exec(4, {
    });
end;

function export:f_box_MessageListener_v3_106_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_106;
    l1 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1453687982", "1453687982", "UNI46_310_B10_Graph", "box_MessageListener_v3_106.Received", "box_MultipleOR_128.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_37();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|2829214", "2829214", "UNI46_310_B10_Graph", "box_OutputOrder_v2_35.Out", "box_VehicleModifier_v2_37.SetAsIndestructable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsIndestructable
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_86();
    l0 = self.box_EntityStatusListener_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|2008598977", "2008598977", "UNI46_310_B10_Graph", "box_OutputOrder_v2_35.Out", "box_EntityStatusListener_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_35_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_87();
    l0 = self.box_EntityStatusListener_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|88934714", "88934714", "UNI46_310_B10_Graph", "box_OutputOrder_v2_35.Out", "box_EntityStatusListener_87.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_35_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_88();
    l0 = self.box_EntityStatusListener_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|531598594", "531598594", "UNI46_310_B10_Graph", "box_OutputOrder_v2_35.Out", "box_EntityStatusListener_88.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_88_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_47();
    l0 = self.box_EntityStatusListener_88;
    l1 = self.box_ProximityTrigger_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1386495691", "1386495691", "UNI46_310_B10_Graph", "box_EntityStatusListener_88.Loaded", "box_ProximityTrigger_v2_47.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_88_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_47();
    l0 = self.box_EntityStatusListener_88;
    l1 = self.box_ProximityTrigger_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1882118490", "1882118490", "UNI46_310_B10_Graph", "box_EntityStatusListener_88.Unloaded", "box_ProximityTrigger_v2_47.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_46_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_ProximityTrigger_v2_46;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|433042571", "433042571", "UNI46_310_B10_Graph", "box_ProximityTrigger_v2_46.Enter", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_111_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_123();
    l0 = self.box_Random_111;
    l1 = self.box_PlayDialog_v6_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1299732646", "1299732646", "UNI46_310_B10_Graph", "box_Random_111.Output", "box_PlayDialog_v6_123.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_111_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_126();
    l0 = self.box_Random_111;
    l1 = self.box_PlayDialog_v6_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|58681445", "58681445", "UNI46_310_B10_Graph", "box_Random_111.Output", "box_PlayDialog_v6_126.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_111_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_113();
    l0 = self.box_Random_111;
    l1 = self.box_PlayDialog_v6_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1660598627", "1660598627", "UNI46_310_B10_Graph", "box_Random_111.Output", "box_PlayDialog_v6_113.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_82_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_85();
    l0 = self.box_Delay_v5_82;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1814340219", "1814340219", "UNI46_310_B10_Graph", "box_Delay_v5_82.TimeElapsed", "box_OutputOrder_v2_85.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_129_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_135();
    l0 = self.box_RemoveEntity_v2_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1671310543", "1671310543", "UNI46_310_B10_Graph", "box_IsEntityLoaded_v3_129.True", "box_RemoveEntity_v2_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_67_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_66();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|768670270", "768670270", "UNI46_310_B10_Graph", "box_OutputOrder_v2_67.Out", "box_ParticleSystem_v3_66.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_68();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1856738432", "1856738432", "UNI46_310_B10_Graph", "box_OutputOrder_v2_67.Out", "box_ParticleSystem_v3_68.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_121_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_121;
    l1 = self.box_Brick_GateRaces_Dialogs_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|298853222", "298853222", "UNI46_310_B10_Graph", "box_ProximityTrigger_v2_121.Enter", "box_Brick_GateRaces_Dialogs_122.Landing", l0:GetLuaBox(), l1:GetLuaBox());
    -- Landing
    l1:Exec(2, {
    });
end;

function export:f_box_OutputOrder_v2_102_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_109();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|19682072", "19682072", "UNI46_310_B10_Graph", "box_OutputOrder_v2_102.Out", "box_Compare_Integers_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_118();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|191159793", "191159793", "UNI46_310_B10_Graph", "box_OutputOrder_v2_102.Out", "box_Compare_Integers_118.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_100();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1801441639", "1801441639", "UNI46_310_B10_Graph", "box_OutputOrder_v2_102.Out", "box_Compare_Integers_100.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_13();
    l0 = self.box_Brick_GateRaces_CreateLists_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|228196924", "228196924", "UNI46_310_B10_Graph", "box_OutputOrder_v2_36.Out", "box_Brick_GateRaces_CreateLists_13.ClearLists", clone:GetLuaBox(), l0:GetLuaBox());
    -- ClearLists
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|654904702", "654904702", "UNI46_310_B10_Graph", "box_OutputOrder_v2_36.Out", "box_OutputOrder_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_18();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1795692219", "1795692219", "UNI46_310_B10_Graph", "box_OutputOrder_v2_36.Out", "box_Simple_Node_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_132_Output_0()
    local l0, l1;
    l0 = self.box_Random_132;
    l1 = self.box_Brick_GateRaces_Dialogs_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1599021441", "1599021441", "UNI46_310_B10_Graph", "box_Random_132.Output", "box_Brick_GateRaces_Dialogs_92.Encouragement", l0:GetLuaBox(), l1:GetLuaBox());
    -- Encouragement
    l1:Exec(1, {
    });
end;

function export:f_box_Random_132_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_133();
    l0 = self.box_Random_132;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|339465395", "339465395", "UNI46_310_B10_Graph", "box_Random_132.Output", "box_Simple_Node_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_84_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|403604227", "403604227", "UNI46_310_B10_Graph", "box_OutputOrder_v2_84.Out", "box_OutputOrder_v2_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_84_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|800184830", "800184830", "UNI46_310_B10_Graph", "box_OutputOrder_v2_84.Out", "box_OutputOrder_v2_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_86();
    l0 = self.box_EntityStatusListener_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|979201627", "979201627", "UNI46_310_B10_Graph", "box_OutputOrder_v2_53.Out", "box_EntityStatusListener_86.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_51();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|433635162", "433635162", "UNI46_310_B10_Graph", "box_OutputOrder_v2_53.Out", "box_ParticleSystem_v3_51.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_52();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|613984096", "613984096", "UNI46_310_B10_Graph", "box_OutputOrder_v2_53.Out", "box_ParticleSystem_v3_52.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|2107257");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_14()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103508439555652713",
        -- EntityProximityMiss,
        [1] = "2104285544994312878",
        -- FX,
        [2] = "2103508439553555553",
        -- FX_Off,
        [3] = "2103508439553555551",
        -- Marker,
        [4] = "2103508439555652709",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_27()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103508440270781571",
        -- EntityProximityMiss,
        [1] = "2104285565420573366",
        -- FX,
        [2] = "2103508440270781563",
        -- FX_Off,
        [3] = "2103508440270781561",
        -- Marker,
        [4] = "2103508440270781567",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_11()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103508438733569116",
        -- EntityProximityMiss,
        [1] = "2104285537383748266",
        -- FX,
        [2] = "2103508438731471956",
        -- FX_Off,
        [3] = "2103508438731471954",
        -- Marker,
        [4] = "2103508438733569112",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|67498550");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 20,
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
                [4] = self.f_box_OutputOrder_v2_6_Out_4,
                [5] = self.f_box_OutputOrder_v2_6_Out_5,
                [6] = self.f_box_OutputOrder_v2_6_Out_6,
                [7] = self.f_box_OutputOrder_v2_6_Out_7,
                [8] = self.f_box_OutputOrder_v2_6_Out_8,
                [9] = self.f_box_OutputOrder_v2_6_Out_9,
                [10] = self.f_box_OutputOrder_v2_6_Out_10,
                [11] = self.f_box_OutputOrder_v2_6_Out_11,
                [12] = self.f_box_OutputOrder_v2_6_Out_12,
                [13] = self.f_box_OutputOrder_v2_6_Out_13,
                [14] = self.f_box_OutputOrder_v2_6_Out_14,
                [15] = self.f_box_OutputOrder_v2_6_Out_15,
                [16] = self.f_box_OutputOrder_v2_6_Out_16,
                [17] = self.f_box_OutputOrder_v2_6_Out_17,
                [18] = self.f_box_OutputOrder_v2_6_Out_18,
                [19] = self.f_box_OutputOrder_v2_6_Out_19,
            },
            count = 20,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|77539345");
    l0:SetConnections({
    });
    l0 = self.box_Brick_GateRaces_CORE_17;
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

function export:OnEnter_box_Brick_GateRaces_CreateLists_10()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103508451431824567",
        -- EntityProximityMiss,
        [1] = "2104285607822889670",
        -- FX,
        [2] = "2103508451427630255",
        -- FX_Off,
        [3] = "2103508451427630253",
        -- Marker,
        [4] = "2103508451429727411",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|88766852");
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
                [0] = self.f_box_OutputOrder_v2_64_Out_0,
                [1] = self.f_box_OutputOrder_v2_64_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CORE_17()
    local params;
    params = {
        -- bTeleportPlayer,
        [0] = false,
        -- eMobileMarker_Vehicle_Client,
        [1] = "2103470481203026912",
        -- eMobileMarker_Vehicle_Host,
        [2] = "2103470477145037788",
        -- eTeleportPointClient,
        [3] = "2103470460114066373",
        -- eTeleportPointHost,
        [4] = "2103470455802321857",
        -- eVehicleSpawnerClient,
        [6] = "2103470450181954448",
        -- eVehicleSpawnerHost,
        [7] = "2103470434371525423",
        -- fDelayBeforeStart,
        [8] = 0,
        -- fTimer,
        [9] = 20,
        -- iBonusTimeGates,
        [10] = 5,
        -- VehicleLockCountdown,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_130()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103969205366831780",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_116()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1543979071",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_117()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103968955038186136",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|163582764");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103775059628804824",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_120()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3370233176",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_127()
    local params;
    params = {
        -- Group,
        [0] = "2103470450188245910",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|199462835");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103774724004790423",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_87()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103774666324721809",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|240336568");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
                [2] = self.f_box_OutputOrder_v2_56_Out_2,
                [3] = self.f_box_OutputOrder_v2_56_Out_3,
                [4] = self.f_box_OutputOrder_v2_56_Out_4,
                [5] = self.f_box_OutputOrder_v2_56_Out_5,
                [6] = self.f_box_OutputOrder_v2_56_Out_6,
                [7] = self.f_box_OutputOrder_v2_56_Out_7,
                [8] = self.f_box_OutputOrder_v2_56_Out_8,
                [9] = self.f_box_OutputOrder_v2_56_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|249523772");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103774919945898674",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|308696519");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103775008678496958",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|311770901");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160214035431670",
        -- missionLayerId,
        [1] = "45174612544913661",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|338747312");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103774990804470456",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_1()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103508439975083126",
        -- EntityProximityMiss,
        [1] = "2104285550644040370",
        -- FX,
        [2] = "2103508439972985966",
        -- FX_Off,
        [3] = "2103508439972985964",
        -- Marker,
        [4] = "2103508439972985970",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_42()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103508454348963090",
        -- FX,
        [2] = "2103508454346865930",
        -- FX_Off,
        [3] = "2103508454346865928",
        -- Marker,
        [4] = "2103508454346865934",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|431566178");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103775059630901980",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_20()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103470302127217403",
        -- EntityProximityMiss,
        [1] = "2104283668934573237",
        -- FX,
        [2] = "2103470302127217405",
        -- FX_Off,
        [3] = "2103470302127217404",
        -- Marker,
        [4] = "2103470302127217406",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_126()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2452891458",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|499624033");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103774915378301614",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_16()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103508450420997290",
        -- EntityProximityMiss,
        [1] = "2104285599021142722",
        -- FX,
        [2] = "2103508450418900130",
        -- FX_Off,
        [3] = "2103508450418900128",
        -- Marker,
        [4] = "2103508450420997286",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|523469047");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|538015665");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103775019610950352",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_110()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_OutOfTime",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_28()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103508437911485506",
        -- EntityProximityMiss,
        [1] = "2104283762876497085",
        -- FX,
        [2] = "2103508437907291194",
        -- FX_Off,
        [3] = "2103508437905194040",
        -- Marker,
        [4] = "2103508437909388350",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_29()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103508453625445611",
        -- EntityProximityMiss,
        [1] = "2104285652859228886",
        -- FX,
        [2] = "2103508453623348451",
        -- FX_Off,
        [3] = "2103508453623348449",
        -- Marker,
        [4] = "2103508453625445607",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|647214549");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_109_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 6,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|657782851");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|661944835");
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
                [0] = self.f_box_OutputOrder_v2_73_Out_0,
                [1] = self.f_box_OutputOrder_v2_73_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|671762542");
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
                [0] = self.f_box_OutputOrder_v2_125_Out_0,
                [1] = self.f_box_OutputOrder_v2_125_Out_1,
                [2] = self.f_box_OutputOrder_v2_125_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_107()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_Player_Killed",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_98()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3475996310",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_41()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103508454346865925",
        -- EntityProximityMiss,
        [1] = "2104285677569970910",
        -- FX,
        [2] = "2103508454344768765",
        -- FX_Off,
        [3] = "2103508454344768763",
        -- Marker,
        [4] = "2103508454344768769",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_81()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.9,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|794277994");
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

function export:OnEnter_box_Random_99()
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

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|844203386");
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
                [0] = self.f_box_OutputOrder_v2_63_Out_0,
                [1] = self.f_box_OutputOrder_v2_63_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_4()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103508438330915919",
        -- EntityProximityMiss,
        [1] = "2104285530075173542",
        -- FX,
        [2] = "2103508438330915911",
        -- FX_Off,
        [3] = "2103508438330915909",
        -- Marker,
        [4] = "2103508438330915915",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|853504364");
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
                [0] = self.f_box_OutputOrder_v2_75_Out_0,
                [1] = self.f_box_OutputOrder_v2_75_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_104()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4252090758",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|880113199");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
                [3] = self.f_box_OutputOrder_v2_5_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|889017698");
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

function export:OnEnter_box_ParticleSystem_v3_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|901754739");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103774610924257419",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|902467223");
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
        [3] = "1824337172",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_33()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103508450416802960",
        -- EntityProximityMiss,
        [1] = "2104285571716223674",
        -- FX,
        [2] = "2103508450414705800",
        -- FX_Off,
        [3] = "2103508450414705798",
        -- Marker,
        [4] = "2103508450416802956",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|919638598");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_100_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 19,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_62()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.6,
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_30()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103508453623348446",
        -- EntityProximityMiss,
        [1] = "2104285642857910994",
        -- FX,
        [2] = "2103508453621251286",
        -- FX_Off,
        [3] = "2103508453621251284",
        -- Marker,
        [4] = "2103508453623348442",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_131()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103969205366831780",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|959210107");
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
                [0] = self.f_box_OutputOrder_v2_69_Out_0,
                [1] = self.f_box_OutputOrder_v2_69_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|974594994");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_134_True,
    });
    params = {
        -- entityId,
        [0] = "2103470450188245910",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1027306481");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103775059632999136",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1040101461");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103774919945898674",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_24()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103774668237324437",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1100870559");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_118_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 16,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1115520050");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103775018851781324",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_12()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103470354916727597",
        -- EntityProximityMiss,
        [1] = "2104285457366913698",
        -- FX,
        [2] = "2103470354914630437",
        -- FX_Off,
        [3] = "2103470354912533283",
        -- Marker,
        [4] = "2103470354914630441",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1132379070");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103775017966783176",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_40()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103508453627542776",
        -- EntityProximityMiss,
        [1] = "2104285667566555866",
        -- FX,
        [2] = "2103508453625445616",
        -- FX_Off,
        [3] = "2103508453625445614",
        -- Marker,
        [4] = "2103508453627542772",
    };
    return params;
end;

function export:OnEnter_box_Random_105()
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

function export:OnEnter_box_OutputOrder_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1312439830");
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

function export:OnEnter_box_ParticleSystem_v3_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1321744425");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103775059635096292",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1325885203");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
                [2] = self.f_box_OutputOrder_v2_50_Out_2,
                [3] = self.f_box_OutputOrder_v2_50_Out_3,
                [4] = self.f_box_OutputOrder_v2_50_Out_4,
                [5] = self.f_box_OutputOrder_v2_50_Out_5,
                [6] = self.f_box_OutputOrder_v2_50_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_3()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103508450418900125",
        -- EntityProximityMiss,
        [1] = "2104285580195009214",
        -- FX,
        [2] = "2103508450416802965",
        -- FX_Off,
        [3] = "2103508450416802963",
        -- Marker,
        [4] = "2103508450418900121",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_97()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "768826185",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1426133159");
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
                [0] = self.f_box_OutputOrder_v2_103_Out_0,
                [1] = self.f_box_OutputOrder_v2_103_Out_1,
                [2] = self.f_box_OutputOrder_v2_103_Out_2,
                [3] = self.f_box_OutputOrder_v2_103_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_19()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103508451436018884",
        -- EntityProximityMiss,
        [1] = "2104285626453988042",
        -- FX,
        [2] = "2103508451431824572",
        -- FX_Off,
        [3] = "2103508451431824570",
        -- Marker,
        [4] = "2103508451433921728",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_61()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1451458966");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103774724004790423",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1462596934");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103774990804470456",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_112()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103968955038186136",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_47()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103774641110663309",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_9()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103508451440213201",
        -- EntityProximityMiss,
        [1] = "2104285636170093262",
        -- FX,
        [2] = "2103508451438116041",
        -- FX_Off,
        [3] = "2103508451436018887",
        -- Marker,
        [4] = "2103508451438116045",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1498903174");
    l0:SetConnections({
        -- OnSetAsIndestructible,
        [4] = self.f_box_VehicleModifier_v2_37_OnSetAsIndestructible,
    });
    params = {
        -- targets,
        [0] = "2103470440417614691",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_114()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103968943046670996",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_86()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103774668237324437",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_77()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1559138747");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103774915378301614",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_13()
    local params;
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1597484075");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_18_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_119()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103969130211195550",
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
        [3] = "2696896564",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_115()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103968943046670996",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_Outro_7()
    local params;
    params = {
        -- HostTeleport,
        [1] = "2100109826192319567",
        -- Region,
        [2] = 1,
        -- SceneEntity,
        [3] = "2103594207965887987",
        -- SequenceFile,
        [4] = "sequences/zeta_main/uni46/uni46_310_cin_camera.seq",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_106()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_Vehicle_Destroyed",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1731156824");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
                [2] = self.f_box_OutputOrder_v2_35_Out_2,
                [3] = self.f_box_OutputOrder_v2_35_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_88()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103774641110663309",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_46()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103774666324721809",
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

function export:OnEnter_box_ParticleSystem_v3_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1818652711");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103774610924257419",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1829631770");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103774856442038956",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_135()
    local params;
    params = {
        -- Group,
        [0] = "2103470440417614691",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_82()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.2,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1839762230");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_129_True,
    });
    params = {
        -- entityId,
        [0] = "2103470440417614691",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1843343736");
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
                [0] = self.f_box_OutputOrder_v2_67_Out_0,
                [1] = self.f_box_OutputOrder_v2_67_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_121()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103969130211195550",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1846321539");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2103470450188245910",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_123()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1657379041",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1950334054");
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
                [0] = self.f_box_OutputOrder_v2_102_Out_0,
                [1] = self.f_box_OutputOrder_v2_102_Out_1,
                [2] = self.f_box_OutputOrder_v2_102_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|1953020045");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
                [2] = self.f_box_OutputOrder_v2_36_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Random_132()
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

function export:OnEnter_box_ParticleSystem_v3_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|2115619687");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103774856442038956",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|2131931837");
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
                [0] = self.f_box_OutputOrder_v2_84_Out_0,
                [1] = self.f_box_OutputOrder_v2_84_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_310\\UNI46_310_B10.domino|@UNI46_310_B10_Graph|2136908976");
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
                [0] = self.f_box_OutputOrder_v2_53_Out_0,
                [1] = self.f_box_OutputOrder_v2_53_Out_1,
                [2] = self.f_box_OutputOrder_v2_53_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_8()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103470354052700960",
        -- EntityProximityMiss,
        [1] = "2104283753252666553",
        -- FX,
        [2] = "2103470354050603800",
        -- FX_Off,
        [3] = "2103470354048506646",
        -- Marker,
        [4] = "2103470354050603804",
    };
    return params;
end;

function export:OnExit_box_Brick_GateRaces_CORE_17_Disabled()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_17;
    self.iGatePassed = l0:GetDataOutValue(1);
end;

function export:OnExit_box_Brick_GateRaces_CORE_17_Fail()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_17;
    self.iGatePassed = l0:GetDataOutValue(1);
end;

function export:OnExit_box_Brick_GateRaces_CORE_17_Finished()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_17;
    self.iGatePassed = l0:GetDataOutValue(1);
end;

function export:OnExit_box_Brick_GateRaces_CORE_17_GatePassed()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_17;
    self.iGatePassed = l0:GetDataOutValue(1);
end;

function export:OnExit_box_Brick_GateRaces_CORE_17_Started()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_17;
    self.iGatePassed = l0:GetDataOutValue(1);
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
