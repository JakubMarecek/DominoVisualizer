LUACO -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni46/uni46_010/uni46_010_b10.domino
-- User graph: uni46_010_b10_v2
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
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/JoinInProgresModifier.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_firemachines.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_fireworks.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_rampwayfires_1.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_rampwayfires_End.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_vehiclefire_system.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3747759617.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4188347406.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1852495886.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3043132005.bnk]], "CSoundResource");
        cboxRes:LoadResource([[499209136.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3758914268.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_b10_v2.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/BroadcastMessage.lua")] = {
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
                name = "Message",
                type = "string",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v5.lua")] = {
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
                name = "MemberRemoved",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In_Start_Fire",
            },
            [1] = {
                name = "In_Start_Flame",
            },
            [2] = {
                name = "In_Stop_Fire",
            },
            [3] = {
                name = "In_Stop_Flame",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Out_Start_Fire",
                delayed = false,
            },
            [1] = {
                name = "Out_Start_Flame",
                delayed = false,
            },
            [2] = {
                name = "Out_Stop_Fire",
                delayed = false,
            },
            [3] = {
                name = "Out_Stop_Flame",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Fire_Vehicle",
                type = "entity",
            },
            [1] = {
                name = "Flame_Soundpoint",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_firemachines.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_fireworks.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_rampwayfires_1.debug.lua")] = {
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
            [1] = {
                name = "Started",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_rampwayfires_End.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_vehiclefire_system.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
            [2] = {
                name = "GatePass",
            },
        },
        controlInCount = 3,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "iGatePassed",
                type = "int",
            },
            [1] = {
                name = "ListCheckpoints",
                type = "list",
            },
            [2] = {
                name = "ListFXs",
                type = "list",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "uni46_010_b10_v2";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2";
    self.iGatePassed = 0;
    self.ePlayerPassingGate = nil;
    self.lSprinklers_Triggers = {
    };
    self.lSprinklers_FXs = {
    };
    self.players = nil;
    self.eVehicleClient = nil;
    self.eVehicleHost = nil;
    self.box_RemoveEntity_v2_44 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|14621470");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_32 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|51781250");
    l0:SetConnections({
    });
    self.box_uni46_010_rampwayfires_1_102 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_rampwayfires_1.debug.lua");
    l0 = self.box_uni46_010_rampwayfires_1_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_uni46_010_rampwayfires_1_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|78980880");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_uni46_010_rampwayfires_1_102_Started,
    });
    self.box_Random_8 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|89017752");
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
                [0] = self.f_box_Random_8_Output_0,
                [1] = self.f_box_Random_8_Output_1,
                [2] = self.f_box_Random_8_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_139 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|90821971");
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
        [0] = self.f_box_MultipleOR_139_Out,
    });
    self.box_uni46_010_firemachines_129 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_firemachines.debug.lua");
    l0 = self.box_uni46_010_firemachines_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_uni46_010_firemachines_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|172557441");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_61 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|176037320");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_62 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|178209889");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_99 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|218945537");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_99_Enter,
    });
    self.box_Audio_Manager_25 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
    l0 = self.box_Audio_Manager_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Audio_Manager_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|231266878");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_92 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|257791195");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_92_Enter,
    });
    self.box_PlayDialog_v6_125 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|320136908");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_124 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|340887805");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_110 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|357473147");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_110_Enter,
    });
    self.box_EntityStatusListener_159 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|381789744");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_159_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_159_Loaded,
    });
    self.box_OnceOnly_v3_7 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|392777887");
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
                [0] = self.f_box_OnceOnly_v3_7_Out_0,
            },
            count = 1,
        },
    });
    self.box_GroupSizeListener_v5_155 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|418126121");
    l0:SetConnections({
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_155_MemberAdded,
    });
    self.box_OnceOnly_v3_116 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|522636605");
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
                [0] = self.f_box_OnceOnly_v3_116_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_103 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|572763687");
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
                [0] = self.f_box_OnceOnly_v3_103_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_95 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|607743192");
    l0:SetConnections({
    });
    self.box_uni46_010_vehiclefire_system_34 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_vehiclefire_system.debug.lua");
    l0 = self.box_uni46_010_vehiclefire_system_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_uni46_010_vehiclefire_system_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|626953736");
    l0:SetConnections({
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|701591526");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_Audio_Manager_20 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
    l0 = self.box_Audio_Manager_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Audio_Manager_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|714611059");
    l0:SetConnections({
    });
    self.box_uni46_010_fireworks_130 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_fireworks.debug.lua");
    l0 = self.box_uni46_010_fireworks_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_uni46_010_fireworks_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|737878466");
    l0:SetConnections({
    });
    self.box_Audio_Manager_17 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
    l0 = self.box_Audio_Manager_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Audio_Manager_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|808532698");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_101 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|840667474");
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
                [0] = self.f_box_OnceOnly_v3_101_Out_0,
            },
            count = 1,
        },
    });
    self.box_Brick_GateRaces_CreateLists_59 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|868608277");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_66 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|895152978");
    l0:SetConnections({
    });
    self.box_JoinInProgressModifier_6 = cbox:CreateBox("Domino/System/Coop/JoinInProgresModifier.lua");
    l0 = self.box_JoinInProgressModifier_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_JoinInProgressModifier_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|899660521");
    l0:SetConnections({
        -- OnLockSession,
        [0] = self.f_box_JoinInProgressModifier_6_OnLockSession,
    });
    self.box_PlayDialog_v6_128 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|939205945");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_Dialogs_114 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|942277786");
    l0:SetConnections({
    });
    self.box_Random_18 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|946108113");
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
                [0] = self.f_box_Random_18_Output_0,
                [1] = self.f_box_Random_18_Output_1,
                [2] = self.f_box_Random_18_Output_2,
            },
            count = 3,
        },
    });
    self.box_PlayDialog_v6_121 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|947379481");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_108 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|958231319");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_108_Received,
    });
    self.box_Brick_GateRaces_CORE_19 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CORE.debug.lua");
    l0 = self.box_Brick_GateRaces_CORE_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CORE_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1009628554");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_Brick_GateRaces_CORE_19_Disabled,
        -- Fail,
        [1] = self.f_box_Brick_GateRaces_CORE_19_Fail,
        -- Finished,
        [2] = self.f_box_Brick_GateRaces_CORE_19_Finished,
        -- GatePassed,
        [3] = self.f_box_Brick_GateRaces_CORE_19_GatePassed,
        -- Started,
        [4] = self.f_box_Brick_GateRaces_CORE_19_Started,
    });
    self.box_ProximityTrigger_v2_98 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1103520623");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_98_Enter,
    });
    self.box_Audio_Manager_22 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
    l0 = self.box_Audio_Manager_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Audio_Manager_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1158067487");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_70 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1162594645");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_70_Received,
    });
    self.box_Brick_GateRaces_CreateLists_64 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1230355389");
    l0:SetConnections({
    });
    self.box_Audio_Manager_15 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
    l0 = self.box_Audio_Manager_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Audio_Manager_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1270255198");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_60 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1318060749");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_158 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1323901173");
    l0:SetConnections({
    });
    self.box_MultipleOR_88 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1348849753");
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
    self.box_Brick_GateRaces_CreateLists_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1386802291");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1392945203");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_57 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1404907206");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_Dialogs_96 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1427172822");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_65 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1445570791");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_122 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1452732090");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_68 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1459121136");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_94 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1460367455");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_73 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1481933379");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_73_Received,
    });
    self.box_MessageListener_v3_93 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1527343325");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_93_Received,
    });
    self.box_Brick_GateRaces_CreateLists_67 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1593858544");
    l0:SetConnections({
    });
    self.box_MultipleOR_113 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1603930988");
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
        [0] = self.f_box_MultipleOR_113_Out,
    });
    self.box_MultipleOR_106 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1618081878");
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
    self.box_Brick_GateRaces_Outro_41 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Outro.debug.lua");
    l0 = self.box_Brick_GateRaces_Outro_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Outro_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1697798657");
    l0:SetConnections({
        -- CustomScript,
        [0] = self.f_box_Brick_GateRaces_Outro_41_CustomScript,
        -- Finished,
        [1] = self.f_box_Brick_GateRaces_Outro_41_Finished,
        -- Started,
        [2] = self.f_box_Brick_GateRaces_Outro_41_Started,
    });
    self.box_Brick_GateRaces_CreateLists_58 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1704968280");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1714620452");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_51 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1751644213");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_51_Received,
    });
    self.box_uni46_010_rampwayfires_End_105 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_rampwayfires_End.debug.lua");
    l0 = self.box_uni46_010_rampwayfires_End_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_uni46_010_rampwayfires_End_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1779112871");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_127 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1802379639");
    l0:SetConnections({
    });
    self.box_Random_126 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1807429220");
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
                [0] = self.f_box_Random_126_Output_0,
                [1] = self.f_box_Random_126_Output_1,
                [2] = self.f_box_Random_126_Output_2,
            },
            count = 3,
        },
    });
    self.box_RemoveEntity_v2_154 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1810669486");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_23 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1830605968");
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
    self.box_PlayDialog_v6_123 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1936776994");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_Dialogs_87 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1944464428");
    l0:SetConnections({
    });
    self.box_uni46_010_vehiclefire_system_27 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_vehiclefire_system.debug.lua");
    l0 = self.box_uni46_010_vehiclefire_system_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_uni46_010_vehiclefire_system_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1953857284");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_111 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1961559353");
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
                [0] = self.f_box_OnceOnly_v3_111_Out_0,
            },
            count = 1,
        },
    });
    self.box_MessageListener_v3_85 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1968058812");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_85_Received,
    });
    self.box_OnceOnly_v3_16 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1992593075");
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
                [0] = self.f_box_OnceOnly_v3_16_Out_0,
            },
            count = 1,
        },
    });
    self.box_Audio_Manager_11 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
    l0 = self.box_Audio_Manager_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Audio_Manager_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2075238503");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_9 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2098044442");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_9_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_9_Reloaded,
    });
    self.box_Brick_GateRaces_CreateLists_63 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2112527205");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_36 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2133446767");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_36_Received,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1697654888", "1697654888", "uni46_010_b10_v2", "In", "box_ActivityAcknowledgeGate_9.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_uni46_010_rampwayfires_1_102_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Random_8();
    l0 = self.box_uni46_010_rampwayfires_1_102;
    l1 = self.box_Random_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|311015461", "311015461", "uni46_010_b10_v2", "box_uni46_010_rampwayfires_1_102.Started", "box_Random_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_8_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_123();
    l0 = self.box_Random_8;
    l1 = self.box_PlayDialog_v6_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|830380036", "830380036", "uni46_010_b10_v2", "box_Random_8.Output", "box_PlayDialog_v6_123.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_8_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_124();
    l0 = self.box_Random_8;
    l1 = self.box_PlayDialog_v6_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1408948434", "1408948434", "uni46_010_b10_v2", "box_Random_8.Output", "box_PlayDialog_v6_124.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_8_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_122();
    l0 = self.box_Random_8;
    l1 = self.box_PlayDialog_v6_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|3965209", "3965209", "uni46_010_b10_v2", "box_Random_8.Output", "box_PlayDialog_v6_122.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_139_Out()
    local params, l0, l1;
    params = self:OnEnter_box_uni46_010_vehiclefire_system_27();
    l0 = self.box_MultipleOR_139;
    l1 = self.box_uni46_010_vehiclefire_system_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1134156337", "1134156337", "uni46_010_b10_v2", "box_MultipleOR_139.Out", "box_uni46_010_vehiclefire_system_27.GatePass", l0:GetLuaBox(), l1:GetLuaBox());
    -- GatePass
    l1:Exec(2, params);
