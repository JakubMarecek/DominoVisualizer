LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni46/uni46_020/uni46_020_b15.domino
-- User graph: UNI46_020_B10
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Time" Type="Core|float" />
</InputReflection> 
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
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetDistance.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_020/UNI46_020_B15.Uni46_020_B10_DestroyTargets.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_020/UNI46_020_B15.UNI46_020_DemoSneakPeek.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[89015544.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4185246462.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4191458591.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3861829876.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3879752298.bnk]], "CSoundResource");
        cboxRes:LoadResource([[232691677.bnk]], "CSoundResource");
        cboxRes:LoadResource([[663105501.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1564704504.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1591912598.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1065906481.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_020/UNI46_020_B15.UNI46_020_B10.debug.lua")] = {
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
            [0] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_020/UNI46_020_B15.Uni46_020_B10_DestroyTargets.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_020/UNI46_020_B15.UNI46_020_DemoSneakPeek.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI46_020_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10";
    self.fDistanceTarget = 0;
    self.bPlayedLastTime = false;
    self.box_StaticBreakableListener_103 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|2312933");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_103_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_103_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_103_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_103_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_103_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_103_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_103_OnStateChanged,
    });
    self.box_Brick_GateRaces_Outro_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Outro.debug.lua");
    l0 = self.box_Brick_GateRaces_Outro_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Outro_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|17585972");
    l0:SetConnections({
        -- Finished,
        [1] = self.f_box_Brick_GateRaces_Outro_1_Finished,
        -- Started,
        [2] = self.f_box_Brick_GateRaces_Outro_1_Started,
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|137706913");
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
        [0] = self.f_box_MultipleOR_62_Out,
    });
    self.box_Random_82 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|164198838");
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
                [0] = self.f_box_Random_82_Output_0,
                [1] = self.f_box_Random_82_Output_1,
                [2] = self.f_box_Random_82_Output_2,
            },
            count = 3,
        },
    });
    self.box_Brick_GateRaces_CORE_16 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CORE.debug.lua");
    l0 = self.box_Brick_GateRaces_CORE_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CORE_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|166438064");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_Brick_GateRaces_CORE_16_Disabled,
        -- Fail,
        [1] = self.f_box_Brick_GateRaces_CORE_16_Fail,
        -- Finished,
        [2] = self.f_box_Brick_GateRaces_CORE_16_Finished,
        -- GatePassed,
        [3] = self.f_box_Brick_GateRaces_CORE_16_GatePassed,
        -- Started,
        [4] = self.f_box_Brick_GateRaces_CORE_16_Started,
    });
    self.box_Brick_GateRaces_Dialogs_19 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|222700911");
    l0:SetConnections({
    });
    self.box_Uni46_020_B10_DestroyTargets_96 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_020/UNI46_020_B15.Uni46_020_B10_DestroyTargets.debug.lua");
    l0 = self.box_Uni46_020_B10_DestroyTargets_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Uni46_020_B10_DestroyTargets_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|320685937");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_48 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|323052931");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_28 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|328910234");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_23 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|370843446");
    l0:SetConnections({
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|377691609");
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
        [0] = self.f_box_MultipleOR_18_Out,
    });
    self.box_PlayDialog_v6_81 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|496091494");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_33 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|515599207");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_45 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|530076017");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|550692169");
    l0:SetConnections({
    });
    self.box_MultipleOR_57 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|594278831");
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
        [0] = self.f_box_MultipleOR_57_Out,
    });
    self.box_StaticBreakableListener_106 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|598392427");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_106_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_106_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_106_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_106_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_106_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_106_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_106_OnStateChanged,
    });
    self.box_ProximityTrigger_v2_83 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|600254076");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_83_Enter,
    });
    self.box_Random_64 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|616716616");
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
                [0] = self.f_box_Random_64_Output_0,
                [1] = self.f_box_Random_64_Output_1,
                [2] = self.f_box_Random_64_Output_2,
            },
            count = 3,
        },
    });
    self.box_UNI46_020_DemoSneakPeek_115 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_020/UNI46_020_B15.UNI46_020_DemoSneakPeek.debug.lua");
    l0 = self.box_UNI46_020_DemoSneakPeek_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_020_DemoSneakPeek_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|621888745");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UNI46_020_DemoSneakPeek_115_Disabled,
    });
    self.box_EntityStatusListener_108 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|629361426");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_108_Loaded,
    });
    self.box_ProximityTrigger_v2_72 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|644606845");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_72_Enter,
    });
    self.box_Brick_GateRaces_CreateLists_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|662124577");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_97 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|668861195");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_97_Out,
    });
    self.box_MultipleOR_79 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|696446620");
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
        [0] = self.f_box_MultipleOR_79_Out,
    });
    self.box_EntityStatusListener_70 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|708969801");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_70_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_70_Unloaded,
    });
    self.box_Brick_GateRaces_CreateLists_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|714009014");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_46 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|752750396");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_56 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|763137927");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_56_Received,
    });
    self.box_ProximityTrigger_v2_78 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|771099089");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_78_Enter,
    });
    self.box_PlayDialog_v6_30 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|776704028");
    l0:SetConnections({
    });
    self.box_Uni46_020_B10_DestroyTargets_5 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_020/UNI46_020_B15.Uni46_020_B10_DestroyTargets.debug.lua");
    l0 = self.box_Uni46_020_B10_DestroyTargets_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Uni46_020_B10_DestroyTargets_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|827388934");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_84 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|835440038");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_29 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|844478000");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_60 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|850870468");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_61 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|859861328");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_61_Enter,
    });
    self.box_Random_95 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|895158708");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
        },
        dataIn = {
            [1] = 4,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_95_Output_0,
                [1] = self.f_box_Random_95_Output_1,
                [2] = self.f_box_Random_95_Output_2,
                [3] = self.f_box_Random_95_Output_3,
            },
            count = 4,
        },
    });
    self.box_StaticBreakableListener_109 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|904559852");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_109_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_109_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_109_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_109_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_109_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_109_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_109_OnStateChanged,
    });
    self.box_MessageListener_v3_55 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|926662570");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_55_Received,
    });
    self.box_JoinInProgressModifier_40 = cbox:CreateBox("Domino/System/Coop/JoinInProgresModifier.lua");
    l0 = self.box_JoinInProgressModifier_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_JoinInProgressModifier_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|935923870");
    l0:SetConnections({
        -- OnLockSession,
        [0] = self.f_box_JoinInProgressModifier_40_OnLockSession,
    });
    self.box_Random_73 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|937497403");
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
                [0] = self.f_box_Random_73_Output_0,
                [1] = self.f_box_Random_73_Output_1,
                [2] = self.f_box_Random_73_Output_2,
            },
            count = 3,
        },
    });
    self.box_Brick_GateRaces_CreateLists_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|958905934");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_91 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|975056473");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|981777998");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_Brick_GateRaces_CreateLists_10_Added,
    });
    self.box_PlayDialog_v6_63 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1006484227");
    l0:SetConnections({
    });
    self.box_MultipleOR_87 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1014631378");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 6,
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
    self.box_Brick_GateRaces_Dialogs_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1016861053");
    l0:SetConnections({
    });
    self.box_Uni46_020_B10_DestroyTargets_42 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_020/UNI46_020_B15.Uni46_020_B10_DestroyTargets.debug.lua");
    l0 = self.box_Uni46_020_B10_DestroyTargets_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Uni46_020_B10_DestroyTargets_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1146109683");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1181222141");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_47 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1194772387");
    l0:SetConnections({
        -- Cleared,
        [1] = self.f_box_Brick_GateRaces_CreateLists_47_Cleared,
    });
    self.box_UNI46_020_DemoSneakPeek_114 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_020/UNI46_020_B15.UNI46_020_DemoSneakPeek.debug.lua");
    l0 = self.box_UNI46_020_DemoSneakPeek_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI46_020_DemoSneakPeek_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1226347674");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UNI46_020_DemoSneakPeek_114_Enabled,
    });
    self.box_Brick_GateRaces_CreateLists_38 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1326694735");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_Dialogs_52 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_Dialogs.debug.lua");
    l0 = self.box_Brick_GateRaces_Dialogs_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_Dialogs_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1327439639");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_71 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1335817395");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_75 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1377512612");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_75_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_75_Unloaded,
    });
    self.box_PlayDialog_v6_65 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1394255115");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_8 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1398478849");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_8_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_8_Reloaded,
    });
    self.box_Uni46_020_B10_DestroyTargets_39 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_020/UNI46_020_B15.Uni46_020_B10_DestroyTargets.debug.lua");
    l0 = self.box_Uni46_020_B10_DestroyTargets_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Uni46_020_B10_DestroyTargets_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1425908686");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_37 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1440349978");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_105 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1448162777");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_105_Loaded,
    });
    self.box_PlayDialog_v6_92 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1517678019");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_85 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1538292547");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_85_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_85_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_85_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_85_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_85_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_85_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_85_OnStateChanged,
    });
    self.box_Brick_GateRaces_CreateLists_27 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1549329937");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_31 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1553891242");
    l0:SetConnections({
    });
    self.box_Uni46_020_B10_DestroyTargets_4 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_020/UNI46_020_B15.Uni46_020_B10_DestroyTargets.debug.lua");
    l0 = self.box_Uni46_020_B10_DestroyTargets_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Uni46_020_B10_DestroyTargets_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1595138467");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1655876070");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1665580710");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_102 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1716907716");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_102_Loaded,
    });
    self.box_EntityStatusListener_69 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1725791354");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_69_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_69_Unloaded,
    });
    self.box_EntityStatusListener_111 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1756271762");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_111_Loaded,
    });
    self.box_PlayDialog_v6_66 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1763276981");
    l0:SetConnections({
    });
    self.box_Uni46_020_B10_DestroyTargets_94 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_020/UNI46_020_B15.Uni46_020_B10_DestroyTargets.debug.lua");
    l0 = self.box_Uni46_020_B10_DestroyTargets_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Uni46_020_B10_DestroyTargets_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1769940604");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_44 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1771307008");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_26 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1771761772");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_59 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1782164274");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_59_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_59_Unloaded,
    });
    self.box_PlayDialog_v6_80 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1789811149");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_112 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1793260641");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_112_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_112_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_112_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_112_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_112_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_112_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_112_OnStateChanged,
    });
    self.box_Brick_GateRaces_CreateLists_21 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1794597067");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_50 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1818415176");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_74 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1855483234");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_54 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1860659723");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_54_Received,
    });
    self.box_Brick_GateRaces_CreateLists_32 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1889727251");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_49 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1894247904");
    l0:SetConnections({
    });
    self.box_Uni46_020_B10_DestroyTargets_34 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_020/UNI46_020_B15.Uni46_020_B10_DestroyTargets.debug.lua");
    l0 = self.box_Uni46_020_B10_DestroyTargets_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Uni46_020_B10_DestroyTargets_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1894891516");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_36 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1919276886");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_67 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1959630994");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_67_Enter,
    });
    self.box_RemoveEntity_v2_113 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|2078818847");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_76 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|2090951573");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_76_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_76_Unloaded,
    });
    self.box_Brick_GateRaces_CreateLists_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|2117991123");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_89 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|2126652034");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_89_Loaded,
    });
    self.box_Brick_GateRaces_CreateLists_35 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|2136742629");
    l0:SetConnections({
    });
    self.box_Uni46_020_B10_DestroyTargets_11 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_020/UNI46_020_B15.Uni46_020_B10_DestroyTargets.debug.lua");
    l0 = self.box_Uni46_020_B10_DestroyTargets_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Uni46_020_B10_DestroyTargets_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|2139075236");
    l0:SetConnections({
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1674338329", "1674338329", "UNI46_020_B10", "In", "box_ActivityAcknowledgeGate_8.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_StaticBreakableListener_103_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_GetDistance_101();
    l0 = self.box_StaticBreakableListener_103;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1644888449", "1644888449", "UNI46_020_B10", "box_StaticBreakableListener_103.OnBreak", "box_GetDistance_101.Distance3D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance3D
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetDistance_107_Out()
    local l0;
    self:OnExit_box_GetDistance_107_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|573855523", "573855523", "UNI46_020_B10", "box_GetDistance_107.Out", "box_MultipleOR_87.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Brick_GateRaces_Outro_1_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_98();
    l0 = self.box_Brick_GateRaces_Outro_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1729603483", "1729603483", "UNI46_020_B10", "box_Brick_GateRaces_Outro_1.Finished", "box_OutputOrder_v2_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_Outro_1_Started()
    local l0, l1;
    l0 = self.box_Brick_GateRaces_Outro_1;
    l1 = self.box_Brick_GateRaces_Dialogs_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1298126550", "1298126550", "UNI46_020_B10", "box_Brick_GateRaces_Outro_1.Started", "box_Brick_GateRaces_Dialogs_19.Success", l0:GetLuaBox(), l1:GetLuaBox());
    -- Success
    l1:Exec(4, {
    });
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Uni46_020_B10_DestroyTargets_39();
    l0 = self.box_Uni46_020_B10_DestroyTargets_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|2011849702", "2011849702", "UNI46_020_B10", "box_OutputOrder_v2_24.Out", "box_Uni46_020_B10_DestroyTargets_39.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Uni46_020_B10_DestroyTargets_96();
    l0 = self.box_Uni46_020_B10_DestroyTargets_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|269508339", "269508339", "UNI46_020_B10", "box_OutputOrder_v2_24.Out", "box_Uni46_020_B10_DestroyTargets_96.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_24_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Uni46_020_B10_DestroyTargets_94();
    l0 = self.box_Uni46_020_B10_DestroyTargets_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|981578098", "981578098", "UNI46_020_B10", "box_OutputOrder_v2_24.Out", "box_Uni46_020_B10_DestroyTargets_94.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_24_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Uni46_020_B10_DestroyTargets_4();
    l0 = self.box_Uni46_020_B10_DestroyTargets_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1386720382", "1386720382", "UNI46_020_B10", "box_OutputOrder_v2_24.Out", "box_Uni46_020_B10_DestroyTargets_4.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_24_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Uni46_020_B10_DestroyTargets_5();
    l0 = self.box_Uni46_020_B10_DestroyTargets_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|302510272", "302510272", "UNI46_020_B10", "box_OutputOrder_v2_24.Out", "box_Uni46_020_B10_DestroyTargets_5.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_24_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Uni46_020_B10_DestroyTargets_34();
    l0 = self.box_Uni46_020_B10_DestroyTargets_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1059024447", "1059024447", "UNI46_020_B10", "box_OutputOrder_v2_24.Out", "box_Uni46_020_B10_DestroyTargets_34.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_24_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Uni46_020_B10_DestroyTargets_42();
    l0 = self.box_Uni46_020_B10_DestroyTargets_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1164498302", "1164498302", "UNI46_020_B10", "box_OutputOrder_v2_24.Out", "box_Uni46_020_B10_DestroyTargets_42.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_24_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Uni46_020_B10_DestroyTargets_11();
    l0 = self.box_Uni46_020_B10_DestroyTargets_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|724237579", "724237579", "UNI46_020_B10", "box_OutputOrder_v2_24.Out", "box_Uni46_020_B10_DestroyTargets_11.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_90_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_93();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|793519623", "793519623", "UNI46_020_B10", "box_Compare_Boolean_90.A_is_False", "box_SetBoolean_v2_93.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_90_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_88();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1296848458", "1296848458", "UNI46_020_B10", "box_Compare_Boolean_90.A_is_True", "box_SetBoolean_v2_88.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_64();
    l0 = self.box_MultipleOR_62;
    l1 = self.box_Random_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|17883731", "17883731", "UNI46_020_B10", "box_MultipleOR_62.Out", "box_Random_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_54();
    l0 = self.box_MessageListener_v3_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|497728968", "497728968", "UNI46_020_B10", "box_OutputOrder_v2_53.Out", "box_MessageListener_v3_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_55();
    l0 = self.box_MessageListener_v3_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|762269518", "762269518", "UNI46_020_B10", "box_OutputOrder_v2_53.Out", "box_MessageListener_v3_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_53_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_56();
    l0 = self.box_MessageListener_v3_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|849353079", "849353079", "UNI46_020_B10", "box_OutputOrder_v2_53.Out", "box_MessageListener_v3_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Random_82_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_66();
    l0 = self.box_Random_82;
    l1 = self.box_PlayDialog_v6_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1649988120", "1649988120", "UNI46_020_B10", "box_Random_82.Output", "box_PlayDialog_v6_66.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_82_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_71();
    l0 = self.box_Random_82;
    l1 = self.box_PlayDialog_v6_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|797662293", "797662293", "UNI46_020_B10", "box_Random_82.Output", "box_PlayDialog_v6_71.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_82_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_65();
    l0 = self.box_Random_82;
    l1 = self.box_PlayDialog_v6_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|319879974", "319879974", "UNI46_020_B10", "box_Random_82.Output", "box_PlayDialog_v6_65.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Brick_GateRaces_CORE_16_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_7();
    l0 = self.box_Brick_GateRaces_CORE_16;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|444756673", "444756673", "UNI46_020_B10", "box_Brick_GateRaces_CORE_16.Fail", "box_ActivityRetry_7.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_CORE_16_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_GateRaces_Outro_1();
    l0 = self.box_Brick_GateRaces_CORE_16;
    l1 = self.box_Brick_GateRaces_Outro_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|696722761", "696722761", "UNI46_020_B10", "box_Brick_GateRaces_CORE_16.Finished", "box_Brick_GateRaces_Outro_1.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_Brick_GateRaces_CORE_16_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = self.box_Brick_GateRaces_CORE_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1651355126", "1651355126", "UNI46_020_B10", "box_Brick_GateRaces_CORE_16.Started", "box_OutputOrder_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_18_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_18;
    l1 = self.box_JoinInProgressModifier_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1271828263", "1271828263", "UNI46_020_B10", "box_MultipleOR_18.Out", "box_JoinInProgressModifier_40.LockSession", l0:GetLuaBox(), l1:GetLuaBox());
    -- LockSession
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_57_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_57;
    l1 = self.box_Brick_GateRaces_Dialogs_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1024600037", "1024600037", "UNI46_020_B10", "box_MultipleOR_57.Out", "box_Brick_GateRaces_Dialogs_52.Crash", l0:GetLuaBox(), l1:GetLuaBox());
    -- Crash
    l1:Exec(0, {
    });
end;

function export:f_box_StaticBreakableListener_106_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_GetDistance_104();
    l0 = self.box_StaticBreakableListener_106;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|488453579", "488453579", "UNI46_020_B10", "box_StaticBreakableListener_106.OnBreak", "box_GetDistance_104.Distance3D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance3D
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_83_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_83;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|949008394", "949008394", "UNI46_020_B10", "box_ProximityTrigger_v2_83.Enter", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_64_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_60();
    l0 = self.box_Random_64;
    l1 = self.box_PlayDialog_v6_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|298488637", "298488637", "UNI46_020_B10", "box_Random_64.Output", "box_PlayDialog_v6_60.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_64_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_63();
    l0 = self.box_Random_64;
    l1 = self.box_PlayDialog_v6_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1586555524", "1586555524", "UNI46_020_B10", "box_Random_64.Output", "box_PlayDialog_v6_63.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_64_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_30();
    l0 = self.box_Random_64;
    l1 = self.box_PlayDialog_v6_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1521006422", "1521006422", "UNI46_020_B10", "box_Random_64.Output", "box_PlayDialog_v6_30.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_UNI46_020_DemoSneakPeek_115_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_41();
    l0 = self.box_UNI46_020_DemoSneakPeek_115;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1120028834", "1120028834", "UNI46_020_B10", "box_UNI46_020_DemoSneakPeek_115.Disabled", "box_ActivityEnd_41.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_108_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_109();
    l0 = self.box_EntityStatusListener_108;
    l1 = self.box_StaticBreakableListener_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1131410897", "1131410897", "UNI46_020_B10", "box_EntityStatusListener_108.Loaded", "box_StaticBreakableListener_109.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_72_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_72;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1938202112", "1938202112", "UNI46_020_B10", "box_ProximityTrigger_v2_72.Enter", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RemoveEntity_v2_97_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_113();
    l0 = self.box_RemoveEntity_v2_97;
    l1 = self.box_RemoveEntity_v2_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|278187428", "278187428", "UNI46_020_B10", "box_RemoveEntity_v2_97.Out", "box_RemoveEntity_v2_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_79_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_82();
    l0 = self.box_MultipleOR_79;
    l1 = self.box_Random_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1922954812", "1922954812", "UNI46_020_B10", "box_MultipleOR_79.Out", "box_Random_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_70_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_67();
    l0 = self.box_EntityStatusListener_70;
    l1 = self.box_ProximityTrigger_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|767274316", "767274316", "UNI46_020_B10", "box_EntityStatusListener_70.Loaded", "box_ProximityTrigger_v2_67.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_70_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_67();
    l0 = self.box_EntityStatusListener_70;
    l1 = self.box_ProximityTrigger_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1192590014", "1192590014", "UNI46_020_B10", "box_EntityStatusListener_70.Unloaded", "box_ProximityTrigger_v2_67.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_GetDistance_68_Out()
    local l0;
    self:OnExit_box_GetDistance_68_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1822675330", "1822675330", "UNI46_020_B10", "box_GetDistance_68.Out", "box_MultipleOR_87.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_93_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_93_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_91();
    l0 = self.box_PlayDialog_v6_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1342189893", "1342189893", "UNI46_020_B10", "box_SetBoolean_v2_93.Out", "box_PlayDialog_v6_91.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_MessageListener_v3_56_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_56;
    l1 = self.box_Brick_GateRaces_Dialogs_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|2129149406", "2129149406", "UNI46_020_B10", "box_MessageListener_v3_56.Received", "box_Brick_GateRaces_Dialogs_13.OutOfTime", l0:GetLuaBox(), l1:GetLuaBox());
    -- OutOfTime
    l1:Exec(3, {
    });
end;

function export:f_box_ProximityTrigger_v2_78_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_78;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|76382185", "76382185", "UNI46_020_B10", "box_ProximityTrigger_v2_78.Enter", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_61_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_61;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1194771445", "1194771445", "UNI46_020_B10", "box_ProximityTrigger_v2_61.Enter", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Random_95_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_92();
    l0 = self.box_Random_95;
    l1 = self.box_PlayDialog_v6_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|106113119", "106113119", "UNI46_020_B10", "box_Random_95.Output", "box_PlayDialog_v6_92.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_95_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_84();
    l0 = self.box_Random_95;
    l1 = self.box_PlayDialog_v6_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|862627294", "862627294", "UNI46_020_B10", "box_Random_95.Output", "box_PlayDialog_v6_84.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_95_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_100();
    l0 = self.box_Random_95;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|2113353207", "2113353207", "UNI46_020_B10", "box_Random_95.Output", "box_Simple_Node_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_95_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_86();
    l0 = self.box_Random_95;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|356998091", "356998091", "UNI46_020_B10", "box_Random_95.Output", "box_Simple_Node_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_109_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_GetDistance_107();
    l0 = self.box_StaticBreakableListener_109;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|175014239", "175014239", "UNI46_020_B10", "box_StaticBreakableListener_109.OnBreak", "box_GetDistance_107.Distance3D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance3D
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_21();
    l0 = self.box_Brick_GateRaces_CreateLists_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|532242976", "532242976", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_21.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_12();
    l0 = self.box_Brick_GateRaces_CreateLists_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1700822255", "1700822255", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_12.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_22();
    l0 = self.box_Brick_GateRaces_CreateLists_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|431743548", "431743548", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_22.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_33();
    l0 = self.box_Brick_GateRaces_CreateLists_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1495017085", "1495017085", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_33.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_15();
    l0 = self.box_Brick_GateRaces_CreateLists_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|448328571", "448328571", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_15.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_2();
    l0 = self.box_Brick_GateRaces_CreateLists_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|413210132", "413210132", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_2.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_32();
    l0 = self.box_Brick_GateRaces_CreateLists_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1448624276", "1448624276", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_32.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_6();
    l0 = self.box_Brick_GateRaces_CreateLists_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|200482142", "200482142", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_6.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_29();
    l0 = self.box_Brick_GateRaces_CreateLists_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|15613545", "15613545", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_29.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_45();
    l0 = self.box_Brick_GateRaces_CreateLists_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1619933884", "1619933884", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_45.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_37();
    l0 = self.box_Brick_GateRaces_CreateLists_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|2004139595", "2004139595", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_37.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_35();
    l0 = self.box_Brick_GateRaces_CreateLists_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1458573130", "1458573130", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_35.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_27();
    l0 = self.box_Brick_GateRaces_CreateLists_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|667108629", "667108629", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_27.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_28();
    l0 = self.box_Brick_GateRaces_CreateLists_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|298277198", "298277198", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_28.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_3();
    l0 = self.box_Brick_GateRaces_CreateLists_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|563163414", "563163414", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_3.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_23();
    l0 = self.box_Brick_GateRaces_CreateLists_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|549149661", "549149661", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_23.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_44();
    l0 = self.box_Brick_GateRaces_CreateLists_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1553796916", "1553796916", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_44.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_20();
    l0 = self.box_Brick_GateRaces_CreateLists_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|970876968", "970876968", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_20.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_17();
    l0 = self.box_Brick_GateRaces_CreateLists_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|898405046", "898405046", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_17.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_38();
    l0 = self.box_Brick_GateRaces_CreateLists_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|608062594", "608062594", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_38.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_36();
    l0 = self.box_Brick_GateRaces_CreateLists_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1889206661", "1889206661", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_36.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_26();
    l0 = self.box_Brick_GateRaces_CreateLists_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1224152588", "1224152588", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_26.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_31();
    l0 = self.box_Brick_GateRaces_CreateLists_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1648283052", "1648283052", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_31.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_50();
    l0 = self.box_Brick_GateRaces_CreateLists_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1439906612", "1439906612", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_50.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_46();
    l0 = self.box_Brick_GateRaces_CreateLists_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1390942533", "1390942533", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_46.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_49();
    l0 = self.box_Brick_GateRaces_CreateLists_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1880622099", "1880622099", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_49.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_48();
    l0 = self.box_Brick_GateRaces_CreateLists_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|2023617550", "2023617550", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_48.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_10();
    l0 = self.box_Brick_GateRaces_CreateLists_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|429869004", "429869004", "UNI46_020_B10", "box_OutputOrder_v2_51.Out", "box_Brick_GateRaces_CreateLists_10.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_MessageListener_v3_55_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_55;
    l1 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1340803927", "1340803927", "UNI46_020_B10", "box_MessageListener_v3_55.Received", "box_MultipleOR_57.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_JoinInProgressModifier_40_OnLockSession()
    local l0, l1;
    l0 = self.box_JoinInProgressModifier_40;
    l1 = self.box_UNI46_020_DemoSneakPeek_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|2062282358", "2062282358", "UNI46_020_B10", "box_JoinInProgressModifier_40.OnLockSession", "box_UNI46_020_DemoSneakPeek_114.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Random_73_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_80();
    l0 = self.box_Random_73;
    l1 = self.box_PlayDialog_v6_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|687668775", "687668775", "UNI46_020_B10", "box_Random_73.Output", "box_PlayDialog_v6_80.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_73_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_81();
    l0 = self.box_Random_73;
    l1 = self.box_PlayDialog_v6_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1249820263", "1249820263", "UNI46_020_B10", "box_Random_73.Output", "box_PlayDialog_v6_81.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_73_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_74();
    l0 = self.box_Random_73;
    l1 = self.box_PlayDialog_v6_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|114074804", "114074804", "UNI46_020_B10", "box_Random_73.Output", "box_PlayDialog_v6_74.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Brick_GateRaces_CreateLists_10_Added()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_14();
    l0 = self.box_Brick_GateRaces_CreateLists_10;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|573718458", "573718458", "UNI46_020_B10", "box_Brick_GateRaces_CreateLists_10.Added", "box_Simple_Node_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_87_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Floats_77();
    l0 = self.box_MultipleOR_87;
    l1 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|470620076", "470620076", "UNI46_020_B10", "box_MultipleOR_87.Out", "box_Compare_Floats_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_99_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_89();
    l0 = self.box_EntityStatusListener_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|343512666", "343512666", "UNI46_020_B10", "box_OutputOrder_v2_99.Out", "box_EntityStatusListener_89.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_99_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_102();
    l0 = self.box_EntityStatusListener_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1751067161", "1751067161", "UNI46_020_B10", "box_OutputOrder_v2_99.Out", "box_EntityStatusListener_102.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_99_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_105();
    l0 = self.box_EntityStatusListener_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|854128805", "854128805", "UNI46_020_B10", "box_OutputOrder_v2_99.Out", "box_EntityStatusListener_105.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_99_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_108();
    l0 = self.box_EntityStatusListener_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1610642980", "1610642980", "UNI46_020_B10", "box_OutputOrder_v2_99.Out", "box_EntityStatusListener_108.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_99_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_111();
    l0 = self.box_EntityStatusListener_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|219673508", "219673508", "UNI46_020_B10", "box_OutputOrder_v2_99.Out", "box_EntityStatusListener_111.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_98_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_97();
    l0 = self.box_RemoveEntity_v2_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1048547243", "1048547243", "UNI46_020_B10", "box_OutputOrder_v2_98.Out", "box_RemoveEntity_v2_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_98_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_UNI46_020_DemoSneakPeek_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|244027051", "244027051", "UNI46_020_B10", "box_OutputOrder_v2_98.Out", "box_UNI46_020_DemoSneakPeek_115.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_Brick_GateRaces_CreateLists_47_Cleared()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = self.box_Brick_GateRaces_CreateLists_47;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1541409894", "1541409894", "UNI46_020_B10", "box_Brick_GateRaces_CreateLists_47.Cleared", "box_OutputOrder_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI46_020_DemoSneakPeek_114_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_47();
    l0 = self.box_UNI46_020_DemoSneakPeek_114;
    l1 = self.box_Brick_GateRaces_CreateLists_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1277740677", "1277740677", "UNI46_020_B10", "box_UNI46_020_DemoSneakPeek_114.Enabled", "box_Brick_GateRaces_CreateLists_47.ClearLists", l0:GetLuaBox(), l1:GetLuaBox());
    -- ClearLists
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_75_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_83();
    l0 = self.box_EntityStatusListener_75;
    l1 = self.box_ProximityTrigger_v2_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|2070264461", "2070264461", "UNI46_020_B10", "box_EntityStatusListener_75.Loaded", "box_ProximityTrigger_v2_83.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_75_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_83();
    l0 = self.box_EntityStatusListener_75;
    l1 = self.box_ProximityTrigger_v2_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1043535446", "1043535446", "UNI46_020_B10", "box_EntityStatusListener_75.Unloaded", "box_ProximityTrigger_v2_83.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_8_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|147330742", "147330742", "UNI46_020_B10", "box_ActivityAcknowledgeGate_8.Acknowledged", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_8_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|134216896", "134216896", "UNI46_020_B10", "box_ActivityAcknowledgeGate_8.Reloaded", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_69();
    l0 = self.box_EntityStatusListener_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1294648976", "1294648976", "UNI46_020_B10", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_69.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_59();
    l0 = self.box_EntityStatusListener_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|98042191", "98042191", "UNI46_020_B10", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_59.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_75();
    l0 = self.box_EntityStatusListener_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1903816150", "1903816150", "UNI46_020_B10", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_75.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_76();
    l0 = self.box_EntityStatusListener_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1456464494", "1456464494", "UNI46_020_B10", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_76.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_70();
    l0 = self.box_EntityStatusListener_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1960157813", "1960157813", "UNI46_020_B10", "box_OutputOrder_v2_58.Out", "box_EntityStatusListener_70.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_58_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_99();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1747261710", "1747261710", "UNI46_020_B10", "box_OutputOrder_v2_58.Out", "box_OutputOrder_v2_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_105_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_106();
    l0 = self.box_EntityStatusListener_105;
    l1 = self.box_StaticBreakableListener_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1664738972", "1664738972", "UNI46_020_B10", "box_EntityStatusListener_105.Loaded", "box_StaticBreakableListener_106.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_85_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_GetDistance_68();
    l0 = self.box_StaticBreakableListener_85;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|238056840", "238056840", "UNI46_020_B10", "box_StaticBreakableListener_85.OnBreak", "box_GetDistance_68.Distance3D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance3D
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|959516115", "959516115", "UNI46_020_B10", "box_OutputOrder_v2_43.Out", "box_OutputOrder_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|6375451", "6375451", "UNI46_020_B10", "box_OutputOrder_v2_43.Out", "box_OutputOrder_v2_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1292493945", "1292493945", "UNI46_020_B10", "box_OutputOrder_v2_43.Out", "box_OutputOrder_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_88_Out()
    self:OnExit_box_SetBoolean_v2_88_Out();
end;

function export:f_box_EntityStatusListener_102_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_103();
    l0 = self.box_EntityStatusListener_102;
    l1 = self.box_StaticBreakableListener_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|246572873", "246572873", "UNI46_020_B10", "box_EntityStatusListener_102.Loaded", "box_StaticBreakableListener_103.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_69_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_72();
    l0 = self.box_EntityStatusListener_69;
    l1 = self.box_ProximityTrigger_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1121156967", "1121156967", "UNI46_020_B10", "box_EntityStatusListener_69.Loaded", "box_ProximityTrigger_v2_72.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_69_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_72();
    l0 = self.box_EntityStatusListener_69;
    l1 = self.box_ProximityTrigger_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|649931386", "649931386", "UNI46_020_B10", "box_EntityStatusListener_69.Unloaded", "box_ProximityTrigger_v2_72.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_111_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_112();
    l0 = self.box_EntityStatusListener_111;
    l1 = self.box_StaticBreakableListener_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|865708658", "865708658", "UNI46_020_B10", "box_EntityStatusListener_111.Loaded", "box_StaticBreakableListener_112.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_59_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_61();
    l0 = self.box_EntityStatusListener_59;
    l1 = self.box_ProximityTrigger_v2_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|623073797", "623073797", "UNI46_020_B10", "box_EntityStatusListener_59.Loaded", "box_ProximityTrigger_v2_61.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_59_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_61();
    l0 = self.box_EntityStatusListener_59;
    l1 = self.box_ProximityTrigger_v2_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|2070992356", "2070992356", "UNI46_020_B10", "box_EntityStatusListener_59.Unloaded", "box_ProximityTrigger_v2_61.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_112_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_GetDistance_110();
    l0 = self.box_StaticBreakableListener_112;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|411326851", "411326851", "UNI46_020_B10", "box_StaticBreakableListener_112.OnBreak", "box_GetDistance_110.Distance3D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance3D
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CORE_16();
    l0 = self.box_Brick_GateRaces_CORE_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|435293006", "435293006", "UNI46_020_B10", "box_Simple_Node_14.Out", "box_Brick_GateRaces_CORE_16.Start_Vehicle", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_Vehicle
    l0:Exec(2, params);
end;

function export:f_box_MessageListener_v3_54_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_54;
    l1 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1037757225", "1037757225", "UNI46_020_B10", "box_MessageListener_v3_54.Received", "box_MultipleOR_57.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Floats_77_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_95();
    l0 = self.box_Random_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|462017182", "462017182", "UNI46_020_B10", "box_Compare_Floats_77.A_gt_B", "box_Random_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Floats_77_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_90();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|396000873", "396000873", "UNI46_020_B10", "box_Compare_Floats_77.A_le_B", "box_Compare_Boolean_90.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_67_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Random_73();
    l0 = self.box_ProximityTrigger_v2_67;
    l1 = self.box_Random_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|651519221", "651519221", "UNI46_020_B10", "box_ProximityTrigger_v2_67.Enter", "box_Random_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetDistance_110_Out()
    local l0;
    self:OnExit_box_GetDistance_110_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1159514854", "1159514854", "UNI46_020_B10", "box_GetDistance_110.Out", "box_MultipleOR_87.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_GetDistance_104_Out()
    local l0;
    self:OnExit_box_GetDistance_104_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1740031645", "1740031645", "UNI46_020_B10", "box_GetDistance_104.Out", "box_MultipleOR_87.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetDistance_101_Out()
    local l0;
    self:OnExit_box_GetDistance_101_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|758724120", "758724120", "UNI46_020_B10", "box_GetDistance_101.Out", "box_MultipleOR_87.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_EntityStatusListener_76_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_78();
    l0 = self.box_EntityStatusListener_76;
    l1 = self.box_ProximityTrigger_v2_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1758755974", "1758755974", "UNI46_020_B10", "box_EntityStatusListener_76.Loaded", "box_ProximityTrigger_v2_78.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_76_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_78();
    l0 = self.box_EntityStatusListener_76;
    l1 = self.box_ProximityTrigger_v2_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|660687718", "660687718", "UNI46_020_B10", "box_EntityStatusListener_76.Unloaded", "box_ProximityTrigger_v2_78.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_89_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_85();
    l0 = self.box_EntityStatusListener_89;
    l1 = self.box_StaticBreakableListener_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|526510957", "526510957", "UNI46_020_B10", "box_EntityStatusListener_89.Loaded", "box_StaticBreakableListener_85.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:OnEnter_box_StaticBreakableListener_103()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2103084746518045155",
    };
    return params;
end;

function export:OnEnter_box_GetDistance_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|13837994");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_107_Out,
    });
    l0 = self.box_StaticBreakableListener_109;
    params = {
        -- Entity1,
        [0] = l0:GetDataOutValue(0),
        -- Entity2,
        [1] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_Outro_1()
    local params;
    params = {
        -- HostTeleport,
        [1] = "2103287788909651398",
        -- Region,
        [2] = 0,
        -- SceneEntity,
        [3] = "2103594500457804266",
        -- SequenceFile,
        [4] = "sequences/zeta_main/uni46/uni46_020_cin_camera.seq",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|58860468");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
                [2] = self.f_box_OutputOrder_v2_24_Out_2,
                [3] = self.f_box_OutputOrder_v2_24_Out_3,
                [4] = self.f_box_OutputOrder_v2_24_Out_4,
                [5] = self.f_box_OutputOrder_v2_24_Out_5,
                [6] = self.f_box_OutputOrder_v2_24_Out_6,
                [7] = self.f_box_OutputOrder_v2_24_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|103503541");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_90_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_90_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bPlayedLastTime,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|149076386");
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

function export:OnEnter_box_Random_82()
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

function export:OnEnter_box_Brick_GateRaces_CORE_16()
    local params;
    params = {
        -- bTeleportPlayer,
        [0] = false,
        -- eMobileMarker_Vehicle_Client,
        [1] = "2103288356749207025",
        -- eMobileMarker_Vehicle_Host,
        [2] = "2103288352569583085",
        -- eTeleportPointClient,
        [3] = "2103288279976666570",
        -- eTeleportPointHost,
        [4] = "2103288276845618632",
        -- eVehicleSpawnerClient,
        [6] = "2102915038456092165",
        -- eVehicleSpawnerHost,
        [7] = "2098619704542235695",
        -- fDelayBeforeStart,
        [8] = 0,
        -- fTimer,
        [9] = 21,
        -- iBonusTimeGates,
        [10] = 5,
        -- VehicleLockCountdown,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_Uni46_020_B10_DestroyTargets_96()
    local params;
    params = {
        -- Base,
        [0] = "2103996254284446694",
        -- Target,
        [1] = "2103758549980078642",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_48()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103414847946434278",
        -- EntityProximityMiss,
        [1] = "2104367623396431731",
        -- FX,
        [2] = "2103414847942239966",
        -- FX_Off,
        [3] = "2103414847940142812",
        -- Marker,
        [4] = "2103414847944337122",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_28()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103288528929580728",
        -- EntityProximityMiss,
        [1] = "2104367579337365301",
        -- FX,
        [2] = "2103288528929580732",
        -- FX_Off,
        [3] = "2103288528929580730",
        -- Marker,
        [4] = "2103288528929580736",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_23()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103414766201546314",
        -- EntityProximityMiss,
        [1] = "2104367591062542147",
        -- FX,
        [2] = "2103414766195254850",
        -- FX_Off,
        [3] = "2103414766195254848",
        -- Marker,
        [4] = "2103414766197352006",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|394641605");
    l0:SetConnections({
    });
    l0 = self.box_Brick_GateRaces_CORE_16;
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

function export:OnEnter_box_ActivityEnd_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|461023770");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_81()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4185246462",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_33()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103288523338573379",
        -- EntityProximityMiss,
        [1] = "2104367538874914567",
        -- FX,
        [2] = "2103288523340670535",
        -- FX_Off,
        [3] = "2103288523340670533",
        -- Marker,
        [4] = "2103288523340670539",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_45()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103288526425581162",
        -- EntityProximityMiss,
        [1] = "2104367563489187615",
        -- FX,
        [2] = "2103288526427678318",
        -- FX_Off,
        [3] = "2103288526427678316",
        -- Marker,
        [4] = "2103288526427678322",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_22()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103288523342767696",
        -- EntityProximityMiss,
        [1] = "2104367536289126147",
        -- FX,
        [2] = "2103288523344864852",
        -- FX_Off,
        [3] = "2103288523342767698",
        -- Marker,
        [4] = "2103288523344864856",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|585324024");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_106()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2103084746518045155",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_83()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103994102963010467",
    };
    return params;
end;

function export:OnEnter_box_Random_64()
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

function export:OnEnter_box_EntityStatusListener_108()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103758587844158044",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_72()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103994048890043295",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_6()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103288526436066948",
        -- EntityProximityMiss,
        [1] = "2104367558776887063",
        -- FX,
        [2] = "2103288526436066952",
        -- FX_Off,
        [3] = "2103288526436066950",
        -- Marker,
        [4] = "2103288526438164108",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_97()
    local params;
    params = {
        -- Group,
        [0] = "2103497691746051216",
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
        [2] = "2103994023004896157",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_15()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103288524735276637",
        -- EntityProximityMiss,
        [1] = "2104367545493526283",
        -- FX,
        [2] = "2103288524735276641",
        -- FX_Off,
        [3] = "2103288524735276639",
        -- Marker,
        [4] = "2103288524737373797",
    };
    return params;
end;

function export:OnEnter_box_GetDistance_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|743770851");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_68_Out,
    });
    l0 = self.box_StaticBreakableListener_85;
    params = {
        -- Entity1,
        [0] = l0:GetDataOutValue(0),
        -- Entity2,
        [1] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_46()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103414820362593983",
        -- EntityProximityMiss,
        [1] = "2104367617341953895",
        -- FX,
        [2] = "2103414820358399671",
        -- FX_Off,
        [3] = "2103414820358399669",
        -- Marker,
        [4] = "2103414820360496827",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|758726240");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_93_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_56()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_OutOfTime",
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
        [3] = "2103994115252321189",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_30()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3861829876",
    };
    return params;
