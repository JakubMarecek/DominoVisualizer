LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni46/uni46_320/uni46_320_b10.domino
-- User graph: UNI46_320_B10_Graph
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
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/Coop/JoinInProgresModifier.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetDistance.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundPointModifier.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_320/UNI46_320_B10.UNI46_320_B10_DestroyTargets.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_320/UNI46_320_B10.UNI46_320_B10_Fireworks.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1428440157.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1591912598.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1479653808.bnk]], "CSoundResource");
        cboxRes:LoadResource([[467079902.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2260146089.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3233355382.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1203248370.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4191458591.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1564704504.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4133232981.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1065906481.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4110393672.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_320/UNI46_320_B10.UNI46_320_B10_Graph.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/SoundPointModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Start",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Started",
                delayed = false,
            },
            [1] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "soundPoint",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/StaticBreakableListener.lua")] = {
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
                name = "OnBreak",
                delayed = true,
            },
            [3] = {
                name = "OnBreakAll",
                delayed = true,
            },
            [4] = {
                name = "OnDamage",
                delayed = true,
            },
            [5] = {
                name = "OnHit",
                delayed = true,
            },
            [6] = {
                name = "OnStateChanged",
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
                name = "entity",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "instigatorID",
                type = "entity",
            },
            [1] = {
                name = "stateID",
                type = "int",
            },
            [2] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_320/UNI46_320_B10.UNI46_320_B10_DestroyTargets.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Base",
                type = "entity",
            },
            [1] = {
                name = "Target",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_320/UNI46_320_B10.UNI46_320_B10_Fireworks.debug.lua")] = {
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
    self._name = "UNI46_320_B10_Graph";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph";
    self.bCloseTargerLine = false;
    self.fDistanceTarget = 0;
    self.box_EntityStatusListener_59 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|5222944");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_59_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_59_Unloaded,
    });
    self.box_Brick_GateRaces_CORE_30 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CORE.debug.lua");
    l0 = self.box_Brick_GateRaces_CORE_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CORE_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|9272581");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_Brick_GateRaces_CORE_30_Disabled,
        -- Fail,
        [1] = self.f_box_Brick_GateRaces_CORE_30_Fail,
        -- Finished,
        [2] = self.f_box_Brick_GateRaces_CORE_30_Finished,
        -- GatePassed,
        [3] = self.f_box_Brick_GateRaces_CORE_30_GatePassed,
        -- Started,
        [4] = self.f_box_Brick_GateRaces_CORE_30_Started,
    });
    self.box_UNI46_320_B10_DestroyTargets_4 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_320/UNI46_320_B10.UNI46_320_B10_DestroyTargets.debug.lua");
    l0 = self.box_UNI46_320_B10_DestroyTargets_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_320_B10_DestroyTargets_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|25671460");
    l0:SetConnections({
    });
    self.box_JoinInProgressModifier_19 = cbox:CreateBox("Domino/System/Coop/JoinInProgresModifier.lua");
    l0 = self.box_JoinInProgressModifier_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_JoinInProgressModifier_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|40488416");
    l0:SetConnections({
        -- OnLockSession,
        [0] = self.f_box_JoinInProgressModifier_19_OnLockSession,
    });
    self.box_EntityStatusListener_61 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|40979530");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_61_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_61_Unloaded,
    });
    self.box_Brick_GateRaces_CreateLists_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|80570092");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_72 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|117101317");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_24 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|170889021");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_24_Loaded,
    });
    self.box_Brick_GateRaces_CreateLists_21 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|252751551");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_23 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|259154976");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_23_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_23_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_23_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_23_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_23_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_23_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_23_OnStateChanged,
    });
    self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|287944108");
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
        [0] = self.f_box_MultipleOR_42_Out,
    });
    self.box_Brick_GateRaces_CreateLists_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|319572483");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_105 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|328852645");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_105_Enter,
    });
    self.box_ProximityTrigger_v2_68 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|348771538");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_68_Enter,
    });
    self.box_StaticBreakableListener_22 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|384807634");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_22_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_22_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_22_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_22_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_22_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_22_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_22_OnStateChanged,
    });
    self.box_Delay_v5_96 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|428332608");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_96_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_96_TimeElapsed,
    });
    self.box_Brick_GateRaces_CreateLists_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|435153415");
    l0:SetConnections({
    });
    self.box_UNI46_320_B10_DestroyTargets_100 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_320/UNI46_320_B10.UNI46_320_B10_DestroyTargets.debug.lua");
    l0 = self.box_UNI46_320_B10_DestroyTargets_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_320_B10_DestroyTargets_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|435245862");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_75 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|446541938");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_Dialogs_67 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|475212005");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|498050686");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_Dialogs_62 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|558255658");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_90 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|560000204");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_90_Enter,
    });
    self.box_Brick_GateRaces_CreateLists_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|573367101");
    l0:SetConnections({
    });
    self.box_Random_69 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|576102144");
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
                [0] = self.f_box_Random_69_Output_0,
                [1] = self.f_box_Random_69_Output_1,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_36 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|667448274");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_36_Loaded,
    });
    self.box_Brick_GateRaces_CreateLists_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|672922308");
    l0:SetConnections({
    });
    self.box_MultipleOR_104 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|728263699");
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
    self.box_PlayDialog_v6_87 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|813514175");
    l0:SetConnections({
    });
    self.box_Random_57 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|828989165");
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
                [0] = self.f_box_Random_57_Output_0,
                [1] = self.f_box_Random_57_Output_1,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_48 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|891920377");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_48_Enter,
    });
    self.box_Brick_GateRaces_CreateLists_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|916404400");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|940182140");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_43 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|958224333");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_43_Received,
    });
    self.box_UNI46_320_B10_DestroyTargets_107 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_320/UNI46_320_B10.UNI46_320_B10_DestroyTargets.debug.lua");
    l0 = self.box_UNI46_320_B10_DestroyTargets_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_320_B10_DestroyTargets_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|979261436");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|999753645");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_74 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1024898274");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_76 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1052757667");
    l0:SetConnections({
    });
    self.box_UNI46_320_B10_DestroyTargets_102 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_320/UNI46_320_B10.UNI46_320_B10_DestroyTargets.debug.lua");
    l0 = self.box_UNI46_320_B10_DestroyTargets_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_320_B10_DestroyTargets_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1059430986");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_Outro_26 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Outro.debug.lua");
    l0 = self.box_Brick_GateRaces_Outro_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Outro_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1068846185");
    l0:SetConnections({
        -- Finished,
        [1] = self.f_box_Brick_GateRaces_Outro_26_Finished,
        -- Started,
        [2] = self.f_box_Brick_GateRaces_Outro_26_Started,
    });
    self.box_EntityStatusListener_53 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1089252289");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_53_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_53_Unloaded,
    });
    self.box_EntityStatusListener_52 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1101042677");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_52_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_52_Unloaded,
    });
    self.box_PlayDialog_v6_73 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1112411273");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_79 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1197118989");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_80 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1198323847");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_51 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1206990451");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_51_Enter,
    });
    self.box_ProximityTrigger_v2_54 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1208534076");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_54_Enter,
    });
    self.box_PlayDialog_v6_84 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1217942715");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1271773453");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_47 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1327437843");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_47_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_47_Unloaded,
    });
    self.box_MultipleOR_63 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1377265065");
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
    self.box_ProximityTrigger_v2_45 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1390907417");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_45_Enter,
    });
    self.box_Brick_GateRaces_CreateLists_78 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1408502463");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_Dialogs_65 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1423556373");
    l0:SetConnections({
    });
    self.box_Random_56 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1455465986");
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
                [0] = self.f_box_Random_56_Output_0,
                [1] = self.f_box_Random_56_Output_1,
                [2] = self.f_box_Random_56_Output_2,
            },
            count = 3,
        },
    });
    self.box_EntityStatusListener_103 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1468859709");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_103_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_103_Unloaded,
    });
    self.box_Random_35 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1476677943");
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
                [0] = self.f_box_Random_35_Output_0,
                [1] = self.f_box_Random_35_Output_1,
            },
            count = 2,
        },
    });
    self.box_UNI46_320_B10_Fireworks_28 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_320/UNI46_320_B10.UNI46_320_B10_Fireworks.debug.lua");
    l0 = self.box_UNI46_320_B10_Fireworks_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_320_B10_Fireworks_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1495625900");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_Dialogs_64 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1561409284");
    l0:SetConnections({
    });
    self.box_UNI46_320_B10_Fireworks_27 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_320/UNI46_320_B10.UNI46_320_B10_Fireworks.debug.lua");
    l0 = self.box_UNI46_320_B10_Fireworks_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_320_B10_Fireworks_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1563045843");
    l0:SetConnections({
    });
    self.box_MultipleOR_86 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1568550184");
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
    self.box_PlayDialog_v6_85 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1612745079");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_101 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1625508671");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_101_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_101_Unloaded,
    });
    self.box_PlayDialog_v6_89 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1690689581");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1691877124");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1703424195");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_PlayDialog_v6_98 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1723882127");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_88 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1770696906");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_88_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_88_Unloaded,
    });
    self.box_UNI46_320_B10_DestroyTargets_106 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_320/UNI46_320_B10.UNI46_320_B10_DestroyTargets.debug.lua");
    l0 = self.box_UNI46_320_B10_DestroyTargets_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_320_B10_DestroyTargets_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1783742248");
    l0:SetConnections({
    });
    self.box_Random_46 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1797634900");
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
                [0] = self.f_box_Random_46_Output_0,
                [1] = self.f_box_Random_46_Output_1,
                [2] = self.f_box_Random_46_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1833420935");
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
    self.box_MessageListener_v3_31 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1856478167");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_31_Received,
    });
    self.box_ProximityTrigger_v2_60 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1890759175");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_60_Enter,
    });
    self.box_ProximityTrigger_v2_99 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1934602650");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_99_Enter,
    });
    self.box_PlayDialog_v6_82 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1990144807");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_32 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|2050156878");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_32_Received,
    });
    self.box_PlayDialog_v6_71 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|2052034580");
    l0:SetConnections({
    });
    self.box_MultipleOR_55 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|2089704702");
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
        [0] = self.f_box_MultipleOR_55_Out,
    });
    self.box_PlayDialog_v6_70 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|2105375311");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|2133968881");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_44 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|2141232641");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_44_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_44_Unloaded,
    });
    self.box_PlayDialog_v6_29 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|2146996711");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1597236861", "1597236861", "UNI46_320_B10_Graph", "In", "box_ActivityAcknowledgeGate_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_EntityStatusListener_59_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_68();
    l0 = self.box_EntityStatusListener_59;
    l1 = self.box_ProximityTrigger_v2_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|801044153", "801044153", "UNI46_320_B10_Graph", "box_EntityStatusListener_59.Loaded", "box_ProximityTrigger_v2_68.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_59_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_68();
    l0 = self.box_EntityStatusListener_59;
    l1 = self.box_ProximityTrigger_v2_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1434478959", "1434478959", "UNI46_320_B10_Graph", "box_EntityStatusListener_59.Unloaded", "box_ProximityTrigger_v2_68.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Brick_GateRaces_CORE_30_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_2();
    l0 = self.box_Brick_GateRaces_CORE_30;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|831117666", "831117666", "UNI46_320_B10_Graph", "box_Brick_GateRaces_CORE_30.Fail", "box_ActivityRetry_2.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_CORE_30_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_GateRaces_Outro_26();
    l0 = self.box_Brick_GateRaces_CORE_30;
    l1 = self.box_Brick_GateRaces_Outro_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1379254458", "1379254458", "UNI46_320_B10_Graph", "box_Brick_GateRaces_CORE_30.Finished", "box_Brick_GateRaces_Outro_26.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_Brick_GateRaces_CORE_30_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = self.box_Brick_GateRaces_CORE_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1901316531", "1901316531", "UNI46_320_B10_Graph", "box_Brick_GateRaces_CORE_30.Started", "box_OutputOrder_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_JoinInProgressModifier_19_OnLockSession()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_JoinInProgressModifier_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|329982854", "329982854", "UNI46_320_B10_Graph", "box_JoinInProgressModifier_19.OnLockSession", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_61_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_60();
    l0 = self.box_EntityStatusListener_61;
    l1 = self.box_ProximityTrigger_v2_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|515410857", "515410857", "UNI46_320_B10_Graph", "box_EntityStatusListener_61.Loaded", "box_ProximityTrigger_v2_60.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_61_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_60();
    l0 = self.box_EntityStatusListener_61;
    l1 = self.box_ProximityTrigger_v2_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1610622634", "1610622634", "UNI46_320_B10_Graph", "box_EntityStatusListener_61.Unloaded", "box_ProximityTrigger_v2_60.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_GetDistance_38_Out()
    local l0;
    self:OnExit_box_GetDistance_38_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1796421102", "1796421102", "UNI46_320_B10_Graph", "box_GetDistance_38.Out", "box_MultipleOR_63.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_81_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_UNI46_320_B10_Fireworks_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1311212067", "1311212067", "UNI46_320_B10_Graph", "box_OutputOrder_v2_81.Out", "box_UNI46_320_B10_Fireworks_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_81_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_83();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|636101498", "636101498", "UNI46_320_B10_Graph", "box_OutputOrder_v2_81.Out", "box_ActivityEnd_83.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_24_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_23();
    l0 = self.box_EntityStatusListener_24;
    l1 = self.box_StaticBreakableListener_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1232046052", "1232046052", "UNI46_320_B10_Graph", "box_EntityStatusListener_24.Loaded", "box_StaticBreakableListener_23.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_23_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = self.box_StaticBreakableListener_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|2139817187", "2139817187", "UNI46_320_B10_Graph", "box_StaticBreakableListener_23.OnBreak", "box_OutputOrder_v2_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_35();
    l0 = self.box_MultipleOR_42;
    l1 = self.box_Random_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1227854441", "1227854441", "UNI46_320_B10_Graph", "box_MultipleOR_42.Out", "box_Random_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_105_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_105;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1713043429", "1713043429", "UNI46_320_B10_Graph", "box_ProximityTrigger_v2_105.Enter", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_68_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Random_69();
    l0 = self.box_ProximityTrigger_v2_68;
    l1 = self.box_Random_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1781397523", "1781397523", "UNI46_320_B10_Graph", "box_ProximityTrigger_v2_68.Enter", "box_Random_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_22_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_GetDistance_37();
    l0 = self.box_StaticBreakableListener_22;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1204780172", "1204780172", "UNI46_320_B10_Graph", "box_StaticBreakableListener_22.OnBreak", "box_GetDistance_37.Distance3D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance3D
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_96_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_95();
    l0 = self.box_Delay_v5_96;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|576302486", "576302486", "UNI46_320_B10_Graph", "box_Delay_v5_96.Started", "box_OutputOrder_v2_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_96_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_97();
    l0 = self.box_Delay_v5_96;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|196573068", "196573068", "UNI46_320_B10_Graph", "box_Delay_v5_96.TimeElapsed", "box_OutputOrder_v2_97.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_108_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI46_320_B10_DestroyTargets_107();
    l0 = self.box_UNI46_320_B10_DestroyTargets_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1888135815", "1888135815", "UNI46_320_B10_Graph", "box_OutputOrder_v2_108.Out", "box_UNI46_320_B10_DestroyTargets_107.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_108_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI46_320_B10_DestroyTargets_106();
    l0 = self.box_UNI46_320_B10_DestroyTargets_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|78010306", "78010306", "UNI46_320_B10_Graph", "box_OutputOrder_v2_108.Out", "box_UNI46_320_B10_DestroyTargets_106.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_108_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI46_320_B10_DestroyTargets_102();
    l0 = self.box_UNI46_320_B10_DestroyTargets_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|63996553", "63996553", "UNI46_320_B10_Graph", "box_OutputOrder_v2_108.Out", "box_UNI46_320_B10_DestroyTargets_102.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_108_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI46_320_B10_DestroyTargets_100();
    l0 = self.box_UNI46_320_B10_DestroyTargets_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|150936992", "150936992", "UNI46_320_B10_Graph", "box_OutputOrder_v2_108.Out", "box_UNI46_320_B10_DestroyTargets_100.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_108_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI46_320_B10_DestroyTargets_4();
    l0 = self.box_UNI46_320_B10_DestroyTargets_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|324194993", "324194993", "UNI46_320_B10_Graph", "box_OutputOrder_v2_108.Out", "box_UNI46_320_B10_DestroyTargets_4.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_34_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_34_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_70();
    l0 = self.box_PlayDialog_v6_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|373934808", "373934808", "UNI46_320_B10_Graph", "box_SetBoolean_v2_34.Out", "box_PlayDialog_v6_70.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_90_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_90;
    l1 = self.box_UNI46_320_B10_Fireworks_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|997932864", "997932864", "UNI46_320_B10_Graph", "box_ProximityTrigger_v2_90.Enter", "box_UNI46_320_B10_Fireworks_27.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, {
    });