end;

function export:f_box_MissionBlockLayer_69_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_89();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|778407973", "778407973", "uni46_010_b10_v2", "box_MissionBlockLayer_69.Disabled", "box_GetPlayerGroup_v2_89.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_156_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_Outro_41();
    l0 = self.box_Brick_GateRaces_Outro_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1331611973", "1331611973", "uni46_010_b10_v2", "box_BroadcastMessage_156.Out", "box_Brick_GateRaces_Outro_41.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_30();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|673430398", "673430398", "uni46_010_b10_v2", "box_Simple_Node_14.Out", "box_MissionBlockLayer_30.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_99_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_99;
    l1 = self.box_MultipleOR_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|35522222", "35522222", "uni46_010_b10_v2", "box_ProximityTrigger_v2_99.Enter", "box_MultipleOR_113.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_92_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_92;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2037237915", "2037237915", "uni46_010_b10_v2", "box_ProximityTrigger_v2_92.Enter", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CORE_19();
    l0 = self.box_Brick_GateRaces_CORE_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2055815735", "2055815735", "uni46_010_b10_v2", "box_OutputOrder_v2_31.Out", "box_Brick_GateRaces_CORE_19.Start_Vehicle", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_Vehicle
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_72();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|297164593", "297164593", "uni46_010_b10_v2", "box_OutputOrder_v2_31.Out", "box_Simple_Node_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_uni46_010_vehiclefire_system_27();
    l0 = self.box_uni46_010_vehiclefire_system_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2105866043", "2105866043", "uni46_010_b10_v2", "box_OutputOrder_v2_31.Out", "box_uni46_010_vehiclefire_system_27.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_45_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_17();
    l0 = self.box_Audio_Manager_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|311155160", "311155160", "uni46_010_b10_v2", "box_ParticleSystem_v3_45.Started", "box_Audio_Manager_17.In_Start_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Start_Flame
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_45_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_17();
    l0 = self.box_Audio_Manager_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|475087184", "475087184", "uni46_010_b10_v2", "box_ParticleSystem_v3_45.Stopped", "box_Audio_Manager_17.In_Stop_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Stop_Flame
    l0:Exec(3, params);
