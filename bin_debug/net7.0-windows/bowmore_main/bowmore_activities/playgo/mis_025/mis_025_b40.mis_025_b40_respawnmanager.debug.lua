LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/playgo/mis_025/mis_025_b40.domino
-- User graph: MIS_025_B40_RespawnManager
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="max_npc_limit" Type="Core|int" />
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
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/GroupSizeTest.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ExtinguishAllFires.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleSeatModifier_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_Manager.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[197091653.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1862451697.bnk]], "CSoundResource");
        cboxRes:LoadResource([[301774942.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3033933374.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1825810423.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2558717732.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1038473760.bnk]], "CSoundResource");
        cboxRes:LoadResource([[751008613.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3100690377.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4006244345.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2989533942.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4016745496.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3960144307.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3840146655.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4041936191.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1501590458.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2460749638.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2326773054.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1993101182.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4085132984.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3164349161.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3058119899.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_B40.MIS_025_B40_RespawnManager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ChangeBattlefield_RespawnArmory",
            },
            [1] = {
                name = "Disable_Respawn",
            },
            [2] = {
                name = "Disable_VehSpawnArmory",
            },
            [3] = {
                name = "Disable_VehSpawnRTower",
            },
            [4] = {
                name = "Enable_RespawnArmory",
            },
            [5] = {
                name = "Enable_RespawnRTower",
            },
            [6] = {
                name = "SpawnMotor_RTower",
            },
            [7] = {
                name = "SpawnVeh_Armory",
            },
            [8] = {
                name = "SpawnVeh_RTower",
            },
            [9] = {
                name = "StartAlarmFireworks",
            },
            [10] = {
                name = "Update_MaxNPC_limit",
            },
        },
        controlInCount = 11,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "max_npc_limit",
                type = "int",
            },
        },
        dataInCount = 1,
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
                name = "othersSpawned",
                type = "list",
            },
            [2] = {
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/Coop/GroupSizeTest.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Equal",
            },
            [2] = {
                name = "Greater",
            },
            [3] = {
                name = "Less",
            },
        },
        controlInCount = 4,
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
                name = "OnSize",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "PlayerCount",
                type = "bool",
            },
            [2] = {
                name = "Size",
                type = "int",
            },
            [3] = {
                name = "TestAtInit",
                type = "bool",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/ExtinguishAllFires.lua")] = {
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
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v6.lua")] = {
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
                name = "MemberDied",
                delayed = true,
            },
            [4] = {
                name = "MemberRemoved",
                delayed = true,
            },
            [5] = {
                name = "MemberSpawned",
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
    metadataTable[GetPathID("Domino/System/InventoryItemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Refill",
            },
            [2] = {
                name = "RefillClip",
            },
            [3] = {
                name = "Remove",
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
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterID",
                type = "genericdb",
            },
            [2] = {
                name = "players",
                type = "group",
            },
            [3] = {
                name = "quantity",
                type = "int",
            },
        },
        dataInCount = 4,
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
                name = "usePhysVelocity",
                type = "bool",
            },
            [8] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 9,
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
    metadataTable[GetPathID("Domino/System/SetInteger_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromFloat",
            },
            [1] = {
                name = "FromInteger",
            },
            [2] = {
                name = "FromString",
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
            [0] = {
                name = "Float",
                type = "float",
            },
            [1] = {
                name = "Integer",
                type = "int",
            },
            [2] = {
                name = "String",
                type = "string",
            },
            [3] = {
                name = "UseFloor",
                type = "bool",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "Target",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/TeleportPawns.lua")] = {
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
            [0] = {
                name = "ClientDestinationEntity",
                type = "entity",
            },
            [1] = {
                name = "Destination",
                type = "entity",
            },
            [2] = {
                name = "LoadingScreen",
                type = "bool",
            },
            [3] = {
                name = "LoadSynch",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "UseBlackScreen",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UniversalInteractionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceInteraction",
            },
        },
        controlInCount = 3,
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
                name = "Interacted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "disableOnUse",
                type = "bool",
            },
            [1] = {
                name = "displayId",
                type = "oasis",
            },
            [2] = {
                name = "interactor",
                type = "entity",
            },
            [3] = {
                name = "state",
                type = "bool",
            },
            [4] = {
                name = "usableEntity",
                type = "entity",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_025_B40_RespawnManager";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager";
    self.Player = nil;
    self.npc_limit = 5;
    self.box_GroupSizeTest_100 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|3859924");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_100_OnSize,
    });
    self.box_Delay_v5_4 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|18208071");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_4_TimeElapsed,
    });
    self.box_PlayDialog_v6_209 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|28664514");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_209_Started,
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|44526933");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_OnceOnly_v3_31 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|50796258");
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
        -- ResetOut,
        [1] = self.f_box_OnceOnly_v3_31_ResetOut,
    });
    self.box_PlayDialog_v6_8 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|68968489");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_8_Finished,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_8_Started,
    });
    self.box_Delay_v5_162 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|80481257");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_162_TimeElapsed,
    });
    self.box_MultipleOR_173 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|102702109");
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
        [0] = self.f_box_MultipleOR_173_Out,
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|115422868");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 14,
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
        [0] = self.f_box_MultipleOR_33_Out,
    });
    self.box_Gate_v3_199 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|132417842");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_199_Out,
    });
    self.box_MultipleOR_172 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|201240135");
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
        [0] = self.f_box_MultipleOR_172_Out,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|205045431");
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_Gate_v3_109 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|226659950");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_109_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_109_Out,
    });
    self.box_TeleportPawns_103 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|239255257");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_103_Out,
    });
    self.box_Delay_v5_160 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|252398411");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_160_TimeElapsed,
    });
    self.box_RemoveEntity_v2_200 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|261763743");
    l0:SetConnections({
    });
    self.box_SpawnAI_123 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|266508114");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_123_Spawned,
    });
    self.box_SpawnAI_72 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|307487311");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_72_Out,
    });
    self.box_PlayDialog_v6_157 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|318217279");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_34 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|342830341");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_34_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_34_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_34_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_34_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_34_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_34_SomeoneNear,
    });
    self.box_PlayDialog_v6_16 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|356284907");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_16_Started,
    });
    self.box_SoundModifier_v2_197 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|397429511");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_197_Started,
    });
    self.box_PlayDialog_v6_35 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|409755640");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_35_Started,
    });
    self.box_InventoryItemModifier_124 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|413141771");
    l0:SetConnections({
    });
    self.box_Delay_v5_52 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|414245029");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_52_TimeElapsed,
    });
    self.box_VehicleListener_v3_145 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|435185333");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VehicleListener_v3_145_Disabled,
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_145_Enabled,
        -- OnAllSitting,
        [2] = self.f_box_VehicleListener_v3_145_OnAllSitting,
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_145_OnAllStanding,
        -- OnChangeSeat,
        [4] = self.f_box_VehicleListener_v3_145_OnChangeSeat,
        -- OnInteract,
        [5] = self.f_box_VehicleListener_v3_145_OnInteract,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_145_OnSit,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_145_OnStandUp,
    });
    self.box_PlayDialog_v6_45 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|444341763");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_45_Started,
    });
    self.box_EntityStatusListener_111 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|465193624");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_111_Loaded,
    });
    self.box_Delay_v5_151 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|467374566");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_151_TimeElapsed,
    });
    self.box_MultipleOR_86 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|486774276");
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
        [0] = self.f_box_MultipleOR_86_Out,
    });
    self.box_Delay_v5_59 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|488557606");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_59_TimeElapsed,
    });
    self.box_PlayDialog_v6_211 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|495264857");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_161 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|510787384");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_161_Started,
    });
    self.box_GroupSizeListener_v6_101 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|539348632");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_101_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_101_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_101_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_101_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_101_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_101_MemberSpawned,
    });
    self.box_PlayDialog_v6_28 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|539685642");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_28_Started,
    });
    self.box_GroupSizeTest_55 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|593953971");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GroupSizeTest_55_Enabled,
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_55_OnSize,
    });
    self.box_GroupSizeTest_60 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|606012536");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_60_OnSize,
    });
    self.box_PlayDialog_v6_29 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|615690147");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_29_Started,
    });
    self.box_Gate_v3_121 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|617852623");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_121_Out,
    });
    self.box_OnceOnly_v3_203 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|625221086");
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
                [0] = self.f_box_OnceOnly_v3_203_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_201 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|656857788");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_201_TimeElapsed,
    });
    self.box_TeleportPawns_99 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|672422000");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_99_Out,
    });
    self.box_SpawnAI_147 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|673549849");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_147_Out,
    });
    self.box_Delay_v5_7 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|690094694");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_7_TimeElapsed,
    });
    self.box_Delay_v5_37 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|713855046");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_37_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_37_TimeElapsed,
    });
    self.box_PlayDialog_v6_3 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|724190036");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_3_Started,
    });
    self.box_MultipleOR_175 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|729286282");
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
        [0] = self.f_box_MultipleOR_175_Out,
    });
    self.box_VehicleListener_v3_133 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|741634161");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_133_Enabled,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_133_OnStandUp,
    });
    self.box_PlayDialog_v6_36 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|745036048");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_36_Started,
    });
    self.box_Delay_v5_65 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|754200717");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_65_TimeElapsed,
    });
    self.box_RemoveEntity_v2_196 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|767595363");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_196_Out,
    });
    self.box_PlayDialog_v6_38 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|769011664");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_38_Started,
    });
    self.box_Delay_v5_164 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|771653219");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_164_TimeElapsed,
    });
    self.box_PlayDialog_v6_17 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|788025611");
    l0:SetConnections({
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|793035852");
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
        [0] = self.f_box_MultipleOR_62_Out,
    });
    self.box_MultipleOR_170 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|806316643");
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
        [0] = self.f_box_MultipleOR_170_Out,
    });
    self.box_Delay_v5_92 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|811979543");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_92_TimeElapsed,
    });
    self.box_PlayDialog_v6_46 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|816224798");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_46_Started,
    });
    self.box_SpawnAI_53 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|828591503");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_53_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_53_Spawned,
    });
    self.box_PlayDialog_v6_5 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|835054306");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_5_Started,
    });
    self.box_MultipleOR_77 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|839929771");
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
    self.box_SpawnAI_153 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|849521910");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_153_Out,
    });
    self.box_Delay_v5_116 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|853374696");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_116_TimeElapsed,
    });
    self.box_PlayDialog_v6_210 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|885150962");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_159 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|897671358");
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
                [0] = self.f_box_OnceOnly_v3_159_Out_0,
            },
            count = 1,
        },
    });
    self.box_HealthListener_v6_176 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|911167621");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_176_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_176_Killed,
    });
    self.box_MultipleOR_107 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|919936115");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 10,
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
        [0] = self.f_box_MultipleOR_107_Out,
    });
    self.box_RemoveEntity_v2_202 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|974892459");
    l0:SetConnections({
    });
    self.box_VehicleListener_v3_130 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|988370406");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_130_Enabled,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_130_OnStandUp,
    });
    self.box_Delay_v5_168 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|996809364");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_168_TimeElapsed,
    });
    self.box_TeleportPawns_212 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1031637748");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_212_Out,
    });
    self.box_SpawnAI_140 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1045900341");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_140_Spawned,
    });
    self.box_RemoveEntity_v2_214 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1057047011");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_214_Out,
    });
    self.box_Switch_21 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1062446542");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 14,
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
                [0] = self.f_box_Switch_21_Output_0,
                [1] = self.f_box_Switch_21_Output_1,
                [2] = self.f_box_Switch_21_Output_2,
                [3] = self.f_box_Switch_21_Output_3,
                [4] = self.f_box_Switch_21_Output_4,
                [5] = self.f_box_Switch_21_Output_5,
                [6] = self.f_box_Switch_21_Output_6,
                [7] = self.f_box_Switch_21_Output_7,
                [8] = self.f_box_Switch_21_Output_8,
                [9] = self.f_box_Switch_21_Output_9,
                [10] = self.f_box_Switch_21_Output_10,
                [11] = self.f_box_Switch_21_Output_11,
                [12] = self.f_box_Switch_21_Output_12,
                [13] = self.f_box_Switch_21_Output_13,
            },
            count = 14,
        },
    });
    self.box_RemoveEntity_v2_71 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1076098605");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_71_Out,
    });
    self.box_SpawnAI_69 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1084083284");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_69_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_69_Spawned,
    });
    self.box_MultipleOR_187 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1106254390");
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
        [0] = self.f_box_MultipleOR_187_Out,
    });
    self.box_PlayDialog_v6_158 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1124206517");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_158_Started,
    });
    self.box_MultipleOR_183 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1134199613");
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
        [0] = self.f_box_MultipleOR_183_Out,
    });
    self.box_Delay_v5_42 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1146867987");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_42_TimeElapsed,
    });
    self.box_RemoveEntity_v2_181 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1147064992");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_181_Out,
    });
    self.box_Delay_v5_15 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1149032190");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_15_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_15_TimeElapsed,
    });
    self.box_RemoveEntity_v2_48 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1149470596");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_48_Out,
    });
    self.box_OnceOnly_v3_182 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1166746782");
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
                [0] = self.f_box_OnceOnly_v3_182_Out_0,
            },
            count = 1,
        },
    });
    self.box_InventoryItemModifier_126 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1168486005");
    l0:SetConnections({
    });
    self.box_Gate_v3_95 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1220971630");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_95_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_95_Out,
    });
    self.box_MultipleOR_191 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1230757056");
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
        [0] = self.f_box_MultipleOR_191_Out,
    });
    self.box_Gate_v3_198 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1245980974");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_198_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_198_Out,
    });
    self.box_MultipleOR_218 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1255838800");
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
        [0] = self.f_box_MultipleOR_218_Out,
    });
    self.box_InventoryItemModifier_112 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1261326478");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_213 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1262229304");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_213_Out,
    });
    self.box_HealthListener_v6_177 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1265423200");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_177_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_177_Killed,
    });
    self.box_TeleportPawns_73 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1270851817");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_73_Out,
    });
    self.box_SpawnAI_47 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1291734330");
    l0:SetConnections({
    });
    self.box_Switch_43 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1294289979");
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
                [0] = self.f_box_Switch_43_Output_0,
                [1] = self.f_box_Switch_43_Output_1,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_79 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1311590871");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_79_Finished,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_79_Started,
    });
    self.box_InventoryItemModifier_152 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1315787087");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_6 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1318707571");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_179 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1357415618");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_179_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_179_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_179_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_179_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_179_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_179_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_179_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_179_Revived,
    });
    self.box_HealthListener_v6_171 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1359883569");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_171_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_171_Killed,
    });
    self.box_VehicleListener_v3_125 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1374015756");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_125_Enabled,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_125_OnStandUp,
    });
    self.box_PlayDialog_v6_14 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1376152893");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_14_Started,
    });
    self.box_EntityStatusListener_150 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1398338490");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_150_Loaded,
    });
    self.box_SpawnAI_66 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1413166748");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_66_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_66_Spawned,
    });
    self.box_MultipleOR_178 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1414470719");
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
        [0] = self.f_box_MultipleOR_178_Out,
    });
    self.box_MultipleOR_54 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1418875107");
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
        [0] = self.f_box_MultipleOR_54_Out,
    });
    self.box_Delay_v5_102 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1424874617");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_102_Started,
        -- Stopped,
        [4] = self.f_box_Delay_v5_102_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_102_TimeElapsed,
    });
    self.box_HealthListener_v6_174 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1437875243");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_174_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_174_Killed,
    });
    self.box_GroupSizeTest_98 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1489110642");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_98_OnSize,
    });
    self.box_Delay_v5_167 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1495352756");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_167_TimeElapsed,
    });
    self.box_Delay_v5_67 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1495411928");
    l0:SetConnections({
        -- LoopingEnded,
        [0] = self.f_box_Delay_v5_67_LoopingEnded,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_67_TimeElapsed,
    });
    self.box_RemoveEntity_v2_44 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1510815864");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_44_Out,
    });
    self.box_InventoryItemModifier_128 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1532522957");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_207 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1536809791");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_146 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1543767547");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_146_Loaded,
    });
    self.box_SpawnAI_81 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1617702544");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_81_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_81_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_81_Spawned,
    });
    self.box_SpawnAI_141 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1626345734");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_141_Spawned,
    });
    self.box_PlayDialog_v6_20 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1626986580");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_20_Started,
    });
    self.box_Delay_v5_64 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1637657942");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_64_TimeElapsed,
    });
    self.box_GroupSizeTest_78 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1682463760");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_78_OnSize,
    });
    self.box_RemoveEntity_v2_204 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1688920792");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_204_Out,
    });
    self.box_VehicleListener_v3_117 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1697967942");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VehicleListener_v3_117_Disabled,
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_117_Enabled,
        -- OnAllSitting,
        [2] = self.f_box_VehicleListener_v3_117_OnAllSitting,
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_117_OnAllStanding,
        -- OnChangeSeat,
        [4] = self.f_box_VehicleListener_v3_117_OnChangeSeat,
        -- OnInteract,
        [5] = self.f_box_VehicleListener_v3_117_OnInteract,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_117_OnSit,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_117_OnStandUp,
    });
    self.box_PlayDialog_v6_24 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1714291222");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_24_Started,
    });
    self.box_MultipleOR_90 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1728431088");
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
        [0] = self.f_box_MultipleOR_90_Out,
    });
    self.box_MultipleOR_104 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1733048010");
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
    self.box_Random_76 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1744883564");
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
                [0] = self.f_box_Random_76_Output_0,
                [1] = self.f_box_Random_76_Output_1,
                [2] = self.f_box_Random_76_Output_2,
            },
            count = 3,
        },
    });
    self.box_SpawnAI_89 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1749332840");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_89_Out,
    });
    self.box_Delay_v5_166 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1756350981");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_166_TimeElapsed,
    });
    self.box_OnceOnly_v3_11 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1769256251");
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
                [0] = self.f_box_OnceOnly_v3_11_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_80 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1776825431");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_80_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_80_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_80_Out,
    });
    self.box_Delay_v5_110 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1803684244");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_110_Started,
        -- Stopped,
        [4] = self.f_box_Delay_v5_110_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_110_TimeElapsed,
    });
    self.box_Gate_v3_137 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1804497807");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_137_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_137_Out,
    });
    self.box_OnceOnly_v3_105 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1812020524");
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
                [0] = self.f_box_OnceOnly_v3_105_Out_0,
            },
            count = 1,
        },
    });
    self.box_OnceOnly_v3_85 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1828584242");
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
                [0] = self.f_box_OnceOnly_v3_85_Out_0,
            },
            count = 1,
        },
    });
    self.box_GroupSizeTest_75 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1829473175");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_75_OnSize,
    });
    self.box_GroupSizeTest_106 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1847388983");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GroupSizeTest_106_Enabled,
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_106_OnSize,
    });
    self.box_RemoveEntity_v2_61 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1848337991");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_61_Out,
    });
    self.box_PlayDialog_v6_9 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1852273470");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_9_Started,
    });
    self.box_GroupSizeListener_v6_63 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1855243980");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_63_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_63_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_63_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_63_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_63_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_63_MemberSpawned,
    });
    self.box_VehicleListener_v3_143 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1872279633");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VehicleListener_v3_143_Disabled,
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_143_Enabled,
        -- OnAllSitting,
        [2] = self.f_box_VehicleListener_v3_143_OnAllSitting,
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_143_OnAllStanding,
        -- OnChangeSeat,
        [4] = self.f_box_VehicleListener_v3_143_OnChangeSeat,
        -- OnInteract,
        [5] = self.f_box_VehicleListener_v3_143_OnInteract,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_143_OnSit,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_143_OnStandUp,
    });
    self.box_TeleportPawns_50 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1877391583");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_50_Out,
    });
    self.box_Switch_30 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1878482062");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 5,
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
                [0] = self.f_box_Switch_30_Output_0,
                [1] = self.f_box_Switch_30_Output_1,
                [2] = self.f_box_Switch_30_Output_2,
                [3] = self.f_box_Switch_30_Output_3,
                [4] = self.f_box_Switch_30_Output_4,
            },
            count = 5,
        },
    });
    self.box_Delay_v5_163 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1889774790");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_163_TimeElapsed,
    });
    self.box_EntityStatusListener_132 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1898747846");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_132_Loaded,
    });
    self.box_PlayDialog_v6_12 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1907692596");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_12_Finished,
        -- Started,
        [4] = self.f_box_PlayDialog_v6_12_Started,
    });
    self.box_MultipleOR_74 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1915925078");
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
    self.box_Delay_v5_58 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1924419681");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_58_TimeElapsed,
    });
    self.box_Delay_v5_165 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1936374488");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_165_TimeElapsed,
    });
    self.box_PlayDialog_v6_18 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1952175788");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_18_Started,
    });
    self.box_EntityStatusListener_122 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1958462490");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_122_Loaded,
    });
    self.box_Delay_v5_205 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1966903283");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_205_TimeElapsed,
    });
    self.box_Switch_217 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1976779772");
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
                [0] = self.f_box_Switch_217_Output_0,
                [1] = self.f_box_Switch_217_Output_1,
            },
            count = 3,
        },
    });
    self.box_HealthListener_v6_169 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1979454361");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_169_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_169_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_169_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_169_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_169_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_169_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_169_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_169_Revived,
    });
    self.box_Gate_v3_93 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1986735405");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_93_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_93_Out,
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1993456158");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_SpawnAI_113 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2004535444");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_113_Spawned,
    });
    self.box_SpawnAI_82 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2007145075");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_82_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_82_Spawned,
    });
    self.box_SpawnAI_136 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2030400492");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_136_Out,
    });
    self.box_SpawnAI_94 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2044548123");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_94_Out,
    });
    self.box_SpawnAI_57 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2054785642");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_57_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_57_Spawned,
    });
    self.box_PositionModifier_v2_26 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2096026889");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_26_Done,
    });
    self.box_Gate_v3_184 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2110116723");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_184_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_184_Out,
    });
    self.box_Random_96 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2120782497");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 6,
        },
        dataIn = {
            [1] = 6,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_96_Output_0,
                [1] = self.f_box_Random_96_Output_1,
                [2] = self.f_box_Random_96_Output_2,
                [3] = self.f_box_Random_96_Output_3,
                [4] = self.f_box_Random_96_Output_4,
                [5] = self.f_box_Random_96_Output_5,
            },
            count = 6,
        },
    });
    self.box_MultipleOR_180 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2128398310");
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
        [0] = self.f_box_MultipleOR_180_Out,
    });
    self.box_RemoveEntity_v2_208 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2132532774");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_208_Out,
    });