end;

function export:f_box_Random_69_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_87();
    l0 = self.box_Random_69;
    l1 = self.box_PlayDialog_v6_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|277123067", "277123067", "UNI46_320_B10_Graph", "box_Random_69.Output", "box_PlayDialog_v6_87.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_69_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = self.box_Random_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|113654551", "113654551", "UNI46_320_B10_Graph", "box_Random_69.Output", "box_Simple_Node_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_36_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_22();
    l0 = self.box_EntityStatusListener_36;
    l1 = self.box_StaticBreakableListener_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|635324864", "635324864", "UNI46_320_B10_Graph", "box_EntityStatusListener_36.Loaded", "box_StaticBreakableListener_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_93_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_94();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|936116482", "936116482", "UNI46_320_B10_Graph", "box_ParticleSystem_v3_93.Started", "box_SoundPointModifier_94.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_93_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_94();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1452759033", "1452759033", "UNI46_320_B10_Graph", "box_ParticleSystem_v3_93.Stopped", "box_SoundPointModifier_94.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_31();
    l0 = self.box_MessageListener_v3_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1274703340", "1274703340", "UNI46_320_B10_Graph", "box_OutputOrder_v2_77.Out", "box_MessageListener_v3_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_32();
    l0 = self.box_MessageListener_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|527683255", "527683255", "UNI46_320_B10_Graph", "box_OutputOrder_v2_77.Out", "box_MessageListener_v3_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_43();
    l0 = self.box_MessageListener_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1544563983", "1544563983", "UNI46_320_B10_Graph", "box_OutputOrder_v2_77.Out", "box_MessageListener_v3_43.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_104_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_104;
    l1 = self.box_Brick_GateRaces_Dialogs_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|844078447", "844078447", "UNI46_320_B10_Graph", "box_MultipleOR_104.Out", "box_Brick_GateRaces_Dialogs_62.Encouragement", l0:GetLuaBox(), l1:GetLuaBox());
    -- Encouragement
    l1:Exec(1, {
    });