end;

function export:f_box_Compare_Integers_107_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1939839411", "1939839411", "uni46_010_b10_v2", "box_Compare_Integers_107.A_ge_B", "box_OnceOnly_v3_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_38_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_11();
    l0 = self.box_Audio_Manager_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1188482459", "1188482459", "uni46_010_b10_v2", "box_ParticleSystem_v3_38.Started", "box_Audio_Manager_11.In_Start_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Start_Flame
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_38_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_11();
    l0 = self.box_Audio_Manager_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|771274815", "771274815", "uni46_010_b10_v2", "box_ParticleSystem_v3_38.Stopped", "box_Audio_Manager_11.In_Stop_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Stop_Flame
    l0:Exec(3, params);
end;

function export:f_box_ProximityTrigger_v2_110_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_110;
    l1 = self.box_MultipleOR_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|599153047", "599153047", "uni46_010_b10_v2", "box_ProximityTrigger_v2_110.Enter", "box_MultipleOR_113.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2099026885", "2099026885", "uni46_010_b10_v2", "box_OutputOrder_v2_13.Out", "box_MultipleOR_139.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1728784500", "1728784500", "uni46_010_b10_v2", "box_OutputOrder_v2_13.Out", "box_OutputOrder_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_159_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_112();
    l0 = self.box_EntityStatusListener_159;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|761475792", "761475792", "uni46_010_b10_v2", "box_EntityStatusListener_159.Enabled", "box_OutputOrder_v2_112.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_159_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_158();
    l0 = self.box_EntityStatusListener_159;
    l1 = self.box_PositionModifier_v2_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1372591359", "1372591359", "uni46_010_b10_v2", "box_EntityStatusListener_159.Loaded", "box_PositionModifier_v2_158.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_7_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_7;
    l1 = self.box_uni46_010_rampwayfires_End_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1135966132", "1135966132", "uni46_010_b10_v2", "box_OnceOnly_v3_7.Out", "box_uni46_010_rampwayfires_End_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_48();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1166103486", "1166103486", "uni46_010_b10_v2", "box_OutputOrder_v2_46.Out", "box_ParticleSystem_v3_48.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_45();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|506874519", "506874519", "uni46_010_b10_v2", "box_OutputOrder_v2_46.Out", "box_ParticleSystem_v3_45.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_97_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_24();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|836051968", "836051968", "uni46_010_b10_v2", "box_OutputOrder_v2_97.Out", "box_Simple_Node_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_97_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|635136121", "635136121", "uni46_010_b10_v2", "box_OutputOrder_v2_97.Out", "box_OutputOrder_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_155_MemberAdded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_154();
    l0 = self.box_GroupSizeListener_v5_155;
    l1 = self.box_RemoveEntity_v2_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|779278753", "779278753", "uni46_010_b10_v2", "box_GroupSizeListener_v5_155.MemberAdded", "box_RemoveEntity_v2_154.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_42_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_15();
    l0 = self.box_Audio_Manager_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1406352989", "1406352989", "uni46_010_b10_v2", "box_ParticleSystem_v3_42.Started", "box_Audio_Manager_15.In_Start_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Start_Flame
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_42_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_15();
    l0 = self.box_Audio_Manager_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1242589078", "1242589078", "uni46_010_b10_v2", "box_ParticleSystem_v3_42.Stopped", "box_Audio_Manager_15.In_Stop_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Stop_Flame
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_24_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|931975056", "931975056", "uni46_010_b10_v2", "box_Simple_Node_24.Out", "box_OutputOrder_v2_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_116_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_99();
    l0 = self.box_OnceOnly_v3_116;
    l1 = self.box_ProximityTrigger_v2_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1451833337", "1451833337", "uni46_010_b10_v2", "box_OnceOnly_v3_116.Out", "box_ProximityTrigger_v2_99.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_29_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|791298514", "791298514", "uni46_010_b10_v2", "box_Compare_Integers_29.A_ge_B", "box_OnceOnly_v3_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_70();
    l0 = self.box_MessageListener_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1749695820", "1749695820", "uni46_010_b10_v2", "box_OutputOrder_v2_55.Out", "box_MessageListener_v3_70.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_55_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_51();
    l0 = self.box_MessageListener_v3_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|250091684", "250091684", "uni46_010_b10_v2", "box_OutputOrder_v2_55.Out", "box_MessageListener_v3_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_55_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_36();
    l0 = self.box_MessageListener_v3_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|815403981", "815403981", "uni46_010_b10_v2", "box_OutputOrder_v2_55.Out", "box_MessageListener_v3_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_55_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_108();
    l0 = self.box_MessageListener_v3_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|234719077", "234719077", "uni46_010_b10_v2", "box_OutputOrder_v2_55.Out", "box_MessageListener_v3_108.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_29();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|61318216", "61318216", "uni46_010_b10_v2", "box_OutputOrder_v2_28.Out", "box_Compare_Integers_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_12();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|654068480", "654068480", "uni46_010_b10_v2", "box_OutputOrder_v2_28.Out", "box_Compare_Integers_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_103_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_92();
    l0 = self.box_OnceOnly_v3_103;
    l1 = self.box_ProximityTrigger_v2_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|798135107", "798135107", "uni46_010_b10_v2", "box_OnceOnly_v3_103.Out", "box_ProximityTrigger_v2_92.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_JoinInProgressModifier_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|743655742", "743655742", "uni46_010_b10_v2", "box_MultipleOR_5.Out", "box_JoinInProgressModifier_6.LockSession", l0:GetLuaBox(), l1:GetLuaBox());
    -- LockSession
    l1:Exec(0, {
    });
end;

function export:f_box_ParticleSystem_v3_35_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_25();
    l0 = self.box_Audio_Manager_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1304944033", "1304944033", "uni46_010_b10_v2", "box_ParticleSystem_v3_35.Started", "box_Audio_Manager_25.In_Start_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Start_Flame
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_35_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_25();
    l0 = self.box_Audio_Manager_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1216055201", "1216055201", "uni46_010_b10_v2", "box_ParticleSystem_v3_35.Stopped", "box_Audio_Manager_25.In_Stop_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Stop_Flame
    l0:Exec(3, params);
