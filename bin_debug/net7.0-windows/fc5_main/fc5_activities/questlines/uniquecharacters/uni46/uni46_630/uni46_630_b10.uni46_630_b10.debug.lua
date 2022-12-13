LUACYa -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni46/uni46_630/uni46_630_b10.domino
-- User graph: UNI46_630_B10
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
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/AllowAutoDrive_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetOasis.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_630/UNI46_630_B10.AudioManager.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_630/UNI46_630_B10.UNI46_630_B10_Array.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3601967096.bnk]], "CSoundResource");
        cboxRes:LoadResource([[159871221.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3626972026.bnk]], "CSoundResource");
        cboxRes:LoadResource([[525636272.bnk]], "CSoundResource");
        cboxRes:LoadResource([[693409868.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3555709945.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2654739509.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_630/UNI46_630_B10.UNI46_630_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_630/UNI46_630_B10.AudioManager.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_630/UNI46_630_B10.UNI46_630_B10_Array.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI46_630_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10";
    self.oObjective = {
        section = "Objectives",
        item = "UNI46_630_B10C_OBJ",
        id = "683119",
    };
    self.gp_playergroup = nil;
    self.iCeleb = "9015208488001815";
    self.eHost = nil;
    self.eClient = nil;
    self._15 = 0;
    self.NearDistance = 15;
    self.TimeBonus = 3;
    self.oObjective2 = {
        section = "Objectives",
        item = "UNI46_630_B10D_OBJ",
        id = "711613",
    };
    self.RingsHit = 0;
    self.bCoop = false;
    self.ePlayerClient = nil;
    self.ePlayerHost = nil;
    self.ePlayerPassingGate = nil;
    self.iGatePassed = 0;
    self.FAIL = {
        section = "Quest_Common",
        item = "UNI46_COMMON_FAIL_WINGSUIT",
        id = "840969",
    };
    self.box_Brick_GateRaces_Dialogs_119 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|17502017");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|41676916");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|43838200");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_30_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_93 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|54790218");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_93_Enter,
    });
    self.box_CoopActivePlayers_104 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|70681314");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_104_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_104_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_104_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_104_TwoPlayers,
    });
    self.box_MessageListener_v3_115 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|72098986");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_115_Received,
    });
    self.box_Brick_GateRaces_CORE_80 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CORE.debug.lua");
    l0 = self.box_Brick_GateRaces_CORE_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CORE_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|181470553");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_Brick_GateRaces_CORE_80_Disabled,
        -- Fail,
        [1] = self.f_box_Brick_GateRaces_CORE_80_Fail,
        -- Finished,
        [2] = self.f_box_Brick_GateRaces_CORE_80_Finished,
        -- GatePassed,
        [3] = self.f_box_Brick_GateRaces_CORE_80_GatePassed,
        -- Started,
        [4] = self.f_box_Brick_GateRaces_CORE_80_Started,
    });
    self.box_OnceOnly_v3_94 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|339581759");
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
                [0] = self.f_box_OnceOnly_v3_94_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|353091600");
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
    self.box_SpawnAI_49 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|472557713");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_49_Out,
    });
    self.box_ProximityRadiusListener_v3_31 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|565378304");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_31_SomeoneFar,
    });
    self.box_SpawnAI_55 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|597895349");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_55_Out,
    });
    self.box_Brick_GateRaces_Outro_58 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Outro.debug.lua");
    l0 = self.box_Brick_GateRaces_Outro_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Outro_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|669434711");
    l0:SetConnections({
        -- Finished,
        [1] = self.f_box_Brick_GateRaces_Outro_58_Finished,
        -- Started,
        [2] = self.f_box_Brick_GateRaces_Outro_58_Started,
    });
    self.box_OnceOnly_v3_98 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|771324039");
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
                [0] = self.f_box_OnceOnly_v3_98_Out_0,
            },
            count = 1,
        },
    });
    self.box_Brick_GateRaces_Dialogs_112 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|783617569");
    l0:SetConnections({
    });
    self.box_SpawnAI_42 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|796503393");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_42_Out,
    });
    self.box_Brick_GateRaces_Dialogs_111 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|856180052");
    l0:SetConnections({
    });
    self.box_SpawnAI_44 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|996686184");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_44_Out,
    });
    self.box_OnceOnly_v3_96 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1020663205");
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
                [0] = self.f_box_OnceOnly_v3_96_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_81 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1068088574");
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
                [0] = self.f_box_OnceOnly_v3_81_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_68 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1111924573");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_68_Started,
    });
    self.box_UNI46_630_B10_Array_8 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_630/UNI46_630_B10.UNI46_630_B10_Array.debug.lua");
    l0 = self.box_UNI46_630_B10_Array_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_630_B10_Array_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1119135529");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_UNI46_630_B10_Array_8_Out,
    });
    self.box_VehicleListener_v3_28 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1127653117");
    l0:SetConnections({
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_28_OnStandUp,
    });
    self.box_SoundModifier_v2_6 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1128772777");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_6_Finished,
        -- Started,
        [1] = self.f_box_SoundModifier_v2_6_Started,
    });
    self.box_SoundModifier_v2_9 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1151724573");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_9_Finished,
        -- Started,
        [1] = self.f_box_SoundModifier_v2_9_Started,
    });
    self.box_PlayDialog_v6_75 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1244652286");
    l0:SetConnections({
    });
    self.box_SpawnAI_52 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1261435759");
    l0:SetConnections({
    });
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1386379965");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_13_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1405535681");
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
        [0] = self.f_box_MultipleOR_23_Out,
    });
    self.box_OnceOnly_v3_90 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1448082871");
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
                [0] = self.f_box_OnceOnly_v3_90_Out_0,
            },
            count = 1,
        },
    });
    self.box_MessageListener_v3_118 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1518670272");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_118_Received,
    });
    self.box_PlayDialog_v6_76 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1654467281");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_47 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1720821495");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_47_Started,
    });
    self.box_VehicleListener_v3_59 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1747169483");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_59_OnSit,
    });
    self.box_PlayDialog_v6_71 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1750770182");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_14 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1776921859");
    l0:SetConnections({
    });
    self.box_AudioManager_18 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_630/UNI46_630_B10.AudioManager.debug.lua");
    l0 = self.box_AudioManager_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AudioManager_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1792207684");
    l0:SetConnections({
        -- Out_Start_Flame,
        [1] = self.f_box_AudioManager_18_Out_Start_Flame,
        -- Out_Stop_Flame,
        [3] = self.f_box_AudioManager_18_Out_Stop_Flame,
    });
    self.box_Delay_v5_82 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1863440512");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_82_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_82_TimeElapsed,
    });
    self.box_AudioManager_21 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_630/UNI46_630_B10.AudioManager.debug.lua");
    l0 = self.box_AudioManager_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AudioManager_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1872264079");
    l0:SetConnections({
        -- Out_Start_Flame,
        [1] = self.f_box_AudioManager_21_Out_Start_Flame,
        -- Out_Stop_Flame,
        [3] = self.f_box_AudioManager_21_Out_Stop_Flame,
    });
    self.box_OnceOnly_v3_113 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1908681348");
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
                [0] = self.f_box_OnceOnly_v3_113_Out_0,
            },
            count = 1,
        },
    });
    self.box_SpawnAI_41 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|2008790053");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_41_Out,
    });
    self.box_SpawnAI_54 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|2026837853");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_54_Out,
    });
    self.box_SpawnAI_57 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|2082523039");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_Dialogs_117 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|2090677207");
    l0:SetConnections({
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|2126773197");
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
    self.box_SoundModifier_v2_15 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|2147171981");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1792088459", "1792088459", "UNI46_630_B10", "In", "box_ActivityAcknowledgeGate_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_73_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_31();
    l0 = self.box_ProximityRadiusListener_v3_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1118071488", "1118071488", "UNI46_630_B10", "box_Simple_Node_73.Out", "box_ProximityRadiusListener_v3_31.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_106_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_AllowAutoDrive_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1113366943", "1113366943", "UNI46_630_B10", "box_Simple_Node_106.Out", "box_AllowAutoDrive_v2_3.DoNotAllow", clone:GetLuaBox(), l0:GetLuaBox());
    -- DoNotAllow
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_32_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1865972137", "1865972137", "UNI46_630_B10", "box_Simple_Node_32.Out", "box_MultipleOR_37.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_120_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_116();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|617262749", "617262749", "UNI46_630_B10", "box_Simple_Node_120.Out", "box_OutputOrder_v2_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_45_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|284666570", "284666570", "UNI46_630_B10", "box_Simple_Node_45.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_VehicleListener_v3_28();
    l0 = self.box_VehicleListener_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1589249383", "1589249383", "UNI46_630_B10", "box_Simple_Node_45.Out", "box_VehicleListener_v3_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1317263015", "1317263015", "UNI46_630_B10", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|515289497", "515289497", "UNI46_630_B10", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_30_Started()
    local params, l0, l1;
    params = self:OnEnter_box_AudioManager_21();
    l0 = self.box_Delay_v5_30;
    l1 = self.box_AudioManager_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1170522345", "1170522345", "UNI46_630_B10", "box_Delay_v5_30.Started", "box_AudioManager_21.In_Start_Flame", l0:GetLuaBox(), l1:GetLuaBox());
    -- In_Start_Flame
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_AudioManager_21();
    l0 = self.box_Delay_v5_30;
    l1 = self.box_AudioManager_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|694638844", "694638844", "UNI46_630_B10", "box_Delay_v5_30.TimeElapsed", "box_AudioManager_21.In_Stop_Flame", l0:GetLuaBox(), l1:GetLuaBox());
    -- In_Stop_Flame
    l1:Exec(3, params);
end;

function export:f_box_ProximityTrigger_v2_93_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_82();
    l0 = self.box_ProximityTrigger_v2_93;
    l1 = self.box_Delay_v5_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|703714032", "703714032", "UNI46_630_B10", "box_ProximityTrigger_v2_93.Enter", "box_Delay_v5_82.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_CoopActivePlayers_104_OnePlayer()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_104_OnePlayer();
    params = self:OnEnter_box_SetBoolean_v2_101();
    l0 = self.box_CoopActivePlayers_104;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|2108379990", "2108379990", "UNI46_630_B10", "box_CoopActivePlayers_104.OnePlayer", "box_SetBoolean_v2_101.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_104_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_102();
    l0 = self.box_CoopActivePlayers_104;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|538838209", "538838209", "UNI46_630_B10", "box_CoopActivePlayers_104.PlayerAdded", "box_Simple_Node_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_104_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_104_TwoPlayers();
    params = self:OnEnter_box_SetBoolean_v2_101();
    l0 = self.box_CoopActivePlayers_104;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|2143639644", "2143639644", "UNI46_630_B10", "box_CoopActivePlayers_104.TwoPlayers", "box_SetBoolean_v2_101.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_115_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_115;
    l1 = self.box_Brick_GateRaces_Dialogs_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1674511272", "1674511272", "UNI46_630_B10", "box_MessageListener_v3_115.Received", "box_Brick_GateRaces_Dialogs_119.OutOfTime", l0:GetLuaBox(), l1:GetLuaBox());
    -- OutOfTime
    l1:Exec(3, {
    });
end;

function export:f_box_Brick_GateRaces_CORE_80_Disabled()
    self:OnExit_box_Brick_GateRaces_CORE_80_Disabled();
end;

function export:f_box_Brick_GateRaces_CORE_80_Fail()
    local l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_80_Fail();
    l0 = self.box_Brick_GateRaces_CORE_80;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|398445587", "398445587", "UNI46_630_B10", "box_Brick_GateRaces_CORE_80.Fail", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_GateRaces_CORE_80_Finished()
    local params, l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_80_Finished();
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = self.box_Brick_GateRaces_CORE_80;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1786841872", "1786841872", "UNI46_630_B10", "box_Brick_GateRaces_CORE_80.Finished", "box_OutputOrder_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_CORE_80_GatePassed()
    local params, l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_80_GatePassed();
    params = self:OnEnter_box_OutputOrder_v2_79();
    l0 = self.box_Brick_GateRaces_CORE_80;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|736361006", "736361006", "UNI46_630_B10", "box_Brick_GateRaces_CORE_80.GatePassed", "box_OutputOrder_v2_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_CORE_80_Started()
    local params, l0, l1;
    self:OnExit_box_Brick_GateRaces_CORE_80_Started();
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = self.box_Brick_GateRaces_CORE_80;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|848163834", "848163834", "UNI46_630_B10", "box_Brick_GateRaces_CORE_80.Started", "box_OutputOrder_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_91_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1870369130", "1870369130", "UNI46_630_B10", "box_Compare_Integers_91.A_eq_B", "box_OnceOnly_v3_90.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetOasis_39_Out()
    local params, l0;
    self:OnExit_box_SetOasis_39_Out();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_32();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1711002846", "1711002846", "UNI46_630_B10", "box_SetOasis_39.Out", "box_Simple_Node_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_45();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|510229933", "510229933", "UNI46_630_B10", "box_OutputOrder_v2_43.Out", "box_Simple_Node_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_Outro_58();
    l0 = self.box_Brick_GateRaces_Outro_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1639288954", "1639288954", "UNI46_630_B10", "box_OutputOrder_v2_43.Out", "box_Brick_GateRaces_Outro_58.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_94_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_76();
    l0 = self.box_OnceOnly_v3_94;
    l1 = self.box_PlayDialog_v6_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|755909479", "755909479", "UNI46_630_B10", "box_OnceOnly_v3_94.Out", "box_PlayDialog_v6_76.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_MultipleOR_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1895418075", "1895418075", "UNI46_630_B10", "box_MultipleOR_5.Out", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_85_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|13079210", "13079210", "UNI46_630_B10", "box_Compare_Integers_85.A_eq_B", "box_OnceOnly_v3_96.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_114_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|298783093", "298783093", "UNI46_630_B10", "box_Compare_Integers_114.A_eq_B", "box_OnceOnly_v3_113.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_49_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_44();
    l0 = self.box_SpawnAI_49;
    l1 = self.box_SpawnAI_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1946361715", "1946361715", "UNI46_630_B10", "box_SpawnAI_49.Out", "box_SpawnAI_44.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_19_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_20();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|791915444", "791915444", "UNI46_630_B10", "box_ParticleSystem_v3_19.Started", "box_ParticleSystem_v3_20.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_19_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_20();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|210726201", "210726201", "UNI46_630_B10", "box_ParticleSystem_v3_19.Stopped", "box_ParticleSystem_v3_20.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_26_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_27();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|155790012", "155790012", "UNI46_630_B10", "box_ParticleSystem_v3_26.Started", "box_ParticleSystem_v3_27.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_26_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_27();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|890863275", "890863275", "UNI46_630_B10", "box_ParticleSystem_v3_26.Stopped", "box_ParticleSystem_v3_27.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_31_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_SetOasis_39();
    l0 = self.box_ProximityRadiusListener_v3_31;
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1710834733", "1710834733", "UNI46_630_B10", "box_ProximityRadiusListener_v3_31.SomeoneFar", "box_SetOasis_39.FromOasis", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromOasis
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetOasis_25_Out()
    local params, l0;
    self:OnExit_box_SetOasis_25_Out();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_32();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|2084636826", "2084636826", "UNI46_630_B10", "box_SetOasis_25.Out", "box_Simple_Node_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_55_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_57();
    l0 = self.box_SpawnAI_55;
    l1 = self.box_SpawnAI_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1652341824", "1652341824", "UNI46_630_B10", "box_SpawnAI_55.Out", "box_SpawnAI_57.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Brick_GateRaces_Outro_58_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_78();
    l0 = self.box_Brick_GateRaces_Outro_58;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|438013781", "438013781", "UNI46_630_B10", "box_Brick_GateRaces_Outro_58.Finished", "box_ActivityEnd_78.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_Outro_58_Started()
    local l0, l1;
    l0 = self.box_Brick_GateRaces_Outro_58;
    l1 = self.box_Brick_GateRaces_Dialogs_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1694958165", "1694958165", "UNI46_630_B10", "box_Brick_GateRaces_Outro_58.Started", "box_Brick_GateRaces_Dialogs_111.Success", l0:GetLuaBox(), l1:GetLuaBox());
    -- Success
    l1:Exec(4, {
    });
end;

function export:f_box_OnceOnly_v3_98_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_47();
    l0 = self.box_OnceOnly_v3_98;
    l1 = self.box_PlayDialog_v6_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|804588964", "804588964", "UNI46_630_B10", "box_OnceOnly_v3_98.Out", "box_PlayDialog_v6_47.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_77_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1771363331", "1771363331", "UNI46_630_B10", "box_Compare_Integers_77.A_eq_B", "box_OnceOnly_v3_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_49();
    l0 = self.box_SpawnAI_42;
    l1 = self.box_SpawnAI_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1742841164", "1742841164", "UNI46_630_B10", "box_SpawnAI_42.Out", "box_SpawnAI_49.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_116_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_118();
    l0 = self.box_MessageListener_v3_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1673544503", "1673544503", "UNI46_630_B10", "box_OutputOrder_v2_116.Out", "box_MessageListener_v3_118.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_116_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_115();
    l0 = self.box_MessageListener_v3_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|448405873", "448405873", "UNI46_630_B10", "box_OutputOrder_v2_116.Out", "box_MessageListener_v3_115.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_83_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1578849887", "1578849887", "UNI46_630_B10", "box_Compare_Integers_83.A_eq_B", "box_OnceOnly_v3_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_69();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1296450412", "1296450412", "UNI46_630_B10", "box_OutputOrder_v2_56.Out", "box_ParticleSystem_v3_69.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_88();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1878977818", "1878977818", "UNI46_630_B10", "box_OutputOrder_v2_56.Out", "box_ParticleSystem_v3_88.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_69_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_4();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1706069713", "1706069713", "UNI46_630_B10", "box_ParticleSystem_v3_69.Started", "box_ParticleSystem_v3_4.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_69_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_4();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|2096862018", "2096862018", "UNI46_630_B10", "box_ParticleSystem_v3_69.Stopped", "box_ParticleSystem_v3_4.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_52();
    l0 = self.box_SpawnAI_44;
    l1 = self.box_SpawnAI_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1784328509", "1784328509", "UNI46_630_B10", "box_SpawnAI_44.Out", "box_SpawnAI_52.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_96_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_75();
    l0 = self.box_OnceOnly_v3_96;
    l1 = self.box_PlayDialog_v6_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|562438989", "562438989", "UNI46_630_B10", "box_OnceOnly_v3_96.Out", "box_PlayDialog_v6_75.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_81_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_81;
    l1 = self.box_Brick_GateRaces_Dialogs_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|955091336", "955091336", "UNI46_630_B10", "box_OnceOnly_v3_81.Out", "box_Brick_GateRaces_Dialogs_112.Encouragement", l0:GetLuaBox(), l1:GetLuaBox());
    -- Encouragement
    l1:Exec(1, {
    });
end;

function export:f_box_PlayDialog_v6_68_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_54();
    l0 = self.box_PlayDialog_v6_68;
    l1 = self.box_SpawnAI_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|673777411", "673777411", "UNI46_630_B10", "box_PlayDialog_v6_68.Started", "box_SpawnAI_54.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_UNI46_630_B10_Array_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_GateRaces_CORE_80();
    l0 = self.box_UNI46_630_B10_Array_8;
    l1 = self.box_Brick_GateRaces_CORE_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|235152673", "235152673", "UNI46_630_B10", "box_UNI46_630_B10_Array_8.Out", "box_Brick_GateRaces_CORE_80.Start_OnFoot", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start_OnFoot
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_92_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_69();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|760285088", "760285088", "UNI46_630_B10", "box_OutputOrder_v2_92.Out", "box_ParticleSystem_v3_69.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_92_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_88();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1882494055", "1882494055", "UNI46_630_B10", "box_OutputOrder_v2_92.Out", "box_ParticleSystem_v3_88.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_28_OnStandUp()
    local params, l0, l1;
    params = self:OnEnter_box_SetOasis_25();
    l0 = self.box_VehicleListener_v3_28;
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|2091559646", "2091559646", "UNI46_630_B10", "box_VehicleListener_v3_28.OnStandUp", "box_SetOasis_25.FromOasis", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromOasis
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_6_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_14();
    l0 = self.box_SoundModifier_v2_6;
    l1 = self.box_SoundModifier_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1045633223", "1045633223", "UNI46_630_B10", "box_SoundModifier_v2_6.Finished", "box_SoundModifier_v2_14.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_6_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_14();
    l0 = self.box_SoundModifier_v2_6;
    l1 = self.box_SoundModifier_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1743184890", "1743184890", "UNI46_630_B10", "box_SoundModifier_v2_6.Started", "box_SoundModifier_v2_14.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_9_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_15();
    l0 = self.box_SoundModifier_v2_9;
    l1 = self.box_SoundModifier_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|10891531", "10891531", "UNI46_630_B10", "box_SoundModifier_v2_9.Finished", "box_SoundModifier_v2_15.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_9_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_15();
    l0 = self.box_SoundModifier_v2_9;
    l1 = self.box_SoundModifier_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1838492203", "1838492203", "UNI46_630_B10", "box_SoundModifier_v2_9.Started", "box_SoundModifier_v2_15.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_59();
    l0 = self.box_VehicleListener_v3_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1037164083", "1037164083", "UNI46_630_B10", "box_OutputOrder_v2_1.Out", "box_VehicleListener_v3_59.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_28();
    l0 = self.box_VehicleListener_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|230123237", "230123237", "UNI46_630_B10", "box_OutputOrder_v2_1.Out", "box_VehicleListener_v3_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_31();
    l0 = self.box_ProximityRadiusListener_v3_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1397198088", "1397198088", "UNI46_630_B10", "box_OutputOrder_v2_1.Out", "box_ProximityRadiusListener_v3_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1613988050", "1613988050", "UNI46_630_B10", "box_OutputOrder_v2_1.Out", "box_Simple_Node_120.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_13_Started()
    local params, l0, l1;
    params = self:OnEnter_box_AudioManager_18();
    l0 = self.box_Delay_v5_13;
    l1 = self.box_AudioManager_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|449381114", "449381114", "UNI46_630_B10", "box_Delay_v5_13.Started", "box_AudioManager_18.In_Start_Flame", l0:GetLuaBox(), l1:GetLuaBox());
    -- In_Start_Flame
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_AudioManager_18();
    l0 = self.box_Delay_v5_13;
    l1 = self.box_AudioManager_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|577017908", "577017908", "UNI46_630_B10", "box_Delay_v5_13.TimeElapsed", "box_AudioManager_18.In_Stop_Flame", l0:GetLuaBox(), l1:GetLuaBox());
    -- In_Stop_Flame
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_MultipleOR_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|842221902", "842221902", "UNI46_630_B10", "box_MultipleOR_23.Out", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_90_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_68();
    l0 = self.box_OnceOnly_v3_90;
    l1 = self.box_PlayDialog_v6_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|184770297", "184770297", "UNI46_630_B10", "box_OnceOnly_v3_90.Out", "box_PlayDialog_v6_68.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_118_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_118;
    l1 = self.box_Brick_GateRaces_Dialogs_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1198719255", "1198719255", "UNI46_630_B10", "box_MessageListener_v3_118.Received", "box_Brick_GateRaces_Dialogs_117.Crash", l0:GetLuaBox(), l1:GetLuaBox());
    -- Crash
    l1:Exec(0, {
    });
end;

function export:f_box_SetBoolean_v2_101_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_101_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_UNI46_630_B10_Array_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|245368790", "245368790", "UNI46_630_B10", "box_SetBoolean_v2_101.Out", "box_UNI46_630_B10_Array_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_79_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|351219345", "351219345", "UNI46_630_B10", "box_OutputOrder_v2_79.Out", "box_Delay_v5_13.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_79_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|939232258", "939232258", "UNI46_630_B10", "box_OutputOrder_v2_79.Out", "box_Delay_v5_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_79_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_77();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|140291023", "140291023", "UNI46_630_B10", "box_OutputOrder_v2_79.Out", "box_Compare_Integers_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_79_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_114();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1167941782", "1167941782", "UNI46_630_B10", "box_OutputOrder_v2_79.Out", "box_Compare_Integers_114.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_79_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_83();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1544552221", "1544552221", "UNI46_630_B10", "box_OutputOrder_v2_79.Out", "box_Compare_Integers_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_79_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_91();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1808765985", "1808765985", "UNI46_630_B10", "box_OutputOrder_v2_79.Out", "box_Compare_Integers_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_79_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_85();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|926850060", "926850060", "UNI46_630_B10", "box_OutputOrder_v2_79.Out", "box_Compare_Integers_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_79_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_86();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|106685601", "106685601", "UNI46_630_B10", "box_OutputOrder_v2_79.Out", "box_Compare_Integers_86.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_79_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_93();
    l0 = self.box_ProximityTrigger_v2_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|588601782", "588601782", "UNI46_630_B10", "box_OutputOrder_v2_79.Out", "box_ProximityTrigger_v2_93.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_47_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_41();
    l0 = self.box_PlayDialog_v6_47;
    l1 = self.box_SpawnAI_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1279414212", "1279414212", "UNI46_630_B10", "box_PlayDialog_v6_47.Started", "box_SpawnAI_41.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_59_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_73();
    l0 = self.box_VehicleListener_v3_59;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1326424698", "1326424698", "UNI46_630_B10", "box_VehicleListener_v3_59.OnSit", "box_Simple_Node_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_88_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_7();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1444763445", "1444763445", "UNI46_630_B10", "box_ParticleSystem_v3_88.Started", "box_ParticleSystem_v3_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_88_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_7();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|877756068", "877756068", "UNI46_630_B10", "box_ParticleSystem_v3_88.Stopped", "box_ParticleSystem_v3_7.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_106();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|717027809", "717027809", "UNI46_630_B10", "box_OutputOrder_v2_38.Out", "box_Simple_Node_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1390922908", "1390922908", "UNI46_630_B10", "box_OutputOrder_v2_38.Out", "box_CoopActivePlayers_104.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_ParticleSystem_v3_12_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_19();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1647534568", "1647534568", "UNI46_630_B10", "box_ParticleSystem_v3_12.Started", "box_ParticleSystem_v3_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_12_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_19();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|2136541682", "2136541682", "UNI46_630_B10", "box_ParticleSystem_v3_12.Stopped", "box_ParticleSystem_v3_19.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AudioManager_18_Out_Start_Flame()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_12();
    l0 = self.box_AudioManager_18;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1117510796", "1117510796", "UNI46_630_B10", "box_AudioManager_18.Out_Start_Flame", "box_ParticleSystem_v3_12.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AudioManager_18_Out_Stop_Flame()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_12();
    l0 = self.box_AudioManager_18;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1046601466", "1046601466", "UNI46_630_B10", "box_AudioManager_18.Out_Stop_Flame", "box_ParticleSystem_v3_12.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_86_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1536828016", "1536828016", "UNI46_630_B10", "box_Compare_Integers_86.A_eq_B", "box_OnceOnly_v3_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_7_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_17();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|2144382043", "2144382043", "UNI46_630_B10", "box_ParticleSystem_v3_7.Started", "box_ParticleSystem_v3_17.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_7_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_17();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1270615304", "1270615304", "UNI46_630_B10", "box_ParticleSystem_v3_7.Stopped", "box_ParticleSystem_v3_17.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_82_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_92();
    l0 = self.box_Delay_v5_82;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|256058547", "256058547", "UNI46_630_B10", "box_Delay_v5_82.Started", "box_OutputOrder_v2_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_82_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_82;
    l1 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|799107890", "799107890", "UNI46_630_B10", "box_Delay_v5_82.TimeElapsed", "box_MultipleOR_23.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_AudioManager_21_Out_Start_Flame()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_26();
    l0 = self.box_AudioManager_21;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1489347067", "1489347067", "UNI46_630_B10", "box_AudioManager_21.Out_Start_Flame", "box_ParticleSystem_v3_26.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AudioManager_21_Out_Stop_Flame()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_26();
    l0 = self.box_AudioManager_21;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1306041062", "1306041062", "UNI46_630_B10", "box_AudioManager_21.Out_Stop_Flame", "box_ParticleSystem_v3_26.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_113_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_71();
    l0 = self.box_OnceOnly_v3_113;
    l1 = self.box_PlayDialog_v6_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1196974048", "1196974048", "UNI46_630_B10", "box_OnceOnly_v3_113.Out", "box_PlayDialog_v6_71.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_27_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_29();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1791935493", "1791935493", "UNI46_630_B10", "box_ParticleSystem_v3_27.Started", "box_ParticleSystem_v3_29.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_27_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_29();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|985952900", "985952900", "UNI46_630_B10", "box_ParticleSystem_v3_27.Stopped", "box_ParticleSystem_v3_29.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_17_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_9();
    l0 = self.box_SoundModifier_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|840184897", "840184897", "UNI46_630_B10", "box_ParticleSystem_v3_17.Started", "box_SoundModifier_v2_9.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_17_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_9();
    l0 = self.box_SoundModifier_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|266086587", "266086587", "UNI46_630_B10", "box_ParticleSystem_v3_17.Stopped", "box_SoundModifier_v2_9.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_42();
    l0 = self.box_SpawnAI_41;
    l1 = self.box_SpawnAI_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|520827718", "520827718", "UNI46_630_B10", "box_SpawnAI_41.Out", "box_SpawnAI_42.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_55();
    l0 = self.box_SpawnAI_54;
    l1 = self.box_SpawnAI_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|560324178", "560324178", "UNI46_630_B10", "box_SpawnAI_54.Out", "box_SpawnAI_55.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_16_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_6();
    l0 = self.box_SoundModifier_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|267144840", "267144840", "UNI46_630_B10", "box_ParticleSystem_v3_16.Started", "box_SoundModifier_v2_6.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_16_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_6();
    l0 = self.box_SoundModifier_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|37327488", "37327488", "UNI46_630_B10", "box_ParticleSystem_v3_16.Stopped", "box_SoundModifier_v2_6.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_4_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_16();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|871723388", "871723388", "UNI46_630_B10", "box_ParticleSystem_v3_4.Started", "box_ParticleSystem_v3_16.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_4_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_16();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1367821435", "1367821435", "UNI46_630_B10", "box_ParticleSystem_v3_4.Stopped", "box_ParticleSystem_v3_16.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_24();
    l0 = self.box_MultipleOR_37;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1720015844", "1720015844", "UNI46_630_B10", "box_MultipleOR_37.Out", "box_ActivityRetry_24.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|@DisableDistanceFail");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_73_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|@ModifiersOff");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_106_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|@Retry");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_32_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|@SpecificDialogs");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_120_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|@StopFail");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_45_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_30()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_93()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103551590005750190",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_115()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_OutOfTime",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CORE_80()
    local params;
    params = {
        -- bTeleportPlayer,
        [0] = false,
        -- eTeleportPointClient,
        [3] = "2102877670741125189",
        -- eTeleportPointHost,
        [4] = "2102877667763169345",
        -- fDelayBeforeStart,
        [8] = 0,
        -- fTimer,
        [9] = 12,
        -- iBonusTimeGates,
        [10] = 5,
        -- VehicleLockCountdown,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|224092658");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_91_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 7,
    };
    return params;
