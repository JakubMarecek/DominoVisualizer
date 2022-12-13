LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_010/intro_010_b80.domino
-- User graph: Intro_010_B80_StartVehicle
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Vehicle" Type="Nomad|entity{}" />
    <DataIn Name="Marshal" Type="Nomad|entity{}" />
    <DataIn Name="Loaded" Type="Core|bool" />
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/ForceVehicleCrash.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetDistance.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OnTopOfVehicleListener.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/SetHudMode_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehiclePositionLockModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3849636213.bnk]], "CSoundResource");
        cboxRes:LoadResource([[329266034.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1812181955.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2617339895.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1573272396.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3760761181.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3313137306.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2652780091.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1627560164.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3898046383.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1926362106.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1907058133.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2109006707.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1221271440.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1063435831.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B80.Intro_010_B80_StartVehicle.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Both_Inside_Veh",
            },
            [1] = {
                name = "Marshal_Inside_Veh",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Fail_Marshal_Leave",
                delayed = false,
            },
            [1] = {
                name = "Veh_OutOf_Garage",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Loaded",
                type = "bool",
            },
            [1] = {
                name = "Marshal",
                type = "entity",
            },
            [2] = {
                name = "Vehicle",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "CallForceNormalEnd",
            },
            [1] = {
                name = "CallInterrupt",
            },
            [2] = {
                name = "Disable",
            },
            [3] = {
                name = "Enable",
            },
            [4] = {
                name = "Use",
            },
        },
        controlInCount = 5,
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
                name = "ForceNormalEndCalled",
                delayed = false,
            },
            [3] = {
                name = "InterruptCalled",
                delayed = false,
            },
            [4] = {
                name = "UseCalled",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/SetContextualStrategy.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetContextualStrategy",
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
                name = "ContextualStrategy",
                type = "entity",
            },
            [1] = {
                name = "Group",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/ForceVehicleCrash.lua")] = {
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
                name = "gasPedal",
                type = "float",
            },
            [1] = {
                name = "steeringWheel",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/HealthModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Damage",
            },
            [1] = {
                name = "Heal",
            },
            [2] = {
                name = "RemoveCritical",
            },
            [3] = {
                name = "Set",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Damaged",
                delayed = false,
            },
            [1] = {
                name = "Healed",
                delayed = false,
            },
            [2] = {
                name = "OnRemoveCritical",
                delayed = false,
            },
            [3] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "damageWithStim",
                type = "int",
            },
            [1] = {
                name = "origin",
                type = "entity",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "value",
                type = "int",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/OnTopOfVehicleListener.lua")] = {
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
                name = "OffTopOfVehicle",
                delayed = true,
            },
            [3] = {
                name = "OnTopOfVehicle",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "CheckNow",
                type = "bool",
            },
            [2] = {
                name = "Players",
                type = "group",
            },
            [3] = {
                name = "VehicleId",
                type = "entity",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")] = {
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
                name = "LocalPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Player/SetHudMode_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CinematicMode",
            },
            [1] = {
                name = "NormalMode",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSetCinematicMode",
                delayed = false,
            },
            [1] = {
                name = "OnSetNormalMode",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Players",
                type = "group",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/RandomFloat_v2.lua")] = {
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
                name = "Max",
                type = "float",
            },
            [1] = {
                name = "Min",
                type = "float",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/VehiclePositionLockModifier.lua")] = {
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
                name = "VehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Intro_010_B80_StartVehicle";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle";
    self.Veh_OutOf_Garage = DummyFunction;
    self.Fail_Marshal_Leave = DummyFunction;
    self.marshal = nil;
    self.loaded = false;
    self.player = nil;
    self.vehicle = nil;
    self.box_Gate_v3_56 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|47660188");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_56_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_56_Out,
    });
    self.box_MultipleOR_108 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|75716135");
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
    self.box_PlayDialog_v6_35 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|118286337");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_35_Started,
    });
    self.box_MultipleOR_69 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|149255200");
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
        [0] = self.f_box_MultipleOR_69_Out,
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|154196822");
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
        [0] = self.f_box_MultipleOR_46_Out,
    });
    self.box_Delay_v5_55 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|154257257");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_55_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_55_TimeElapsed,
    });
    self.box_OnTopOfVehicleListener_57 = cbox:CreateBox("Domino/System/OnTopOfVehicleListener.lua");
    l0 = self.box_OnTopOfVehicleListener_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnTopOfVehicleListener_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|230049135");
    l0:SetConnections({
        -- OffTopOfVehicle,
        [2] = self.f_box_OnTopOfVehicleListener_57_OffTopOfVehicle,
        -- OnTopOfVehicle,
        [3] = self.f_box_OnTopOfVehicleListener_57_OnTopOfVehicle,
    });
    self.box_SpawnAI_105 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|263818753");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_105_Out,
    });
    self.box_SetHUDMode_v2_13 = cbox:CreateBox("Domino/System/Player/SetHudMode_v2.lua");
    l0 = self.box_SetHUDMode_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetHUDMode_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|264806106");
    l0:SetConnections({
        -- OnSetCinematicMode,
        [0] = self.f_box_SetHUDMode_v2_13_OnSetCinematicMode,
    });
    self.box_PlayDialog_v6_45 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|277432160");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_30 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|286979269");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_30_Finished,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_30_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_30_Stopped,
    });
    self.box_SpawnAI_42 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|365748417");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_42_Out,
    });
    self.box_OnceOnly_v3_33 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|426803136");
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
                [0] = self.f_box_OnceOnly_v3_33_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_60 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|445425584");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_60_TimeElapsed,
    });
    self.box_MultipleOR_96 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|480730682");
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
        [0] = self.f_box_MultipleOR_96_Out,
    });
    self.box_OnceOnly_v3_104 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|510984798");
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
                [0] = self.f_box_OnceOnly_v3_104_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_59 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|518216117");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_59_TimeElapsed,
    });
    self.box_Delay_v5_89 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|603767284");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_89_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_89_TimeElapsed,
    });
    self.box_SpawnAI_49 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|663617869");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_49_Out,
    });
    self.box_PlayDialog_v6_88 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|692712791");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_88_Finished,
    });
    self.box_PlayDialog_v6_36 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|704533871");
    l0:SetConnections({
    });
    self.box_MultipleOR_83 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|727973992");
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
        [0] = self.f_box_MultipleOR_83_Out,
    });
    self.box_Delay_v5_95 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|755981740");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_95_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_95_TimeElapsed,
    });
    self.box_Switch_21 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|795742949");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_Switch_21_Out,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_21_Output_0,
                [1] = self.f_box_Switch_21_Output_1,
                [2] = self.f_box_Switch_21_Output_2,
                [3] = self.f_box_Switch_21_Output_3,
            },
            count = 4,
        },
    });
    self.box_Gate_v3_12 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|798008290");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_12_Out,
    });
    self.box_OnceOnly_v3_74 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|805704868");
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
                [0] = self.f_box_OnceOnly_v3_74_Out_0,
            },
            count = 1,
        },
    });
    self.box_SoundModifier_v2_8 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|823460488");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_8_Started,
    });
    self.box_Switch_87 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|893606958");
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
                [0] = self.f_box_Switch_87_Output_0,
                [1] = self.f_box_Switch_87_Output_1,
                [2] = self.f_box_Switch_87_Output_2,
            },
            count = 3,
        },
    });
    self.box_SpawnAI_76 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|920502024");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_73 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|943880164");
    l0:SetConnections({
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_73_Stopped,
    });
    self.box_Gate_v3_24 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|945157334");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_24_Out,
    });
    self.box_PlayDialog_v6_63 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|953009210");
    l0:SetConnections({
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_63_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_63_Stopped,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|962687264");
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
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|972353686");
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
        [0] = self.f_box_MultipleOR_52_Out,
    });
    self.box_MultipleOR_99 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1034791148");
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
        [0] = self.f_box_MultipleOR_99_Out,
    });
    self.box_Delay_v5_77 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1047980763");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_77_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_77_TimeElapsed,
    });
    self.box_Gate_v3_58 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1056120340");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_58_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_58_Out,
    });
    self.box_SpawnAI_103 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1147802369");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_103_Out,
    });
    self.box_SoundModifier_v2_7 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1198682904");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_7_Finished,
        -- Started,
        [1] = self.f_box_SoundModifier_v2_7_Started,
    });
    self.box_SpawnAI_97 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1201201169");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_97_Out,
    });
    self.box_Gate_v3_54 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1212421126");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_54_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_54_Out,
    });
    self.box_HealthListener_v6_18 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1282955289");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_18_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_18_Killed,
    });
    self.box_Delay_v5_106 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1298818021");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_106_TimeElapsed,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1326840339");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1328556185");
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
    self.box_SpawnAI_29 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1335552635");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_29_Out,
    });
    self.box_MultipleOR_39 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1342784186");
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
        [0] = self.f_box_MultipleOR_39_Out,
    });
    self.box_OnceOnly_v3_98 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1345851768");
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
    self.box_HealthListener_v6_50 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1365998123");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_50_Downed,
    });
    self.box_Gate_v3_92 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1373945019");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_92_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_92_Out,
    });
    self.box_Gate_v3_10 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1489334119");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_10_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_10_Out,
    });
    self.box_OnceOnly_v3_25 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1516215050");
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
                [0] = self.f_box_OnceOnly_v3_25_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_84 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1523914288");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_84_TimeElapsed,
    });
    self.box_Switch_31 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1572652114");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
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
                [0] = self.f_box_Switch_31_Output_0,
                [1] = self.f_box_Switch_31_Output_1,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_40 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1606941321");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_4 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1660626855");
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
                [0] = self.f_box_OnceOnly_v3_4_Out_0,
            },
            count = 1,
        },
    });
    self.box_Gate_v3_38 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1686106867");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_38_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_38_Out,
    });
    self.box_Delay_v5_22 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1691704392");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_22_Started,
        -- Stopped,
        [4] = self.f_box_Delay_v5_22_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_22_TimeElapsed,
    });
    self.box_MultipleOR_67 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1762076606");
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
        [0] = self.f_box_MultipleOR_67_Out,
    });
    self.box_SoundModifier_v2_16 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1790024356");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_16_Finished,
        -- Started,
        [1] = self.f_box_SoundModifier_v2_16_Started,
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1853407596");
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
        [0] = self.f_box_MultipleOR_34_Out,
    });
    self.box_Delay_v5_48 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1865417305");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_48_TimeElapsed,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|2007434660");
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
    self.box_Delay_v5_11 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|2022474929");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_11_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_11_TimeElapsed,
    });
    self.box_MultipleOR_91 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|2028074536");
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
        [0] = self.f_box_MultipleOR_91_Out,
    });
    self.box_SoundModifier_v2_68 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|2028969897");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_SoundModifier_v2_68_Finished,
    });
    self.box_MultipleOR_90 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|2042319510");
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
        [0] = self.f_box_MultipleOR_90_Out,
    });
    self.box_PlayDialog_v6_6 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|2050669093");
    l0:SetConnections({
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_6_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_6_Stopped,
    });
    self.box_HealthListener_v6_28 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|2076713728");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_28_Damaged,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_28_Enabled,
    });
    self.box_PlayDialog_v6_26 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|2090564750");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_26_Finished,
    });
    self.box_ProximityTrigger_v2_37 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|2121901632");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_37_Enter,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_37_OnOccupied,
    });
    self.box_PlayDialog_v6_70 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|2122698648");
    l0:SetConnections({
    });
    self.box_OnTopOfVehicleListener_66 = cbox:CreateBox("Domino/System/OnTopOfVehicleListener.lua");
    l0 = self.box_OnTopOfVehicleListener_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnTopOfVehicleListener_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|2127183976");
    l0:SetConnections({
        -- OffTopOfVehicle,
        [2] = self.f_box_OnTopOfVehicleListener_66_OffTopOfVehicle,
        -- OnTopOfVehicle,
        [3] = self.f_box_OnTopOfVehicleListener_66_OnTopOfVehicle,
    });