end;

function export:f_box_Compare_Integers_117_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1415607198", "1415607198", "uni46_010_b10_v2", "box_Compare_Integers_117.A_ge_B", "box_OnceOnly_v3_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_uni46_010_fireworks_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1927822898", "1927822898", "uni46_010_b10_v2", "box_OutputOrder_v2_4.Out", "box_uni46_010_fireworks_130.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_uni46_010_vehiclefire_system_34();
    l0 = self.box_uni46_010_vehiclefire_system_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|483268324", "483268324", "uni46_010_b10_v2", "box_OutputOrder_v2_4.Out", "box_uni46_010_vehiclefire_system_34.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_32();
    l0 = self.box_RemoveEntity_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1293216666", "1293216666", "uni46_010_b10_v2", "box_OutputOrder_v2_4.Out", "box_RemoveEntity_v2_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_44();
    l0 = self.box_RemoveEntity_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|299962319", "299962319", "uni46_010_b10_v2", "box_OutputOrder_v2_4.Out", "box_RemoveEntity_v2_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_155();
    l0 = self.box_GroupSizeListener_v5_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1685088322", "1685088322", "uni46_010_b10_v2", "box_OutputOrder_v2_4.Out", "box_GroupSizeListener_v5_155.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_14();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1114145885", "1114145885", "uni46_010_b10_v2", "box_OutputOrder_v2_4.Out", "box_Simple_Node_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_35();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|665622698", "665622698", "uni46_010_b10_v2", "box_OutputOrder_v2_33.Out", "box_ParticleSystem_v3_35.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_38();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1350405713", "1350405713", "uni46_010_b10_v2", "box_OutputOrder_v2_33.Out", "box_ParticleSystem_v3_38.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_115_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1056940416", "1056940416", "uni46_010_b10_v2", "box_Simple_Node_115.Out", "box_OutputOrder_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_101_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_98();
    l0 = self.box_OnceOnly_v3_101;
    l1 = self.box_ProximityTrigger_v2_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2093292927", "2093292927", "uni46_010_b10_v2", "box_OnceOnly_v3_101.Out", "box_ProximityTrigger_v2_98.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_30_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2031001335", "2031001335", "uni46_010_b10_v2", "box_MissionBlockLayer_30.Activated", "box_MultipleAND_v2_23.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_VehicleModifier_v2_76_OnSetAsIndestructible()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_77();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|135982177", "135982177", "uni46_010_b10_v2", "box_VehicleModifier_v2_76.OnSetAsIndestructible", "box_VehicleModifier_v2_77.SetAsIndestructable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsIndestructable
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_39_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_20();
    l0 = self.box_Audio_Manager_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|708919860", "708919860", "uni46_010_b10_v2", "box_ParticleSystem_v3_39.Started", "box_Audio_Manager_20.In_Start_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Start_Flame
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_39_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_20();
    l0 = self.box_Audio_Manager_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|678321084", "678321084", "uni46_010_b10_v2", "box_ParticleSystem_v3_39.Stopped", "box_Audio_Manager_20.In_Stop_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Stop_Flame
    l0:Exec(3, params);
end;

function export:f_box_JoinInProgressModifier_6_OnLockSession()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_69();
    l0 = self.box_JoinInProgressModifier_6;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|485129283", "485129283", "uni46_010_b10_v2", "box_JoinInProgressModifier_6.OnLockSession", "box_MissionBlockLayer_69.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_18_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_94();
    l0 = self.box_Random_18;
    l1 = self.box_PlayDialog_v6_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1493824152", "1493824152", "uni46_010_b10_v2", "box_Random_18.Output", "box_PlayDialog_v6_94.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_18_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_95();
    l0 = self.box_Random_18;
    l1 = self.box_PlayDialog_v6_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1077732925", "1077732925", "uni46_010_b10_v2", "box_Random_18.Output", "box_PlayDialog_v6_95.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_18_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_121();
    l0 = self.box_Random_18;
    l1 = self.box_PlayDialog_v6_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1902031246", "1902031246", "uni46_010_b10_v2", "box_Random_18.Output", "box_PlayDialog_v6_121.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_108_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = self.box_MessageListener_v3_108;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|991132737", "991132737", "uni46_010_b10_v2", "box_MessageListener_v3_108.Received", "box_OutputOrder_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_CORE_19_Disabled()
    self:OnExit_box_Brick_GateRaces_CORE_19_Disabled();
end;

function export:f_box_Brick_GateRaces_CORE_19_Fail()
    local params, l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_19_Fail();
    params = self:OnEnter_box_ActivityRetry_21();
    l0 = self.box_Brick_GateRaces_CORE_19;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|129098851", "129098851", "uni46_010_b10_v2", "box_Brick_GateRaces_CORE_19.Fail", "box_ActivityRetry_21.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_CORE_19_Finished()
    local params, l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_19_Finished();
    params = self:OnEnter_box_MissionBlockLayer_157();
    l0 = self.box_Brick_GateRaces_CORE_19;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|967815990", "967815990", "uni46_010_b10_v2", "box_Brick_GateRaces_CORE_19.Finished", "box_MissionBlockLayer_157.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_CORE_19_GatePassed()
    local params, l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_19_GatePassed();
    params = self:OnEnter_box_OutputOrder_v2_91();
    l0 = self.box_Brick_GateRaces_CORE_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|736573352", "736573352", "uni46_010_b10_v2", "box_Brick_GateRaces_CORE_19.GatePassed", "box_OutputOrder_v2_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_CORE_19_Started()
    local params, l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_19_Started();
    params = self:OnEnter_box_OutputOrder_v2_97();
    l0 = self.box_Brick_GateRaces_CORE_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2051756794", "2051756794", "uni46_010_b10_v2", "box_Brick_GateRaces_CORE_19.Started", "box_OutputOrder_v2_97.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_93();
    l0 = self.box_MessageListener_v3_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1686755686", "1686755686", "uni46_010_b10_v2", "box_OutputOrder_v2_26.Out", "box_MessageListener_v3_93.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_85();
    l0 = self.box_MessageListener_v3_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1738745799", "1738745799", "uni46_010_b10_v2", "box_OutputOrder_v2_26.Out", "box_MessageListener_v3_85.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_73();
    l0 = self.box_MessageListener_v3_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|55940246", "55940246", "uni46_010_b10_v2", "box_OutputOrder_v2_26.Out", "box_MessageListener_v3_73.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_90_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_104();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|187110101", "187110101", "uni46_010_b10_v2", "box_OutputOrder_v2_90.Out", "box_Compare_Integers_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_90_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_100();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|906102680", "906102680", "uni46_010_b10_v2", "box_OutputOrder_v2_90.Out", "box_Compare_Integers_100.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_98_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_98;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2111547455", "2111547455", "uni46_010_b10_v2", "box_ProximityTrigger_v2_98.Enter", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MessageListener_v3_70_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = self.box_MessageListener_v3_70;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|949613008", "949613008", "uni46_010_b10_v2", "box_MessageListener_v3_70.Received", "box_OutputOrder_v2_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_42();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1242818444", "1242818444", "uni46_010_b10_v2", "box_OutputOrder_v2_43.Out", "box_ParticleSystem_v3_42.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_39();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1249127676", "1249127676", "uni46_010_b10_v2", "box_OutputOrder_v2_43.Out", "box_ParticleSystem_v3_39.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|309178168", "309178168", "uni46_010_b10_v2", "box_OutputOrder_v2_53.Out", "box_OutputOrder_v2_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|832665481", "832665481", "uni46_010_b10_v2", "box_OutputOrder_v2_53.Out", "box_OutputOrder_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_100_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|110953445", "110953445", "uni46_010_b10_v2", "box_Compare_Integers_100.A_ge_B", "box_OnceOnly_v3_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_88_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_88;
    l1 = self.box_Brick_GateRaces_Dialogs_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1214534305", "1214534305", "uni46_010_b10_v2", "box_MultipleOR_88.Out", "box_Brick_GateRaces_Dialogs_87.Crash", l0:GetLuaBox(), l1:GetLuaBox());
    -- Crash
    l1:Exec(0, {
    });