end;

function export:ChangeBattlefield_RespawnArmory()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_80();
    l0 = self.box_Gate_v3_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|564338247", "564338247", "MIS_025_B40_RespawnManager", "ChangeBattlefield_RespawnArmory", "box_Gate_v3_80.Open", self, l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:Disable_Respawn()
    local params, l0;
    params = self:OnEnter_box_GroupSizeListener_v6_63();
    l0 = self.box_GroupSizeListener_v6_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|126739355", "126739355", "MIS_025_B40_RespawnManager", "Disable_Respawn", "box_GroupSizeListener_v6_63.Disable", self, l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:Disable_VehSpawnArmory()
    local params, l0;
    params = self:OnEnter_box_Delay_v5_110();
    l0 = self.box_Delay_v5_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1852208793", "1852208793", "MIS_025_B40_RespawnManager", "Disable_VehSpawnArmory", "box_Delay_v5_110.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:Disable_VehSpawnRTower()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_137();
    l0 = self.box_Gate_v3_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1117928479", "1117928479", "MIS_025_B40_RespawnManager", "Disable_VehSpawnRTower", "box_Gate_v3_137.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:Enable_RespawnArmory()
    local params, l0;
    params = self:OnEnter_box_GroupSizeListener_v6_101();
    l0 = self.box_GroupSizeListener_v6_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|902657698", "902657698", "MIS_025_B40_RespawnManager", "Enable_RespawnArmory", "box_GroupSizeListener_v6_101.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:Enable_RespawnRTower()
    local params, l0;
    params = self:OnEnter_box_GroupSizeListener_v6_63();
    l0 = self.box_GroupSizeListener_v6_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1548762367", "1548762367", "MIS_025_B40_RespawnManager", "Enable_RespawnRTower", "box_GroupSizeListener_v6_63.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:SpawnMotor_RTower()
    local l0;
    l0 = self.box_MultipleOR_183;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|657040171", "657040171", "MIS_025_B40_RespawnManager", "SpawnMotor_RTower", "box_MultipleOR_183.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:SpawnVeh_Armory()
    local params, l0;
    params = self:OnEnter_box_Delay_v5_110();
    l0 = self.box_Delay_v5_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|643081884", "643081884", "MIS_025_B40_RespawnManager", "SpawnVeh_Armory", "box_Delay_v5_110.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:SpawnVeh_RTower()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_137();
    l0 = self.box_Gate_v3_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|637120126", "637120126", "MIS_025_B40_RespawnManager", "SpawnVeh_RTower", "box_Gate_v3_137.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:StartAlarmFireworks()
    local params, l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_40();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|734960686", "734960686", "MIS_025_B40_RespawnManager", "StartAlarmFireworks", "box_GetLocalPlayer_v2_40.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Update_MaxNPC_limit()
    local params, l0;
    params = self:OnEnter_box_SetInteger_v2_156();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2105585020", "2105585020", "MIS_025_B40_RespawnManager", "Update_MaxNPC_limit", "box_SetInteger_v2_156.FromInteger", self, l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeTest_100_OnSize()
    local l0, l1;
    l0 = self.box_GroupSizeTest_100;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|284664811", "284664811", "MIS_025_B40_RespawnManager", "box_GroupSizeTest_100.OnSize", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_Delay_v5_4_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_36();
    l0 = self.box_Delay_v5_4;
    l1 = self.box_PlayDialog_v6_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1016845084", "1016845084", "MIS_025_B40_RespawnManager", "box_Delay_v5_4.TimeElapsed", "box_PlayDialog_v6_36.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_49_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1102419016", "1102419016", "MIS_025_B40_RespawnManager", "box_Compare_Integers_49.A_lt_B", "box_MultipleOR_107.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_209_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_210();
    l0 = self.box_PlayDialog_v6_209;
    l1 = self.box_PlayDialog_v6_210;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2107300983", "2107300983", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_209.Started", "box_PlayDialog_v6_210.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_15();
    l0 = self.box_MultipleOR_13;
    l1 = self.box_Delay_v5_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1648236173", "1648236173", "MIS_025_B40_RespawnManager", "box_MultipleOR_13.Out", "box_Delay_v5_15.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_31_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_26();
    l0 = self.box_OnceOnly_v3_31;
    l1 = self.box_PositionModifier_v2_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|806955884", "806955884", "MIS_025_B40_RespawnManager", "box_OnceOnly_v3_31.Out", "box_PositionModifier_v2_26.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_31_ResetOut()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_34();
    l0 = self.box_OnceOnly_v3_31;
    l1 = self.box_ProximityRadiusListener_v3_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|507001967", "507001967", "MIS_025_B40_RespawnManager", "box_OnceOnly_v3_31.ResetOut", "box_ProximityRadiusListener_v3_34.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_8_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_8;
    l1 = self.box_OnceOnly_v3_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|970881272", "970881272", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_8.Finished", "box_OnceOnly_v3_85.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_8_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_8;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1055418554", "1055418554", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_8.Started", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Delay_v5_162_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_125();
    l0 = self.box_Delay_v5_162;
    l1 = self.box_VehicleListener_v3_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|682557498", "682557498", "MIS_025_B40_RespawnManager", "box_Delay_v5_162.TimeElapsed", "box_VehicleListener_v3_125.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_173_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_149();
    l0 = self.box_MultipleOR_173;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|312341994", "312341994", "MIS_025_B40_RespawnManager", "box_MultipleOR_173.Out", "box_VehicleModifier_v2_149.SetEngineMajorDamage", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEngineMajorDamage
    l1:Exec(13, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_33_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_33;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|817020371", "817020371", "MIS_025_B40_RespawnManager", "box_MultipleOR_33.Out", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleSeatModifier_v2_120_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_118();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|397869658", "397869658", "MIS_025_B40_RespawnManager", "box_VehicleSeatModifier_v2_120.Locked", "box_VehicleSeatModifier_v2_118.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_199_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_140();
    l0 = self.box_Gate_v3_199;
    l1 = self.box_SpawnAI_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|825954185", "825954185", "MIS_025_B40_RespawnManager", "box_Gate_v3_199.Out", "box_SpawnAI_140.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_172_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_142();
    l0 = self.box_MultipleOR_172;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|14749565", "14749565", "MIS_025_B40_RespawnManager", "box_MultipleOR_172.Out", "box_VehicleModifier_v2_142.SetEngineMajorDamage", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEngineMajorDamage
    l1:Exec(13, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_7();
    l0 = self.box_MultipleOR_2;
    l1 = self.box_Delay_v5_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1009998923", "1009998923", "MIS_025_B40_RespawnManager", "box_MultipleOR_2.Out", "box_Delay_v5_7.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GetLocalPlayer_v2_40_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_40_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_32();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1873277415", "1873277415", "MIS_025_B40_RespawnManager", "box_GetLocalPlayer_v2_40.Out", "box_ParticleSystem_v3_32.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_109_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_121();
    l0 = self.box_Gate_v3_109;
    l1 = self.box_Gate_v3_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1883966505", "1883966505", "MIS_025_B40_RespawnManager", "box_Gate_v3_109.Closed", "box_Gate_v3_121.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_109_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_123();
    l0 = self.box_Gate_v3_109;
    l1 = self.box_SpawnAI_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1945422454", "1945422454", "MIS_025_B40_RespawnManager", "box_Gate_v3_109.Out", "box_SpawnAI_123.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_TeleportPawns_103_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_67();
    l0 = self.box_TeleportPawns_103;
    l1 = self.box_Delay_v5_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1317466151", "1317466151", "MIS_025_B40_RespawnManager", "box_TeleportPawns_103.Out", "box_Delay_v5_67.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeTest_78();
    l0 = self.box_GroupSizeTest_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1343584907", "1343584907", "MIS_025_B40_RespawnManager", "box_OutputOrder_v2_68.Out", "box_GroupSizeTest_78.Less", clone:GetLuaBox(), l0:GetLuaBox());
    -- Less
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_80();
    l0 = self.box_Gate_v3_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1866798880", "1866798880", "MIS_025_B40_RespawnManager", "box_OutputOrder_v2_68.Out", "box_Gate_v3_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_HealthModifier_v2_206_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_208();
    l0 = self.box_RemoveEntity_v2_208;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|8881056", "8881056", "MIS_025_B40_RespawnManager", "box_HealthModifier_v2_206.Damaged", "box_RemoveEntity_v2_208.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_160_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_28();
    l0 = self.box_Delay_v5_160;
    l1 = self.box_PlayDialog_v6_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1521161280", "1521161280", "MIS_025_B40_RespawnManager", "box_Delay_v5_160.TimeElapsed", "box_PlayDialog_v6_28.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_123_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_162();
    l0 = self.box_SpawnAI_123;
    l1 = self.box_Delay_v5_162;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2132153252", "2132153252", "MIS_025_B40_RespawnManager", "box_SpawnAI_123.Spawned", "box_Delay_v5_162.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_VehicleModifier_v2_127_OnSetEngineMajorDamage()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_155();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1588606051", "1588606051", "MIS_025_B40_RespawnManager", "box_VehicleModifier_v2_127.OnSetEngineMajorDamage", "box_VehicleSeatModifier_v2_155.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_139_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_144();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|593788627", "593788627", "MIS_025_B40_RespawnManager", "box_VehicleSeatModifier_v2_139.Locked", "box_VehicleSeatModifier_v2_144.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_72_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_72;
    l1 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|455207284", "455207284", "MIS_025_B40_RespawnManager", "box_SpawnAI_72.Out", "box_MultipleOR_86.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_6();
    l0 = self.box_PlayDialog_v6_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1072977648", "1072977648", "MIS_025_B40_RespawnManager", "box_OutputOrder_v2_22.Out", "box_PlayDialog_v6_6.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1317801598", "1317801598", "MIS_025_B40_RespawnManager", "box_OutputOrder_v2_22.Out", "box_Delay_v5_4.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_34_AllFar()
    self:OnExit_box_ProximityRadiusListener_v3_34_AllFar();
end;

function export:f_box_ProximityRadiusListener_v3_34_AllNear()
    self:OnExit_box_ProximityRadiusListener_v3_34_AllNear();
end;

function export:f_box_ProximityRadiusListener_v3_34_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_34;
    l1 = self.box_OnceOnly_v3_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1662875442", "1662875442", "MIS_025_B40_RespawnManager", "box_ProximityRadiusListener_v3_34.Disabled", "box_OnceOnly_v3_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_34_SomeoneFar()
    self:OnExit_box_ProximityRadiusListener_v3_34_SomeoneFar();
end;

function export:f_box_ProximityRadiusListener_v3_34_SomeoneNear()
    local params, l0;
    self:OnExit_box_ProximityRadiusListener_v3_34_SomeoneNear();
    params = self:OnEnter_box_ProximityRadiusListener_v3_34();
    l0 = self.box_ProximityRadiusListener_v3_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1217728334", "1217728334", "MIS_025_B40_RespawnManager", "box_ProximityRadiusListener_v3_34.SomeoneNear", "box_ProximityRadiusListener_v3_34.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_16_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_16;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|382364020", "382364020", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_16.Started", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_SoundModifier_v2_197_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_201();
    l0 = self.box_SoundModifier_v2_197;
    l1 = self.box_Delay_v5_201;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1962102623", "1962102623", "MIS_025_B40_RespawnManager", "box_SoundModifier_v2_197.Started", "box_Delay_v5_201.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_35_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_35;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|152583234", "152583234", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_35.Started", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 11);
end;

function export:f_box_Delay_v5_52_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_71();
    l0 = self.box_Delay_v5_52;
    l1 = self.box_RemoveEntity_v2_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|624997666", "624997666", "MIS_025_B40_RespawnManager", "box_Delay_v5_52.TimeElapsed", "box_RemoveEntity_v2_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_VehicleListener_v3_145_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_177();
    l0 = self.box_VehicleListener_v3_145;
    l1 = self.box_HealthListener_v6_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1350870010", "1350870010", "MIS_025_B40_RespawnManager", "box_VehicleListener_v3_145.Enabled", "box_HealthListener_v6_177.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_145_OnChangeSeat()
    self:OnExit_box_VehicleListener_v3_145_OnChangeSeat();
end;

function export:f_box_VehicleListener_v3_145_OnInteract()
    self:OnExit_box_VehicleListener_v3_145_OnInteract();
end;

function export:f_box_VehicleListener_v3_145_OnSit()
    self:OnExit_box_VehicleListener_v3_145_OnSit();
end;

function export:f_box_VehicleListener_v3_145_OnStandUp()
    local l0, l1;
    self:OnExit_box_VehicleListener_v3_145_OnStandUp();
    l0 = self.box_VehicleListener_v3_145;
    l1 = self.box_MultipleOR_178;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|105299146", "105299146", "MIS_025_B40_RespawnManager", "box_VehicleListener_v3_145.OnStandUp", "box_MultipleOR_178.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleSeatModifier_v2_155_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_138();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|509940949", "509940949", "MIS_025_B40_RespawnManager", "box_VehicleSeatModifier_v2_155.Locked", "box_VehicleSeatModifier_v2_138.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_45_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_45;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1962176427", "1962176427", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_45.Started", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 13);