end;

function export:Both_Inside_Veh()
    local l0;
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|667111746", "667111746", "Intro_010_B80_StartVehicle", "Both_Inside_Veh", "box_MultipleOR_52.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|918296878", "918296878", "Intro_010_B80_StartVehicle", "Both_Inside_Veh", "box_MultipleOR_23.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:Marshal_Inside_Veh()
    local params, l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_41();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1830716849", "1830716849", "Intro_010_B80_StartVehicle", "Marshal_Inside_Veh", "box_GetLocalPlayer_v2_41.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_92();
    l0 = self.box_Gate_v3_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1783165940", "1783165940", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_65.Out", "box_Gate_v3_92.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|819534819", "819534819", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_65.Out", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_65_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1621773216", "1621773216", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_65.Out", "box_MultipleOR_83.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_65_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_37();
    l0 = self.box_ProximityTrigger_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|352949979", "352949979", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_65.Out", "box_ProximityTrigger_v2_37.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_65_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_8();
    l0 = self.box_SoundModifier_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|873975008", "873975008", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_65.Out", "box_SoundModifier_v2_8.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_65_Out_6()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|470429630", "470429630", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_65.Out", "box_MultipleOR_91.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_65_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_89();
    l0 = self.box_Delay_v5_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|546838436", "546838436", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_65.Out", "box_Delay_v5_89.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Gate_v3_56_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_12();
    l0 = self.box_Gate_v3_56;
    l1 = self.box_Gate_v3_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1632485501", "1632485501", "Intro_010_B80_StartVehicle", "box_Gate_v3_56.Closed", "box_Gate_v3_12.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_19();
    l0 = self.box_Gate_v3_56;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|744358426", "744358426", "Intro_010_B80_StartVehicle", "box_Gate_v3_56.Out", "box_UseContextualActionModifier_v3_19.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_108_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_102();
    l0 = self.box_MultipleOR_108;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1416041793", "1416041793", "Intro_010_B80_StartVehicle", "box_MultipleOR_108.Out", "box_HealthModifier_v2_102.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_35_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_PlayDialog_v6_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1391364650", "1391364650", "Intro_010_B80_StartVehicle", "box_PlayDialog_v6_35.Started", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_69_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_21();
    l0 = self.box_MultipleOR_69;
    l1 = self.box_Switch_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|596604606", "596604606", "Intro_010_B80_StartVehicle", "box_MultipleOR_69.Out", "box_Switch_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_46_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_46;
    l1 = self.box_OnceOnly_v3_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1674259799", "1674259799", "Intro_010_B80_StartVehicle", "box_MultipleOR_46.Out", "box_OnceOnly_v3_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_55_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_7();
    l0 = self.box_Delay_v5_55;
    l1 = self.box_SoundModifier_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1795342819", "1795342819", "Intro_010_B80_StartVehicle", "box_Delay_v5_55.Stopped", "box_SoundModifier_v2_7.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_55_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_55;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1462915805", "1462915805", "Intro_010_B80_StartVehicle", "box_Delay_v5_55.TimeElapsed", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetContextualStrategy_81_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetHUDMode_v2_13();
    l0 = self.box_SetHUDMode_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|591381975", "591381975", "Intro_010_B80_StartVehicle", "box_SetContextualStrategy_81.Out", "box_SetHUDMode_v2_13.CinematicMode", clone:GetLuaBox(), l0:GetLuaBox());
    -- CinematicMode
    l0:Exec(0, params);