end;

function export:f_box_GetPlayerGroup_v2_89_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_89_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_159();
    l0 = self.box_EntityStatusListener_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1147629896", "1147629896", "uni46_010_b10_v2", "box_GetPlayerGroup_v2_89.Out", "box_EntityStatusListener_159.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|515151451", "515151451", "uni46_010_b10_v2", "box_OutputOrder_v2_54.Out", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|189234717", "189234717", "uni46_010_b10_v2", "box_OutputOrder_v2_54.Out", "box_OutputOrder_v2_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_73_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_73;
    l1 = self.box_Brick_GateRaces_Dialogs_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|383804294", "383804294", "uni46_010_b10_v2", "box_MessageListener_v3_73.Received", "box_Brick_GateRaces_Dialogs_96.OutOfTime", l0:GetLuaBox(), l1:GetLuaBox());
    -- OutOfTime
    l1:Exec(3, {
    });
end;

function export:f_box_MissionBlockLayer_157_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_156();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1611933490", "1611933490", "uni46_010_b10_v2", "box_MissionBlockLayer_157.Disabled", "box_BroadcastMessage_156.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_93_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_93;
    l1 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|401260069", "401260069", "uni46_010_b10_v2", "box_MessageListener_v3_93.Received", "box_MultipleOR_88.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_48();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|675465706", "675465706", "uni46_010_b10_v2", "box_OutputOrder_v2_49.Out", "box_ParticleSystem_v3_48.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_45();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2075096185", "2075096185", "uni46_010_b10_v2", "box_OutputOrder_v2_49.Out", "box_ParticleSystem_v3_45.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_76();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1093943197", "1093943197", "uni46_010_b10_v2", "box_OutputOrder_v2_75.Out", "box_VehicleModifier_v2_76.SetAsIndestructable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsIndestructable
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_uni46_010_firemachines_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|238548298", "238548298", "uni46_010_b10_v2", "box_OutputOrder_v2_75.Out", "box_uni46_010_firemachines_129.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_75_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1833374547", "1833374547", "uni46_010_b10_v2", "box_OutputOrder_v2_75.Out", "box_MultipleOR_139.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_113_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_113;
    l1 = self.box_Brick_GateRaces_Dialogs_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|577424458", "577424458", "uni46_010_b10_v2", "box_MultipleOR_113.Out", "box_Brick_GateRaces_Dialogs_114.Landing", l0:GetLuaBox(), l1:GetLuaBox());
    -- Landing
    l1:Exec(2, {
    });
end;