end;

function export:OnEnter_box_SetOasis_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetOasis_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|270656894");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetOasis_39_Out,
    });
    params = {
        -- Oasis,
        [0] = {
            section = "Objectives",
            item = "UNI24_010_FAIL_LeaveZone",
            id = "656985",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|275304746");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|325074685");
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

function export:OnEnter_box_Compare_Integers_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|436785950");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_85_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 9,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|461282055");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_114_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_49()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103689992244051025",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|491866187");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_19_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_19_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104370802221661730",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|512517065");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_26_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_26_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104381017979633280",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_31()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gp_playergroup,
        -- farZone,
        [2] = 30,
        -- id2,
        [3] = "2102887782723628057",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SetOasis_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetOasis_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|587738735");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetOasis_25_Out,
    });
    params = {
        -- Oasis,
        [0] = {
            section = "Quest_Common",
            item = "UNI46_COMMON_FAIL_WINGSUIT",
            id = "840969",
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_55()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103691097472515593",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_Outro_58()
    local params;
    params = {
        -- ClientTeleport,
        [0] = "2104356917852781938",
        -- HostTeleport,
        [1] = "2104356917844393326",
        -- Region,
        [2] = 2,
        -- SceneEntity,
        [3] = "2103747376966545926",
        -- SequenceFile,
        [4] = "sequences/zeta_main/uni46/uni46_630_cin_camera.seq",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|775830872");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_77_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_42()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103689985751268397",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|823551814");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104370816190791210",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|892494164");
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

function export:OnEnter_box_Compare_Integers_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|909864875");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_83_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|912613023");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = self.FAIL,
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|922666696");
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

function export:OnEnter_box_ParticleSystem_v3_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|937751609");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_69_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_69_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103553103367268840",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_44()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103690000659922053",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1087265440");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104381198374539879",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_68()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3626972026",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1119931233");
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
                [0] = self.f_box_OutputOrder_v2_92_Out_0,
                [1] = self.f_box_OutputOrder_v2_92_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1123152636");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_28()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicleTypeFilter,
        [5] = 6,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_6()
    local params;
    params = {
        -- Pawns,
        [0] = "2103553295091001847",
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

function export:OnEnter_box_SoundModifier_v2_9()
    local params;
    params = {
        -- Pawns,
        [0] = "2103553307248191995",
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

function export:OnEnter_box_PlayDialog_v6_75()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3601967096",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_52()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103690004258634915",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1278381788");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
                [2] = self.f_box_OutputOrder_v2_1_Out_2,
                [3] = self.f_box_OutputOrder_v2_1_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AllowAutoDrive_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/AllowAutoDrive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AllowAutoDrive_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1336579213");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_118()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_Player_Killed",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_76()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2654739509",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1677679380");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_101_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1686908546");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 9,
        },
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
                [2] = self.f_box_OutputOrder_v2_79_Out_2,
                [3] = self.f_box_OutputOrder_v2_79_Out_3,
                [4] = self.f_box_OutputOrder_v2_79_Out_4,
                [5] = self.f_box_OutputOrder_v2_79_Out_5,
                [6] = self.f_box_OutputOrder_v2_79_Out_6,
                [7] = self.f_box_OutputOrder_v2_79_Out_7,
                [8] = self.f_box_OutputOrder_v2_79_Out_8,
            },
            count = 9,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_47()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3555709945",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_59()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicleTypeFilter,
        [5] = 6,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_71()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "693409868",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1759271490");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_88_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_88_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103553275637819888",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_14()
    local params;
    params = {
        -- Pawns,
        [0] = "2103553295091001847",
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

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1787950339");
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

function export:OnEnter_box_ParticleSystem_v3_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1790739118");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_12_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_12_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104370638853520924",
    };
    return params;