end;

function export:f_box_OnTopOfVehicleListener_57_OffTopOfVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_85();
    l0 = self.box_OnTopOfVehicleListener_57;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1849762251", "1849762251", "Intro_010_B80_StartVehicle", "box_OnTopOfVehicleListener_57.OffTopOfVehicle", "box_UseContextualActionModifier_v3_85.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnTopOfVehicleListener_57_OnTopOfVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_85();
    l0 = self.box_OnTopOfVehicleListener_57;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1678657378", "1678657378", "Intro_010_B80_StartVehicle", "box_OnTopOfVehicleListener_57.OnTopOfVehicle", "box_UseContextualActionModifier_v3_85.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_105_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_105;
    l1 = self.box_MultipleOR_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|47025864", "47025864", "Intro_010_B80_StartVehicle", "box_SpawnAI_105.Out", "box_MultipleOR_99.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetHUDMode_v2_13_OnSetCinematicMode()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_SetHUDMode_v2_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1257015618", "1257015618", "Intro_010_B80_StartVehicle", "box_SetHUDMode_v2_13.OnSetCinematicMode", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_30_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_6();
    l0 = self.box_PlayDialog_v6_30;
    l1 = self.box_PlayDialog_v6_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|435884222", "435884222", "Intro_010_B80_StartVehicle", "box_PlayDialog_v6_30.Finished", "box_PlayDialog_v6_6.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_30_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_6();
    l0 = self.box_PlayDialog_v6_30;
    l1 = self.box_PlayDialog_v6_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|497570743", "497570743", "Intro_010_B80_StartVehicle", "box_PlayDialog_v6_30.QueueCancelled", "box_PlayDialog_v6_6.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_30_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_30();
    l0 = self.box_PlayDialog_v6_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|555962202", "555962202", "Intro_010_B80_StartVehicle", "box_PlayDialog_v6_30.Stopped", "box_PlayDialog_v6_30.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_78_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1862385334", "1862385334", "Intro_010_B80_StartVehicle", "box_Compare_Boolean_78.A_is_False", "box_MultipleOR_39.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_78_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1979313568", "1979313568", "Intro_010_B80_StartVehicle", "box_Compare_Boolean_78.A_is_True", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|344471202", "344471202", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_32.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|894457984", "894457984", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_32.Out", "box_MultipleOR_52.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_29();
    l0 = self.box_SpawnAI_42;
    l1 = self.box_SpawnAI_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|247006992", "247006992", "Intro_010_B80_StartVehicle", "box_SpawnAI_42.Out", "box_SpawnAI_29.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_107_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_107_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_106();
    l0 = self.box_Delay_v5_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1588289721", "1588289721", "Intro_010_B80_StartVehicle", "box_RandomFloat_v2_107.Out", "box_Delay_v5_106.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_33_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_43();
    l0 = self.box_OnceOnly_v3_33;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|2122474136", "2122474136", "Intro_010_B80_StartVehicle", "box_OnceOnly_v3_33.Out", "box_UseContextualActionModifier_v3_43.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_101_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_103();
    l0 = self.box_SpawnAI_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|716263625", "716263625", "Intro_010_B80_StartVehicle", "box_IsEntityLoaded_v3_101.False", "box_SpawnAI_103.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_60_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_24();
    l0 = self.box_Delay_v5_60;
    l1 = self.box_Gate_v3_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|831773186", "831773186", "Intro_010_B80_StartVehicle", "box_Delay_v5_60.TimeElapsed", "box_Gate_v3_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Floats_82_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_16();
    l0 = self.box_SoundModifier_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|130309903", "130309903", "Intro_010_B80_StartVehicle", "box_Compare_Floats_82.A_ge_B", "box_SoundModifier_v2_16.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Compare_Floats_82_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|483380615", "483380615", "Intro_010_B80_StartVehicle", "box_Compare_Floats_82.A_lt_B", "box_MultipleOR_90.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_96_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_96;
    l1 = self.box_OnceOnly_v3_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|941289631", "941289631", "Intro_010_B80_StartVehicle", "box_MultipleOR_96.Out", "box_OnceOnly_v3_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_104_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_104;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1616771991", "1616771991", "Intro_010_B80_StartVehicle", "box_OnceOnly_v3_104.Out", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_59_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_64();
    l0 = self.box_Delay_v5_59;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1646564145", "1646564145", "Intro_010_B80_StartVehicle", "box_Delay_v5_59.TimeElapsed", "box_VehicleModifier_v2_64.SetEngineBroken", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEngineBroken
    l1:Exec(11, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_94_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_94_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_15();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1500852623", "1500852623", "Intro_010_B80_StartVehicle", "box_SetEntity_v2_94.Out", "box_SetBoolean_v2_15.FromBool", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromBool
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_51_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_51_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_11();
    l0 = self.box_Delay_v5_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1218868884", "1218868884", "Intro_010_B80_StartVehicle", "box_RandomFloat_v2_51.Out", "box_Delay_v5_11.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_89_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_58();
    l0 = self.box_Delay_v5_89;
    l1 = self.box_Gate_v3_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1735677534", "1735677534", "Intro_010_B80_StartVehicle", "box_Delay_v5_89.Stopped", "box_Gate_v3_58.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_89_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OnTopOfVehicleListener_66();
    l0 = self.box_Delay_v5_89;
    l1 = self.box_OnTopOfVehicleListener_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1544722091", "1544722091", "Intro_010_B80_StartVehicle", "box_Delay_v5_89.TimeElapsed", "box_OnTopOfVehicleListener_66.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_RandomFloat_v2_62_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_62_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_77();
    l0 = self.box_Delay_v5_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1519909916", "1519909916", "Intro_010_B80_StartVehicle", "box_RandomFloat_v2_62.Out", "box_Delay_v5_77.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_19_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehiclePositionLockModifier_79();
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|274385045", "274385045", "Intro_010_B80_StartVehicle", "box_UseContextualActionModifier_v3_19.Disabled", "box_VehiclePositionLockModifier_79.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_102_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RandomFloat_v2_107();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|744835107", "744835107", "Intro_010_B80_StartVehicle", "box_HealthModifier_v2_102.Damaged", "box_RandomFloat_v2_107.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_49_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_49;
    l1 = self.box_MultipleOR_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1257972080", "1257972080", "Intro_010_B80_StartVehicle", "box_SpawnAI_49.Out", "box_MultipleOR_99.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_88_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_70();
    l0 = self.box_PlayDialog_v6_88;
    l1 = self.box_PlayDialog_v6_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|2027016025", "2027016025", "Intro_010_B80_StartVehicle", "box_PlayDialog_v6_88.Finished", "box_PlayDialog_v6_70.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_83_Out()
    local l0;
    l0 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|510309431", "510309431", "Intro_010_B80_StartVehicle", "box_MultipleOR_83.Out", "Veh_OutOf_Garage", l0:GetLuaBox(), self);
    self:Veh_OutOf_Garage();
end;

function export:f_box_Delay_v5_95_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_97();
    l0 = self.box_Delay_v5_95;
    l1 = self.box_SpawnAI_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|829060818", "829060818", "Intro_010_B80_StartVehicle", "box_Delay_v5_95.Started", "box_SpawnAI_97.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_95_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_95;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1867803368", "1867803368", "Intro_010_B80_StartVehicle", "box_Delay_v5_95.TimeElapsed", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_60();
    l0 = self.box_Switch_21;
    l1 = self.box_Delay_v5_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|925903750", "925903750", "Intro_010_B80_StartVehicle", "box_Switch_21.Out", "box_Delay_v5_60.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Switch_21_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_88();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|815338148", "815338148", "Intro_010_B80_StartVehicle", "box_Switch_21.Output", "box_PlayDialog_v6_88.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_21_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_45();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1808788307", "1808788307", "Intro_010_B80_StartVehicle", "box_Switch_21.Output", "box_PlayDialog_v6_45.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_21_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_36();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1029840207", "1029840207", "Intro_010_B80_StartVehicle", "box_Switch_21.Output", "box_PlayDialog_v6_36.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_21_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_35();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|259479175", "259479175", "Intro_010_B80_StartVehicle", "box_Switch_21.Output", "box_PlayDialog_v6_35.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_8();
    l0 = self.box_Gate_v3_12;
    l1 = self.box_SoundModifier_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|336680334", "336680334", "Intro_010_B80_StartVehicle", "box_Gate_v3_12.Out", "box_SoundModifier_v2_8.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_74_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = self.box_OnceOnly_v3_74;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|521649133", "521649133", "Intro_010_B80_StartVehicle", "box_OnceOnly_v3_74.Out", "box_OutputOrder_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_8_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_26();
    l0 = self.box_SoundModifier_v2_8;
    l1 = self.box_PlayDialog_v6_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|36258103", "36258103", "Intro_010_B80_StartVehicle", "box_SoundModifier_v2_8.Started", "box_PlayDialog_v6_26.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_86_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_78();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|591308951", "591308951", "Intro_010_B80_StartVehicle", "box_SetContextualStrategy_86.Out", "box_Compare_Boolean_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_86();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|506259879", "506259879", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_75.Out", "box_SetContextualStrategy_86.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_50();
    l0 = self.box_HealthListener_v6_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1805698120", "1805698120", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_75.Out", "box_HealthListener_v6_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Switch_87_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_63();
    l0 = self.box_Switch_87;
    l1 = self.box_PlayDialog_v6_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|990056764", "990056764", "Intro_010_B80_StartVehicle", "box_Switch_87.Output", "box_PlayDialog_v6_63.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_87_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_30();
    l0 = self.box_Switch_87;
    l1 = self.box_PlayDialog_v6_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|2029466272", "2029466272", "Intro_010_B80_StartVehicle", "box_Switch_87.Output", "box_PlayDialog_v6_30.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_87_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_73();
    l0 = self.box_Switch_87;
    l1 = self.box_PlayDialog_v6_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1035604054", "1035604054", "Intro_010_B80_StartVehicle", "box_Switch_87.Output", "box_PlayDialog_v6_73.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_15_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_15_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|845915517", "845915517", "Intro_010_B80_StartVehicle", "box_SetBoolean_v2_15.Out", "box_OutputOrder_v2_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_73_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_73();
    l0 = self.box_PlayDialog_v6_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|671524489", "671524489", "Intro_010_B80_StartVehicle", "box_PlayDialog_v6_73.Stopped", "box_PlayDialog_v6_73.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_24_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_24;
    l1 = self.box_MultipleOR_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1474766719", "1474766719", "Intro_010_B80_StartVehicle", "box_Gate_v3_24.Out", "box_MultipleOR_69.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehiclePositionLockModifier_79_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_37();
    l0 = self.box_ProximityTrigger_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1243128369", "1243128369", "Intro_010_B80_StartVehicle", "box_VehiclePositionLockModifier_79.Unlocked", "box_ProximityTrigger_v2_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_63_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_30();
    l0 = self.box_PlayDialog_v6_63;
    l1 = self.box_PlayDialog_v6_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1327606197", "1327606197", "Intro_010_B80_StartVehicle", "box_PlayDialog_v6_63.QueueCancelled", "box_PlayDialog_v6_30.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_63_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_63();
    l0 = self.box_PlayDialog_v6_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1016500318", "1016500318", "Intro_010_B80_StartVehicle", "box_PlayDialog_v6_63.Stopped", "box_PlayDialog_v6_63.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OnTopOfVehicleListener_66();
    l0 = self.box_MultipleOR_17;
    l1 = self.box_OnTopOfVehicleListener_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1246200446", "1246200446", "Intro_010_B80_StartVehicle", "box_MultipleOR_17.Out", "box_OnTopOfVehicleListener_66.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = self.box_MultipleOR_52;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|9972902", "9972902", "Intro_010_B80_StartVehicle", "box_MultipleOR_52.Out", "box_OutputOrder_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_99_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_99;
    l1 = self.box_OnceOnly_v3_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|911507415", "911507415", "Intro_010_B80_StartVehicle", "box_MultipleOR_99.Out", "box_OnceOnly_v3_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleModifier_v2_72_OnSetAsDestructible()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_28();
    l0 = self.box_HealthListener_v6_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|16866904", "16866904", "Intro_010_B80_StartVehicle", "box_VehicleModifier_v2_72.OnSetAsDestructible", "box_HealthListener_v6_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_77_Stopped()
    local l0, l1;
    l0 = self.box_Delay_v5_77;
    l1 = self.box_MultipleOR_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|148571669", "148571669", "Intro_010_B80_StartVehicle", "box_Delay_v5_77.Stopped", "box_MultipleOR_91.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_77_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetDistance_47();
    l0 = self.box_Delay_v5_77;
    l1 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|2077412303", "2077412303", "Intro_010_B80_StartVehicle", "box_Delay_v5_77.TimeElapsed", "box_GetDistance_47.Distance2D", l0:GetLuaBox(), l1:GetLuaBox());
    -- Distance2D
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_58_Closed()
    local l0, l1;
    l0 = self.box_Gate_v3_58;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|885890316", "885890316", "Intro_010_B80_StartVehicle", "box_Gate_v3_58.Closed", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_Gate_v3_58;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1768536823", "1768536823", "Intro_010_B80_StartVehicle", "box_Gate_v3_58.Out", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1970413652", "1970413652", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_44.Out", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_12();
    l0 = self.box_Gate_v3_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|523936087", "523936087", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_44.Out", "box_Gate_v3_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_103_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_105();
    l0 = self.box_SpawnAI_103;
    l1 = self.box_SpawnAI_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|292755787", "292755787", "Intro_010_B80_StartVehicle", "box_SpawnAI_103.Out", "box_SpawnAI_105.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_7_Finished()
    local l0, l1;
    l0 = self.box_SoundModifier_v2_7;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|406817116", "406817116", "Intro_010_B80_StartVehicle", "box_SoundModifier_v2_7.Finished", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SoundModifier_v2_7_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_55();
    l0 = self.box_SoundModifier_v2_7;
    l1 = self.box_Delay_v5_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1786874611", "1786874611", "Intro_010_B80_StartVehicle", "box_SoundModifier_v2_7.Started", "box_Delay_v5_55.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_97_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_76();
    l0 = self.box_SpawnAI_97;
    l1 = self.box_SpawnAI_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1712894949", "1712894949", "Intro_010_B80_StartVehicle", "box_SpawnAI_97.Out", "box_SpawnAI_76.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_54_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_93();
    l0 = self.box_Gate_v3_54;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|2042094056", "2042094056", "Intro_010_B80_StartVehicle", "box_Gate_v3_54.Closed", "box_OutputOrder_v2_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_31();
    l0 = self.box_Gate_v3_54;
    l1 = self.box_Switch_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|817814691", "817814691", "Intro_010_B80_StartVehicle", "box_Gate_v3_54.Out", "box_Switch_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_18_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_18;
    l1 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|830275387", "830275387", "Intro_010_B80_StartVehicle", "box_HealthListener_v6_18.Downed", "box_MultipleOR_67.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_18_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_18;
    l1 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1528789488", "1528789488", "Intro_010_B80_StartVehicle", "box_HealthListener_v6_18.Killed", "box_MultipleOR_67.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_106_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_106;
    l1 = self.box_MultipleOR_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|538905914", "538905914", "Intro_010_B80_StartVehicle", "box_Delay_v5_106.TimeElapsed", "box_MultipleOR_108.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_24();
    l0 = self.box_MultipleOR_14;
    l1 = self.box_Gate_v3_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|517621111", "517621111", "Intro_010_B80_StartVehicle", "box_MultipleOR_14.Out", "box_Gate_v3_24.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_22();
    l0 = self.box_MultipleOR_23;
    l1 = self.box_Delay_v5_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|161668820", "161668820", "Intro_010_B80_StartVehicle", "box_MultipleOR_23.Out", "box_Delay_v5_22.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_SpawnAI_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_49();
    l0 = self.box_SpawnAI_29;
    l1 = self.box_SpawnAI_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|427337342", "427337342", "Intro_010_B80_StartVehicle", "box_SpawnAI_29.Out", "box_SpawnAI_49.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_85_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_101();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|4193866", "4193866", "Intro_010_B80_StartVehicle", "box_UseContextualActionModifier_v3_85.Enabled", "box_IsEntityLoaded_v3_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_22();
    l0 = self.box_MultipleOR_39;
    l1 = self.box_Delay_v5_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1023029073", "1023029073", "Intro_010_B80_StartVehicle", "box_MultipleOR_39.Out", "box_Delay_v5_22.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_98_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_72();
    l0 = self.box_OnceOnly_v3_98;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1436204508", "1436204508", "Intro_010_B80_StartVehicle", "box_OnceOnly_v3_98.Out", "box_VehicleModifier_v2_72.SetAsDestructable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsDestructable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_50_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_81();
    l0 = self.box_HealthListener_v6_50;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1038292108", "1038292108", "Intro_010_B80_StartVehicle", "box_HealthListener_v6_50.Downed", "box_SetContextualStrategy_81.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_92_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_10();
    l0 = self.box_Gate_v3_92;
    l1 = self.box_Gate_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|273965101", "273965101", "Intro_010_B80_StartVehicle", "box_Gate_v3_92.Closed", "box_Gate_v3_10.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_92_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_62();
    l0 = self.box_Gate_v3_92;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1473273188", "1473273188", "Intro_010_B80_StartVehicle", "box_Gate_v3_92.Out", "box_RandomFloat_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_2_OnSetAsDestructible()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceVehicleCrash_71();
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|151488912", "151488912", "Intro_010_B80_StartVehicle", "box_VehicleModifier_v2_2.OnSetAsDestructible", "box_ForceVehicleCrash_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_41_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_41_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_80();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|411719871", "411719871", "Intro_010_B80_StartVehicle", "box_GetLocalPlayer_v2_41.Out", "box_SetEntity_v2_80.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1938756411", "1938756411", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_53.Out", "box_MultipleOR_90.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|428324686", "428324686", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_53.Out", "box_MultipleOR_69.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_53_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1733934967", "1733934967", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_53.Out", "box_MultipleOR_83.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1646090690", "1646090690", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_5.Out", "box_MultipleOR_52.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_84();
    l0 = self.box_Delay_v5_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1487627507", "1487627507", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_5.Out", "box_Delay_v5_84.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|65332704", "65332704", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_5.Out", "Fail_Marshal_Leave", clone:GetLuaBox(), self);
    self:Fail_Marshal_Leave();
end;

function export:f_box_Gate_v3_10_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_11();
    l0 = self.box_Gate_v3_10;
    l1 = self.box_Delay_v5_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1832513527", "1832513527", "Intro_010_B80_StartVehicle", "box_Gate_v3_10.Closed", "box_Delay_v5_11.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_51();
    l0 = self.box_Gate_v3_10;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1218056405", "1218056405", "Intro_010_B80_StartVehicle", "box_Gate_v3_10.Out", "box_RandomFloat_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_25_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_56();
    l0 = self.box_OnceOnly_v3_25;
    l1 = self.box_Gate_v3_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1030808693", "1030808693", "Intro_010_B80_StartVehicle", "box_OnceOnly_v3_25.Out", "box_Gate_v3_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_84_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OnTopOfVehicleListener_57();
    l0 = self.box_Delay_v5_84;
    l1 = self.box_OnTopOfVehicleListener_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1892160766", "1892160766", "Intro_010_B80_StartVehicle", "box_Delay_v5_84.TimeElapsed", "box_OnTopOfVehicleListener_57.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ForceVehicleCrash_71_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_59();
    l0 = self.box_Delay_v5_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1809224741", "1809224741", "Intro_010_B80_StartVehicle", "box_ForceVehicleCrash_71.Out", "box_Delay_v5_59.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Switch_31_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_68();
    l0 = self.box_Switch_31;
    l1 = self.box_SoundModifier_v2_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1858000577", "1858000577", "Intro_010_B80_StartVehicle", "box_Switch_31.Output", "box_SoundModifier_v2_68.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_31_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_7();
    l0 = self.box_Switch_31;
    l1 = self.box_SoundModifier_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|69078205", "69078205", "Intro_010_B80_StartVehicle", "box_Switch_31.Output", "box_SoundModifier_v2_7.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SetEntity_v2_80_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_80_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_94();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|456657827", "456657827", "Intro_010_B80_StartVehicle", "box_SetEntity_v2_80.Out", "box_SetEntity_v2_94.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_61();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|717944700", "717944700", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_20.Out", "box_UseContextualActionModifier_v3_61.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_18();
    l0 = self.box_HealthListener_v6_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|686256729", "686256729", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_20.Out", "box_HealthListener_v6_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|707715237", "707715237", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_20.Out", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetDistance_47_Out()
    local params, l0;
    self:OnExit_box_GetDistance_47_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_82();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|60951364", "60951364", "Intro_010_B80_StartVehicle", "box_GetDistance_47.Out", "box_Compare_Floats_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_4_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_42();
    l0 = self.box_OnceOnly_v3_4;
    l1 = self.box_SpawnAI_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|170632617", "170632617", "Intro_010_B80_StartVehicle", "box_OnceOnly_v3_4.Out", "box_SpawnAI_42.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_38_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_63();
    l0 = self.box_Gate_v3_38;
    l1 = self.box_PlayDialog_v6_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|549707994", "549707994", "Intro_010_B80_StartVehicle", "box_Gate_v3_38.Closed", "box_PlayDialog_v6_63.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_87();
    l0 = self.box_Gate_v3_38;
    l1 = self.box_Switch_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|591417722", "591417722", "Intro_010_B80_StartVehicle", "box_Gate_v3_38.Out", "box_Switch_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_22_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_38();
    l0 = self.box_Delay_v5_22;
    l1 = self.box_Gate_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|655991137", "655991137", "Intro_010_B80_StartVehicle", "box_Delay_v5_22.Started", "box_Gate_v3_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_22_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_54();
    l0 = self.box_Delay_v5_22;
    l1 = self.box_Gate_v3_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1044034393", "1044034393", "Intro_010_B80_StartVehicle", "box_Delay_v5_22.Stopped", "box_Gate_v3_54.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_22_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_54();
    l0 = self.box_Delay_v5_22;
    l1 = self.box_Gate_v3_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1398721596", "1398721596", "Intro_010_B80_StartVehicle", "box_Delay_v5_22.TimeElapsed", "box_Gate_v3_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_67_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_2();
    l0 = self.box_MultipleOR_67;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|789956984", "789956984", "Intro_010_B80_StartVehicle", "box_MultipleOR_67.Out", "box_VehicleModifier_v2_2.SetAsDestructable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsDestructable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_16_Finished()
    local l0, l1;
    l0 = self.box_SoundModifier_v2_16;
    l1 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|2051118481", "2051118481", "Intro_010_B80_StartVehicle", "box_SoundModifier_v2_16.Finished", "box_MultipleOR_90.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SoundModifier_v2_16_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_10();
    l0 = self.box_SoundModifier_v2_16;
    l1 = self.box_Gate_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|223924844", "223924844", "Intro_010_B80_StartVehicle", "box_SoundModifier_v2_16.Started", "box_Gate_v3_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_93_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_56();
    l0 = self.box_Gate_v3_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1827825581", "1827825581", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_93.Out", "box_Gate_v3_56.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_93_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_38();
    l0 = self.box_Gate_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|2053081024", "2053081024", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_93.Out", "box_Gate_v3_38.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_93_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_68();
    l0 = self.box_SoundModifier_v2_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|343741594", "343741594", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_93.Out", "box_SoundModifier_v2_68.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_93_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_55();
    l0 = self.box_Delay_v5_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1472564233", "1472564233", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_93.Out", "box_Delay_v5_55.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_MultipleOR_34_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_34;
    l1 = self.box_OnceOnly_v3_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1601129039", "1601129039", "Intro_010_B80_StartVehicle", "box_MultipleOR_34.Out", "box_OnceOnly_v3_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_48_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_40();
    l0 = self.box_Delay_v5_48;
    l1 = self.box_PlayDialog_v6_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1711695110", "1711695110", "Intro_010_B80_StartVehicle", "box_Delay_v5_48.TimeElapsed", "box_PlayDialog_v6_40.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_61_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1414420450", "1414420450", "Intro_010_B80_StartVehicle", "box_UseContextualActionModifier_v3_61.Disabled", "box_OutputOrder_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_43_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|809124970", "809124970", "Intro_010_B80_StartVehicle", "box_UseContextualActionModifier_v3_43.Enabled", "box_OutputOrder_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_89();
    l0 = self.box_Delay_v5_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|517807052", "517807052", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_3.Out", "box_Delay_v5_89.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1907675630", "1907675630", "Intro_010_B80_StartVehicle", "box_OutputOrder_v2_3.Out", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_OnceOnly_v3_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|2108306960", "2108306960", "Intro_010_B80_StartVehicle", "box_MultipleOR_1.Out", "box_OnceOnly_v3_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_11_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_77();
    l0 = self.box_Delay_v5_11;
    l1 = self.box_Delay_v5_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1151362270", "1151362270", "Intro_010_B80_StartVehicle", "box_Delay_v5_11.Stopped", "box_Delay_v5_77.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Delay_v5_11_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_11;
    l1 = self.box_MultipleOR_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|262189162", "262189162", "Intro_010_B80_StartVehicle", "box_Delay_v5_11.TimeElapsed", "box_MultipleOR_91.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_91_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_16();
    l0 = self.box_MultipleOR_91;
    l1 = self.box_SoundModifier_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1219684822", "1219684822", "Intro_010_B80_StartVehicle", "box_MultipleOR_91.Out", "box_SoundModifier_v2_16.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_68_Finished()
    local l0, l1;
    l0 = self.box_SoundModifier_v2_68;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|221137291", "221137291", "Intro_010_B80_StartVehicle", "box_SoundModifier_v2_68.Finished", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_90_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_92();
    l0 = self.box_MultipleOR_90;
    l1 = self.box_Gate_v3_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1865712064", "1865712064", "Intro_010_B80_StartVehicle", "box_MultipleOR_90.Out", "box_Gate_v3_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_6_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_73();
    l0 = self.box_PlayDialog_v6_6;
    l1 = self.box_PlayDialog_v6_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1688625347", "1688625347", "Intro_010_B80_StartVehicle", "box_PlayDialog_v6_6.QueueCancelled", "box_PlayDialog_v6_73.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_6_Stopped()
    local params, l0;
    params = self:OnEnter_box_PlayDialog_v6_6();
    l0 = self.box_PlayDialog_v6_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1543445333", "1543445333", "Intro_010_B80_StartVehicle", "box_PlayDialog_v6_6.Stopped", "box_PlayDialog_v6_6.CancelQueued", l0:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_28_Damaged()
    local l0, l1;
    l0 = self.box_HealthListener_v6_28;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|978188350", "978188350", "Intro_010_B80_StartVehicle", "box_HealthListener_v6_28.Damaged", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_28_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_95();
    l0 = self.box_HealthListener_v6_28;
    l1 = self.box_Delay_v5_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|337980645", "337980645", "Intro_010_B80_StartVehicle", "box_HealthListener_v6_28.Enabled", "box_Delay_v5_95.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_26_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_48();
    l0 = self.box_PlayDialog_v6_26;
    l1 = self.box_Delay_v5_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|647522509", "647522509", "Intro_010_B80_StartVehicle", "box_PlayDialog_v6_26.Finished", "box_Delay_v5_48.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_37_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_37;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1401051361", "1401051361", "Intro_010_B80_StartVehicle", "box_ProximityTrigger_v2_37.Enter", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_37_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_37;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1387280530", "1387280530", "Intro_010_B80_StartVehicle", "box_ProximityTrigger_v2_37.OnOccupied", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnTopOfVehicleListener_66_OffTopOfVehicle()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_58();
    l0 = self.box_OnTopOfVehicleListener_66;
    l1 = self.box_Gate_v3_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|950153611", "950153611", "Intro_010_B80_StartVehicle", "box_OnTopOfVehicleListener_66.OffTopOfVehicle", "box_Gate_v3_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnTopOfVehicleListener_66_OnTopOfVehicle()
    local l0, l1;
    l0 = self.box_OnTopOfVehicleListener_66;
    l1 = self.box_OnceOnly_v3_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|827176034", "827176034", "Intro_010_B80_StartVehicle", "box_OnTopOfVehicleListener_66.OnTopOfVehicle", "box_OnceOnly_v3_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|36692542");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
                [3] = self.f_box_OutputOrder_v2_65_Out_3,
                [4] = self.f_box_OutputOrder_v2_65_Out_4,
                [5] = self.f_box_OutputOrder_v2_65_Out_5,
                [6] = self.f_box_OutputOrder_v2_65_Out_6,
                [7] = self.f_box_OutputOrder_v2_65_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_56()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_35()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3313137306",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_55()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3.5,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|187247712");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_81_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104604948051290041",
        -- Group,
        [1] = "#2E20EAD1",
    };
    return params;