function export:f_box_MultipleOR_106_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_18();
    l0 = self.box_MultipleOR_106;
    l1 = self.box_Random_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|34154446", "34154446", "uni46_010_b10_v2", "box_MultipleOR_106.Out", "box_Random_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_48_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_22();
    l0 = self.box_Audio_Manager_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1840145656", "1840145656", "uni46_010_b10_v2", "box_ParticleSystem_v3_48.Started", "box_Audio_Manager_22.In_Start_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Start_Flame
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_48_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_22();
    l0 = self.box_Audio_Manager_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|104895226", "104895226", "uni46_010_b10_v2", "box_ParticleSystem_v3_48.Stopped", "box_Audio_Manager_22.In_Stop_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Stop_Flame
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_35();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1931457882", "1931457882", "uni46_010_b10_v2", "box_OutputOrder_v2_37.Out", "box_ParticleSystem_v3_35.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_38();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2028293761", "2028293761", "uni46_010_b10_v2", "box_OutputOrder_v2_37.Out", "box_ParticleSystem_v3_38.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_Outro_41_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_Brick_GateRaces_Outro_41;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1579611856", "1579611856", "uni46_010_b10_v2", "box_Brick_GateRaces_Outro_41.CustomScript", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_Outro_41_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_Brick_GateRaces_Outro_41;
    l1 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|888837395", "888837395", "uni46_010_b10_v2", "box_Brick_GateRaces_Outro_41.Finished", "box_MultipleAND_v2_23.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Brick_GateRaces_Outro_41_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Random_126();
    l0 = self.box_Brick_GateRaces_Outro_41;
    l1 = self.box_Random_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|362063020", "362063020", "uni46_010_b10_v2", "box_Brick_GateRaces_Outro_41.Started", "box_Random_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_42();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|138484377", "138484377", "uni46_010_b10_v2", "box_OutputOrder_v2_40.Out", "box_ParticleSystem_v3_42.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_39();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|648139789", "648139789", "uni46_010_b10_v2", "box_OutputOrder_v2_40.Out", "box_ParticleSystem_v3_39.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_51_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = self.box_MessageListener_v3_51;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|75070591", "75070591", "uni46_010_b10_v2", "box_MessageListener_v3_51.Received", "box_OutputOrder_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_109_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_1();
    l0 = self.box_Brick_GateRaces_CreateLists_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1110121200", "1110121200", "uni46_010_b10_v2", "box_OutputOrder_v2_109.Out", "box_Brick_GateRaces_CreateLists_1.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_57();
    l0 = self.box_Brick_GateRaces_CreateLists_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1283379201", "1283379201", "uni46_010_b10_v2", "box_OutputOrder_v2_109.Out", "box_Brick_GateRaces_CreateLists_57.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_2();
    l0 = self.box_Brick_GateRaces_CreateLists_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1838439756", "1838439756", "uni46_010_b10_v2", "box_OutputOrder_v2_109.Out", "box_Brick_GateRaces_CreateLists_2.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_58();
    l0 = self.box_Brick_GateRaces_CreateLists_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1691092755", "1691092755", "uni46_010_b10_v2", "box_OutputOrder_v2_109.Out", "box_Brick_GateRaces_CreateLists_58.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_59();
    l0 = self.box_Brick_GateRaces_CreateLists_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1138435357", "1138435357", "uni46_010_b10_v2", "box_OutputOrder_v2_109.Out", "box_Brick_GateRaces_CreateLists_59.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_60();
    l0 = self.box_Brick_GateRaces_CreateLists_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2014437140", "2014437140", "uni46_010_b10_v2", "box_OutputOrder_v2_109.Out", "box_Brick_GateRaces_CreateLists_60.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_63();
    l0 = self.box_Brick_GateRaces_CreateLists_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|939721120", "939721120", "uni46_010_b10_v2", "box_OutputOrder_v2_109.Out", "box_Brick_GateRaces_CreateLists_63.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_61();
    l0 = self.box_Brick_GateRaces_CreateLists_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|618948005", "618948005", "uni46_010_b10_v2", "box_OutputOrder_v2_109.Out", "box_Brick_GateRaces_CreateLists_61.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_62();
    l0 = self.box_Brick_GateRaces_CreateLists_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|747761590", "747761590", "uni46_010_b10_v2", "box_OutputOrder_v2_109.Out", "box_Brick_GateRaces_CreateLists_62.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_64();
    l0 = self.box_Brick_GateRaces_CreateLists_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1197516403", "1197516403", "uni46_010_b10_v2", "box_OutputOrder_v2_109.Out", "box_Brick_GateRaces_CreateLists_64.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_67();
    l0 = self.box_Brick_GateRaces_CreateLists_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1619243710", "1619243710", "uni46_010_b10_v2", "box_OutputOrder_v2_109.Out", "box_Brick_GateRaces_CreateLists_67.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_65();
    l0 = self.box_Brick_GateRaces_CreateLists_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1178982987", "1178982987", "uni46_010_b10_v2", "box_OutputOrder_v2_109.Out", "box_Brick_GateRaces_CreateLists_65.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_66();
    l0 = self.box_Brick_GateRaces_CreateLists_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1703612879", "1703612879", "uni46_010_b10_v2", "box_OutputOrder_v2_109.Out", "box_Brick_GateRaces_CreateLists_66.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_109_Out_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_68();
    l0 = self.box_Brick_GateRaces_CreateLists_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|731799444", "731799444", "uni46_010_b10_v2", "box_OutputOrder_v2_109.Out", "box_Brick_GateRaces_CreateLists_68.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_104_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|94595655", "94595655", "uni46_010_b10_v2", "box_Compare_Integers_104.A_ge_B", "box_OnceOnly_v3_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_126_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_128();
    l0 = self.box_Random_126;
    l1 = self.box_PlayDialog_v6_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|255747200", "255747200", "uni46_010_b10_v2", "box_Random_126.Output", "box_PlayDialog_v6_128.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_126_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_127();
    l0 = self.box_Random_126;
    l1 = self.box_PlayDialog_v6_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1768607437", "1768607437", "uni46_010_b10_v2", "box_Random_126.Output", "box_PlayDialog_v6_127.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_126_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_125();
    l0 = self.box_Random_126;
    l1 = self.box_PlayDialog_v6_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1717240201", "1717240201", "uni46_010_b10_v2", "box_Random_126.Output", "box_PlayDialog_v6_125.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_79();
    l0 = self.box_MultipleAND_v2_23;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1920671591", "1920671591", "uni46_010_b10_v2", "box_MultipleAND_v2_23.Out", "box_ActivityEnd_79.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1823354732", "1823354732", "uni46_010_b10_v2", "box_OutputOrder_v2_91.Out", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_90();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2078746858", "2078746858", "uni46_010_b10_v2", "box_OutputOrder_v2_91.Out", "box_OutputOrder_v2_90.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_91_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_118();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2057373323", "2057373323", "uni46_010_b10_v2", "box_OutputOrder_v2_91.Out", "box_OutputOrder_v2_118.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_12_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1543293026", "1543293026", "uni46_010_b10_v2", "box_Compare_Integers_12.A_ge_B", "box_OnceOnly_v3_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_111_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_110();
    l0 = self.box_OnceOnly_v3_111;
    l1 = self.box_ProximityTrigger_v2_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1265061101", "1265061101", "uni46_010_b10_v2", "box_OnceOnly_v3_111.Out", "box_ProximityTrigger_v2_110.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_85_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_85;
    l1 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|413157316", "413157316", "uni46_010_b10_v2", "box_MessageListener_v3_85.Received", "box_MultipleOR_88.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_16_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_16;
    l1 = self.box_uni46_010_rampwayfires_1_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2132887919", "2132887919", "uni46_010_b10_v2", "box_OnceOnly_v3_16.Out", "box_uni46_010_rampwayfires_1_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_118_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_107();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1597191968", "1597191968", "uni46_010_b10_v2", "box_OutputOrder_v2_118.Out", "box_Compare_Integers_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_118_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_117();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|985898737", "985898737", "uni46_010_b10_v2", "box_OutputOrder_v2_118.Out", "box_Compare_Integers_117.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_9_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_9;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|452286126", "452286126", "uni46_010_b10_v2", "box_ActivityAcknowledgeGate_9.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_9_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_9;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1515731815", "1515731815", "uni46_010_b10_v2", "box_ActivityAcknowledgeGate_9.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_72_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2081424522", "2081424522", "uni46_010_b10_v2", "box_Simple_Node_72.Out", "box_OutputOrder_v2_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_112_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_10();
    l0 = self.box_Brick_GateRaces_CreateLists_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|908212816", "908212816", "uni46_010_b10_v2", "box_OutputOrder_v2_112.Out", "box_Brick_GateRaces_CreateLists_10.ClearLists", clone:GetLuaBox(), l0:GetLuaBox());
    -- ClearLists
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_112_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_109();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1887571948", "1887571948", "uni46_010_b10_v2", "box_OutputOrder_v2_112.Out", "box_OutputOrder_v2_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_112_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_115();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1794528890", "1794528890", "uni46_010_b10_v2", "box_OutputOrder_v2_112.Out", "box_Simple_Node_115.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_36_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = self.box_MessageListener_v3_36;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|676917424", "676917424", "uni46_010_b10_v2", "box_MessageListener_v3_36.Received", "box_OutputOrder_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_RemoveEntity_v2_44()
    local params;
    params = {
        -- Group,
        [0] = "2103165457910477741",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_32()
    local params;
    params = {
        -- Group,
        [0] = "2099890102925796236",
    };
    return params;
end;

function export:OnEnter_box_Random_8()
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

function export:OnEnter_box_MissionBlockLayer_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|136042011");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_69_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160235748130135",
        -- missionLayerId,
        [1] = "27160245165718142",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|160461424");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_156_Out,
    });
    params = {
        -- Message,
        [0] = "uni46_010_playerfire_deactivate",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|169745666");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_61()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103191026601582205",
        -- EntityProximityMiss,
        [1] = "2104352393578692638",
        -- FX,
        [2] = "2103191026599485043",
        -- FX_Off,
        [3] = "2103191026601582201",
        -- Marker,
        [4] = "2103191026601582199",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_62()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103191026926640778",
        -- EntityProximityMiss,
        [1] = "2104352417213595682",
        -- FX,
        [2] = "2103191026926640768",
        -- FX_Off,
        [3] = "2103191026926640774",
        -- Marker,
        [4] = "2103191026926640772",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_99()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103979433678355888",
    };
    return params;