end;

function export:OnEnter_box_Uni46_020_B10_DestroyTargets_5()
    local params;
    params = {
        -- Base,
        [0] = "2103996303561227262",
        -- Target,
        [1] = "2103758583293338195",
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
        [3] = "1591912598",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_29()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103288526431872631",
        -- EntityProximityMiss,
        [1] = "2104367561092142875",
        -- FX,
        [2] = "2103288526431872635",
        -- FX_Off,
        [3] = "2103288526431872633",
        -- Marker,
        [4] = "2103288526433969791",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_60()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "89015544",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_61()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103994084193500065",
    };
    return params;
end;

function export:OnEnter_box_Random_95()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 4,
        },
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_109()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2103084746518045155",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|911474260");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 41,
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
                [1] = self.f_box_OutputOrder_v2_51_Out_1,
                [2] = self.f_box_OutputOrder_v2_51_Out_2,
                [3] = self.f_box_OutputOrder_v2_51_Out_3,
                [4] = self.f_box_OutputOrder_v2_51_Out_4,
                [5] = self.f_box_OutputOrder_v2_51_Out_5,
                [6] = self.f_box_OutputOrder_v2_51_Out_6,
                [7] = self.f_box_OutputOrder_v2_51_Out_7,
                [8] = self.f_box_OutputOrder_v2_51_Out_8,
                [9] = self.f_box_OutputOrder_v2_51_Out_9,
                [10] = self.f_box_OutputOrder_v2_51_Out_10,
                [11] = self.f_box_OutputOrder_v2_51_Out_11,
                [12] = self.f_box_OutputOrder_v2_51_Out_12,
                [13] = self.f_box_OutputOrder_v2_51_Out_13,
                [14] = self.f_box_OutputOrder_v2_51_Out_14,
                [15] = self.f_box_OutputOrder_v2_51_Out_15,
                [16] = self.f_box_OutputOrder_v2_51_Out_16,
                [17] = self.f_box_OutputOrder_v2_51_Out_17,
                [18] = self.f_box_OutputOrder_v2_51_Out_18,
                [19] = self.f_box_OutputOrder_v2_51_Out_19,
                [20] = self.f_box_OutputOrder_v2_51_Out_20,
                [21] = self.f_box_OutputOrder_v2_51_Out_21,
                [22] = self.f_box_OutputOrder_v2_51_Out_22,
                [23] = self.f_box_OutputOrder_v2_51_Out_23,
                [24] = self.f_box_OutputOrder_v2_51_Out_24,
                [26] = self.f_box_OutputOrder_v2_51_Out_26,
                [27] = self.f_box_OutputOrder_v2_51_Out_27,
                [28] = self.f_box_OutputOrder_v2_51_Out_28,
            },
            count = 41,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_55()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_Player_Killed",
    };
    return params;