end;

function export:OnEnter_box_OnTopOfVehicleListener_57()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- CheckNow,
        [1] = true,
        -- Players,
        [2] = "#ED455357",
        -- VehicleId,
        [3] = self.vehicle,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_105()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105198094846056629",
    };
    return params;
end;

function export:OnEnter_box_SetHUDMode_v2_13()
    local params;
    params = {
        -- Players,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_45()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1907058133",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_30()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2652780091",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|336852378");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_78_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_78_A_is_True,
    });
    params = {
        -- A,
        [0] = self.loaded,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|361297504");
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

function export:OnEnter_box_SpawnAI_42()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104631302385835954",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|421490722");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_107_Out,
    });
    params = {
        -- Max,
        [0] = 1.5,
        -- Min,
        [1] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|444454589");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_101_False,
    });
    params = {
        -- entityId,
        [0] = "2104631520596613816",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_60()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|471929153");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Floats_82_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_82_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_Distance_box_GetDistance_47,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_59()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|540978063");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_94_Out,
    });
    params = {
        -- Entity,
        [0] = self.Marshal,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|596803615");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_51_Out,
    });
    params = {
        -- Max,
        [0] = 2.5,
        -- Min,
        [1] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_89()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|620236118");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_62_Out,
    });
    params = {
        -- Max,
        [0] = 1.5,
        -- Min,
        [1] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|650690756");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_19_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101257506935314380",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|652258588");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_102_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 3,
        -- origin,
        [1] = "2104631520596613816",
        -- pawns,
        [2] = "#ED455357",
        -- value,
        [3] = 25,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_49()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104631520590322354",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_88()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "329266034",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_36()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1926362106",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_95()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Switch_21()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_12()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_8()
    local params;
    params = {
        -- Pawns,
        [0] = self.vehicle,
        -- SoundId,
        [1] = "1627560164",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 1.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|839909494");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_86_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2101343294635233889",
        -- Group,
        [1] = "#2E20EAD1",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|873808820");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = self.vehicle,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|882921846");
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

function export:OnEnter_box_Switch_87()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|900737784");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_15_Out,
    });
    params = {
        -- Bool,
        [0] = self.Loaded,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_76()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104761316332828462",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_73()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2109006707",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_24()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_VehiclePositionLockModifier_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehiclePositionLockModifier_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|948596446");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehiclePositionLockModifier_79_Unlocked,
    });
    params = {
        -- VehicleEntity,
        [0] = "2101257581451319318",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_63()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1812181955",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1040986410");
    l0:SetConnections({
        -- OnSetAsDestructible,
        [3] = self.f_box_VehicleModifier_v2_72_OnSetAsDestructible,
    });
    params = {
        -- targets,
        [0] = self.vehicle,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_58()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1109344442");
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
                [0] = self.f_box_OutputOrder_v2_44_Out_0,
                [1] = self.f_box_OutputOrder_v2_44_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_103()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104631520590322354",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_7()
    local params;
    params = {
        -- Pawns,
        [0] = self.vehicle,
        -- SoundId,
        [1] = "2617339895",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_97()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103222492442176881",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_54()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_18()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = self.marshal,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_29()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104631393012162903",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1340992533");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_85_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101257506935314380",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_50()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.marshal,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_92()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1389390265");
    l0:SetConnections({
        -- OnSetAsDestructible,
        [3] = self.f_box_VehicleModifier_v2_2_OnSetAsDestructible,
    });
    params = {
        -- targets,
        [0] = self.vehicle,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1396924182");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_41_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1438079963");
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

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1465449540");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_10()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_84()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.7,
    };
    return params;
end;

function export:OnEnter_box_ForceVehicleCrash_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceVehicleCrash.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceVehicleCrash_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1541039881");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ForceVehicleCrash_71_Out,
    });
    params = {
        -- steeringWheel,
        [1] = -1,
        -- vehicle,
        [2] = self.vehicle,
    };
    return params;