end;

function export:OnEnter_box_Audio_Manager_25()
    local params;
    params = {
        -- Flame_Soundpoint,
        [1] = "2103166578454442997",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_92()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103955102174831836",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|259703979");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
                [2] = self.f_box_OutputOrder_v2_31_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|300745149");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_45_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_45_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103166610480051222",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_125()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4188347406",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|320857475");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_107_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_124()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3758914268",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|344524804");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_38_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_38_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103166597299450884",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_110()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103979412316765612",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|362609611");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 2,
        },
    });
    params = {
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
        [2] = "2101092912042349663",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|402619976");
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
                [0] = self.f_box_OutputOrder_v2_46_Out_0,
                [1] = self.f_box_OutputOrder_v2_46_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|416895931");
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

function export:OnEnter_box_GroupSizeListener_v5_155()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#4B997A06",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|431722772");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_42_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_42_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103166599000241160",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|476554115");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_24_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|525632107");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_29_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 6,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|560011855");
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
                [0] = self.f_box_OutputOrder_v2_55_Out_0,
                [1] = self.f_box_OutputOrder_v2_55_Out_1,
                [2] = self.f_box_OutputOrder_v2_55_Out_2,
                [3] = self.f_box_OutputOrder_v2_55_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|560037108");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_95()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1852495886",
    };
    return params;
end;

function export:OnEnter_box_uni46_010_vehiclefire_system_34()
    local params;
    params = {
    };
    return params;
end;

function export:OnEnter_box_Audio_Manager_20()
    local params;
    params = {
        -- Flame_Soundpoint,
        [1] = "2103166606581445644",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|723818321");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_35_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_35_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103166578454442995",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|726105953");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_117_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 7,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|738138933");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
                [2] = self.f_box_OutputOrder_v2_4_Out_2,
                [3] = self.f_box_OutputOrder_v2_4_Out_3,
                [4] = self.f_box_OutputOrder_v2_4_Out_4,
                [5] = self.f_box_OutputOrder_v2_4_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|773449879");
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

function export:OnEnter_box_Audio_Manager_17()
    local params;
    params = {
        -- Flame_Soundpoint,
        [1] = "2103166610480051220",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|815562043");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_115_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|859970241");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_30_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160235748130135",
        -- missionLayerId,
        [1] = "27160245165718142",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|861096699");
    l0:SetConnections({
        -- OnSetAsIndestructible,
        [4] = self.f_box_VehicleModifier_v2_76_OnSetAsIndestructible,
    });
    params = {
        -- targets,
        [0] = "2099890102925796236",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_59()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103191025590754902",
        -- EntityProximityMiss,
        [1] = "2104352346854146066",
        -- FX,
        [2] = "2103191025588657740",
        -- FX_Off,
        [3] = "2103191025590754898",
        -- Marker,
        [4] = "2103191025588657744",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|890756030");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_39_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_39_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103166606583542798",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_66()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103191033130016446",
        -- EntityProximityMiss,
        [1] = "2104352467700432946",
        -- FX,
        [2] = "2103191033127919284",
        -- FX_Off,
        [3] = "2103191033127919290",
        -- Marker,
        [4] = "2103191033127919288",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_128()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3747759617",
    };
    return params;
end;

function export:OnEnter_box_Random_18()
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

function export:OnEnter_box_PlayDialog_v6_121()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3043132005",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_108()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "clutchnixon_countdown_go",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CORE_19()
    local params;
    params = {
        -- bTeleportPlayer,
        [0] = false,
        -- eMobileMarker_Vehicle_Client,
        [1] = "2103166173033018344",
        -- eMobileMarker_Vehicle_Host,
        [2] = "2103166147303060452",
        -- eTeleportPointClient,
        [3] = "2103166098638648273",
        -- eTeleportPointHost,
        [4] = "2103166090805785549",
        -- eTriggerAroundStartingVehicles,
        [5] = "2103856922810665937",
        -- eVehicleSpawnerClient,
        [6] = "2103165457902089127",
        -- eVehicleSpawnerHost,
        [7] = "2099890102917407622",
        -- fDelayBeforeStart,
        [8] = 0,
        -- fTimer,
        [9] = 25,
        -- iBonusTimeGates,
        [10] = 5,
        -- VehicleLockCountdown,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1025518411");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
                [2] = self.f_box_OutputOrder_v2_26_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1032440920");
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
                [0] = self.f_box_OutputOrder_v2_90_Out_0,
                [1] = self.f_box_OutputOrder_v2_90_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_98()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103955126541640928",
    };
    return params;
end;