end;

function export:OnEnter_box_Random_73()
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

function export:OnEnter_box_Brick_GateRaces_CreateLists_17()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103414780950816369",
        -- EntityProximityMiss,
        [1] = "2104367600998848335",
        -- FX,
        [2] = "2103414780946622057",
        -- FX_Off,
        [3] = "2103414780944524903",
        -- Marker,
        [4] = "2103414780948719213",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_91()
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

function export:OnEnter_box_Brick_GateRaces_CreateLists_10()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103950974839211069",
        -- FX,
        [2] = "2103950974837113909",
        -- FX_Off,
        [3] = "2103950974835016755",
        -- Marker,
        [4] = "2103950974837113913",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_63()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "232691677",
    };
    return params;
end;

function export:OnEnter_box_Uni46_020_B10_DestroyTargets_42()
    local params;
    params = {
        -- Base,
        [0] = "2103996331415600130",
        -- Target,
        [1] = "2103758770917139049",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1170321702");
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
                [0] = self.f_box_OutputOrder_v2_99_Out_0,
                [1] = self.f_box_OutputOrder_v2_99_Out_1,
                [2] = self.f_box_OutputOrder_v2_99_Out_2,
                [3] = self.f_box_OutputOrder_v2_99_Out_3,
                [4] = self.f_box_OutputOrder_v2_99_Out_4,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1172554514");
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
                [0] = self.f_box_OutputOrder_v2_98_Out_0,
                [1] = self.f_box_OutputOrder_v2_98_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_12()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103288518827599414",
        -- EntityProximityMiss,
        [1] = "2104367532281468671",
        -- FX,
        [2] = "2103288518827599418",
        -- FX_Off,
        [3] = "2103288518827599416",
        -- Marker,
        [4] = "2103288518829696574",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_47()
    local params;
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_38()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103414785619076734",
        -- EntityProximityMiss,
        [1] = "2104367605327370067",
        -- FX,
        [2] = "2103414785614882422",
        -- FX_Off,
        [3] = "2103414785612785268",
        -- Marker,
        [4] = "2103414785616979578",
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
        [3] = "232691677",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_75()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103994102963010467",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_65()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3861829876",
    };
    return params;