end;

function export:OnEnter_box_Switch_31()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1575285947");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_80_Out,
    });
    params = {
        -- Entity,
        [0] = self.Vehicle,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1606901325");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
                [3] = self.f_box_OutputOrder_v2_20_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_40()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1063435831",
    };
    return params;
end;

function export:OnEnter_box_GetDistance_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1643401547");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_47_Out,
    });
    params = {
        -- Entity1,
        [0] = self.player,
        -- Entity2,
        [1] = self.vehicle,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_38()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_22()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_16()
    local params;
    params = {
        -- Pawns,
        [0] = self.vehicle,
        -- SoundId,
        [1] = "3760761181",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.1,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1833245014");
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
                [0] = self.f_box_OutputOrder_v2_93_Out_0,
                [1] = self.f_box_OutputOrder_v2_93_Out_1,
                [2] = self.f_box_OutputOrder_v2_93_Out_2,
                [3] = self.f_box_OutputOrder_v2_93_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_48()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1913620358");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_61_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101257506935314380",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1967804925");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_43_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101257506935314380",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_StartVehicle|1979441422");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_68()
    local params;
    params = {
        -- Pawns,
        [0] = self.vehicle,
        -- SoundId,
        [1] = "3898046383",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_6()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1573272396",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_28()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_26()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1221271440",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_37()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.vehicle,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103459325897902666",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_70()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3849636213",
    };
    return params;
end;

function export:OnEnter_box_OnTopOfVehicleListener_66()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- CheckNow,
        [1] = true,
        -- Players,
        [2] = "#ED455357",
        -- VehicleId,
        [3] = self.vehicle,
    };
    return params;
end;

function export:OnExit_box_RandomFloat_v2_107_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_106;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_94_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.marshal = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_51_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_11;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_62_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_77;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.loaded = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_41_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_80_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.vehicle = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_47_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self._sld_Distance_box_GetDistance_47 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Veh_OutOf_Garage()
    
end;
function export:Fail_Marshal_Leave()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Both_Inside_Veh" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Marshal_Inside_Veh" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Fail_Marshal_Leave" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Veh_OutOf_Garage" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="Loaded" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="Marshal" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Vehicle" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