end;

function export:OnEnter_box_AudioManager_18()
    local params;
    params = {
        -- Flame_Soundpoint,
        [1] = "2104370709961653792",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1814524885");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_86_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.iGatePassed,
        -- B,
        [1] = 11,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1819977220");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_7_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_7_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103553275637819890",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_82()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_AudioManager_21()
    local params;
    params = {
        -- Flame_Soundpoint,
        [1] = "2104381017981730436",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1988967894");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_27_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_27_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104381096373272208",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|1996192292");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_17_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_17_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103553275639917044",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_41()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103689972902017738",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_54()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103691086655405529",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|2058593191");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_16_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_16_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103553117378341354",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_57()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103691583917410217",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_630\\UNI46_630_B10.domino|@UNI46_630_B10|2099039274");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_4_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_4_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103553117674039788",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_15()
    local params;
    params = {
        -- Pawns,
        [0] = "2103553307248191995",
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

function export:OnExit_box_CoopActivePlayers_104_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_104;
    self.eHost = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_104_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_104;
    self.eHost = l0:GetDataOutValue(0);
    self.eClient = l0:GetDataOutValue(1);
end;

function export:OnExit_box_Brick_GateRaces_CORE_80_Disabled()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_80;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
    self.FAIL = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_GateRaces_CORE_80_Fail()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_80;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
    self.FAIL = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_GateRaces_CORE_80_Finished()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_80;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
    self.FAIL = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_GateRaces_CORE_80_GatePassed()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_80;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
    self.FAIL = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_GateRaces_CORE_80_Started()
    local l0;
    l0 = self.box_Brick_GateRaces_CORE_80;
    self.iGatePassed = l0:GetDataOutValue(1);
    self.ePlayerPassingGate = l0:GetDataOutValue(2);
    self.FAIL = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetOasis_39_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FAIL = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetOasis_25_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FAIL = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_101_Out()
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