end;

function export:f_box_EntityStatusListener_111_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_112();
    l0 = self.box_EntityStatusListener_111;
    l1 = self.box_InventoryItemModifier_112;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|64870807", "64870807", "MIS_025_B40_RespawnManager", "box_EntityStatusListener_111.Loaded", "box_InventoryItemModifier_112.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_Delay_v5_151_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_145();
    l0 = self.box_Delay_v5_151;
    l1 = self.box_VehicleListener_v3_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1758128800", "1758128800", "MIS_025_B40_RespawnManager", "box_Delay_v5_151.TimeElapsed", "box_VehicleListener_v3_145.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_10_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_27();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|28976319", "28976319", "MIS_025_B40_RespawnManager", "box_Compare_Boolean_10.A_is_False", "box_SetBoolean_v2_27.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_10_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1694198063", "1694198063", "MIS_025_B40_RespawnManager", "box_Compare_Boolean_10.A_is_True", "box_MultipleOR_2.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_86_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_43();
    l0 = self.box_MultipleOR_86;
    l1 = self.box_Switch_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2047630570", "2047630570", "MIS_025_B40_RespawnManager", "box_MultipleOR_86.Out", "box_Switch_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_59_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_70();
    l0 = self.box_Delay_v5_59;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|419111718", "419111718", "MIS_025_B40_RespawnManager", "box_Delay_v5_59.TimeElapsed", "box_HealthModifier_v2_70.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_19_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|686181691", "686181691", "MIS_025_B40_RespawnManager", "box_ParticleSystem_v3_19.Started", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_161_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_PlayDialog_v6_161;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|169532460", "169532460", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_161.Started", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_131_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_153();
    l0 = self.box_SpawnAI_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1709919396", "1709919396", "MIS_025_B40_RespawnManager", "box_OutputOrder_v2_131.Out", "box_SpawnAI_153.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_131_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_163();
    l0 = self.box_Delay_v5_163;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1569757215", "1569757215", "MIS_025_B40_RespawnManager", "box_OutputOrder_v2_131.Out", "box_Delay_v5_163.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v6_101_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_GroupSizeListener_v6_101;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1346687844", "1346687844", "MIS_025_B40_RespawnManager", "box_GroupSizeListener_v6_101.Disabled", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_101_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_49();
    l0 = self.box_GroupSizeListener_v6_101;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2089801892", "2089801892", "MIS_025_B40_RespawnManager", "box_GroupSizeListener_v6_101.MemberRemoved", "box_Compare_Integers_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_28_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_28;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|53200223", "53200223", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_28.Started", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Entity_194_Equal()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_191;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|794600598", "794600598", "MIS_025_B40_RespawnManager", "box_Compare_Entity_194.Equal", "box_MultipleOR_191.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Entity_194_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_193();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1328613757", "1328613757", "MIS_025_B40_RespawnManager", "box_Compare_Entity_194.NotEqual", "box_Compare_Entity_193.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeTest_55_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeTest_98();
    l0 = self.box_GroupSizeTest_55;
    l1 = self.box_GroupSizeTest_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|629168485", "629168485", "MIS_025_B40_RespawnManager", "box_GroupSizeTest_55.Enabled", "box_GroupSizeTest_98.Greater", l0:GetLuaBox(), l1:GetLuaBox());
    -- Greater
    l1:Exec(2, params);
end;