end;

function export:f_box_GetDistance_37_Out()
    local l0;
    self:OnExit_box_GetDistance_37_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1692789404", "1692789404", "UNI46_320_B10_Graph", "box_GetDistance_37.Out", "box_MultipleOR_63.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_47();
    l0 = self.box_EntityStatusListener_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1978385668", "1978385668", "UNI46_320_B10_Graph", "box_OutputOrder_v2_50.Out", "box_EntityStatusListener_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_52();
    l0 = self.box_EntityStatusListener_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1657612553", "1657612553", "UNI46_320_B10_Graph", "box_OutputOrder_v2_50.Out", "box_EntityStatusListener_52.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_53();
    l0 = self.box_EntityStatusListener_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|648277522", "648277522", "UNI46_320_B10_Graph", "box_OutputOrder_v2_50.Out", "box_EntityStatusListener_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_61();
    l0 = self.box_EntityStatusListener_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|424132816", "424132816", "UNI46_320_B10_Graph", "box_OutputOrder_v2_50.Out", "box_EntityStatusListener_61.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_101();
    l0 = self.box_EntityStatusListener_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|344409433", "344409433", "UNI46_320_B10_Graph", "box_OutputOrder_v2_50.Out", "box_EntityStatusListener_101.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_103();
    l0 = self.box_EntityStatusListener_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|740160946", "740160946", "UNI46_320_B10_Graph", "box_OutputOrder_v2_50.Out", "box_EntityStatusListener_103.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_44();
    l0 = self.box_EntityStatusListener_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1079524912", "1079524912", "UNI46_320_B10_Graph", "box_OutputOrder_v2_50.Out", "box_EntityStatusListener_44.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_59();
    l0 = self.box_EntityStatusListener_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|21739685", "21739685", "UNI46_320_B10_Graph", "box_OutputOrder_v2_50.Out", "box_EntityStatusListener_59.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Random_57_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_89();
    l0 = self.box_Random_57;
    l1 = self.box_PlayDialog_v6_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|141050436", "141050436", "UNI46_320_B10_Graph", "box_Random_57.Output", "box_PlayDialog_v6_89.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_57_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_98();
    l0 = self.box_Random_57;
    l1 = self.box_PlayDialog_v6_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|59252537", "59252537", "UNI46_320_B10_Graph", "box_Random_57.Output", "box_PlayDialog_v6_98.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_48_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_48;
    l1 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1131905020", "1131905020", "UNI46_320_B10_Graph", "box_ProximityTrigger_v2_48.Enter", "box_MultipleOR_55.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MessageListener_v3_43_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_43;
    l1 = self.box_Brick_GateRaces_Dialogs_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|496213727", "496213727", "UNI46_320_B10_Graph", "box_MessageListener_v3_43.Received", "box_Brick_GateRaces_Dialogs_65.OutOfTime", l0:GetLuaBox(), l1:GetLuaBox());
    -- OutOfTime
    l1:Exec(3, {
    });