function export:OnEnter_box_Audio_Manager_22()
    local params;
    params = {
        -- Flame_Soundpoint,
        [1] = "2103166607927817234",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_70()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "clutchnixon_countdown_3",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1205868254");
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
                [0] = self.f_box_OutputOrder_v2_43_Out_0,
                [1] = self.f_box_OutputOrder_v2_43_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_64()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103191032089829015",
        -- EntityProximityMiss,
        [1] = "2104352432508125222",
        -- FX,
        [2] = "2103191032087731853",
        -- FX_Off,
        [3] = "2103191032089829011",
        -- Marker,
        [4] = "2103191032089829009",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1266977850");
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
                [0] = self.f_box_OutputOrder_v2_53_Out_0,
                [1] = self.f_box_OutputOrder_v2_53_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Audio_Manager_15()
    local params;
    params = {
        -- Flame_Soundpoint,
        [1] = "2103166599000241162",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1299634792");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1308699670");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_100_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 11,
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_60()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103191025928396387",
        -- EntityProximityMiss,
        [1] = "2104352359741145110",
        -- FX,
        [2] = "2103191025928396377",
        -- FX_Off,
        [3] = "2103191025928396383",
        -- Marker,
        [4] = "2103191025928396381",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_158()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2105115644811809318",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101092912042349663",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_1()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103166848739587604",
        -- EntityProximityMiss,
        [1] = "2104352220066627586",
        -- FX,
        [2] = "2103166848737490444",
        -- FX_Off,
        [3] = "2103166848739587606",
        -- Marker,
        [4] = "2103166848737490448",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_2()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103191016805785148",
        -- EntityProximityMiss,
        [1] = "2104352322237775882",
        -- FX,
        [2] = "2103191016803687986",
        -- FX_Off,
        [3] = "2103191016805785144",
        -- Marker,
        [4] = "2103191016805785142",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_57()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103180835587903098",
        -- EntityProximityMiss,
        [1] = "2104352309440954374",
        -- FX,
        [2] = "2103180835585805936",
        -- FX_Off,
        [3] = "2103180835585805942",
        -- Marker,
        [4] = "2103180835585805940",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1426839275");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_89_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_65()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103191032796569265",
        -- EntityProximityMiss,
        [1] = "2104352454205259822",
        -- FX,
        [2] = "2103191032796569255",
        -- FX_Off,
        [3] = "2103191032796569261",
        -- Marker,
        [4] = "2103191032796569259",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_122()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4188347406",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_68()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103191033484435147",
        -- FX,
        [2] = "2103191033484435137",
        -- FX_Off,
        [3] = "2103191033484435143",
        -- Marker,
        [4] = "2103191033484435141",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_94()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "499209136",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1472951133");
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

function export:OnEnter_box_MessageListener_v3_73()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_OutOfTime",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_157()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1493484747");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_157_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "36167412474744556",
        -- missionLayerId,
        [1] = "27160242604848169",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_93()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_Vehicle_Destroyed",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1567298873");
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
                [0] = self.f_box_OutputOrder_v2_49_Out_0,
                [1] = self.f_box_OutputOrder_v2_49_Out_1,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1583006661");
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

function export:OnEnter_box_ActivityRetry_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1587234069");
    l0:SetConnections({
    });
    l0 = self.box_Brick_GateRaces_CORE_19;
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

function export:OnEnter_box_Brick_GateRaces_CreateLists_67()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103191032484093604",
        -- EntityProximityMiss,
        [1] = "2104352444849864746",
        -- FX,
        [2] = "2103191032484093594",
        -- FX_Off,
        [3] = "2103191032484093600",
        -- Marker,
        [4] = "2103191032484093598",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1630547854");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_48_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_48_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103166607927817232",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1638488905");
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

function export:OnEnter_box_Brick_GateRaces_Outro_41()
    local params;
    params = {
        -- HostTeleport,
        [1] = "2103166014555435977",
        -- Region,
        [2] = 0,
        -- SceneEntity,
        [3] = "2101273496395990871",
        -- SequenceFile,
        [4] = "sequences/zeta_main/uni46/uni46_010_cin_camera.seq",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1704897426");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2103165457910477741",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_58()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103191023625723465",
        -- EntityProximityMiss,
        [1] = "2104352334860533774",
        -- FX,
        [2] = "2103191023623626303",
        -- FX_Off,
        [3] = "2103191023623626309",
        -- Marker,
        [4] = "2103191023623626307",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_10()
    local params;
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1747291084");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
                [1] = self.f_box_OutputOrder_v2_40_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_51()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "clutchnixon_countdown_2",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1794295251");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 14,
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
                [2] = self.f_box_OutputOrder_v2_109_Out_2,
                [3] = self.f_box_OutputOrder_v2_109_Out_3,
                [4] = self.f_box_OutputOrder_v2_109_Out_4,
                [5] = self.f_box_OutputOrder_v2_109_Out_5,
                [6] = self.f_box_OutputOrder_v2_109_Out_6,
                [7] = self.f_box_OutputOrder_v2_109_Out_7,
                [8] = self.f_box_OutputOrder_v2_109_Out_8,
                [9] = self.f_box_OutputOrder_v2_109_Out_9,
                [10] = self.f_box_OutputOrder_v2_109_Out_10,
                [11] = self.f_box_OutputOrder_v2_109_Out_11,
                [12] = self.f_box_OutputOrder_v2_109_Out_12,
                [13] = self.f_box_OutputOrder_v2_109_Out_13,
            },
            count = 14,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_127()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3758914268",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1805709417");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_104_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_Random_126()
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

function export:OnEnter_box_RemoveEntity_v2_154()
    local params;
    params = {
        -- Group,
        [0] = "#4B997A06",
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

function export:OnEnter_box_OutputOrder_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1856588487");
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

function export:OnEnter_box_Compare_Integers_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|1916814929");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_12_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 12,
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
        [3] = "3747759617",
    };
    return params;
end;

function export:OnEnter_box_uni46_010_vehiclefire_system_27()
    local params;
    params = {
        -- iGatePassed,
        [0] = self.iGatePassed,
        -- ListCheckpoints,
        [1] = self.lSprinklers_Triggers,
        -- ListFXs,
        [2] = self.lSprinklers_FXs,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_85()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_Player_Killed",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2012062020");
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
                [0] = self.f_box_OutputOrder_v2_118_Out_0,
                [1] = self.f_box_OutputOrder_v2_118_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Audio_Manager_11()
    local params;
    params = {
        -- Flame_Soundpoint,
        [1] = "2103166597301548038",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_63()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103191026261843568",
        -- EntityProximityMiss,
        [1] = "2104352373764800538",
        -- FX,
        [2] = "2103191026261843558",
        -- FX_Off,
        [3] = "2103191026261843564",
        -- Marker,
        [4] = "2103191026261843562",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2118145792");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_72_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_b10_v2|2130275837");
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
                [0] = self.f_box_OutputOrder_v2_112_Out_0,
                [1] = self.f_box_OutputOrder_v2_112_Out_1,
                [2] = self.f_box_OutputOrder_v2_112_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_36()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "clutchnixon_countdown_1",
    };
    return params;
end;

function export:OnExit_box_Brick_GateRaces_CORE_19_Disabled()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_19;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_GateRaces_CORE_19_Fail()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_19;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_GateRaces_CORE_19_Finished()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_19;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_GateRaces_CORE_19_GatePassed()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_19;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
end;

function export:OnExit_box_Brick_GateRaces_CORE_19_Started()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_19;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPlayerGroup_v2_89_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.players = l0:GetDataOutValue(0);
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