function export:f_box_GroupSizeTest_55_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_66();
    l0 = self.box_GroupSizeTest_55;
    l1 = self.box_SpawnAI_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1397905575", "1397905575", "MIS_025_B40_RespawnManager", "box_GroupSizeTest_55.OnSize", "box_SpawnAI_66.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeTest_60_OnSize()
    local l0, l1;
    l0 = self.box_GroupSizeTest_60;
    l1 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|125331291", "125331291", "MIS_025_B40_RespawnManager", "box_GroupSizeTest_60.OnSize", "box_MultipleOR_74.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_29_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_29;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|412288134", "412288134", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_29.Started", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_Gate_v3_121_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_113();
    l0 = self.box_Gate_v3_121;
    l1 = self.box_SpawnAI_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2108092371", "2108092371", "MIS_025_B40_RespawnManager", "box_Gate_v3_121.Out", "box_SpawnAI_113.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_203_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_42();
    l0 = self.box_OnceOnly_v3_203;
    l1 = self.box_Delay_v5_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|809583134", "809583134", "MIS_025_B40_RespawnManager", "box_OnceOnly_v3_203.Out", "box_Delay_v5_42.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_201_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_200();
    l0 = self.box_Delay_v5_201;
    l1 = self.box_RemoveEntity_v2_200;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|833448097", "833448097", "MIS_025_B40_RespawnManager", "box_Delay_v5_201.TimeElapsed", "box_RemoveEntity_v2_200.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_TeleportPawns_99_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_88();
    l0 = self.box_TeleportPawns_99;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1152370509", "1152370509", "MIS_025_B40_RespawnManager", "box_TeleportPawns_99.Out", "box_HealthModifier_v2_88.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_147_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_131();
    l0 = self.box_SpawnAI_147;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1868201459", "1868201459", "MIS_025_B40_RespawnManager", "box_SpawnAI_147.Out", "box_OutputOrder_v2_131.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_7_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_7;
    l1 = self.box_OnceOnly_v3_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|105711935", "105711935", "MIS_025_B40_RespawnManager", "box_Delay_v5_7.TimeElapsed", "box_OnceOnly_v3_31.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_VehicleSeatModifier_v2_135_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_154();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|228759590", "228759590", "MIS_025_B40_RespawnManager", "box_VehicleSeatModifier_v2_135.Locked", "box_VehicleSeatModifier_v2_154.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_37_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_17();
    l0 = self.box_Delay_v5_37;
    l1 = self.box_PlayDialog_v6_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|88644089", "88644089", "MIS_025_B40_RespawnManager", "box_Delay_v5_37.Started", "box_PlayDialog_v6_17.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_37_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_161();
    l0 = self.box_Delay_v5_37;
    l1 = self.box_PlayDialog_v6_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1927835969", "1927835969", "MIS_025_B40_RespawnManager", "box_Delay_v5_37.TimeElapsed", "box_PlayDialog_v6_161.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_23_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1367590233", "1367590233", "MIS_025_B40_RespawnManager", "box_ParticleSystem_v3_23.Started", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_3_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_3;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|382935112", "382935112", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_3.Started", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_ParticleSystem_v3_1_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1200196905", "1200196905", "MIS_025_B40_RespawnManager", "box_ParticleSystem_v3_1.Started", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_MultipleOR_175_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_114();
    l0 = self.box_MultipleOR_175;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|937110429", "937110429", "MIS_025_B40_RespawnManager", "box_MultipleOR_175.Out", "box_VehicleModifier_v2_114.SetEngineMajorDamage", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEngineMajorDamage
    l1:Exec(13, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_195_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_103();
    l0 = self.box_TeleportPawns_103;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1157853363", "1157853363", "MIS_025_B40_RespawnManager", "box_HealthModifier_v2_195.Damaged", "box_TeleportPawns_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_VehicleListener_v3_133_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_169();
    l0 = self.box_VehicleListener_v3_133;
    l1 = self.box_HealthListener_v6_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|147301629", "147301629", "MIS_025_B40_RespawnManager", "box_VehicleListener_v3_133.Enabled", "box_HealthListener_v6_169.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_133_OnStandUp()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_133;
    l1 = self.box_MultipleOR_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1390924100", "1390924100", "MIS_025_B40_RespawnManager", "box_VehicleListener_v3_133.OnStandUp", "box_MultipleOR_172.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_36_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_160();
    l0 = self.box_PlayDialog_v6_36;
    l1 = self.box_Delay_v5_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1726966450", "1726966450", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_36.Started", "box_Delay_v5_160.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_65_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_48();
    l0 = self.box_Delay_v5_65;
    l1 = self.box_RemoveEntity_v2_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1440473333", "1440473333", "MIS_025_B40_RespawnManager", "box_Delay_v5_65.TimeElapsed", "box_RemoveEntity_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_VehicleModifier_v2_114_OnSetEngineMajorDamage()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_108();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1236627962", "1236627962", "MIS_025_B40_RespawnManager", "box_VehicleModifier_v2_114.OnSetEngineMajorDamage", "box_VehicleSeatModifier_v2_108.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_196_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_204();
    l0 = self.box_RemoveEntity_v2_196;
    l1 = self.box_RemoveEntity_v2_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1301699293", "1301699293", "MIS_025_B40_RespawnManager", "box_RemoveEntity_v2_196.Out", "box_RemoveEntity_v2_204.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_38_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_38;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1492978670", "1492978670", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_38.Started", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 12);
end;

function export:f_box_Delay_v5_164_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_117();
    l0 = self.box_Delay_v5_164;
    l1 = self.box_VehicleListener_v3_117;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1713490755", "1713490755", "MIS_025_B40_RespawnManager", "box_Delay_v5_164.TimeElapsed", "box_VehicleListener_v3_117.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetInteger_v2_156_Out()
    self:OnExit_box_SetInteger_v2_156_Out();
end;