end;

function export:f_box_Compare_Floats_41_A_gt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|707100145", "707100145", "UNI46_320_B10_Graph", "box_Compare_Floats_41.A_gt_B", "box_MultipleOR_42.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Floats_41_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_40();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1528085781", "1528085781", "UNI46_320_B10_Graph", "box_Compare_Floats_41.A_le_B", "box_Compare_Boolean_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_96();
    l0 = self.box_Delay_v5_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1402507329", "1402507329", "UNI46_320_B10_Graph", "box_OutputOrder_v2_39.Out", "box_Delay_v5_96.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetDistance_38();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1448561702", "1448561702", "UNI46_320_B10_Graph", "box_OutputOrder_v2_39.Out", "box_GetDistance_38.Distance3D", clone:GetLuaBox(), l0:GetLuaBox());
    -- Distance3D
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_40_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_34();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|701670954", "701670954", "UNI46_320_B10_Graph", "box_Compare_Boolean_40.A_is_False", "box_SetBoolean_v2_34.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_40_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1730855501", "1730855501", "UNI46_320_B10_Graph", "box_Compare_Boolean_40.A_is_True", "box_MultipleOR_42.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_GateRaces_Outro_26_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_81();
    l0 = self.box_Brick_GateRaces_Outro_26;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1624032937", "1624032937", "UNI46_320_B10_Graph", "box_Brick_GateRaces_Outro_26.Finished", "box_OutputOrder_v2_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_Outro_26_Started()
    local l0, l1;
    l0 = self.box_Brick_GateRaces_Outro_26;
    l1 = self.box_Brick_GateRaces_Dialogs_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|790974282", "790974282", "UNI46_320_B10_Graph", "box_Brick_GateRaces_Outro_26.Started", "box_Brick_GateRaces_Dialogs_67.Success", l0:GetLuaBox(), l1:GetLuaBox());
    -- Success
    l1:Exec(4, {
    });
end;