end;

function export:OnEnter_box_Uni46_020_B10_DestroyTargets_39()
    local params;
    params = {
        -- Base,
        [0] = "2103996232639740899",
        -- Target,
        [1] = "2103758539842445869",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_37()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103288528940066527",
        -- EntityProximityMiss,
        [1] = "2104367567584925475",
        -- FX,
        [2] = "2103288528942163683",
        -- FX_Off,
        [3] = "2103288528940066529",
        -- Marker,
        [4] = "2103288528942163687",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1442887062");
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
                [0] = self.f_box_OutputOrder_v2_58_Out_0,
                [1] = self.f_box_OutputOrder_v2_58_Out_1,
                [2] = self.f_box_OutputOrder_v2_58_Out_2,
                [3] = self.f_box_OutputOrder_v2_58_Out_3,
                [4] = self.f_box_OutputOrder_v2_58_Out_4,
                [5] = self.f_box_OutputOrder_v2_58_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_105()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103758583293338195",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_92()
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

function export:OnEnter_box_StaticBreakableListener_85()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2103084746518045155",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_27()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103288528931677893",
        -- EntityProximityMiss,
        [1] = "2104367573001869099",
        -- FX,
        [2] = "2103288528933775049",
        -- FX_Off,
        [3] = "2103288528933775047",
        -- Marker,
        [4] = "2103288528933775053",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_31()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103414807813236389",
        -- EntityProximityMiss,
        [1] = "2104367612048742239",
        -- FX,
        [2] = "2103414807809042077",
        -- FX_Off,
        [3] = "2103414807806944923",
        -- Marker,
        [4] = "2103414807811139233",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1556993414");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1566817844");
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
                [0] = self.f_box_OutputOrder_v2_43_Out_0,
                [1] = self.f_box_OutputOrder_v2_43_Out_1,
                [2] = self.f_box_OutputOrder_v2_43_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Uni46_020_B10_DestroyTargets_4()
    local params;
    params = {
        -- Base,
        [0] = "2103996284860922865",
        -- Target,
        [1] = "2103758569275974216",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1644777443");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_88_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_2()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103288526444455582",
        -- EntityProximityMiss,
        [1] = "2104367551386523407",
        -- FX,
        [2] = "2103288526444455586",
        -- FX_Off,
        [3] = "2103288526444455584",
        -- Marker,
        [4] = "2103288526446552742",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_3()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103288528925386411",
        -- EntityProximityMiss,
        [1] = "2104367582013331257",
        -- FX,
        [2] = "2103288528925386415",
        -- FX_Off,
        [3] = "2103288528925386413",
        -- Marker,
        [4] = "2103288528927483571",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_102()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103758569275974216",
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
        [2] = "2103994048890043295",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_111()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103758770917139049",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_66()
    local params;
    params = {
        -- Group,
        [0] = "#ED455357",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "663105501",
    };
    return params;
end;

function export:OnEnter_box_Uni46_020_B10_DestroyTargets_94()
    local params;
    params = {
        -- Base,
        [0] = "2103996269199391727",
        -- Target,
        [1] = "2103996270579317744",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_44()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103414772654483031",
        -- EntityProximityMiss,
        [1] = "2104367595191834439",
        -- FX,
        [2] = "2103414772650288719",
        -- FX_Off,
        [3] = "2103414772648191565",
        -- Marker,
        [4] = "2103414772652385875",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_26()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103414804868834968",
        -- EntityProximityMiss,
        [1] = "2104367609184032603",
        -- FX,
        [2] = "2103414804864640656",
        -- FX_Off,
        [3] = "2103414804862543502",
        -- Marker,
        [4] = "2103414804866737812",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_59()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103994084193500065",
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
        [3] = "3879752298",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_112()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2103084746518045155",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_21()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103288402263696933",
        -- EntityProximityMiss,
        [1] = "2104367524614280955",
        -- FX,
        [2] = "2103288402263696935",
        -- FX_Off,
        [3] = "2103288402263696934",
        -- Marker,
        [4] = "2103288402263696936",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1818206962");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_50()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103414813802702514",
        -- EntityProximityMiss,
        [1] = "2104367615257384803",
        -- FX,
        [2] = "2103414813798508202",
        -- FX_Off,
        [3] = "2103414813798508200",
        -- Marker,
        [4] = "2103414813800605358",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_74()
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

function export:OnEnter_box_MessageListener_v3_54()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "Clutch_Vehicle_Destroyed",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_32()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103288526440261265",
        -- EntityProximityMiss,
        [1] = "2104367554110723859",
        -- FX,
        [2] = "2103288526440261269",
        -- FX_Off,
        [3] = "2103288526440261267",
        -- Marker,
        [4] = "2103288526442358425",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_49()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103414835279636185",
        -- EntityProximityMiss,
        [1] = "2104367621618046831",
        -- FX,
        [2] = "2103414835275441873",
        -- FX_Off,
        [3] = "2103414835273344719",
        -- Marker,
        [4] = "2103414835277539029",
    };
    return params;
end;

function export:OnEnter_box_Uni46_020_B10_DestroyTargets_34()
    local params;
    params = {
        -- Base,
        [0] = "2103996312247630847",
        -- Target,
        [1] = "2103758587844158044",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_36()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103414792969594507",
        -- EntityProximityMiss,
        [1] = "2104367607422424919",
        -- FX,
        [2] = "2103414792965400195",
        -- FX_Off,
        [3] = "2103414792965400193",
        -- Marker,
        [4] = "2103414792967497351",
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|1948000702");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Floats_77_A_gt_B,
        -- A_le_B,
        [3] = self.f_box_Compare_Floats_77_A_le_B,
    });
    params = {
        -- A,
        [0] = self.fDistanceTarget,
        -- B,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_67()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103994023004896157",
    };
    return params;