function export:f_box_MultipleOR_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_93();
    l0 = self.box_MultipleOR_62;
    l1 = self.box_Gate_v3_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2098904250", "2098904250", "MIS_025_B40_RespawnManager", "box_MultipleOR_62.Out", "box_Gate_v3_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_170_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_119();
    l0 = self.box_MultipleOR_170;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1233843250", "1233843250", "MIS_025_B40_RespawnManager", "box_MultipleOR_170.Out", "box_VehicleModifier_v2_119.SetEngineMajorDamage", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEngineMajorDamage
    l1:Exec(13, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_92_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_99();
    l0 = self.box_Delay_v5_92;
    l1 = self.box_TeleportPawns_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1821769338", "1821769338", "MIS_025_B40_RespawnManager", "box_Delay_v5_92.TimeElapsed", "box_TeleportPawns_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_46_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_211();
    l0 = self.box_PlayDialog_v6_46;
    l1 = self.box_PlayDialog_v6_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2044946028", "2044946028", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_46.Started", "box_PlayDialog_v6_211.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_53_Fail()
    local l0, l1;
    l0 = self.box_SpawnAI_53;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1403996379", "1403996379", "MIS_025_B40_RespawnManager", "box_SpawnAI_53.Fail", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SpawnAI_53_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_53;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|152123114", "152123114", "MIS_025_B40_RespawnManager", "box_SpawnAI_53.Spawned", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_66();
    l0 = self.box_SpawnAI_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|783998263", "783998263", "MIS_025_B40_RespawnManager", "box_OutputOrder_v2_56.Out", "box_SpawnAI_66.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_53();
    l0 = self.box_SpawnAI_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|735223308", "735223308", "MIS_025_B40_RespawnManager", "box_OutputOrder_v2_56.Out", "box_SpawnAI_53.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_69();
    l0 = self.box_SpawnAI_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|183067339", "183067339", "MIS_025_B40_RespawnManager", "box_OutputOrder_v2_56.Out", "box_SpawnAI_69.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_82();
    l0 = self.box_SpawnAI_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1989305542", "1989305542", "MIS_025_B40_RespawnManager", "box_OutputOrder_v2_56.Out", "box_SpawnAI_82.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_93();
    l0 = self.box_Gate_v3_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|717837768", "717837768", "MIS_025_B40_RespawnManager", "box_OutputOrder_v2_56.Out", "box_Gate_v3_93.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_57();
    l0 = self.box_SpawnAI_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|845951395", "845951395", "MIS_025_B40_RespawnManager", "box_OutputOrder_v2_56.Out", "box_SpawnAI_57.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_81();
    l0 = self.box_SpawnAI_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|45769288", "45769288", "MIS_025_B40_RespawnManager", "box_OutputOrder_v2_56.Out", "box_SpawnAI_81.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_5_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_5;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1409103041", "1409103041", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_5.Started", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_MultipleOR_77_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ExtinguishAllFires_216();
    l0 = self.box_MultipleOR_77;
    l1 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1471760937", "1471760937", "MIS_025_B40_RespawnManager", "box_MultipleOR_77.Out", "box_ExtinguishAllFires_216.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_153_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_153;
    l1 = self.box_MultipleOR_183;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|176399931", "176399931", "MIS_025_B40_RespawnManager", "box_SpawnAI_153.Out", "box_MultipleOR_183.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_116_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_121();
    l0 = self.box_Delay_v5_116;
    l1 = self.box_Gate_v3_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1091005962", "1091005962", "MIS_025_B40_RespawnManager", "box_Delay_v5_116.TimeElapsed", "box_Gate_v3_121.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_27_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_27_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_18();
    l0 = self.box_PlayDialog_v6_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|561661080", "561661080", "MIS_025_B40_RespawnManager", "box_SetBoolean_v2_27.Out", "box_PlayDialog_v6_18.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_159_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_46();
    l0 = self.box_OnceOnly_v3_159;
    l1 = self.box_PlayDialog_v6_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|632871870", "632871870", "MIS_025_B40_RespawnManager", "box_OnceOnly_v3_159.Out", "box_PlayDialog_v6_46.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_HealthModifier_v2_70_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1665760223", "1665760223", "MIS_025_B40_RespawnManager", "box_HealthModifier_v2_70.Damaged", "box_Delay_v5_41.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_HealthListener_v6_176_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_111();
    l0 = self.box_HealthListener_v6_176;
    l1 = self.box_EntityStatusListener_111;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1859927977", "1859927977", "MIS_025_B40_RespawnManager", "box_HealthListener_v6_176.Enabled", "box_EntityStatusListener_111.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_176_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_176;
    l1 = self.box_MultipleOR_170;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2136186748", "2136186748", "MIS_025_B40_RespawnManager", "box_HealthListener_v6_176.Killed", "box_MultipleOR_170.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_107_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_96();
    l0 = self.box_MultipleOR_107;
    l1 = self.box_Random_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2097856213", "2097856213", "MIS_025_B40_RespawnManager", "box_MultipleOR_107.Out", "box_Random_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Entity_193_Equal()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_191;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1105535676", "1105535676", "MIS_025_B40_RespawnManager", "box_Compare_Entity_193.Equal", "box_MultipleOR_191.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleModifier_v2_119_OnSetEngineMajorDamage()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_120();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1144334635", "1144334635", "MIS_025_B40_RespawnManager", "box_VehicleModifier_v2_119.OnSetEngineMajorDamage", "box_VehicleSeatModifier_v2_120.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_91_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_203;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|165465634", "165465634", "MIS_025_B40_RespawnManager", "box_SetContextualStrategy_91.Out", "box_OnceOnly_v3_203.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthModifier_v2_51_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_65();
    l0 = self.box_Delay_v5_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1566883761", "1566883761", "MIS_025_B40_RespawnManager", "box_HealthModifier_v2_51.Damaged", "box_Delay_v5_65.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_VehicleListener_v3_130_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_179();
    l0 = self.box_VehicleListener_v3_130;
    l1 = self.box_HealthListener_v6_179;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1549829912", "1549829912", "MIS_025_B40_RespawnManager", "box_VehicleListener_v3_130.Enabled", "box_HealthListener_v6_179.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_130_OnStandUp()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_130;
    l1 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1170598628", "1170598628", "MIS_025_B40_RespawnManager", "box_VehicleListener_v3_130.OnStandUp", "box_MultipleOR_180.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_168_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_50();
    l0 = self.box_Delay_v5_168;
    l1 = self.box_TeleportPawns_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1373924142", "1373924142", "MIS_025_B40_RespawnManager", "box_Delay_v5_168.TimeElapsed", "box_TeleportPawns_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_TeleportPawns_212_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_196();
    l0 = self.box_TeleportPawns_212;
    l1 = self.box_RemoveEntity_v2_196;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1022967437", "1022967437", "MIS_025_B40_RespawnManager", "box_TeleportPawns_212.Out", "box_RemoveEntity_v2_196.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_140_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_166();
    l0 = self.box_SpawnAI_140;
    l1 = self.box_Delay_v5_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|58622147", "58622147", "MIS_025_B40_RespawnManager", "box_SpawnAI_140.Spawned", "box_Delay_v5_166.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_VehicleSeatModifier_v2_108_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_115();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1125918365", "1125918365", "MIS_025_B40_RespawnManager", "box_VehicleSeatModifier_v2_108.Locked", "box_VehicleSeatModifier_v2_115.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_214_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ExtinguishAllFires_215();
    l0 = self.box_RemoveEntity_v2_214;
    l1 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1555636566", "1555636566", "MIS_025_B40_RespawnManager", "box_RemoveEntity_v2_214.Out", "box_ExtinguishAllFires_215.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_21_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_20();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|394222491", "394222491", "MIS_025_B40_RespawnManager", "box_Switch_21.Output", "box_PlayDialog_v6_20.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_21_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_14();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|919930024", "919930024", "MIS_025_B40_RespawnManager", "box_Switch_21.Output", "box_PlayDialog_v6_14.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_21_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_9();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1786724368", "1786724368", "MIS_025_B40_RespawnManager", "box_Switch_21.Output", "box_PlayDialog_v6_9.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_21_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_16();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|623574280", "623574280", "MIS_025_B40_RespawnManager", "box_Switch_21.Output", "box_PlayDialog_v6_16.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_21_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_8();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1027391048", "1027391048", "MIS_025_B40_RespawnManager", "box_Switch_21.Output", "box_PlayDialog_v6_8.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_21_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_24();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|283851761", "283851761", "MIS_025_B40_RespawnManager", "box_Switch_21.Output", "box_PlayDialog_v6_24.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_21_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_79();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1702887515", "1702887515", "MIS_025_B40_RespawnManager", "box_Switch_21.Output", "box_PlayDialog_v6_79.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_21_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_5();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2006204855", "2006204855", "MIS_025_B40_RespawnManager", "box_Switch_21.Output", "box_PlayDialog_v6_5.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_21_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_29();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|702630586", "702630586", "MIS_025_B40_RespawnManager", "box_Switch_21.Output", "box_PlayDialog_v6_29.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_21_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_3();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2015282957", "2015282957", "MIS_025_B40_RespawnManager", "box_Switch_21.Output", "box_PlayDialog_v6_3.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_21_Output_10()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_12();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1414116244", "1414116244", "MIS_025_B40_RespawnManager", "box_Switch_21.Output", "box_PlayDialog_v6_12.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_21_Output_11()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_35();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1557566459", "1557566459", "MIS_025_B40_RespawnManager", "box_Switch_21.Output", "box_PlayDialog_v6_35.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_21_Output_12()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_38();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|174481120", "174481120", "MIS_025_B40_RespawnManager", "box_Switch_21.Output", "box_PlayDialog_v6_38.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_21_Output_13()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_45();
    l0 = self.box_Switch_21;
    l1 = self.box_PlayDialog_v6_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1863793505", "1863793505", "MIS_025_B40_RespawnManager", "box_Switch_21.Output", "box_PlayDialog_v6_45.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_71_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_168();
    l0 = self.box_RemoveEntity_v2_71;
    l1 = self.box_Delay_v5_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|10982176", "10982176", "MIS_025_B40_RespawnManager", "box_RemoveEntity_v2_71.Out", "box_Delay_v5_168.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_39_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1890463155", "1890463155", "MIS_025_B40_RespawnManager", "box_ParticleSystem_v3_39.Started", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_SpawnAI_69_Fail()
    local l0, l1;
    l0 = self.box_SpawnAI_69;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|404975789", "404975789", "MIS_025_B40_RespawnManager", "box_SpawnAI_69.Fail", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_SpawnAI_69_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_69;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1925248172", "1925248172", "MIS_025_B40_RespawnManager", "box_SpawnAI_69.Spawned", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_187_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_189();
    l0 = self.box_MultipleOR_187;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1010936278", "1010936278", "MIS_025_B40_RespawnManager", "box_MultipleOR_187.Out", "box_SetInteger_v2_189.FromFloat", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromFloat
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_158_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_157();
    l0 = self.box_PlayDialog_v6_158;
    l1 = self.box_PlayDialog_v6_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1931471712", "1931471712", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_158.Started", "box_PlayDialog_v6_157.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_183_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_183;
    l1 = self.box_OnceOnly_v3_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|832582791", "832582791", "MIS_025_B40_RespawnManager", "box_MultipleOR_183.Out", "box_OnceOnly_v3_182.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_42_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_202();
    l0 = self.box_Delay_v5_42;
    l1 = self.box_RemoveEntity_v2_202;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|265393970", "265393970", "MIS_025_B40_RespawnManager", "box_Delay_v5_42.TimeElapsed", "box_RemoveEntity_v2_202.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_181_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_195();
    l0 = self.box_RemoveEntity_v2_181;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|333386929", "333386929", "MIS_025_B40_RespawnManager", "box_RemoveEntity_v2_181.Out", "box_HealthModifier_v2_195.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_25_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1026381991", "1026381991", "MIS_025_B40_RespawnManager", "box_ParticleSystem_v3_25.Started", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Delay_v5_15_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_15;
    l1 = self.box_OnceOnly_v3_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1099121540", "1099121540", "MIS_025_B40_RespawnManager", "box_Delay_v5_15.Started", "box_OnceOnly_v3_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_15_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_30();
    l0 = self.box_Delay_v5_15;
    l1 = self.box_Switch_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2057561622", "2057561622", "MIS_025_B40_RespawnManager", "box_Delay_v5_15.TimeElapsed", "box_Switch_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_92();
    l0 = self.box_RemoveEntity_v2_48;
    l1 = self.box_Delay_v5_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1512438706", "1512438706", "MIS_025_B40_RespawnManager", "box_RemoveEntity_v2_48.Out", "box_Delay_v5_92.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_182_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_184();
    l0 = self.box_OnceOnly_v3_182;
    l1 = self.box_Gate_v3_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1918325306", "1918325306", "MIS_025_B40_RespawnManager", "box_OnceOnly_v3_182.Out", "box_Gate_v3_184.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_VehicleSeatModifier_v2_148_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_129();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|663568707", "663568707", "MIS_025_B40_RespawnManager", "box_VehicleSeatModifier_v2_148.Locked", "box_VehicleSeatModifier_v2_129.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_134_OnSetEngineMajorDamage()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_148();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|881403591", "881403591", "MIS_025_B40_RespawnManager", "box_VehicleModifier_v2_134.OnSetEngineMajorDamage", "box_VehicleSeatModifier_v2_148.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_95_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_102();
    l0 = self.box_Gate_v3_95;
    l1 = self.box_Delay_v5_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|429969797", "429969797", "MIS_025_B40_RespawnManager", "box_Gate_v3_95.Closed", "box_Delay_v5_102.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_95_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_102();
    l0 = self.box_Gate_v3_95;
    l1 = self.box_Delay_v5_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2077162405", "2077162405", "MIS_025_B40_RespawnManager", "box_Gate_v3_95.Out", "box_Delay_v5_102.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_191_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetInteger_v2_190();
    l0 = self.box_MultipleOR_191;
    l1 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|750585325", "750585325", "MIS_025_B40_RespawnManager", "box_MultipleOR_191.Out", "box_SetInteger_v2_190.FromFloat", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromFloat
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_198_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_199();
    l0 = self.box_Gate_v3_198;
    l1 = self.box_Gate_v3_199;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|708869734", "708869734", "MIS_025_B40_RespawnManager", "box_Gate_v3_198.Closed", "box_Gate_v3_199.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_198_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_141();
    l0 = self.box_Gate_v3_198;
    l1 = self.box_SpawnAI_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|960781062", "960781062", "MIS_025_B40_RespawnManager", "box_Gate_v3_198.Out", "box_SpawnAI_141.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_218_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_64();
    l0 = self.box_MultipleOR_218;
    l1 = self.box_Delay_v5_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|878580098", "878580098", "MIS_025_B40_RespawnManager", "box_MultipleOR_218.Out", "box_Delay_v5_64.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_RemoveEntity_v2_213_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_214();
    l0 = self.box_RemoveEntity_v2_213;
    l1 = self.box_RemoveEntity_v2_214;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1359286710", "1359286710", "MIS_025_B40_RespawnManager", "box_RemoveEntity_v2_213.Out", "box_RemoveEntity_v2_214.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_177_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_146();
    l0 = self.box_HealthListener_v6_177;
    l1 = self.box_EntityStatusListener_146;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|522052026", "522052026", "MIS_025_B40_RespawnManager", "box_HealthListener_v6_177.Enabled", "box_EntityStatusListener_146.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_177_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_177;
    l1 = self.box_MultipleOR_178;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|856256754", "856256754", "MIS_025_B40_RespawnManager", "box_HealthListener_v6_177.Killed", "box_MultipleOR_178.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_TeleportPawns_73_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_51();
    l0 = self.box_TeleportPawns_73;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1930952753", "1930952753", "MIS_025_B40_RespawnManager", "box_TeleportPawns_73.Out", "box_HealthModifier_v2_51.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_43_Output_0()
    local l0, l1;
    l0 = self.box_Switch_43;
    l1 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|671877544", "671877544", "MIS_025_B40_RespawnManager", "box_Switch_43.Output", "box_MultipleOR_90.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_43_Output_1()
    local l0, l1;
    l0 = self.box_Switch_43;
    l1 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|304873149", "304873149", "MIS_025_B40_RespawnManager", "box_Switch_43.Output", "box_MultipleOR_90.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Entity_186_Equal()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_187;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1160361009", "1160361009", "MIS_025_B40_RespawnManager", "box_Compare_Entity_186.Equal", "box_MultipleOR_187.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_79_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_79;
    l1 = self.box_OnceOnly_v3_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|562622393", "562622393", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_79.Finished", "box_OnceOnly_v3_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_79_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_79;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|979375273", "979375273", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_79.Started", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_ParticleSystem_v3_32_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1762511182", "1762511182", "MIS_025_B40_RespawnManager", "box_ParticleSystem_v3_32.Started", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_179_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_185();
    l0 = self.box_HealthListener_v6_179;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1350620021", "1350620021", "MIS_025_B40_RespawnManager", "box_HealthListener_v6_179.Damaged", "box_Compare_Entity_185.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_179_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_132();
    l0 = self.box_HealthListener_v6_179;
    l1 = self.box_EntityStatusListener_132;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1730178846", "1730178846", "MIS_025_B40_RespawnManager", "box_HealthListener_v6_179.Enabled", "box_EntityStatusListener_132.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_179_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_179;
    l1 = self.box_MultipleOR_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1702968317", "1702968317", "MIS_025_B40_RespawnManager", "box_HealthListener_v6_179.Killed", "box_MultipleOR_180.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_171_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_207();
    l0 = self.box_HealthListener_v6_171;
    l1 = self.box_UniversalInteractionModifier_v2_207;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1164501327", "1164501327", "MIS_025_B40_RespawnManager", "box_HealthListener_v6_171.Enabled", "box_UniversalInteractionModifier_v2_207.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_171_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_171;
    l1 = self.box_MultipleOR_173;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1195038334", "1195038334", "MIS_025_B40_RespawnManager", "box_HealthListener_v6_171.Killed", "box_MultipleOR_173.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleListener_v3_125_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_174();
    l0 = self.box_VehicleListener_v3_125;
    l1 = self.box_HealthListener_v6_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1261461871", "1261461871", "MIS_025_B40_RespawnManager", "box_VehicleListener_v3_125.Enabled", "box_HealthListener_v6_174.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_125_OnStandUp()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_125;
    l1 = self.box_MultipleOR_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1918970247", "1918970247", "MIS_025_B40_RespawnManager", "box_VehicleListener_v3_125.OnStandUp", "box_MultipleOR_175.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_14_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_14;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|634107235", "634107235", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_14.Started", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_150_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_152();
    l0 = self.box_EntityStatusListener_150;
    l1 = self.box_InventoryItemModifier_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|14244986", "14244986", "MIS_025_B40_RespawnManager", "box_EntityStatusListener_150.Loaded", "box_InventoryItemModifier_152.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_Compare_Entity_185_Equal()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_187;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|321880822", "321880822", "MIS_025_B40_RespawnManager", "box_Compare_Entity_185.Equal", "box_MultipleOR_187.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Entity_185_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_186();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|862018096", "862018096", "MIS_025_B40_RespawnManager", "box_Compare_Entity_185.NotEqual", "box_Compare_Entity_186.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_66_Fail()
    local l0, l1;
    l0 = self.box_SpawnAI_66;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1856374379", "1856374379", "MIS_025_B40_RespawnManager", "box_SpawnAI_66.Fail", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_66_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_66;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|6867323", "6867323", "MIS_025_B40_RespawnManager", "box_SpawnAI_66.Spawned", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_178_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_134();
    l0 = self.box_MultipleOR_178;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1017351812", "1017351812", "MIS_025_B40_RespawnManager", "box_MultipleOR_178.Out", "box_VehicleModifier_v2_134.SetEngineMajorDamage", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEngineMajorDamage
    l1:Exec(13, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_61();
    l0 = self.box_MultipleOR_54;
    l1 = self.box_RemoveEntity_v2_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1330809514", "1330809514", "MIS_025_B40_RespawnManager", "box_MultipleOR_54.Out", "box_RemoveEntity_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_102_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_43();
    l0 = self.box_Delay_v5_102;
    l1 = self.box_Switch_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|12206949", "12206949", "MIS_025_B40_RespawnManager", "box_Delay_v5_102.Started", "box_Switch_43.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_102_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v6_101();
    l0 = self.box_Delay_v5_102;
    l1 = self.box_GroupSizeListener_v6_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1007848972", "1007848972", "MIS_025_B40_RespawnManager", "box_Delay_v5_102.Stopped", "box_GroupSizeListener_v6_101.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_102_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_102;
    l1 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|622554694", "622554694", "MIS_025_B40_RespawnManager", "box_Delay_v5_102.TimeElapsed", "box_MultipleOR_86.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_174_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_122();
    l0 = self.box_HealthListener_v6_174;
    l1 = self.box_EntityStatusListener_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1249851275", "1249851275", "MIS_025_B40_RespawnManager", "box_HealthListener_v6_174.Enabled", "box_EntityStatusListener_122.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_174_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_174;
    l1 = self.box_MultipleOR_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|679949691", "679949691", "MIS_025_B40_RespawnManager", "box_HealthListener_v6_174.Killed", "box_MultipleOR_175.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthModifier_v2_88_Damaged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|790075612", "790075612", "MIS_025_B40_RespawnManager", "box_HealthModifier_v2_88.Damaged", "box_MultipleOR_77.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_97_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|556550312", "556550312", "MIS_025_B40_RespawnManager", "box_Compare_Integers_97.A_lt_B", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeTest_98_OnSize()
    local l0, l1;
    l0 = self.box_GroupSizeTest_98;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|901666543", "901666543", "MIS_025_B40_RespawnManager", "box_GroupSizeTest_98.OnSize", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_Delay_v5_167_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_73();
    l0 = self.box_Delay_v5_167;
    l1 = self.box_TeleportPawns_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|963223330", "963223330", "MIS_025_B40_RespawnManager", "box_Delay_v5_167.TimeElapsed", "box_TeleportPawns_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_67_LoopingEnded()
    local params, l0;
    params = self:OnEnter_box_Delay_v5_67();
    l0 = self.box_Delay_v5_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1353494118", "1353494118", "MIS_025_B40_RespawnManager", "box_Delay_v5_67.LoopingEnded", "box_Delay_v5_67.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Delay_v5_67_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_67;
    l1 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|370899628", "370899628", "MIS_025_B40_RespawnManager", "box_Delay_v5_67.TimeElapsed", "box_MultipleOR_54.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RemoveEntity_v2_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_167();
    l0 = self.box_RemoveEntity_v2_44;
    l1 = self.box_Delay_v5_167;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1665798999", "1665798999", "MIS_025_B40_RespawnManager", "box_RemoveEntity_v2_44.Out", "box_Delay_v5_167.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_146_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_126();
    l0 = self.box_EntityStatusListener_146;
    l1 = self.box_InventoryItemModifier_126;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2038959782", "2038959782", "MIS_025_B40_RespawnManager", "box_EntityStatusListener_146.Loaded", "box_InventoryItemModifier_126.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_SpawnAI_81_Fail()
    local l0, l1;
    l0 = self.box_SpawnAI_81;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1533780852", "1533780852", "MIS_025_B40_RespawnManager", "box_SpawnAI_81.Fail", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_SpawnAI_81_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeTest_75();
    l0 = self.box_SpawnAI_81;
    l1 = self.box_GroupSizeTest_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1967642339", "1967642339", "MIS_025_B40_RespawnManager", "box_SpawnAI_81.Out", "box_GroupSizeTest_75.Less", l0:GetLuaBox(), l1:GetLuaBox());
    -- Less
    l1:Exec(3, params);
end;

function export:f_box_SpawnAI_81_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_81;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|925857275", "925857275", "MIS_025_B40_RespawnManager", "box_SpawnAI_81.Spawned", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_SpawnAI_141_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_151();
    l0 = self.box_SpawnAI_141;
    l1 = self.box_Delay_v5_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1987325736", "1987325736", "MIS_025_B40_RespawnManager", "box_SpawnAI_141.Spawned", "box_Delay_v5_151.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_20_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_20;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2139135124", "2139135124", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_20.Started", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_64_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_44();
    l0 = self.box_Delay_v5_64;
    l1 = self.box_RemoveEntity_v2_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1355416982", "1355416982", "MIS_025_B40_RespawnManager", "box_Delay_v5_64.TimeElapsed", "box_RemoveEntity_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_VehicleModifier_v2_149_OnSetEngineMajorDamage()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_139();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|219359400", "219359400", "MIS_025_B40_RespawnManager", "box_VehicleModifier_v2_149.OnSetEngineMajorDamage", "box_VehicleSeatModifier_v2_139.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|461075425", "461075425", "MIS_025_B40_RespawnManager", "box_OutputOrder_v2_83.Out", "box_MultipleOR_54.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_83_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_52();
    l0 = self.box_Delay_v5_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1228955069", "1228955069", "MIS_025_B40_RespawnManager", "box_OutputOrder_v2_83.Out", "box_Delay_v5_52.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_83_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_197();
    l0 = self.box_SoundModifier_v2_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1977276993", "1977276993", "MIS_025_B40_RespawnManager", "box_OutputOrder_v2_83.Out", "box_SoundModifier_v2_197.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_83_Out_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|345236728", "345236728", "MIS_025_B40_RespawnManager", "box_OutputOrder_v2_83.Out", "box_MultipleOR_77.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeTest_78_OnSize()
    local l0, l1;
    l0 = self.box_GroupSizeTest_78;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|955163254", "955163254", "MIS_025_B40_RespawnManager", "box_GroupSizeTest_78.OnSize", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_RemoveEntity_v2_204_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_205();
    l0 = self.box_RemoveEntity_v2_204;
    l1 = self.box_Delay_v5_205;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1464462425", "1464462425", "MIS_025_B40_RespawnManager", "box_RemoveEntity_v2_204.Out", "box_Delay_v5_205.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_VehicleListener_v3_117_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_176();
    l0 = self.box_VehicleListener_v3_117;
    l1 = self.box_HealthListener_v6_176;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|419539662", "419539662", "MIS_025_B40_RespawnManager", "box_VehicleListener_v3_117.Enabled", "box_HealthListener_v6_176.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_117_OnChangeSeat()
    self:OnExit_box_VehicleListener_v3_117_OnChangeSeat();
end;

function export:f_box_VehicleListener_v3_117_OnInteract()
    self:OnExit_box_VehicleListener_v3_117_OnInteract();
end;

function export:f_box_VehicleListener_v3_117_OnSit()
    self:OnExit_box_VehicleListener_v3_117_OnSit();
end;

function export:f_box_VehicleListener_v3_117_OnStandUp()
    local l0, l1;
    self:OnExit_box_VehicleListener_v3_117_OnStandUp();
    l0 = self.box_VehicleListener_v3_117;
    l1 = self.box_MultipleOR_170;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1996000608", "1996000608", "MIS_025_B40_RespawnManager", "box_VehicleListener_v3_117.OnStandUp", "box_MultipleOR_170.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_24_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_24;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1363542208", "1363542208", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_24.Started", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_MultipleOR_90_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_76();
    l0 = self.box_MultipleOR_90;
    l1 = self.box_Random_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|874121419", "874121419", "MIS_025_B40_RespawnManager", "box_MultipleOR_90.Out", "box_Random_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_104_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_58();
    l0 = self.box_MultipleOR_104;
    l1 = self.box_Delay_v5_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|180068903", "180068903", "MIS_025_B40_RespawnManager", "box_MultipleOR_104.Out", "box_Delay_v5_58.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ExtinguishAllFires_216_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_217();
    l0 = self.box_Switch_217;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|993978618", "993978618", "MIS_025_B40_RespawnManager", "box_ExtinguishAllFires_216.Out", "box_Switch_217.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Random_76_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_94();
    l0 = self.box_Random_76;
    l1 = self.box_SpawnAI_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1494932803", "1494932803", "MIS_025_B40_RespawnManager", "box_Random_76.Output", "box_SpawnAI_94.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_76_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_72();
    l0 = self.box_Random_76;
    l1 = self.box_SpawnAI_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|699578855", "699578855", "MIS_025_B40_RespawnManager", "box_Random_76.Output", "box_SpawnAI_72.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_76_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_89();
    l0 = self.box_Random_76;
    l1 = self.box_SpawnAI_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|731145071", "731145071", "MIS_025_B40_RespawnManager", "box_Random_76.Output", "box_SpawnAI_89.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_89_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_89;
    l1 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|469320701", "469320701", "MIS_025_B40_RespawnManager", "box_SpawnAI_89.Out", "box_MultipleOR_86.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Delay_v5_166_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_130();
    l0 = self.box_Delay_v5_166;
    l1 = self.box_VehicleListener_v3_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|845566985", "845566985", "MIS_025_B40_RespawnManager", "box_Delay_v5_166.TimeElapsed", "box_VehicleListener_v3_130.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_11_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_10();
    l0 = self.box_OnceOnly_v3_11;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1483518962", "1483518962", "MIS_025_B40_RespawnManager", "box_OnceOnly_v3_11.Out", "box_Compare_Boolean_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_80_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_83();
    l0 = self.box_Gate_v3_80;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2013422085", "2013422085", "MIS_025_B40_RespawnManager", "box_Gate_v3_80.Closed", "box_OutputOrder_v2_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_80_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_80;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|156314066", "156314066", "MIS_025_B40_RespawnManager", "box_Gate_v3_80.Opened", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_80_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_80;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1164464511", "1164464511", "MIS_025_B40_RespawnManager", "box_Gate_v3_80.Out", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_110_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_116();
    l0 = self.box_Delay_v5_110;
    l1 = self.box_Delay_v5_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|584145517", "584145517", "MIS_025_B40_RespawnManager", "box_Delay_v5_110.Started", "box_Delay_v5_116.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_110_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_109();
    l0 = self.box_Delay_v5_110;
    l1 = self.box_Gate_v3_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|824994904", "824994904", "MIS_025_B40_RespawnManager", "box_Delay_v5_110.Stopped", "box_Gate_v3_109.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_110_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_109();
    l0 = self.box_Delay_v5_110;
    l1 = self.box_Gate_v3_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|19456697", "19456697", "MIS_025_B40_RespawnManager", "box_Delay_v5_110.TimeElapsed", "box_Gate_v3_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_137_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_184();
    l0 = self.box_Gate_v3_137;
    l1 = self.box_Gate_v3_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1150368648", "1150368648", "MIS_025_B40_RespawnManager", "box_Gate_v3_137.Closed", "box_Gate_v3_184.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_137_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_147();
    l0 = self.box_Gate_v3_137;
    l1 = self.box_SpawnAI_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1080208285", "1080208285", "MIS_025_B40_RespawnManager", "box_Gate_v3_137.Out", "box_SpawnAI_147.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_105_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_209();
    l0 = self.box_OnceOnly_v3_105;
    l1 = self.box_PlayDialog_v6_209;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|304553058", "304553058", "MIS_025_B40_RespawnManager", "box_OnceOnly_v3_105.Out", "box_PlayDialog_v6_209.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_85_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_158();
    l0 = self.box_OnceOnly_v3_85;
    l1 = self.box_PlayDialog_v6_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1530680978", "1530680978", "MIS_025_B40_RespawnManager", "box_OnceOnly_v3_85.Out", "box_PlayDialog_v6_158.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeTest_75_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_47();
    l0 = self.box_GroupSizeTest_75;
    l1 = self.box_SpawnAI_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1429301297", "1429301297", "MIS_025_B40_RespawnManager", "box_GroupSizeTest_75.OnSize", "box_SpawnAI_47.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetInteger_v2_190_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_190_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_192();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|872250621", "872250621", "MIS_025_B40_RespawnManager", "box_SetInteger_v2_190.Out", "box_HealthModifier_v2_192.Heal", clone:GetLuaBox(), l0:GetLuaBox());
    -- Heal
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeTest_106_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeTest_100();
    l0 = self.box_GroupSizeTest_106;
    l1 = self.box_GroupSizeTest_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1073937380", "1073937380", "MIS_025_B40_RespawnManager", "box_GroupSizeTest_106.Enabled", "box_GroupSizeTest_100.Greater", l0:GetLuaBox(), l1:GetLuaBox());
    -- Greater
    l1:Exec(2, params);
end;

function export:f_box_GroupSizeTest_106_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_57();
    l0 = self.box_GroupSizeTest_106;
    l1 = self.box_SpawnAI_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|644408080", "644408080", "MIS_025_B40_RespawnManager", "box_GroupSizeTest_106.OnSize", "box_SpawnAI_57.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_61_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_59();
    l0 = self.box_RemoveEntity_v2_61;
    l1 = self.box_Delay_v5_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|566458719", "566458719", "MIS_025_B40_RespawnManager", "box_RemoveEntity_v2_61.Out", "box_Delay_v5_59.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_9_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_9;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|14120455", "14120455", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_9.Started", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GroupSizeListener_v6_63_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_95();
    l0 = self.box_GroupSizeListener_v6_63;
    l1 = self.box_Gate_v3_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1854926930", "1854926930", "MIS_025_B40_RespawnManager", "box_GroupSizeListener_v6_63.Disabled", "box_Gate_v3_95.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v6_63_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeTest_60();
    l0 = self.box_GroupSizeListener_v6_63;
    l1 = self.box_GroupSizeTest_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|966969231", "966969231", "MIS_025_B40_RespawnManager", "box_GroupSizeListener_v6_63.Enabled", "box_GroupSizeTest_60.Less", l0:GetLuaBox(), l1:GetLuaBox());
    -- Less
    l1:Exec(3, params);
end;

function export:f_box_GroupSizeListener_v6_63_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_97();
    l0 = self.box_GroupSizeListener_v6_63;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|103888407", "103888407", "MIS_025_B40_RespawnManager", "box_GroupSizeListener_v6_63.MemberRemoved", "box_Compare_Integers_97.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_154_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_199();
    l0 = self.box_Gate_v3_199;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|914843017", "914843017", "MIS_025_B40_RespawnManager", "box_VehicleSeatModifier_v2_154.Locked", "box_Gate_v3_199.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_SetInteger_v2_189_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_189_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_188();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|847459018", "847459018", "MIS_025_B40_RespawnManager", "box_SetInteger_v2_189.Out", "box_HealthModifier_v2_188.Heal", clone:GetLuaBox(), l0:GetLuaBox());
    -- Heal
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_143_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_171();
    l0 = self.box_VehicleListener_v3_143;
    l1 = self.box_HealthListener_v6_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|121235525", "121235525", "MIS_025_B40_RespawnManager", "box_VehicleListener_v3_143.Enabled", "box_HealthListener_v6_171.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_143_OnChangeSeat()
    self:OnExit_box_VehicleListener_v3_143_OnChangeSeat();
end;

function export:f_box_VehicleListener_v3_143_OnInteract()
    self:OnExit_box_VehicleListener_v3_143_OnInteract();
end;

function export:f_box_VehicleListener_v3_143_OnSit()
    self:OnExit_box_VehicleListener_v3_143_OnSit();
end;

function export:f_box_VehicleListener_v3_143_OnStandUp()
    local l0, l1;
    self:OnExit_box_VehicleListener_v3_143_OnStandUp();
    l0 = self.box_VehicleListener_v3_143;
    l1 = self.box_MultipleOR_173;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1292386074", "1292386074", "MIS_025_B40_RespawnManager", "box_VehicleListener_v3_143.OnStandUp", "box_MultipleOR_173.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TeleportPawns_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_212();
    l0 = self.box_TeleportPawns_50;
    l1 = self.box_TeleportPawns_212;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|389837656", "389837656", "MIS_025_B40_RespawnManager", "box_TeleportPawns_50.Out", "box_TeleportPawns_212.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_30_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_23();
    l0 = self.box_Switch_30;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|847345646", "847345646", "MIS_025_B40_RespawnManager", "box_Switch_30.Output", "box_ParticleSystem_v3_23.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_30_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_19();
    l0 = self.box_Switch_30;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1563745563", "1563745563", "MIS_025_B40_RespawnManager", "box_Switch_30.Output", "box_ParticleSystem_v3_19.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_30_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_25();
    l0 = self.box_Switch_30;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1330023636", "1330023636", "MIS_025_B40_RespawnManager", "box_Switch_30.Output", "box_ParticleSystem_v3_25.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_30_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_39();
    l0 = self.box_Switch_30;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|661214749", "661214749", "MIS_025_B40_RespawnManager", "box_Switch_30.Output", "box_ParticleSystem_v3_39.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_30_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_1();
    l0 = self.box_Switch_30;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1919415641", "1919415641", "MIS_025_B40_RespawnManager", "box_Switch_30.Output", "box_ParticleSystem_v3_1.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_144_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_198();
    l0 = self.box_Gate_v3_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2096526521", "2096526521", "MIS_025_B40_RespawnManager", "box_VehicleSeatModifier_v2_144.Locked", "box_Gate_v3_198.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_163_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_143();
    l0 = self.box_Delay_v5_163;
    l1 = self.box_VehicleListener_v3_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2126633500", "2126633500", "MIS_025_B40_RespawnManager", "box_Delay_v5_163.TimeElapsed", "box_VehicleListener_v3_143.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleModifier_v2_142_OnSetEngineMajorDamage()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_135();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|922265000", "922265000", "MIS_025_B40_RespawnManager", "box_VehicleModifier_v2_142.OnSetEngineMajorDamage", "box_VehicleSeatModifier_v2_135.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_132_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_128();
    l0 = self.box_EntityStatusListener_132;
    l1 = self.box_InventoryItemModifier_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|753828368", "753828368", "MIS_025_B40_RespawnManager", "box_EntityStatusListener_132.Loaded", "box_InventoryItemModifier_128.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_PlayDialog_v6_12_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_12;
    l1 = self.box_OnceOnly_v3_159;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1641026100", "1641026100", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_12.Finished", "box_OnceOnly_v3_159.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_12_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_12;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1128293455", "1128293455", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_12.Started", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 10);
end;

function export:f_box_MultipleOR_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_95();
    l0 = self.box_MultipleOR_74;
    l1 = self.box_Gate_v3_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|295267957", "295267957", "MIS_025_B40_RespawnManager", "box_MultipleOR_74.Out", "box_Gate_v3_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_58_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_91();
    l0 = self.box_Delay_v5_58;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|873729919", "873729919", "MIS_025_B40_RespawnManager", "box_Delay_v5_58.TimeElapsed", "box_SetContextualStrategy_91.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_165_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_133();
    l0 = self.box_Delay_v5_165;
    l1 = self.box_VehicleListener_v3_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|196436282", "196436282", "MIS_025_B40_RespawnManager", "box_Delay_v5_165.TimeElapsed", "box_VehicleListener_v3_133.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_18_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_37();
    l0 = self.box_PlayDialog_v6_18;
    l1 = self.box_Delay_v5_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1821868574", "1821868574", "MIS_025_B40_RespawnManager", "box_PlayDialog_v6_18.Started", "box_Delay_v5_37.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_122_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_124();
    l0 = self.box_EntityStatusListener_122;
    l1 = self.box_InventoryItemModifier_124;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1102519995", "1102519995", "MIS_025_B40_RespawnManager", "box_EntityStatusListener_122.Loaded", "box_InventoryItemModifier_124.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_Delay_v5_205_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_206();
    l0 = self.box_Delay_v5_205;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1426070077", "1426070077", "MIS_025_B40_RespawnManager", "box_Delay_v5_205.TimeElapsed", "box_HealthModifier_v2_206.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_217_Output_0()
    local l0, l1;
    l0 = self.box_Switch_217;
    l1 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|298039118", "298039118", "MIS_025_B40_RespawnManager", "box_Switch_217.Output", "box_MultipleOR_218.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_217_Output_1()
    local l0, l1;
    l0 = self.box_Switch_217;
    l1 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|956186330", "956186330", "MIS_025_B40_RespawnManager", "box_Switch_217.Output", "box_MultipleOR_218.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_169_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_194();
    l0 = self.box_HealthListener_v6_169;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1939292377", "1939292377", "MIS_025_B40_RespawnManager", "box_HealthListener_v6_169.Damaged", "box_Compare_Entity_194.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_169_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_150();
    l0 = self.box_HealthListener_v6_169;
    l1 = self.box_EntityStatusListener_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1468370449", "1468370449", "MIS_025_B40_RespawnManager", "box_HealthListener_v6_169.Enabled", "box_EntityStatusListener_150.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_169_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_169;
    l1 = self.box_MultipleOR_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1883996992", "1883996992", "MIS_025_B40_RespawnManager", "box_HealthListener_v6_169.Killed", "box_MultipleOR_172.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_93_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_80();
    l0 = self.box_Gate_v3_93;
    l1 = self.box_Gate_v3_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1883436591", "1883436591", "MIS_025_B40_RespawnManager", "box_Gate_v3_93.Closed", "box_Gate_v3_80.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_93_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = self.box_Gate_v3_93;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1143964916", "1143964916", "MIS_025_B40_RespawnManager", "box_Gate_v3_93.Out", "box_OutputOrder_v2_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_181();
    l0 = self.box_Delay_v5_41;
    l1 = self.box_RemoveEntity_v2_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1236704894", "1236704894", "MIS_025_B40_RespawnManager", "box_Delay_v5_41.TimeElapsed", "box_RemoveEntity_v2_181.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_113_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_164();
    l0 = self.box_SpawnAI_113;
    l1 = self.box_Delay_v5_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|818500792", "818500792", "MIS_025_B40_RespawnManager", "box_SpawnAI_113.Spawned", "box_Delay_v5_164.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_82_Fail()
    local l0, l1;
    l0 = self.box_SpawnAI_82;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1031789004", "1031789004", "MIS_025_B40_RespawnManager", "box_SpawnAI_82.Fail", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_SpawnAI_82_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_82;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|176885010", "176885010", "MIS_025_B40_RespawnManager", "box_SpawnAI_82.Spawned", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_SpawnAI_136_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_165();
    l0 = self.box_SpawnAI_136;
    l1 = self.box_Delay_v5_165;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1497023293", "1497023293", "MIS_025_B40_RespawnManager", "box_SpawnAI_136.Out", "box_Delay_v5_165.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_94_Out()
    local l0, l1;
    l0 = self.box_SpawnAI_94;
    l1 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1926682483", "1926682483", "MIS_025_B40_RespawnManager", "box_SpawnAI_94.Out", "box_MultipleOR_86.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_57_Fail()
    local l0, l1;
    l0 = self.box_SpawnAI_57;
    l1 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|810092049", "810092049", "MIS_025_B40_RespawnManager", "box_SpawnAI_57.Fail", "box_MultipleOR_107.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_SpawnAI_57_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_57;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|10440696", "10440696", "MIS_025_B40_RespawnManager", "box_SpawnAI_57.Spawned", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_PositionModifier_v2_26_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_21();
    l0 = self.box_PositionModifier_v2_26;
    l1 = self.box_Switch_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|500804291", "500804291", "MIS_025_B40_RespawnManager", "box_PositionModifier_v2_26.Done", "box_Switch_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_184_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_198();
    l0 = self.box_Gate_v3_184;
    l1 = self.box_Gate_v3_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1003277085", "1003277085", "MIS_025_B40_RespawnManager", "box_Gate_v3_184.Closed", "box_Gate_v3_198.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_184_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_136();
    l0 = self.box_Gate_v3_184;
    l1 = self.box_SpawnAI_136;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|56496335", "56496335", "MIS_025_B40_RespawnManager", "box_Gate_v3_184.Out", "box_SpawnAI_136.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_96_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeTest_55();
    l0 = self.box_Random_96;
    l1 = self.box_GroupSizeTest_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|558517043", "558517043", "MIS_025_B40_RespawnManager", "box_Random_96.Output", "box_GroupSizeTest_55.Less", l0:GetLuaBox(), l1:GetLuaBox());
    -- Less
    l1:Exec(3, params);
end;

function export:f_box_Random_96_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_53();
    l0 = self.box_Random_96;
    l1 = self.box_SpawnAI_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|699772054", "699772054", "MIS_025_B40_RespawnManager", "box_Random_96.Output", "box_SpawnAI_53.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_96_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_69();
    l0 = self.box_Random_96;
    l1 = self.box_SpawnAI_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1929337234", "1929337234", "MIS_025_B40_RespawnManager", "box_Random_96.Output", "box_SpawnAI_69.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_96_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_82();
    l0 = self.box_Random_96;
    l1 = self.box_SpawnAI_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1907731280", "1907731280", "MIS_025_B40_RespawnManager", "box_Random_96.Output", "box_SpawnAI_82.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_96_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeTest_106();
    l0 = self.box_Random_96;
    l1 = self.box_GroupSizeTest_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2022676712", "2022676712", "MIS_025_B40_RespawnManager", "box_Random_96.Output", "box_GroupSizeTest_106.Less", l0:GetLuaBox(), l1:GetLuaBox());
    -- Less
    l1:Exec(3, params);
end;

function export:f_box_Random_96_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_81();
    l0 = self.box_Random_96;
    l1 = self.box_SpawnAI_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|950780207", "950780207", "MIS_025_B40_RespawnManager", "box_Random_96.Output", "box_SpawnAI_81.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_180_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_127();
    l0 = self.box_MultipleOR_180;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|479547850", "479547850", "MIS_025_B40_RespawnManager", "box_MultipleOR_180.Out", "box_VehicleModifier_v2_127.SetEngineMajorDamage", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEngineMajorDamage
    l1:Exec(13, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_208_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_213();
    l0 = self.box_RemoveEntity_v2_208;
    l1 = self.box_RemoveEntity_v2_213;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1159326719", "1159326719", "MIS_025_B40_RespawnManager", "box_RemoveEntity_v2_208.Out", "box_RemoveEntity_v2_213.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_GroupSizeTest_100()
    local params;
    params = {
        -- Group,
        [0] = "#54DDE821",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 0,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_4()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|21238810");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_49_A_lt_B,
    });
    l0 = self.box_GroupSizeListener_v6_101;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = self.npc_limit,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_209()
    local params;
    params = {
        -- Group,
        [0] = "2109843415182093854",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3033933374",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_8()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4041936191",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_162()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|117480847");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_120_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 1,
        -- vehicleEntity,
        [4] = "2109484671426376751",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_199()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|211835389");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_40_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_109()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_103()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109301468260477055",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#4E05D806",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|240767149");
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
                [0] = self.f_box_OutputOrder_v2_68_Out_0,
                [1] = self.f_box_OutputOrder_v2_68_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_206()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|245421521");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_206_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
        -- pawns,
        [2] = "#55C3ACF0",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_160()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_200()
    local params;
    params = {
        -- Group,
        [0] = "#1FCE69FA",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_123()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109417886176042458",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|269473684");
    l0:SetConnections({
        -- OnSetEngineMajorDamage,
        [13] = self.f_box_VehicleModifier_v2_127_OnSetEngineMajorDamage,
    });
    params = {
        -- targets,
        [0] = "2109555826105527405",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|294288270");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_139_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 1,
        -- vehicleEntity,
        [4] = "2109347614548906162",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_72()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109652591148280618",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_157()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "751008613",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|324533815");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_34()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#E5C0B771",
        -- id2,
        [3] = self.Player,
        -- nearZone,
        [4] = 20,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_16()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1825810423",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_197()
    local params;
    params = {
        -- Pawns,
        [0] = "2109748677542157355",
        -- SoundId,
        [1] = "2558717732",
        -- SoundType,
        [2] = 0,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_35()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3840146655",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_124()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015352507343832",
        -- players,
        [2] = "2109417886186528229",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_52()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_145()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#CF3B123D",
        -- SeatType,
        [3] = 1,
        -- vehicle,
        [4] = "2109442715440766051",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|435308329");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_155_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 1,
        -- vehicleEntity,
        [4] = "2109555826105527405",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_45()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1862451697",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_111()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109484686446179447",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_151()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|479283088");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_10_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_10_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.MIS_025_Manager.alarm_hgm_diag,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_59()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|490845098");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_19_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109482969340090896",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_211()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "197091653",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_161()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2460749638",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|520235431");
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

function export:OnEnter_box_GroupSizeListener_v6_101()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#E5C0B771",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_28()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4006244345",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|562875091");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_194_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_194_NotEqual,
    });
    l0 = self.box_HealthListener_v6_169;
    params = {
        -- Entity1,
        [0] = l0:GetDataOutValue(4),
        -- Entity2,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_55()
    local params;
    params = {
        -- Group,
        [0] = "#AE2848CB",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 1,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_60()
    local params;
    params = {
        -- Group,
        [0] = "#023282FB",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 2,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_29()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3164349161",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_121()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_201()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_99()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109301468260477055",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#112AD620",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_147()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109347614527934631",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_7()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|691041720");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_135_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 1,
        -- vehicleEntity,
        [4] = "2109347860991533559",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|698483829");
    l0:SetConnections({
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = "2109484671426376751",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_37()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|721120876");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_23_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109482957472307726",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_3()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4016745496",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|725187161");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_1_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109483296328037367",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|730365109");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_195_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
        -- pawns,
        [2] = "#A8D5BF13",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_133()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "2109347860995727865",
        -- SeatType,
        [3] = 1,
        -- vehicle,
        [4] = "2109347860991533559",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_36()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1993101182",
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

function export:OnEnter_box_VehicleModifier_v2_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|754275721");
    l0:SetConnections({
        -- OnSetEngineMajorDamage,
        [13] = self.f_box_VehicleModifier_v2_114_OnSetEngineMajorDamage,
    });
    params = {
        -- targets,
        [0] = "2109417886184431075",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_196()
    local params;
    params = {
        -- Group,
        [0] = "#A8D5BF13",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_38()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1501590458",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_164()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|772905604");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_156_Out,
    });
    params = {
        -- Integer,
        [1] = self.max_npc_limit,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_17()
    local params;
    params = {
        -- Group,
        [0] = "2109843415182093854",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1038473760",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_92()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_46()
    local params;
    params = {
        -- Group,
        [0] = "2109843415182093854",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "197091653",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_53()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109348903651506057",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|829115895");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
                [2] = self.f_box_OutputOrder_v2_56_Out_2,
                [3] = self.f_box_OutputOrder_v2_56_Out_3,
                [4] = self.f_box_OutputOrder_v2_56_Out_4,
                [5] = self.f_box_OutputOrder_v2_56_Out_5,
                [6] = self.f_box_OutputOrder_v2_56_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_5()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3100690377",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_153()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109347706066522749",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_116()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 23,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|856167007");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_27_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_210()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3033933374",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|899828769");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_70_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
        -- pawns,
        [2] = "#E5C0B771",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_176()
    local params, l0;
    l0 = self.box_VehicleListener_v3_117;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|948749241");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_193_Equal,
    });
    l0 = self.box_HealthListener_v6_169;
    params = {
        -- Entity1,
        [0] = l0:GetDataOutValue(4),
        -- Entity2,
        [1] = PersistentGlobals.MIS_025_Manager.barnes,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|972494241");
    l0:SetConnections({
        -- OnSetEngineMajorDamage,
        [13] = self.f_box_VehicleModifier_v2_119_OnSetEngineMajorDamage,
    });
    params = {
        -- targets,
        [0] = "2109484671426376751",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|973294464");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_91_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109280533124020737",
        -- Group,
        [1] = "#E5C0B771",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_202()
    local params;
    params = {
        -- Group,
        [0] = "#AE2848CB",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|976893580");
    l0:SetConnections({
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = "2109555826105527405",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|982059686");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_51_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
        -- pawns,
        [2] = "#54F1DD91",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|985998037");
    l0:SetConnections({
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = "2109417886184431075",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_130()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "2109555826105527407",
        -- SeatType,
        [3] = 1,
        -- vehicle,
        [4] = "2109555826105527405",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_168()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_212()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109301468260477055",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "2109495835749262877",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_140()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109555826092944482",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1051614686");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_108_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 1,
        -- vehicleEntity,
        [4] = "2109417886184431075",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_214()
    local params;
    params = {
        -- Group,
        [0] = "2109789979564613467",
    };
    return params;
end;

function export:OnEnter_box_Switch_21()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_71()
    local params;
    params = {
        -- Group,
        [0] = "#485E4BF9",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1083855758");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_39_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109483297523414009",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_69()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109250379232326989",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1091398710");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "2109347860995727865",
        -- value,
        [3] = self._sld_Target_box_SetInteger_v2_190,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_158()
    local params;
    params = {
        -- Group,
        [0] = "2109843415182093854",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "751008613",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_42()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_181()
    local params;
    params = {
        -- Group,
        [0] = "#A8D5BF13",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1148960170");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_25_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109483300159534075",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_15()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_48()
    local params;
    params = {
        -- Group,
        [0] = "#112AD620",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_126()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015352507343832",
        -- players,
        [2] = "2109528063122352407",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1188686070");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_148_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 1,
        -- vehicleEntity,
        [4] = "2109442715440766051",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1218125239");
    l0:SetConnections({
        -- OnSetEngineMajorDamage,
        [13] = self.f_box_VehicleModifier_v2_134_OnSetEngineMajorDamage,
    });
    params = {
        -- targets,
        [0] = "2109442715440766051",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_95()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_198()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_112()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015352507343832",
        -- players,
        [2] = "2109484686446179447",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_213()
    local params;
    params = {
        -- Group,
        [0] = "2109789023439436572",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_177()
    local params, l0;
    l0 = self.box_VehicleListener_v3_145;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_73()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109301468260477055",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#54F1DD91",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_47()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109681221989577666",
    };
    return params;
end;

function export:OnEnter_box_Switch_43()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1300273494");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_186_Equal,
    });
    l0 = self.box_HealthListener_v6_179;
    params = {
        -- Entity1,
        [0] = l0:GetDataOutValue(4),
        -- Entity2,
        [1] = PersistentGlobals.MIS_025_Manager.barnes,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_79()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3960144307",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_152()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015352507343832",
        -- players,
        [2] = "2109347860995727865",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_6()
    local params;
    params = {
        -- Group,
        [0] = "2109843415182093854",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2460749638",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1334095016");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_32_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109482953082968588",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_179()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2109555826105527407",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_171()
    local params, l0;
    l0 = self.box_VehicleListener_v3_143;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_125()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "2109417886186528229",
        -- SeatType,
        [3] = 1,
        -- vehicle,
        [4] = "2109417886184431075",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_14()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "301774942",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_150()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109347860995727865",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1399584100");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_185_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_185_NotEqual,
    });
    l0 = self.box_HealthListener_v6_179;
    params = {
        -- Entity1,
        [0] = l0:GetDataOutValue(4),
        -- Entity2,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_66()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109280774214651391",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_102()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_174()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "2109417886186528229",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1440531218");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_88_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = PersistentGlobals.MIS_025_Manager.rush,
        -- pawns,
        [2] = "#112AD620",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1461870945");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_97_A_lt_B,
    });
    l0 = self.box_GroupSizeListener_v6_63;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_98()
    local params;
    params = {
        -- Group,
        [0] = "#AE2848CB",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 0,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_167()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_67()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- nbLoop,
        [1] = 2,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_44()
    local params;
    params = {
        -- Group,
        [0] = "#54F1DD91",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_128()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015352507343832",
        -- players,
        [2] = "2109555826105527407",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_207()
    local params;
    params = {
        -- interactor,
        [2] = self.Player,
        -- usableEntity,
        [4] = "2109347614548906162",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_146()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109528063122352407",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_81()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109680374513676039",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_141()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109442715421891671",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_20()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2326773054",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_64()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1643904226");
    l0:SetConnections({
        -- OnSetEngineMajorDamage,
        [13] = self.f_box_VehicleModifier_v2_149_OnSetEngineMajorDamage,
    });
    params = {
        -- targets,
        [0] = "2109347614548906162",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1669738194");
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
                [0] = self.f_box_OutputOrder_v2_83_Out_0,
                [1] = self.f_box_OutputOrder_v2_83_Out_1,
                [2] = self.f_box_OutputOrder_v2_83_Out_2,
                [4] = self.f_box_OutputOrder_v2_83_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_78()
    local params;
    params = {
        -- Group,
        [0] = "#E5C0B771",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = self.npc_limit,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_204()
    local params;
    params = {
        -- Group,
        [0] = "#54DDE821",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_117()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#64C5C221",
        -- SeatType,
        [3] = 1,
        -- vehicle,
        [4] = "2109484671426376751",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_24()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4085132984",
    };
    return params;
end;

function export:OnEnter_box_ExtinguishAllFires_216()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1742410390");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ExtinguishAllFires_216_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Random_76()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_89()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109662416362029367",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_166()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_80()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1779123046");
    l0:SetConnections({
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = "2109442715440766051",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_110()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_137()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_75()
    local params;
    params = {
        -- Group,
        [0] = "#2E245006",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 1,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1840570203");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_190_Out,
    });
    l0 = self.box_HealthListener_v6_169;
    params = {
        -- Float,
        [0] = l0:GetDataOutValue(1),
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_106()
    local params;
    params = {
        -- Group,
        [0] = "#54DDE821",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 1,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_61()
    local params;
    params = {
        -- Group,
        [0] = "#E5C0B771",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_9()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3058119899",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_63()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#023282FB",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1859995751");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_154_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = "2109347860991533559",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1870353038");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_189_Out,
    });
    l0 = self.box_HealthListener_v6_179;
    params = {
        -- Float,
        [0] = l0:GetDataOutValue(1),
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_143()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#56324387",
        -- SeatType,
        [3] = 1,
        -- vehicle,
        [4] = "2109347614548906162",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_50()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109301468260477055",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = PersistentGlobals.MIS_025_Manager.rush,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Switch_30()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1885702536");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_144_Locked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 3,
        -- vehicleEntity,
        [4] = "2109347614548906162",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_163()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1896258641");
    l0:SetConnections({
        -- OnSetEngineMajorDamage,
        [13] = self.f_box_VehicleModifier_v2_142_OnSetEngineMajorDamage,
    });
    params = {
        -- targets,
        [0] = "2109347860991533559",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_132()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109555826105527407",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_12()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2989533942",
    };
    return params;
end;

function export:OnEnter_box_ExtinguishAllFires_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|1920854097");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_58()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_165()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_18()
    local params;
    params = {
        -- Group,
        [0] = "2109843374635757068",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1038473760",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_122()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109417886186528229",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_205()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Switch_217()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_169()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2109347860995727865",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_93()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_41()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_113()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109484671417988134",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_82()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109250402464577328",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_136()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109347860970562023",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_94()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109636053431267748",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_57()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109582454583989704",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B40.domino|@MIS_025_B40_RespawnManager|2057586016");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "2109555826105527407",
        -- value,
        [3] = self._sld_Target_box_SetInteger_v2_189,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_26()
    local params, l0;
    l0 = self.box_ProximityRadiusListener_v3_34;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = l0:GetDataOutValue(0),
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109843374635757068",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_184()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Random_96()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
                [0] = 0.1,
                [1] = 0.2,
                [2] = 0.2,
                [3] = 0.2,
                [4] = 0.1,
                [5] = 0.2,
            },
            count = 6,
        },
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_208()
    local params;
    params = {
        -- Group,
        [0] = "#1FCE69FA",
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_40_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.Player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_34_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_34;
    l1 = self.box_PositionModifier_v2_26;
    l1:GetLuaBox().endTarget = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_34_AllNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_34;
    l1 = self.box_PositionModifier_v2_26;
    l1:GetLuaBox().endTarget = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_34_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_34;
    l1 = self.box_PositionModifier_v2_26;
    l1:GetLuaBox().endTarget = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_34_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_34;
    l1 = self.box_PositionModifier_v2_26;
    l1:GetLuaBox().endTarget = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_145_OnChangeSeat()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_145;
    l1 = self.box_HealthListener_v6_177;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_145_OnInteract()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_145;
    l1 = self.box_HealthListener_v6_177;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_145_OnSit()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_145;
    l1 = self.box_HealthListener_v6_177;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_145_OnStandUp()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_145;
    l1 = self.box_HealthListener_v6_177;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_156_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.npc_limit = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_27_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.MIS_025_Manager.alarm_hgm_diag = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_117_OnChangeSeat()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_117;
    l1 = self.box_HealthListener_v6_176;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_117_OnInteract()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_117;
    l1 = self.box_HealthListener_v6_176;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_117_OnSit()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_117;
    l1 = self.box_HealthListener_v6_176;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_117_OnStandUp()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_117;
    l1 = self.box_HealthListener_v6_176;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_190_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self._sld_Target_box_SetInteger_v2_190 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_189_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self._sld_Target_box_SetInteger_v2_189 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_143_OnChangeSeat()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_143;
    l1 = self.box_HealthListener_v6_171;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_143_OnInteract()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_143;
    l1 = self.box_HealthListener_v6_171;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_143_OnSit()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_143;
    l1 = self.box_HealthListener_v6_171;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_143_OnStandUp()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_143;
    l1 = self.box_HealthListener_v6_171;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="ChangeBattlefield_RespawnArmory" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Disable_Respawn" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Disable_VehSpawnArmory" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Disable_VehSpawnRTower" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable_RespawnArmory" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable_RespawnRTower" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="SpawnMotor_RTower" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="SpawnVeh_Armory" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="SpawnVeh_RTower" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="StartAlarmFireworks" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Update_MaxNPC_limit" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="max_npc_limit" AnchorDynType="0" DataTypeID="int" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