function export:f_box_EntityStatusListener_53_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_54();
    l0 = self.box_EntityStatusListener_53;
    l1 = self.box_ProximityTrigger_v2_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1134126473", "1134126473", "UNI46_320_B10_Graph", "box_EntityStatusListener_53.Loaded", "box_ProximityTrigger_v2_54.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_53_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_54();
    l0 = self.box_EntityStatusListener_53;
    l1 = self.box_ProximityTrigger_v2_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|85622429", "85622429", "UNI46_320_B10_Graph", "box_EntityStatusListener_53.Unloaded", "box_ProximityTrigger_v2_54.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_52_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_51();
    l0 = self.box_EntityStatusListener_52;
    l1 = self.box_ProximityTrigger_v2_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|920176255", "920176255", "UNI46_320_B10_Graph", "box_EntityStatusListener_52.Loaded", "box_ProximityTrigger_v2_51.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_52_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_51();
    l0 = self.box_EntityStatusListener_52;
    l1 = self.box_ProximityTrigger_v2_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|863900059", "863900059", "UNI46_320_B10_Graph", "box_EntityStatusListener_52.Unloaded", "box_ProximityTrigger_v2_51.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_75();
    l0 = self.box_Brick_GateRaces_CreateLists_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|353945461", "353945461", "UNI46_320_B10_Graph", "box_OutputOrder_v2_16.Out", "box_Brick_GateRaces_CreateLists_75.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_79();
    l0 = self.box_Brick_GateRaces_CreateLists_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|998062961", "998062961", "UNI46_320_B10_Graph", "box_OutputOrder_v2_16.Out", "box_Brick_GateRaces_CreateLists_79.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_76();
    l0 = self.box_Brick_GateRaces_CreateLists_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1986461419", "1986461419", "UNI46_320_B10_Graph", "box_OutputOrder_v2_16.Out", "box_Brick_GateRaces_CreateLists_76.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_74();
    l0 = self.box_Brick_GateRaces_CreateLists_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1024142074", "1024142074", "UNI46_320_B10_Graph", "box_OutputOrder_v2_16.Out", "box_Brick_GateRaces_CreateLists_74.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_5();
    l0 = self.box_Brick_GateRaces_CreateLists_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|7716110", "7716110", "UNI46_320_B10_Graph", "box_OutputOrder_v2_16.Out", "box_Brick_GateRaces_CreateLists_5.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_6();
    l0 = self.box_Brick_GateRaces_CreateLists_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1064066827", "1064066827", "UNI46_320_B10_Graph", "box_OutputOrder_v2_16.Out", "box_Brick_GateRaces_CreateLists_6.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_7();
    l0 = self.box_Brick_GateRaces_CreateLists_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1237324828", "1237324828", "UNI46_320_B10_Graph", "box_OutputOrder_v2_16.Out", "box_Brick_GateRaces_CreateLists_7.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_8();
    l0 = self.box_Brick_GateRaces_CreateLists_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1898027351", "1898027351", "UNI46_320_B10_Graph", "box_OutputOrder_v2_16.Out", "box_Brick_GateRaces_CreateLists_8.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_9();
    l0 = self.box_Brick_GateRaces_CreateLists_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1232973278", "1232973278", "UNI46_320_B10_Graph", "box_OutputOrder_v2_16.Out", "box_Brick_GateRaces_CreateLists_9.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_10();
    l0 = self.box_Brick_GateRaces_CreateLists_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1944874924", "1944874924", "UNI46_320_B10_Graph", "box_OutputOrder_v2_16.Out", "box_Brick_GateRaces_CreateLists_10.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_11();
    l0 = self.box_Brick_GateRaces_CreateLists_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|226209517", "226209517", "UNI46_320_B10_Graph", "box_OutputOrder_v2_16.Out", "box_Brick_GateRaces_CreateLists_11.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_21();
    l0 = self.box_Brick_GateRaces_CreateLists_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1162904513", "1162904513", "UNI46_320_B10_Graph", "box_OutputOrder_v2_16.Out", "box_Brick_GateRaces_CreateLists_21.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_17();
    l0 = self.box_Brick_GateRaces_CreateLists_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1530693314", "1530693314", "UNI46_320_B10_Graph", "box_OutputOrder_v2_16.Out", "box_Brick_GateRaces_CreateLists_17.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_12();
    l0 = self.box_Brick_GateRaces_CreateLists_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|865639241", "865639241", "UNI46_320_B10_Graph", "box_OutputOrder_v2_16.Out", "box_Brick_GateRaces_CreateLists_12.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_13();
    l0 = self.box_Brick_GateRaces_CreateLists_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|748722903", "748722903", "UNI46_320_B10_Graph", "box_OutputOrder_v2_16.Out", "box_Brick_GateRaces_CreateLists_13.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_14();
    l0 = self.box_Brick_GateRaces_CreateLists_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|727786330", "727786330", "UNI46_320_B10_Graph", "box_OutputOrder_v2_16.Out", "box_Brick_GateRaces_CreateLists_14.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_15();
    l0 = self.box_Brick_GateRaces_CreateLists_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1140019547", "1140019547", "UNI46_320_B10_Graph", "box_OutputOrder_v2_16.Out", "box_Brick_GateRaces_CreateLists_15.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_51_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_51;
    l1 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|2065156109", "2065156109", "UNI46_320_B10_Graph", "box_ProximityTrigger_v2_51.Enter", "box_MultipleOR_55.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_54_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_54;
    l1 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|661381747", "661381747", "UNI46_320_B10_Graph", "box_ProximityTrigger_v2_54.Enter", "box_MultipleOR_55.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_78();
    l0 = self.box_Brick_GateRaces_CreateLists_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1550265595", "1550265595", "UNI46_320_B10_Graph", "box_OutputOrder_v2_18.Out", "box_Brick_GateRaces_CreateLists_78.ClearLists", clone:GetLuaBox(), l0:GetLuaBox());
    -- ClearLists
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1974396059", "1974396059", "UNI46_320_B10_Graph", "box_OutputOrder_v2_18.Out", "box_OutputOrder_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_25();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1426258324", "1426258324", "UNI46_320_B10_Graph", "box_OutputOrder_v2_18.Out", "box_Simple_Node_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_47_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_48();
    l0 = self.box_EntityStatusListener_47;
    l1 = self.box_ProximityTrigger_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|375091761", "375091761", "UNI46_320_B10_Graph", "box_EntityStatusListener_47.Loaded", "box_ProximityTrigger_v2_48.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_47_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_48();
    l0 = self.box_EntityStatusListener_47;
    l1 = self.box_ProximityTrigger_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1530203910", "1530203910", "UNI46_320_B10_Graph", "box_EntityStatusListener_47.Unloaded", "box_ProximityTrigger_v2_48.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|974115625", "974115625", "UNI46_320_B10_Graph", "box_OutputOrder_v2_49.Out", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1039951378", "1039951378", "UNI46_320_B10_Graph", "box_OutputOrder_v2_49.Out", "box_OutputOrder_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|963721802", "963721802", "UNI46_320_B10_Graph", "box_OutputOrder_v2_49.Out", "box_OutputOrder_v2_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Floats_41();
    l0 = self.box_MultipleOR_63;
    l1 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|247933280", "247933280", "UNI46_320_B10_Graph", "box_MultipleOR_63.Out", "box_Compare_Floats_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_45_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Random_57();
    l0 = self.box_ProximityTrigger_v2_45;
    l1 = self.box_Random_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|872637803", "872637803", "UNI46_320_B10_Graph", "box_ProximityTrigger_v2_45.Enter", "box_Random_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Random_56_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_84();
    l0 = self.box_Random_56;
    l1 = self.box_PlayDialog_v6_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1985384856", "1985384856", "UNI46_320_B10_Graph", "box_Random_56.Output", "box_PlayDialog_v6_84.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_56_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_85();
    l0 = self.box_Random_56;
    l1 = self.box_PlayDialog_v6_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|505358439", "505358439", "UNI46_320_B10_Graph", "box_Random_56.Output", "box_PlayDialog_v6_85.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_56_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_82();
    l0 = self.box_Random_56;
    l1 = self.box_PlayDialog_v6_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|327412662", "327412662", "UNI46_320_B10_Graph", "box_Random_56.Output", "box_PlayDialog_v6_82.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_103_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_105();
    l0 = self.box_EntityStatusListener_103;
    l1 = self.box_ProximityTrigger_v2_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|751126873", "751126873", "UNI46_320_B10_Graph", "box_EntityStatusListener_103.Loaded", "box_ProximityTrigger_v2_105.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_103_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_105();
    l0 = self.box_EntityStatusListener_103;
    l1 = self.box_ProximityTrigger_v2_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1106040538", "1106040538", "UNI46_320_B10_Graph", "box_EntityStatusListener_103.Unloaded", "box_ProximityTrigger_v2_105.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_66_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_92();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|798160363", "798160363", "UNI46_320_B10_Graph", "box_ParticleSystem_v3_66.Started", "box_SoundPointModifier_92.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_66_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_92();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1511217202", "1511217202", "UNI46_320_B10_Graph", "box_ParticleSystem_v3_66.Stopped", "box_SoundPointModifier_92.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_35_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_73();
    l0 = self.box_Random_35;
    l1 = self.box_PlayDialog_v6_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1863910079", "1863910079", "UNI46_320_B10_Graph", "box_Random_35.Output", "box_PlayDialog_v6_73.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_35_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_80();
    l0 = self.box_Random_35;
    l1 = self.box_PlayDialog_v6_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|547815686", "547815686", "UNI46_320_B10_Graph", "box_Random_35.Output", "box_PlayDialog_v6_80.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_25_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_20();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|407354949", "407354949", "UNI46_320_B10_Graph", "box_Simple_Node_25.Out", "box_Simple_Node_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_86_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_86;
    l1 = self.box_Brick_GateRaces_Dialogs_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1465597632", "1465597632", "UNI46_320_B10_Graph", "box_MultipleOR_86.Out", "box_Brick_GateRaces_Dialogs_64.Crash", l0:GetLuaBox(), l1:GetLuaBox());
    -- Crash
    l1:Exec(0, {
    });