end;

function export:OnEnter_box_GetDistance_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|2011671276");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_110_Out,
    });
    l0 = self.box_StaticBreakableListener_112;
    params = {
        -- Entity1,
        [0] = l0:GetDataOutValue(0),
        -- Entity2,
        [1] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_GetDistance_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|2043789023");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_104_Out,
    });
    l0 = self.box_StaticBreakableListener_106;
    params = {
        -- Entity1,
        [0] = l0:GetDataOutValue(0),
        -- Entity2,
        [1] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_113()
    local params;
    params = {
        -- Group,
        [0] = "2103497691743954061",
    };
    return params;
end;

function export:OnEnter_box_GetDistance_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_020\\UNI46_020_B15.domino|@UNI46_020_B10|2082677361");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_101_Out,
    });
    l0 = self.box_StaticBreakableListener_103;
    params = {
        -- Entity1,
        [0] = l0:GetDataOutValue(0),
        -- Entity2,
        [1] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_76()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103994115252321189",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_20()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103414777599567460",
        -- EntityProximityMiss,
        [1] = "2104367597796497227",
        -- FX,
        [2] = "2103414777593275996",
        -- FX_Off,
        [3] = "2103414777593275994",
        -- Marker,
        [4] = "2103414777595373152",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_89()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103758549980078642",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_35()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103288528935872210",
        -- EntityProximityMiss,
        [1] = "2104367570695001895",
        -- FX,
        [2] = "2103288528937969366",
        -- FX_Off,
        [3] = "2103288528937969364",
        -- Marker,
        [4] = "2103288528937969370",
    };
    return params;
end;

function export:OnEnter_box_Uni46_020_B10_DestroyTargets_11()
    local params;
    params = {
        -- Base,
        [0] = "2103996355291675653",
        -- Target,
        [1] = "2103758775163871862",
    };
    return params;
end;

function export:OnExit_box_GetDistance_107_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self.fDistanceTarget = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_68_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self.fDistanceTarget = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_93_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bPlayedLastTime = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_88_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bPlayedLastTime = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_110_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self.fDistanceTarget = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_104_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self.fDistanceTarget = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_101_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self.fDistanceTarget = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="Time" AnchorDynType="0" DataTypeID="float" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