end;

function export:f_box_EntityStatusListener_101_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_99();
    l0 = self.box_EntityStatusListener_101;
    l1 = self.box_ProximityTrigger_v2_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|42231988", "42231988", "UNI46_320_B10_Graph", "box_EntityStatusListener_101.Loaded", "box_ProximityTrigger_v2_99.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_101_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_99();
    l0 = self.box_EntityStatusListener_101;
    l1 = self.box_ProximityTrigger_v2_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|599020178", "599020178", "UNI46_320_B10_Graph", "box_EntityStatusListener_101.Unloaded", "box_ProximityTrigger_v2_99.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1108828479", "1108828479", "UNI46_320_B10_Graph", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1322804481", "1322804481", "UNI46_320_B10_Graph", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_88_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_90();
    l0 = self.box_EntityStatusListener_88;
    l1 = self.box_ProximityTrigger_v2_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|764061412", "764061412", "UNI46_320_B10_Graph", "box_EntityStatusListener_88.Loaded", "box_ProximityTrigger_v2_90.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_88_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_90();
    l0 = self.box_EntityStatusListener_88;
    l1 = self.box_ProximityTrigger_v2_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1101419550", "1101419550", "UNI46_320_B10_Graph", "box_EntityStatusListener_88.Unloaded", "box_ProximityTrigger_v2_90.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Random_46_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_71();
    l0 = self.box_Random_46;
    l1 = self.box_PlayDialog_v6_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|118581458", "118581458", "UNI46_320_B10_Graph", "box_Random_46.Output", "box_PlayDialog_v6_71.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_46_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_72();
    l0 = self.box_Random_46;
    l1 = self.box_PlayDialog_v6_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|60123289", "60123289", "UNI46_320_B10_Graph", "box_Random_46.Output", "box_PlayDialog_v6_72.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_46_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_29();
    l0 = self.box_Random_46;
    l1 = self.box_PlayDialog_v6_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|196027807", "196027807", "UNI46_320_B10_Graph", "box_Random_46.Output", "box_PlayDialog_v6_29.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_95_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_66();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1219887670", "1219887670", "UNI46_320_B10_Graph", "box_OutputOrder_v2_95.Out", "box_ParticleSystem_v3_66.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_95_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_93();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|905924370", "905924370", "UNI46_320_B10_Graph", "box_OutputOrder_v2_95.Out", "box_ParticleSystem_v3_93.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_JoinInProgressModifier_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|30818550", "30818550", "UNI46_320_B10_Graph", "box_MultipleOR_1.Out", "box_JoinInProgressModifier_19.LockSession", l0:GetLuaBox(), l1:GetLuaBox());
    -- LockSession
    l1:Exec(0, {
    });
end;

function export:f_box_MessageListener_v3_31_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_31;
    l1 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|2041789246", "2041789246", "UNI46_320_B10_Graph", "box_MessageListener_v3_31.Received", "box_MultipleOR_86.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_60_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Random_56();
    l0 = self.box_ProximityTrigger_v2_60;
    l1 = self.box_Random_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1250379530", "1250379530", "UNI46_320_B10_Graph", "box_ProximityTrigger_v2_60.Enter", "box_Random_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Simple_Node_20_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CORE_30();
    l0 = self.box_Brick_GateRaces_CORE_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|915399818", "915399818", "UNI46_320_B10_Graph", "box_Simple_Node_20.Out", "box_Brick_GateRaces_CORE_30.Start_Vehicle", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_Vehicle
    l0:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_99_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_99;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1147419736", "1147419736", "UNI46_320_B10_Graph", "box_ProximityTrigger_v2_99.Enter", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_97_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_66();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|986587310", "986587310", "UNI46_320_B10_Graph", "box_OutputOrder_v2_97.Out", "box_ParticleSystem_v3_66.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_97_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_93();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|480218802", "480218802", "UNI46_320_B10_Graph", "box_OutputOrder_v2_97.Out", "box_ParticleSystem_v3_93.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_32_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_32;
    l1 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|592193492", "592193492", "UNI46_320_B10_Graph", "box_MessageListener_v3_32.Received", "box_MultipleOR_86.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_24();
    l0 = self.box_EntityStatusListener_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1241653124", "1241653124", "UNI46_320_B10_Graph", "box_OutputOrder_v2_33.Out", "box_EntityStatusListener_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_36();
    l0 = self.box_EntityStatusListener_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|499607466", "499607466", "UNI46_320_B10_Graph", "box_OutputOrder_v2_33.Out", "box_EntityStatusListener_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_33_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_88();
    l0 = self.box_EntityStatusListener_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1922691837", "1922691837", "UNI46_320_B10_Graph", "box_OutputOrder_v2_33.Out", "box_EntityStatusListener_88.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_33_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_108();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1953290613", "1953290613", "UNI46_320_B10_Graph", "box_OutputOrder_v2_33.Out", "box_OutputOrder_v2_108.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_55_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_46();
    l0 = self.box_MultipleOR_55;
    l1 = self.box_Random_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|168212383", "168212383", "UNI46_320_B10_Graph", "box_MultipleOR_55.Out", "box_Random_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_44_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_45();
    l0 = self.box_EntityStatusListener_44;
    l1 = self.box_ProximityTrigger_v2_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|987106119", "987106119", "UNI46_320_B10_Graph", "box_EntityStatusListener_44.Loaded", "box_ProximityTrigger_v2_45.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_44_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_45();
    l0 = self.box_EntityStatusListener_44;
    l1 = self.box_ProximityTrigger_v2_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|661005375", "661005375", "UNI46_320_B10_Graph", "box_EntityStatusListener_44.Unloaded", "box_ProximityTrigger_v2_45.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:OnEnter_box_EntityStatusListener_59()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103996706778546153",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CORE_30()
    local params;
    params = {
        -- bTeleportPlayer,
        [0] = false,
        -- eMobileMarker_Vehicle_Client,
        [1] = "2103070154576403985",
        -- eMobileMarker_Vehicle_Host,
        [2] = "2103070148647755277",
        -- eTeleportPointClient,
        [3] = "2102984280788462420",
        -- eTeleportPointHost,
        [4] = "2100114193198883681",
        -- eTriggerAroundStartingVehicles,
        [5] = "2103413558353096393",
        -- eVehicleSpawnerClient,
        [6] = "2102818542087870447",
        -- eVehicleSpawnerHost,
        [7] = "2100114239854224227",
        -- fDelayBeforeStart,
        [8] = 1,
        -- fTimer,
        [9] = 40,
        -- iBonusTimeGates,
        [10] = 7,
        -- VehicleLockCountdown,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_UNI46_320_B10_DestroyTargets_4()
    local params;
    params = {
        -- Base,
        [0] = "2104243023505294630",
        -- Target,
        [1] = "2103084746518045155",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_61()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103967340352797788",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_5()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103068439406054489",
        -- EntityProximityMiss,
        [1] = "2104339727032289571",
        -- FX,
        [2] = "2102985120404234421",
        -- FX_Off,
        [3] = "2103068529550036059",
        -- Marker,
        [4] = "2102985120404234425",
    };
    return params;
end;

function export:OnEnter_box_GetDistance_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|81606622");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_38_Out,
    });
    l0 = self.box_StaticBreakableListener_23;
    params = {
        -- Entity1,
        [0] = l0:GetDataOutValue(0),
        -- Entity2,
        [1] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_72()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3233355382",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|121528102");
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

function export:OnEnter_box_SoundPointModifier_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|153719143");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2103096327819786319",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_24()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103084688898793935",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|216019425");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2103096345970636883",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_21()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103084806806970866",
        -- EntityProximityMiss,
        [1] = "2104339847807273281",
        -- FX,
        [2] = "2103084806806970870",
        -- FX_Off,
        [3] = "2103084806806970868",
        -- Marker,
        [4] = "2103084806804873710",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_23()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2103084688898793935",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_15()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103069192736481717",
        -- FX,
        [2] = "2102986972707447077",
        -- FX_Off,
        [3] = "2103069192736481713",
        -- Marker,
        [4] = "2102986972709544233",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_105()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103968063060737124",
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
        [3] = "2103967340352797788",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_22()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2103084746518045155",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_96()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_8()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103068690091215983",
        -- EntityProximityMiss,
        [1] = "2104339771137493295",
        -- FX,
        [2] = "2102985194777632979",
        -- FX_Off,
        [3] = "2103068690089118827",
        -- Marker,
        [4] = "2102985194777632983",
    };
    return params;
end;

function export:OnEnter_box_UNI46_320_B10_DestroyTargets_100()
    local params;
    params = {
        -- Base,
        [0] = "2104242996114392352",
        -- Target,
        [1] = "2103084720934887899",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_75()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103028454743175032",
        -- EntityProximityMiss,
        [1] = "2104339550229793043",
        -- FX,
        [2] = "2102914204022360037",
        -- FX_Off,
        [3] = "2103014005000922688",
        -- Marker,
        [4] = "2102820938673306784",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|482697826");
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
                [0] = self.f_box_OutputOrder_v2_108_Out_0,
                [1] = self.f_box_OutputOrder_v2_108_Out_1,
                [2] = self.f_box_OutputOrder_v2_108_Out_2,
                [3] = self.f_box_OutputOrder_v2_108_Out_3,
                [4] = self.f_box_OutputOrder_v2_108_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_11()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103068989312737689",
        -- EntityProximityMiss,
        [1] = "2104339824767961403",
        -- FX,
        [2] = "2102986083441598717",
        -- FX_Off,
        [3] = "2103069023865414045",
        -- Marker,
        [4] = "2102986083443695877",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|508517290");
    l0:SetConnections({
    });
    l0 = self.box_Brick_GateRaces_CORE_30;
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

function export:OnEnter_box_SetBoolean_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|554285177");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_34_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_90()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104368298557737406",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_13()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103069088161997225",
        -- EntityProximityMiss,
        [1] = "2104339875238021453",
        -- FX,
        [2] = "2102986937466904857",
        -- FX_Off,
        [3] = "2103069088159900069",
        -- Marker,
        [4] = "2102986937464807703",
    };
    return params;
end;

function export:OnEnter_box_Random_69()
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

function export:OnEnter_box_EntityStatusListener_36()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103084746518045155",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|672802579");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_93_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_93_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103096345970636881",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_10()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103068960850190737",
        -- EntityProximityMiss,
        [1] = "2104339812956801335",
        -- FX,
        [2] = "2102986064514801897",
        -- FX_Off,
        [3] = "2103069017385214363",
        -- Marker,
        [4] = "2102986064518996209",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|714415743");
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

function export:OnEnter_box_Simple_Node_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|724602005");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetDistance_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|766974391");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_37_Out,
    });
    l0 = self.box_StaticBreakableListener_22;
    params = {
        -- Entity1,
        [0] = l0:GetDataOutValue(0),
        -- Entity2,
        [1] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_87()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4191458591",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|819677691");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
                [2] = self.f_box_OutputOrder_v2_50_Out_2,
                [3] = self.f_box_OutputOrder_v2_50_Out_3,
                [4] = self.f_box_OutputOrder_v2_50_Out_4,
                [5] = self.f_box_OutputOrder_v2_50_Out_5,
                [6] = self.f_box_OutputOrder_v2_50_Out_6,
                [7] = self.f_box_OutputOrder_v2_50_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Random_57()
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

function export:OnEnter_box_ProximityTrigger_v2_48()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103967186631556180",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_9()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103068927589360013",
        -- EntityProximityMiss,
        [1] = "2104339793249863987",
        -- FX,
        [2] = "2102986023186227423",
        -- FX_Off,
        [3] = "2103068927587262857",
        -- Marker,
        [4] = "2102986023190421731",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_14()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103069179411177903",
        -- EntityProximityMiss,
        [1] = "2104339888930326865",
        -- FX,
        [2] = "2102986957320642843",
        -- FX_Off,
        [3] = "2103069179409080747",
        -- Marker,
        [4] = "2102986957324837155",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_43()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_OutOfTime",
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|969831079");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Floats_41_A_gt_B,
        -- A_le_B,
        [3] = self.f_box_Compare_Floats_41_A_le_B,
    });
    params = {
        -- A,
        [0] = self.fDistanceTarget,
        -- B,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_UNI46_320_B10_DestroyTargets_107()
    local params;
    params = {
        -- Base,
        [0] = "2104242315332715779",
        -- Target,
        [1] = "2103083763174047238",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|983351292");
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

function export:OnEnter_box_Brick_GateRaces_CreateLists_17()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103084816403538430",
        -- EntityProximityMiss,
        [1] = "2104339857554835781",
        -- FX,
        [2] = "2103084816405635586",
        -- FX_Off,
        [3] = "2103084816403538432",
        -- Marker,
        [4] = "2103084816401441274",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_74()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103028652542357380",
        -- EntityProximityMiss,
        [1] = "2104339706010437919",
        -- FX,
        [2] = "2102928413124748299",
        -- FX_Off,
        [3] = "2103014049745757766",
        -- Marker,
        [4] = "2102928413126845455",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1041393473");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_40_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_40_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bCloseTargerLine,
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_76()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103028645967785856",
        -- EntityProximityMiss,
        [1] = "2104339666133092635",
        -- FX,
        [2] = "2102928391769449473",
        -- FX_Off,
        [3] = "2103014048722347588",
        -- Marker,
        [4] = "2102928391771546633",
    };
    return params;
end;

function export:OnEnter_box_UNI46_320_B10_DestroyTargets_102()
    local params;
    params = {
        -- Base,
        [0] = "2104242969851757850",
        -- Target,
        [1] = "2103084688898793935",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_Outro_26()
    local params;
    params = {
        -- HostTeleport,
        [1] = "2100114193198883681",
        -- Region,
        [2] = 1,
        -- SceneEntity,
        [3] = "2103593312658157213",
        -- SequenceFile,
        [4] = "sequences/zeta_main/uni46/uni46_320_cin_camera.seq",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_53()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103967214431403096",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_52()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103967201817033814",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_73()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1065906481",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1180360288");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 17,
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
                [3] = self.f_box_OutputOrder_v2_16_Out_3,
                [4] = self.f_box_OutputOrder_v2_16_Out_4,
                [5] = self.f_box_OutputOrder_v2_16_Out_5,
                [6] = self.f_box_OutputOrder_v2_16_Out_6,
                [7] = self.f_box_OutputOrder_v2_16_Out_7,
                [8] = self.f_box_OutputOrder_v2_16_Out_8,
                [9] = self.f_box_OutputOrder_v2_16_Out_9,
                [10] = self.f_box_OutputOrder_v2_16_Out_10,
                [11] = self.f_box_OutputOrder_v2_16_Out_11,
                [12] = self.f_box_OutputOrder_v2_16_Out_12,
                [13] = self.f_box_OutputOrder_v2_16_Out_13,
                [14] = self.f_box_OutputOrder_v2_16_Out_14,
                [15] = self.f_box_OutputOrder_v2_16_Out_15,
                [16] = self.f_box_OutputOrder_v2_16_Out_16,
            },
            count = 17,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_79()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103028638761971580",
        -- EntityProximityMiss,
        [1] = "2104339652142991639",
        -- FX,
        [2] = "2102928351667708923",
        -- FX_Off,
        [3] = "2103014040509900354",
        -- Marker,
        [4] = "2102928351667708921",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_80()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1591912598",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_51()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103967201817033814",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_54()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103967214431403096",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_84()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2260146089",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_7()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103068651482647655",
        -- EntityProximityMiss,
        [1] = "2104339757197723947",
        -- FX,
        [2] = "2102985172732371145",
        -- FX_Off,
        [3] = "2103068651480550499",
        -- Marker,
        [4] = "2102985172734468301",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1322900975");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_47()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103967186631556180",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1350023645");
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
                [0] = self.f_box_OutputOrder_v2_49_Out_0,
                [1] = self.f_box_OutputOrder_v2_49_Out_1,
                [2] = self.f_box_OutputOrder_v2_49_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_45()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103967340352797788",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_78()
    local params;
    params = {
    };
    return params;
end;

function export:OnEnter_box_Random_56()
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

function export:OnEnter_box_EntityStatusListener_103()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103968063060737124",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1468904762");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_66_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_66_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103096327817689165",
    };
    return params;
end;

function export:OnEnter_box_Random_35()
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

function export:OnEnter_box_Simple_Node_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1561563472");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_25_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_85()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4133232981",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_101()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103968003262544992",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1681851901");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_89()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1203248370",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_6()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103068609971620961",
        -- EntityProximityMiss,
        [1] = "2104339744897927463",
        -- FX,
        [2] = "2102985155602833599",
        -- FX_Off,
        [3] = "2103068609971620957",
        -- Marker,
        [4] = "2102985155604930759",
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
        [3] = "467079902",
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
        [2] = "2104368298557737406",
    };
    return params;
end;

function export:OnEnter_box_UNI46_320_B10_DestroyTargets_106()
    local params;
    params = {
        -- Base,
        [0] = "2104242920887452944",
        -- Target,
        [1] = "2103084668791300555",
    };
    return params;
end;

function export:OnEnter_box_Random_46()
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

function export:OnEnter_box_OutputOrder_v2_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1826315461");
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

function export:OnEnter_box_MessageListener_v3_31()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_Vehicle_Destroyed",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_60()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103967340352797788",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1902720635");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_20_Out,
    });
    params = {
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
        [3] = "2103968003262544992",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|1944386992");
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

function export:OnEnter_box_PlayDialog_v6_82()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4110393672",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_32()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_Player_Killed",
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
        [3] = "1428440157",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_320\\UNI46_320_B10.domino|@UNI46_320_B10_Graph|2054054198");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
                [2] = self.f_box_OutputOrder_v2_33_Out_2,
                [3] = self.f_box_OutputOrder_v2_33_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_70()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1564704504",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_12()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103069058246123939",
        -- EntityProximityMiss,
        [1] = "2104339865563859273",
        -- FX,
        [2] = "2102986903356727559",
        -- FX_Off,
        [3] = "2103069058244026783",
        -- Marker,
        [4] = "2102986903356727563",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_44()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103996691171540967",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_29()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1479653808",
    };
    return params;
end;

function export:OnExit_box_GetDistance_38_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self.fDistanceTarget = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_34_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bCloseTargerLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_37_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self.fDistanceTarget = l0:GetDataOutValue(0);
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
