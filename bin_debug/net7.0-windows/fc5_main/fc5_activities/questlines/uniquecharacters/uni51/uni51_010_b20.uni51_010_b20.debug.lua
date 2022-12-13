LUAC�P -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni51/uni51_010_b20.domino
-- User graph: UNI51_010_B20
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Weapon" Type="Nomad|genericdb" />
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetEntityInPrefab_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MetaBreakableModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PawnWeaponCheck_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetInventoryItemQuantity.lua");
        cboxRes:RegisterBox("Domino/System/Player/WieldInventory_v5.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/RestrictedItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B20.UNI51_EquipWeapon.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[550653703.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1312326526.bnk]], "CSoundResource");
        cboxRes:LoadResource([[460638522.bnk]], "CSoundResource");
        cboxRes:LoadResource([[294667235.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1952880547.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1037011969.bnk]], "CSoundResource");
        cboxRes:LoadResource([[596728657.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2067737371.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3941081612.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4287883565.bnk]], "CSoundResource");
        cboxRes:LoadResource([[529472244.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3431207683.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B20.UNI51_010_B20.debug.lua")] = {
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
                name = "Weapon",
                type = "genericdb",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")] = {
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
                name = "MarkerTypeId",
                type = "database",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "ProgressDisplayType",
                type = "int",
            },
            [3] = {
                name = "TotalProgress",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")] = {
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
                name = "Progress",
                type = "int",
            },
            [2] = {
                name = "ProgressId",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/CompareStrings.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_contains_B",
                delayed = false,
            },
            [1] = {
                name = "A_eq_B",
                delayed = false,
            },
            [2] = {
                name = "A_ncontains_B",
                delayed = false,
            },
            [3] = {
                name = "A_neq_B",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "A",
                type = "string",
            },
            [1] = {
                name = "B",
                type = "string",
            },
            [2] = {
                name = "IgnoreCase",
                type = "bool",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/GetEntityInPrefab_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "NoEntity",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ObjectName",
                type = "string",
            },
            [1] = {
                name = "PrefabEntity",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "ObjectEntity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/MetaBreakableModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDamageable",
            },
            [1] = {
                name = "SetDisabled",
            },
            [2] = {
                name = "SetEnabled",
            },
            [3] = {
                name = "SetUnDamageable",
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
                name = "OnSetDamageable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUnDamageable",
                delayed = false,
            },
        },
        controlOutCount = 4,
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
    metadataTable[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "InHands",
                delayed = false,
            },
            [1] = {
                name = "InInventory",
                delayed = false,
            },
            [2] = {
                name = "NotFound",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "categoryName",
                type = "string",
            },
            [1] = {
                name = "className",
                type = "string",
            },
            [2] = {
                name = "pawn",
                type = "entity",
            },
            [3] = {
                name = "weaponDesc",
                type = "genericdb",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetNumberOfItems",
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
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "numItems",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Player/WieldInventory_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "LuaDraw",
            },
            [1] = {
                name = "LuaHolster",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Drawn",
                delayed = false,
            },
            [1] = {
                name = "Holstered",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "itemDescriptorId",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterId",
                type = "genericdb",
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
    metadataTable[GetPathID("Domino/System/RestrictedItemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "AddItem",
            },
            [1] = {
                name = "Clear",
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
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/StaticBreakableBreaker.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Destroy",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceState",
            },
            [3] = {
                name = "NextState",
            },
            [4] = {
                name = "SetDamageable",
            },
            [5] = {
                name = "SetUnDamageable",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "DamageableChanged",
                delayed = false,
            },
            [1] = {
                name = "Destroyed",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "StateChanged",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "entity",
                type = "entity",
            },
            [1] = {
                name = "forcedStateId",
                type = "int",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B20.UNI51_EquipWeapon.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Done",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "eClientMarker",
                type = "entity",
            },
            [1] = {
                name = "eHostMarker",
                type = "entity",
            },
            [2] = {
                name = "oClientObjective",
                type = "oasis",
            },
            [3] = {
                name = "oHostObjective",
                type = "oasis",
            },
            [4] = {
                name = "Weapon",
                type = "genericdb",
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
    self._name = "UNI51_010_B20";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20";
    self.bTarget_01_Destroyed = false;
    self.bTarget_02_Destroyed = false;
    self.bTarget_03_Destroyed = false;
    self.IDprogressStatic = 0;
    self.iStaticTargets = 0;
    self.IDprogressDynamic = 0;
    self.iDynamicTargets = 0;
    self.Client = nil;
    self.STP_Chemical = nil;
    self.box_MultipleOR_450 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_450;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_450");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|21587321");
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
        [0] = self.f_box_MultipleOR_450_Out,
    });
    self.box_ProximityTrigger_v2_383 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_383;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_383");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|27011014");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_383_Enter,
    });
    self.box_MultipleOR_492 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_492;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_492");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|45218441");
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
        [0] = self.f_box_MultipleOR_492_Out,
    });
    self.box_MetaBreakableModifier_v2_538 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_538;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_538");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|68780711");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_538_OnSetUnDamageable,
    });
    self.box_RemoveEntity_v2_567 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_567;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_567");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|69383387");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_567_Out,
    });
    self.box_MultipleOR_213 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|74202289");
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
        [0] = self.f_box_MultipleOR_213_Out,
    });
    self.box_StaticBreakableListener_49 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|75858955");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_49_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_49_OnBreak,
    });
    self.box_SoundModifier_v2_405 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_405;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_405");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|77461663");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_381 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_381;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_381");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|92887003");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_381_Started,
    });
    self.box_SoundModifier_v2_107 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|100482880");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_107_Started,
    });
    self.box_EntityStatusListener_572 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_572;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_572");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|106727358");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_572_Loaded,
    });
    self.box_MetaBreakableModifier_v2_533 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_533;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_533");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|116212385");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_533_OnSetUnDamageable,
    });
    self.box_Bind_v4_193 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|125503456");
    l0:SetConnections({
    });
    self.box_MultipleOR_237 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_237");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|135276791");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
        [0] = self.f_box_MultipleOR_237_Out,
    });
    self.box_Bind_v4_199 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|139942384");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_199_Bound,
    });
    self.box_SoundModifier_v2_391 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_391;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_391");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|144043442");
    l0:SetConnections({
    });
    self.box_SpawnAI_21 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|146621736");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_21_Spawned,
    });
    self.box_PositionModifier_v2_189 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|158185770");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_189_StartOut,
    });
    self.box_MetaBreakableModifier_v2_526 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_526;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_526");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|172267397");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_526_OnSetUnDamageable,
    });
    self.box_MetaBreakableModifier_v2_530 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_530;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_530");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|174670554");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_530_OnSetUnDamageable,
    });
    self.box_PositionModifier_v2_58 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|190344170");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_58_Done,
    });
    self.box_RemoveEntity_v2_563 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_563;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_563");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|191682018");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_563_Out,
    });
    self.box_WieldInventory_v5_452 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_452;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_452");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|192632793");
    l0:SetConnections({
        -- Drawn,
        [0] = self.f_box_WieldInventory_v5_452_Drawn,
    });
    self.box_Bind_v4_187 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|196645093");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_187_Bound,
    });
    self.box_UNI51_EquipWeapon_343 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B20.UNI51_EquipWeapon.debug.lua");
    l0 = self.box_UNI51_EquipWeapon_343;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI51_EquipWeapon_343");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|202331567");
    l0:SetConnections({
        -- Done,
        [0] = self.f_box_UNI51_EquipWeapon_343_Done,
    });
    self.box_MetaBreakableModifier_v2_532 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_532;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_532");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|205269330");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_532_OnSetUnDamageable,
    });
    self.box_WieldInventory_v5_446 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_446;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_446");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|209235284");
    l0:SetConnections({
        -- Drawn,
        [0] = self.f_box_WieldInventory_v5_446_Drawn,
    });
    self.box_GunsForHireSystemModifier_265 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_265;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_265");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|212865507");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GunsForHireSystemModifier_265_Enabled,
    });
    self.box_MultipleOR_88 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|218698571");
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
    self.box_Delay_v5_233 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_233");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|221858200");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_233_TimeElapsed,
    });
    self.box_Bind_v4_559 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_559;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_559");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|227656581");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_559_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_559_UnBound,
    });
    self.box_SoundModifier_v2_131 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|235198035");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_228 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|243211909");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_228_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_228_OnBreak,
    });
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|244296608");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_PositionModifier_v2_267 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_267;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_267");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|245833425");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_267_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_267_StartOut,
    });
    self.box_SoundModifier_v2_146 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|246229541");
    l0:SetConnections({
    });
    self.box_MetaBreakableModifier_v2_536 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_536;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_536");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|246726488");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_536_OnSetUnDamageable,
    });
    self.box_StaticBreakableListener_242 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_242;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_242");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|247736789");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_242_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_242_OnBreak,
    });
    self.box_RemoveEntity_v2_18 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|248994747");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_18_Out,
    });
    self.box_SoundModifier_v2_104 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|259804786");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_104_Started,
    });
    self.box_SoundModifier_v2_378 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_378;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_378");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|271333783");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_378_Started,
    });
    self.box_MetaBreakableModifier_v2_550 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_550;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_550");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|277732520");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_550_OnSetDamageable,
    });
    self.box_SoundModifier_v2_481 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_481;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_481");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|284423037");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_345 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_345;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_345");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|288832565");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_345_Started,
    });
    self.box_Bind_v4_191 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|291205070");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_191_Bound,
    });
    self.box_StaticBreakableListener_285 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_285;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_285");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|292574293");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_285_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_285_OnBreak,
    });
    self.box_PositionModifier_v2_54 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|301680694");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_54_StartOut,
    });
    self.box_Bind_v4_155 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|302982778");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_155_Bound,
    });
    self.box_Bind_v4_200 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|308757705");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_200_Bound,
    });
    self.box_Bind_v4_75 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|310813583");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_75_Bound,
    });
    self.box_MetaBreakableModifier_v2_553 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_553;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_553");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|311384113");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_553_OnSetDamageable,
    });
    self.box_SoundModifier_v2_485 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_485;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_485");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|315730773");
    l0:SetConnections({
    });
    self.box_Bind_v4_186 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|319500795");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_186_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_186_UnBound,
    });
    self.box_RemoveEntity_v2_565 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_565;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_565");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|322906914");
    l0:SetConnections({
    });
    self.box_MetaBreakableModifier_v2_544 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_544;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_544");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|323334311");
    l0:SetConnections({
    });
    self.box_Bind_v4_161 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|338896467");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_161_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_161_UnBound,
    });
    self.box_SoundModifier_v2_357 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_357;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_357");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|341786521");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_36 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|343111092");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_36_Done,
    });
    self.box_PositionModifier_v2_26 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|352324098");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_26_StartOut,
    });
    self.box_SoundModifier_v2_379 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_379;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_379");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|355112318");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_483 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_483;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_483");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|370197214");
    l0:SetConnections({
    });
    self.box_Bind_v4_168 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|372072286");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_168_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_168_UnBound,
    });
    self.box_SoundModifier_v2_397 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_397;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_397");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|374355176");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_347 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_347;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_347");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|383117775");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_347_Enter,
    });
    self.box_SoundModifier_v2_328 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_328;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_328");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|385971183");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_336 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_336;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_336");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|388981480");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_336_Enter,
    });
    self.box_MetaBreakableModifier_v2_546 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_546;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_546");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|392800839");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_546_OnSetDamageable,
    });
    self.box_StaticBreakableListener_115 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|400068968");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_115_OnBreak,
    });
    self.box_SoundModifier_v2_121 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|417725695");
    l0:SetConnections({
    });
    self.box_MetaBreakableModifier_v2_542 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_542;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_542");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|420582243");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_542_OnSetDamageable,
    });
    self.box_ProximityTrigger_v2_389 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_389;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_389");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|424437130");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_389_Enter,
    });
    self.box_StaticBreakableListener_38 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|429994124");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_38_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_38_OnBreak,
    });
    self.box_MultipleAND_v2_442 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_442;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_442");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|430681268");
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
        [0] = self.f_box_MultipleAND_v2_442_Out,
    });
    self.box_PositionModifier_v2_225 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|432766620");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_225_StartOut,
    });
    self.box_SoundModifier_v2_407 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_407;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_407");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|450015591");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_334 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_334;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_334");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|453720423");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_334_Started,
    });
    self.box_ProximityTrigger_v2_340 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_340;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_340");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|458141199");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_340_Enter,
    });
    self.box_SoundModifier_v2_126 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|459221629");
    l0:SetConnections({
    });
    self.box_Bind_v4_156 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|460788929");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_156_Bound,
    });
    self.box_SoundModifier_v2_401 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_401;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_401");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|461497315");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_401_Started,
    });
    self.box_SoundModifier_v2_351 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_351;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_351");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|465212503");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_241 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_241;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_241");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|467727340");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_241_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_241_OnBreak,
    });
    self.box_StaticBreakableListener_112 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|468771036");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_112_OnBreak,
    });
    self.box_RemoveEntity_v2_585 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_585;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_585");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|481463117");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_52 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|483891003");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_52_Done,
    });
    self.box_MultipleOR_291 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_291;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_291");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|484630900");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
        [0] = self.f_box_MultipleOR_291_Out,
    });
    self.box_StaticBreakableListener_288 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_288;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_288");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|490521425");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_288_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_288_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_288_OnBreak,
    });
    self.box_SoundModifier_v2_433 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_433;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_433");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|530640047");
    l0:SetConnections({
    });
    self.box_RestrictedItemModifier_275 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_275;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_275");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|534539899");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_275_Out,
    });
    self.box_SoundModifier_v2_411 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_411;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_411");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|549143125");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_404 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_404;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_404");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|554766538");
    l0:SetConnections({
    });
    self.box_Bind_v4_190 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|572429093");
    l0:SetConnections({
    });
    self.box_RestrictedItemModifier_279 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_279;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_279");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|573160953");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_279_Out,
    });
    self.box_StaticBreakableListener_39 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|580594912");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_39_OnBreak,
    });
    self.box_SoundModifier_v2_468 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_468;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_468");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|593524103");
    l0:SetConnections({
    });
    self.box_MetaBreakableModifier_v2_541 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_541;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_541");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|594364405");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_541_OnSetDamageable,
    });
    self.box_SoundModifier_v2_125 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|606568630");
    l0:SetConnections({
    });
    self.box_MetaBreakableModifier_v2_554 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_554;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_554");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|607086504");
    l0:SetConnections({
    });
    self.box_Bind_v4_555 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_555;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_555");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|608870466");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_555_Bound,
    });
    self.box_EntityStatusListener_568 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_568;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_568");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|609018770");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_568_Loaded,
    });
    self.box_SoundModifier_v2_469 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_469;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_469");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|611916008");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_438 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_438;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_438");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|613507739");
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
        [0] = self.f_box_MultipleAND_v2_438_Out,
    });
    self.box_OnceOnly_v3_217 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|614801819");
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
                [0] = self.f_box_OnceOnly_v3_217_Out_0,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_484 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_484;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_484");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|616409761");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_212 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|629329330");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_212_Damaged,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_212_Killed,
    });
    self.box_SoundModifier_v2_382 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_382;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_382");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|632736730");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_57 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|636911566");
    l0:SetConnections({
        -- Cancelled,
        [0] = self.f_box_PositionModifier_v2_57_Cancelled,
        -- Done,
        [1] = self.f_box_PositionModifier_v2_57_Done,
    });
    self.box_InventoryItemModifier_459 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_459;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_459");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|655463448");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_459_Out,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|657146069");
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
    self.box_MultipleOR_493 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_493;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_493");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|659360042");
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
        [0] = self.f_box_MultipleOR_493_Out,
    });
    self.box_Bind_v4_71 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|668259062");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_71_Bound,
    });
    self.box_MultipleOR_497 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_497;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_497");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|675360964");
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
        [0] = self.f_box_MultipleOR_497_Out,
    });
    self.box_MetaBreakableModifier_v2_551 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_551;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_551");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|704797832");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_551_OnSetDamageable,
    });
    self.box_SoundModifier_v2_409 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_409;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_409");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|734460512");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_588 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_588;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_588");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|737944989");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_588_Out,
    });
    self.box_PositionModifier_v2_17 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|739616866");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_17_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_17_StartOut,
    });
    self.box_RemoveEntity_v2_586 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_586;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_586");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|739777721");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_387 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_387;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_387");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|753775422");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_119 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|759435383");
    l0:SetConnections({
    });
    self.box_MetaBreakableModifier_v2_543 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_543;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_543");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|767636274");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_543_OnSetDamageable,
    });
    self.box_SoundModifier_v2_331 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_331;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_331");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|772198510");
    l0:SetConnections({
    });
    self.box_MultipleOR_284 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_284;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_284");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|776131006");
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
        [0] = self.f_box_MultipleOR_284_Out,
    });
    self.box_MetaBreakableModifier_v2_545 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_545;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_545");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|789079557");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_545_OnSetDamageable,
    });
    self.box_SoundModifier_v2_355 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_355;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_355");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|793355126");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_337 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_337;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_337");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|798850818");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_337_Started,
    });
    self.box_MetaBreakableModifier_v2_528 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_528;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_528");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|802203031");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_528_OnSetUnDamageable,
    });
    self.box_MultipleOR_65 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|811576482");
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
        [0] = self.f_box_MultipleOR_65_Out,
    });
    self.box_Bind_v4_197 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|811825457");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_197_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_197_UnBound,
    });
    self.box_SoundModifier_v2_97 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|821687386");
    l0:SetConnections({
    });
    self.box_Bind_v4_195 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|840567261");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_102 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|849031336");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_64 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|864907448");
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
                [0] = self.f_box_OnceOnly_v3_64_Out_0,
            },
            count = 2,
        },
    });
    self.box_ActivityInitialized_4 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|865506708");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_4_Out,
    });
    self.box_MetaBreakableModifier_v2_535 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_535;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_535");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|867336145");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_535_OnSetUnDamageable,
    });
    self.box_Bind_v4_157 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|867850033");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_99 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|883116229");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_99_Started,
    });
    self.box_StaticBreakableListener_286 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_286;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_286");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|919168557");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_286_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_286_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_286_OnBreak,
    });
    self.box_SoundModifier_v2_103 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|923722391");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_103_Started,
    });
    self.box_MultipleOR_253 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_253;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_253");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|924225400");
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
        [0] = self.f_box_MultipleOR_253_Out,
    });
    self.box_SoundModifier_v2_94 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|943464419");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_94_Started,
    });
    self.box_StaticBreakableListener_85 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|953935900");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_85_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_85_OnBreak,
    });
    self.box_MultipleOR_448 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_448;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_448");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|966869556");
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
        [0] = self.f_box_MultipleOR_448_Out,
    });
    self.box_RestrictedItemModifier_444 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_444;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_444");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|978060481");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_269 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_269;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_269");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|981044268");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_269_StartOut,
    });
    self.box_StaticBreakableListener_116 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|986950835");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_116_OnBreak,
    });
    self.box_MetaBreakableModifier_v2_552 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_552;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_552");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|990270079");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_66 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|993029401");
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
                [0] = self.f_box_OnceOnly_v3_66_Out_0,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_349 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_349;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_349");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|994102370");
    l0:SetConnections({
    });
    self.box_RestrictedItemModifier_456 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_456;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_456");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|999826163");
    l0:SetConnections({
    });
    self.box_Bind_v4_562 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_562;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_562");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1009556798");
    l0:SetConnections({
    });
    self.box_Bind_v4_167 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1009867714");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_167_Bound,
    });
    self.box_SoundModifier_v2_335 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_335;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_335");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1017877001");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_335_Started,
    });
    self.box_StaticBreakableListener_68 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1036871328");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_68_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_68_OnBreak,
    });
    self.box_PositionModifier_v2_246 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_246;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_246");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1050955700");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_246_StartOut,
    });
    self.box_OnceOnly_v3_89 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1052823283");
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
                [0] = self.f_box_OnceOnly_v3_89_Out_0,
            },
            count = 2,
        },
    });
    self.box_PositionModifier_v2_35 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1057336513");
    l0:SetConnections({
        -- Cancelled,
        [0] = self.f_box_PositionModifier_v2_35_Cancelled,
        -- Done,
        [1] = self.f_box_PositionModifier_v2_35_Done,
    });
    self.box_SoundModifier_v2_395 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_395;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_395");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1065653207");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_132 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1070797228");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_132_OnBreak,
    });
    self.box_RemoveEntity_v2_566 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_566;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_566");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1074688453");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_566_Out,
    });
    self.box_PositionModifier_v2_27 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1074696686");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_27_StartOut,
    });
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1079272417");
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
        [0] = self.f_box_MultipleOR_30_Out,
    });
    self.box_MetaBreakableModifier_v2_531 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_531;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_531");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1088025820");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_531_OnSetUnDamageable,
    });
    self.box_MetaBreakableModifier_v2_523 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_523;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_523");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1090558314");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_523_OnSetUnDamageable,
    });
    self.box_EntityStatusListener_571 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_571;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_571");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1108971456");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_571_Loaded,
    });
    self.box_ProximityTrigger_v2_377 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_377;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_377");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1116755213");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_377_Enter,
    });
    self.box_OnceOnly_v3_243 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_243");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1117123471");
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
                [0] = self.f_box_OnceOnly_v3_243_Out_0,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_108 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1119921017");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_108_Started,
    });
    self.box_SoundModifier_v2_392 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_392;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_392");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1121472851");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_369 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_369;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_369");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1125188296");
    l0:SetConnections({
    });
    self.box_MultipleOR_584 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_584;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_584");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1139229503");
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
        [0] = self.f_box_MultipleOR_584_Out,
    });
    self.box_SoundModifier_v2_106 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1141137642");
    l0:SetConnections({
    });
    self.box_MultipleOR_41 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1155134246");
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
        [0] = self.f_box_MultipleOR_41_Out,
    });
    self.box_Bind_v4_72 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1160400027");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_72_Bound,
    });
    self.box_RemoveEntity_v2_587 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_587;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_587");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1170228581");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_587_Out,
    });
    self.box_HealthListener_v6_514 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_514;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_514");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1180045263");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_514_Damaged,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_514_Enabled,
    });
    self.box_StaticBreakableListener_215 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1184029251");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_215_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_215_OnBreak,
    });
    self.box_Bind_v4_153 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1185379330");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_153_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_153_UnBound,
    });
    self.box_SoundModifier_v2_487 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_487;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_487");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1185617750");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_98 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1206986092");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_98_OnBreak,
    });
    self.box_SoundModifier_v2_100 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1220547897");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_100_Started,
    });
    self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1221380582");
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
        [0] = self.f_box_MultipleOR_48_Out,
    });
    self.box_SoundModifier_v2_385 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_385;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_385");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1256593654");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_398 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_398;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_398");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1259458614");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_398_Started,
    });
    self.box_SoundModifier_v2_472 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_472;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_472");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1265293824");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_122 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1272622792");
    l0:SetConnections({
    });
    self.box_Bind_v4_73 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1276762451");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_73_Bound,
    });
    self.box_SoundModifier_v2_101 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1283474985");
    l0:SetConnections({
    });
    self.box_MultipleOR_60 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1286501178");
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
        [0] = self.f_box_MultipleOR_60_Out,
    });
    self.box_MetaBreakableModifier_v2_529 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_529;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_529");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1296402260");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_529_OnSetUnDamageable,
    });
    self.box_SoundModifier_v2_396 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_396;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_396");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1297128539");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_396_Started,
    });
    self.box_OnceOnly_v3_93 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1297670084");
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
                [0] = self.f_box_OnceOnly_v3_93_Out_0,
            },
            count = 2,
        },
    });
    self.box_MetaBreakableModifier_v2_547 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_547;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_547");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1306710457");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_547_OnSetDamageable,
    });
    self.box_UNI51_EquipWeapon_342 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B20.UNI51_EquipWeapon.debug.lua");
    l0 = self.box_UNI51_EquipWeapon_342;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI51_EquipWeapon_342");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1323479172");
    l0:SetConnections({
        -- Done,
        [0] = self.f_box_UNI51_EquipWeapon_342_Done,
    });
    self.box_Bind_v4_196 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1326536487");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_196_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_196_UnBound,
    });
    self.box_Delay_v5_292 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_292;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_292");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1337189383");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_292_TimeElapsed,
    });
    self.box_SoundModifier_v2_394 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_394;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_394");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1346357496");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_394_Started,
    });
    self.box_SoundModifier_v2_105 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1352191452");
    l0:SetConnections({
    });
    self.box_MetaBreakableModifier_v2_537 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_537;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_537");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1354444441");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_537_OnSetUnDamageable,
    });
    self.box_Bind_v4_160 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1357712239");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_160_Bound,
    });
    self.box_StaticBreakableListener_289 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_289;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_289");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1358848102");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_289_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_289_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_289_OnBreak,
    });
    self.box_PositionModifier_v2_50 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1374744643");
    l0:SetConnections({
        -- Cancelled,
        [0] = self.f_box_PositionModifier_v2_50_Cancelled,
        -- Done,
        [1] = self.f_box_PositionModifier_v2_50_Done,
    });
    self.box_SoundModifier_v2_399 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_399;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_399");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1375736677");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_352 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_352;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_352");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1375902259");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_491 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_491;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_491");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1378893682");
    l0:SetConnections({
    });
    self.box_MultipleOR_494 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_494;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_494");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1397340801");
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
        [0] = self.f_box_MultipleOR_494_Out,
    });
    self.box_StaticBreakableListener_117 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1399100050");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_117_OnBreak,
    });
    self.box_MetaBreakableModifier_v2_539 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_539;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_539");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1409941119");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_539_OnSetDamageable,
    });
    self.box_SoundModifier_v2_386 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_386;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_386");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1415085985");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_370 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_370;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_370");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1418782302");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_370_Started,
    });
    self.box_InventoryItemModifier_434 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_434;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_434");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1424969763");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_434_Out,
    });
    self.box_GetEntityInPrefab_v2_244 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_244;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_244");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1448825498");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_244_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_244_Out,
    });
    self.box_PositionModifier_v2_24 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1452130099");
    l0:SetConnections({
        -- Cancelled,
        [0] = self.f_box_PositionModifier_v2_24_Cancelled,
        -- Done,
        [1] = self.f_box_PositionModifier_v2_24_Done,
    });
    self.box_SoundModifier_v2_400 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_400;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_400");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1456365775");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_439 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_439;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_439");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1463538156");
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
        [0] = self.f_box_MultipleAND_v2_439_Out,
    });
    self.box_Bind_v4_152 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1464486982");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_152_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_152_UnBound,
    });
    self.box_SoundModifier_v2_479 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_479;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_479");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1465359699");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_486 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_486;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_486");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1467695708");
    l0:SetConnections({
    });
    self.box_Bind_v4_521 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_521;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_521");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1470194892");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_521_Bound,
    });
    self.box_MultipleOR_447 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_447;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_447");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1478086956");
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
        [0] = self.f_box_MultipleOR_447_Out,
    });
    self.box_Bind_v4_154 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1482789860");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_154_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_154_UnBound,
    });
    self.box_StaticBreakableListener_216 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1494967928");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_216_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_216_OnBreak,
    });
    self.box_PositionModifier_v2_270 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_270;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_270");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1509884586");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_270_StartOut,
    });
    self.box_SoundModifier_v2_390 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_390;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_390");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1522987286");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_390_Started,
    });
    self.box_StaticBreakableListener_249 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_249;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_249");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1523134326");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_249_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_249_OnBreak,
    });
    self.box_OnceOnly_v3_86 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1540060853");
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
                [0] = self.f_box_OnceOnly_v3_86_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_570 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_570;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_570");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1542309359");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_570_Loaded,
    });
    self.box_Bind_v4_166 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1563551459");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_166_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_166_UnBound,
    });
    self.box_Delay_v5_84 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1569127557");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_84_TimeElapsed,
    });
    self.box_SoundModifier_v2_96 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1572607353");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_96_Started,
    });
    self.box_Bind_v4_198 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1575260791");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_198_Bound,
    });
    self.box_MetaBreakableModifier_v2_527 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_527;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_527");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1579653779");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_527_OnSetUnDamageable,
    });
    self.box_StaticBreakableListener_287 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_287;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_287");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1582595814");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_287_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_287_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_287_OnBreak,
    });
    self.box_ProximityTrigger_v2_346 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_346;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_346");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1594323736");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_346_Enter,
    });
    self.box_SoundModifier_v2_95 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1594648879");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_123 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1603838301");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_564 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_564;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_564");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1608788874");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_564_Out,
    });
    self.box_SoundModifier_v2_366 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_366;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_366");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1612221965");
    l0:SetConnections({
    });
    self.box_Bind_v4_164 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1622632623");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_164_Bound,
    });
    self.box_MultipleOR_455 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_455;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_455");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1623846124");
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
        [0] = self.f_box_MultipleOR_455_Out,
    });
    self.box_UNI51_EquipWeapon_341 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI51/UNI51_010_B20.UNI51_EquipWeapon.debug.lua");
    l0 = self.box_UNI51_EquipWeapon_341;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI51_EquipWeapon_341");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1639771400");
    l0:SetConnections({
        -- Done,
        [0] = self.f_box_UNI51_EquipWeapon_341_Done,
    });
    self.box_HealthListener_v6_515 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_515;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_515");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1647427482");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_515_Damaged,
    });
    self.box_Bind_v4_556 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_556;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_556");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1649762529");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_556_Bound,
    });
    self.box_Bind_v4_162 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1662332297");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_162_Bound,
    });
    self.box_SoundModifier_v2_374 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_374;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_374");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1671433289");
    l0:SetConnections({
    });
    self.box_CoopActivePlayers_205 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1671450613");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_205_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_205_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_205_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_205_TwoPlayers,
    });
    self.box_SoundModifier_v2_338 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_338;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_338");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1681821688");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_338_Started,
    });
    self.box_SoundModifier_v2_474 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_474;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_474");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1689233533");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_499 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_499;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_499");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1689813741");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_499_Enter,
    });
    self.box_Bind_v4_188 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1690570179");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_188_Bound,
    });
    self.box_SoundModifier_v2_402 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_402;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_402");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1695450232");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_120 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1696298492");
    l0:SetConnections({
    });
    self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1706844321");
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
        [0] = self.f_box_MultipleOR_56_Out,
    });
    self.box_StaticBreakableListener_232 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_232");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1707329761");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_232_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_232_OnBreak,
    });
    self.box_MultipleOR_218 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1710878835");
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
    self.box_StaticBreakableListener_118 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1711123127");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_118_OnBreak,
    });
    self.box_RestrictedItemModifier_61 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1712820158");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_61_Out,
    });
    self.box_SoundModifier_v2_408 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_408;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_408");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1722843128");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_79 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1723211125");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_79_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_79_OnBreak,
    });
    self.box_SoundModifier_v2_365 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_365;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_365");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1730405720");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_348 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_348;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_348");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1731614161");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_348_Enter,
    });
    self.box_SoundModifier_v2_332 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_332;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_332");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1741240179");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_518 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_518;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_518");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1756214022");
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
        [0] = self.f_box_MultipleAND_v2_518_Out,
    });
    self.box_Bind_v4_158 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1762936374");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_158_Bound,
    });
    self.box_StaticBreakableListener_223 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1769148042");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_223_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_223_OnBreak,
    });
    self.box_SoundModifier_v2_356 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_356;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_356");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1771805863");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_356_Started,
    });
    self.box_PositionModifier_v2_55 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1773611924");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_55_Done,
    });
    self.box_Bind_v4_165 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1779285178");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_165_Bound,
    });
    self.box_SoundModifier_v2_109 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1781788771");
    l0:SetConnections({
    });
    self.box_CoopActivePlayers_457 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_457;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_457");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1786860670");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_457_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_457_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_457_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_457_TwoPlayers,
    });
    self.box_SoundModifier_v2_488 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_488;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_488");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1793684588");
    l0:SetConnections({
    });
    self.box_Bind_v4_74 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1801224230");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_74_Bound,
    });
    self.box_SoundModifier_v2_473 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_473;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_473");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1802650479");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_367 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_367;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_367");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1812211286");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_367_Started,
    });
    self.box_Bind_v4_560 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_560;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_560");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1821581496");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_560_Bound,
    });
    self.box_MetaBreakableModifier_v2_525 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_525;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_525");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1825551815");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_525_OnSetUnDamageable,
    });
    self.box_SoundModifier_v2_403 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_403;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_403");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1825927337");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_403_Started,
    });
    self.box_StaticBreakableListener_113 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1827361561");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_113_OnBreak,
    });
    self.box_MetaBreakableModifier_v2_524 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_524;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_524");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1830071478");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_524_OnSetUnDamageable,
    });
    self.box_MetaBreakableModifier_v2_540 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_540;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_540");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1837416415");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_540_OnSetDamageable,
    });
    self.box_MultipleOR_63 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1853976350");
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
    self.box_MultipleOR_501 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_501;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_501");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1854667078");
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
        [0] = self.f_box_MultipleOR_501_Out,
    });
    self.box_StaticBreakableListener_40 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1856309056");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_40_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_40_OnBreak,
    });
    self.box_Bind_v4_522 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_522;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_522");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1860697906");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_522_Bound,
    });
    self.box_HealthListener_v6_29 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1891534453");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_29_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_29_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_29_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_29_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_29_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_29_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_29_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_29_Revived,
    });
    self.box_RemoveEntity_v2_25 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1895848207");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_25_Out,
    });
    self.box_SoundModifier_v2_110 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1910504171");
    l0:SetConnections({
    });
    self.box_Bind_v4_561 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_561;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_561");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1912387629");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_561_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_561_UnBound,
    });
    self.box_EntityStatusListener_569 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_569;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_569");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1914449710");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_569_Loaded,
    });
    self.box_RemoveEntity_v2_37 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1927085935");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_37_Out,
    });
    self.box_Bind_v4_557 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_557;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_557");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1934971217");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_557_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_557_UnBound,
    });
    self.box_MultipleAND_v2_436 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_436;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_436");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1936645708");
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
        [0] = self.f_box_MultipleAND_v2_436_Out,
    });
    self.box_SoundModifier_v2_339 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_339;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_339");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1941678139");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_339_Started,
    });
    self.box_StaticBreakableListener_114 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1943012531");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_114_OnBreak,
    });
    self.box_SoundModifier_v2_477 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_477;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_477");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1945955271");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_470 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_470;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_470");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1950361541");
    l0:SetConnections({
    });
    self.box_GunsForHireSystemModifier_511 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_511;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_511");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1955589912");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_511_Disabled,
    });
    self.box_Bind_v4_159 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1956763245");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_159_Bound,
    });
    self.box_SoundModifier_v2_124 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1957613349");
    l0:SetConnections({
    });
    self.box_MultipleOR_219 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1981186553");
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
        [0] = self.f_box_MultipleOR_219_Out,
    });
    self.box_SoundModifier_v2_329 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_329;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_329");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1986373034");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_62 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1986960341");
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
                [0] = self.f_box_OnceOnly_v3_62_Out_0,
            },
            count = 2,
        },
    });
    self.box_RestrictedItemModifier_277 = cbox:CreateBox("Domino/System/RestrictedItemModifier.lua");
    l0 = self.box_RestrictedItemModifier_277;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_277");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1990283783");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_277_Out,
    });
    self.box_MultipleOR_496 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_496;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_496");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1997468649");
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
        [0] = self.f_box_MultipleOR_496_Out,
    });
    self.box_StaticBreakableListener_47 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2014607566");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_47_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_47_OnBreak,
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2019217757");
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
        [0] = self.f_box_MultipleOR_53_Out,
    });
    self.box_MetaBreakableModifier_v2_548 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_548;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_548");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2019968705");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_548_OnSetDamageable,
    });
    self.box_SoundModifier_v2_364 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_364;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_364");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2026258624");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_364_Started,
    });
    self.box_SoundModifier_v2_359 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_359;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_359");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2048954309");
    l0:SetConnections({
    });
    self.box_MultipleOR_90 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2054020171");
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
    self.box_SoundModifier_v2_410 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_410;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_410");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2063674474");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_350 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_350;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_350");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2069592468");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_268 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_268;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_268");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2075173262");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_268_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_268_StartOut,
    });
    self.box_MetaBreakableModifier_v2_549 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_549;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_549");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2087627880");
    l0:SetConnections({
        -- OnSetDamageable,
        [2] = self.f_box_MetaBreakableModifier_v2_549_OnSetDamageable,
    });
    self.box_SoundModifier_v2_333 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_333;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_333");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2088717404");
    l0:SetConnections({
    });
    self.box_MetaBreakableModifier_v2_534 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_534;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_534");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2106854941");
    l0:SetConnections({
        -- OnSetUnDamageable,
        [3] = self.f_box_MetaBreakableModifier_v2_534_OnSetUnDamageable,
    });
    self.box_PositionModifier_v2_16 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2111133639");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_16_StartOut,
    });
    self.box_StaticBreakableListener_214 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2116490649");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_214_OnBreak,
    });
    self.box_SoundModifier_v2_412 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_412;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_412");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2120063099");
    l0:SetConnections({
    });
    self.box_Bind_v4_163 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2120804982");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_163_Bound,
    });
    self.box_MultipleOR_498 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_498;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_498");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2122840212");
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
        [0] = self.f_box_MultipleOR_498_Out,
    });
    self.box_MultipleOR_495 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_495;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_495");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2128398740");
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
        [0] = self.f_box_MultipleOR_495_Out,
    });
    self.box_StaticBreakableListener_262 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_262;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_262");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2131970913");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_262_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_262_OnBreak,
    });
    self.box_MultipleOR_500 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_500;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_500");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2133814922");
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
        [0] = self.f_box_MultipleOR_500_Out,
    });
    self.box_OnceOnly_v3_271 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_271;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_271");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2144259686");
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
                [0] = self.f_box_OnceOnly_v3_271_Out_0,
            },
            count = 2,
        },
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|135043456", "135043456", "UNI51_010_B20", "In", "box_OutputOrder_v2_9.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_RestrictedItemModifier_61();
    l0 = self.box_RestrictedItemModifier_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1006253191", "1006253191", "UNI51_010_B20", "OnLeaveZone", "box_RestrictedItemModifier_61.Clear", self, l0:GetLuaBox());
    -- Clear
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_148_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_146();
    l0 = self.box_SoundModifier_v2_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2103370736", "2103370736", "UNI51_010_B20", "box_Simple_Node_148.Out", "box_SoundModifier_v2_146.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_15_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_288();
    l0 = self.box_StaticBreakableListener_288;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|127323269", "127323269", "UNI51_010_B20", "box_Simple_Node_15.Out", "box_StaticBreakableListener_288.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_431_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_384();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1978135372", "1978135372", "UNI51_010_B20", "box_Simple_Node_431.Out", "box_OutputOrder_v2_384.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_421_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_361();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|902700684", "902700684", "UNI51_010_B20", "box_Simple_Node_421.Out", "box_OutputOrder_v2_361.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_135_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_112();
    l0 = self.box_StaticBreakableListener_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|609439560", "609439560", "UNI51_010_B20", "box_Simple_Node_135.Out", "box_StaticBreakableListener_112.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_StaticBreakableListener_117();
    l0 = self.box_StaticBreakableListener_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1597383254", "1597383254", "UNI51_010_B20", "box_Simple_Node_135.Out", "box_StaticBreakableListener_117.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_StaticBreakableListener_115();
    l0 = self.box_StaticBreakableListener_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1624787883", "1624787883", "UNI51_010_B20", "box_Simple_Node_135.Out", "box_StaticBreakableListener_115.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_StaticBreakableListener_98();
    l0 = self.box_StaticBreakableListener_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2067999800", "2067999800", "UNI51_010_B20", "box_Simple_Node_135.Out", "box_StaticBreakableListener_98.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_StaticBreakableListener_132();
    l0 = self.box_StaticBreakableListener_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|65946955", "65946955", "UNI51_010_B20", "box_Simple_Node_135.Out", "box_StaticBreakableListener_132.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_StaticBreakableListener_113();
    l0 = self.box_StaticBreakableListener_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|925693012", "925693012", "UNI51_010_B20", "box_Simple_Node_135.Out", "box_StaticBreakableListener_113.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_StaticBreakableListener_116();
    l0 = self.box_StaticBreakableListener_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1294975442", "1294975442", "UNI51_010_B20", "box_Simple_Node_135.Out", "box_StaticBreakableListener_116.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_StaticBreakableListener_114();
    l0 = self.box_StaticBreakableListener_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|188335130", "188335130", "UNI51_010_B20", "box_Simple_Node_135.Out", "box_StaticBreakableListener_114.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_StaticBreakableListener_118();
    l0 = self.box_StaticBreakableListener_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|590451380", "590451380", "UNI51_010_B20", "box_Simple_Node_135.Out", "box_StaticBreakableListener_118.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_465_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_205;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|740575029", "740575029", "UNI51_010_B20", "box_Simple_Node_465.Out", "box_CoopActivePlayers_205.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_466_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_457;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|526653070", "526653070", "UNI51_010_B20", "box_Simple_Node_466.Out", "box_CoopActivePlayers_457.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_422_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_388();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|866742998", "866742998", "UNI51_010_B20", "box_Simple_Node_422.Out", "box_OutputOrder_v2_388.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_420_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_330();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1109024669", "1109024669", "UNI51_010_B20", "box_Simple_Node_420.Out", "box_OutputOrder_v2_330.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_144_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_111();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1442735975", "1442735975", "UNI51_010_B20", "box_Simple_Node_144.Out", "box_OutputOrder_v2_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_143_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_100();
    l0 = self.box_SoundModifier_v2_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2401901", "2401901", "UNI51_010_B20", "box_Simple_Node_143.Out", "box_SoundModifier_v2_100.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_136_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_94();
    l0 = self.box_SoundModifier_v2_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1775827736", "1775827736", "UNI51_010_B20", "box_Simple_Node_136.Out", "box_SoundModifier_v2_94.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_141_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_108();
    l0 = self.box_SoundModifier_v2_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2061451480", "2061451480", "UNI51_010_B20", "box_Simple_Node_141.Out", "box_SoundModifier_v2_108.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_142_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_104();
    l0 = self.box_SoundModifier_v2_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2004941704", "2004941704", "UNI51_010_B20", "box_Simple_Node_142.Out", "box_SoundModifier_v2_104.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_170();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|559258753", "559258753", "UNI51_010_B20", "box_Simple_Node_43.Out", "box_ParticleSystem_v3_170.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_44_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_173();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1610505706", "1610505706", "UNI51_010_B20", "box_Simple_Node_44.Out", "box_ParticleSystem_v3_173.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_45_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_177();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|699691523", "699691523", "UNI51_010_B20", "box_Simple_Node_45.Out", "box_ParticleSystem_v3_177.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_46_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_181();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1091542081", "1091542081", "UNI51_010_B20", "box_Simple_Node_46.Out", "box_ParticleSystem_v3_181.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_508_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_467();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|915063958", "915063958", "UNI51_010_B20", "box_Simple_Node_508.Out", "box_OutputOrder_v2_467.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_492;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|569175510", "569175510", "UNI51_010_B20", "box_Simple_Node_508.Out", "box_MultipleOR_492.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_509_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_493;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1512289838", "1512289838", "UNI51_010_B20", "box_Simple_Node_509.Out", "box_MultipleOR_493.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_OutputOrder_v2_480();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1871549518", "1871549518", "UNI51_010_B20", "box_Simple_Node_509.Out", "box_OutputOrder_v2_480.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_505_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_494;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1843419585", "1843419585", "UNI51_010_B20", "box_Simple_Node_505.Out", "box_MultipleOR_494.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_OutputOrder_v2_475();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1946125164", "1946125164", "UNI51_010_B20", "box_Simple_Node_505.Out", "box_OutputOrder_v2_475.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_507_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_495;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1138006538", "1138006538", "UNI51_010_B20", "box_Simple_Node_507.Out", "box_MultipleOR_495.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_OutputOrder_v2_476();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|449679727", "449679727", "UNI51_010_B20", "box_Simple_Node_507.Out", "box_OutputOrder_v2_476.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_502_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_496;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|120709384", "120709384", "UNI51_010_B20", "box_Simple_Node_502.Out", "box_MultipleOR_496.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_OutputOrder_v2_490();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|324883020", "324883020", "UNI51_010_B20", "box_Simple_Node_502.Out", "box_OutputOrder_v2_490.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_510_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_478();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|527649182", "527649182", "UNI51_010_B20", "box_Simple_Node_510.Out", "box_OutputOrder_v2_478.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_497;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2020989250", "2020989250", "UNI51_010_B20", "box_Simple_Node_510.Out", "box_MultipleOR_497.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_504_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_498;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|859332791", "859332791", "UNI51_010_B20", "box_Simple_Node_504.Out", "box_MultipleOR_498.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_OutputOrder_v2_482();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1838362817", "1838362817", "UNI51_010_B20", "box_Simple_Node_504.Out", "box_OutputOrder_v2_482.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_506_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_500;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1091363474", "1091363474", "UNI51_010_B20", "box_Simple_Node_506.Out", "box_MultipleOR_500.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_OutputOrder_v2_471();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|669919426", "669919426", "UNI51_010_B20", "box_Simple_Node_506.Out", "box_OutputOrder_v2_471.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_503_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_489();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1720977334", "1720977334", "UNI51_010_B20", "box_Simple_Node_503.Out", "box_OutputOrder_v2_489.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_501;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|545495505", "545495505", "UNI51_010_B20", "box_Simple_Node_503.Out", "box_MultipleOR_501.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_138_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_99();
    l0 = self.box_SoundModifier_v2_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|63263227", "63263227", "UNI51_010_B20", "box_Simple_Node_138.Out", "box_SoundModifier_v2_99.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_137_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_96();
    l0 = self.box_SoundModifier_v2_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1028596676", "1028596676", "UNI51_010_B20", "box_Simple_Node_137.Out", "box_SoundModifier_v2_96.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_140_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_107();
    l0 = self.box_SoundModifier_v2_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1150499371", "1150499371", "UNI51_010_B20", "box_Simple_Node_140.Out", "box_SoundModifier_v2_107.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_139_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_103();
    l0 = self.box_SoundModifier_v2_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|742785817", "742785817", "UNI51_010_B20", "box_Simple_Node_139.Out", "box_SoundModifier_v2_103.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_423_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_405();
    l0 = self.box_SoundModifier_v2_405;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1080793356", "1080793356", "UNI51_010_B20", "box_Simple_Node_423.Out", "box_SoundModifier_v2_405.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_425_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_407();
    l0 = self.box_SoundModifier_v2_407;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|187503911", "187503911", "UNI51_010_B20", "box_Simple_Node_425.Out", "box_SoundModifier_v2_407.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_426_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_409();
    l0 = self.box_SoundModifier_v2_409;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1567485664", "1567485664", "UNI51_010_B20", "box_Simple_Node_426.Out", "box_SoundModifier_v2_409.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_427_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_411();
    l0 = self.box_SoundModifier_v2_411;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|903054468", "903054468", "UNI51_010_B20", "box_Simple_Node_427.Out", "box_SoundModifier_v2_411.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_424_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_400();
    l0 = self.box_SoundModifier_v2_400;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|687548319", "687548319", "UNI51_010_B20", "box_Simple_Node_424.Out", "box_SoundModifier_v2_400.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_428_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_408();
    l0 = self.box_SoundModifier_v2_408;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1351731640", "1351731640", "UNI51_010_B20", "box_Simple_Node_428.Out", "box_SoundModifier_v2_408.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_429_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_410();
    l0 = self.box_SoundModifier_v2_410;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2033657387", "2033657387", "UNI51_010_B20", "box_Simple_Node_429.Out", "box_SoundModifier_v2_410.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_430_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_412();
    l0 = self.box_SoundModifier_v2_412;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|751019691", "751019691", "UNI51_010_B20", "box_Simple_Node_430.Out", "box_SoundModifier_v2_412.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_295_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_35();
    l0 = self.box_PositionModifier_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1032707279", "1032707279", "UNI51_010_B20", "box_Simple_Node_295.Out", "box_PositionModifier_v2_35.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
    params = self:OnEnter_box_Bind_v4_559();
    l0 = self.box_Bind_v4_559;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2066371204", "2066371204", "UNI51_010_B20", "box_Simple_Node_295.Out", "box_Bind_v4_559.UnBind", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_296_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_168();
    l0 = self.box_Bind_v4_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1953777932", "1953777932", "UNI51_010_B20", "box_Simple_Node_296.Out", "box_Bind_v4_168.UnBind", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
    params = self:OnEnter_box_PositionModifier_v2_24();
    l0 = self.box_PositionModifier_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1131090201", "1131090201", "UNI51_010_B20", "box_Simple_Node_296.Out", "box_PositionModifier_v2_24.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_194_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_186();
    l0 = self.box_Bind_v4_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1016754365", "1016754365", "UNI51_010_B20", "box_Simple_Node_194.Out", "box_Bind_v4_186.UnBind", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
    params = self:OnEnter_box_PositionModifier_v2_57();
    l0 = self.box_PositionModifier_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1730763285", "1730763285", "UNI51_010_B20", "box_Simple_Node_194.Out", "box_PositionModifier_v2_57.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_201_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_50();
    l0 = self.box_PositionModifier_v2_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|826902109", "826902109", "UNI51_010_B20", "box_Simple_Node_201.Out", "box_PositionModifier_v2_50.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
    params = self:OnEnter_box_Bind_v4_166();
    l0 = self.box_Bind_v4_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|151800498", "151800498", "UNI51_010_B20", "box_Simple_Node_201.Out", "box_Bind_v4_166.UnBind", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnBind
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_388_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_374();
    l0 = self.box_SoundModifier_v2_374;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1964204257", "1964204257", "UNI51_010_B20", "box_OutputOrder_v2_388.Out", "box_SoundModifier_v2_374.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_388_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_392();
    l0 = self.box_SoundModifier_v2_392;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1868465511", "1868465511", "UNI51_010_B20", "box_OutputOrder_v2_388.Out", "box_SoundModifier_v2_392.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_388_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_387();
    l0 = self.box_SoundModifier_v2_387;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|678540527", "678540527", "UNI51_010_B20", "box_OutputOrder_v2_388.Out", "box_SoundModifier_v2_387.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_388_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_395();
    l0 = self.box_SoundModifier_v2_395;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1622494569", "1622494569", "UNI51_010_B20", "box_OutputOrder_v2_388.Out", "box_SoundModifier_v2_395.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_450_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_149();
    l0 = self.box_MultipleOR_450;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1116349383", "1116349383", "UNI51_010_B20", "box_MultipleOR_450.Out", "box_IsValueNil_v3_149.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_300_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_272();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1612579377", "1612579377", "UNI51_010_B20", "box_IsEntityLoaded_v3_300.True", "box_StaticBreakableBreaker_272.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_245_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_294();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1518712903", "1518712903", "UNI51_010_B20", "box_ActivityObjectiveMarkerModifier_v3_245.Disabled", "box_OutputOrder_v2_294.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_14_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_442();
    l0 = self.box_MultipleAND_v2_442;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1066435109", "1066435109", "UNI51_010_B20", "box_IsEntityLoaded_v3_14.True", "box_MultipleAND_v2_442.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_ProximityTrigger_v2_383_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_381();
    l0 = self.box_ProximityTrigger_v2_383;
    l1 = self.box_SoundModifier_v2_381;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2092851304", "2092851304", "UNI51_010_B20", "box_ProximityTrigger_v2_383.Enter", "box_SoundModifier_v2_381.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_492_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_336();
    l0 = self.box_MultipleOR_492;
    l1 = self.box_ProximityTrigger_v2_336;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|518348647", "518348647", "UNI51_010_B20", "box_MultipleOR_492.Out", "box_ProximityTrigger_v2_336.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_307_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_301();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1388989399", "1388989399", "UNI51_010_B20", "box_IsEntityLoaded_v3_307.True", "box_StaticBreakableBreaker_301.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_538_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_537();
    l0 = self.box_MetaBreakableModifier_v2_538;
    l1 = self.box_MetaBreakableModifier_v2_537;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|988226821", "988226821", "UNI51_010_B20", "box_MetaBreakableModifier_v2_538.OnSetUnDamageable", "box_MetaBreakableModifier_v2_537.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_RemoveEntity_v2_567_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_585();
    l0 = self.box_RemoveEntity_v2_567;
    l1 = self.box_RemoveEntity_v2_585;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|14901187", "14901187", "UNI51_010_B20", "box_RemoveEntity_v2_567.Out", "box_RemoveEntity_v2_585.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_213_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_299();
    l0 = self.box_MultipleOR_213;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|476978368", "476978368", "UNI51_010_B20", "box_MultipleOR_213.Out", "box_OutputOrder_v2_299.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_49_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_228();
    l0 = self.box_StaticBreakableListener_49;
    l1 = self.box_StaticBreakableListener_228;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|575963824", "575963824", "UNI51_010_B20", "box_StaticBreakableListener_49.Enabled", "box_StaticBreakableListener_228.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_49_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_49;
    l1 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1878160792", "1878160792", "UNI51_010_B20", "box_StaticBreakableListener_49.OnBreak", "box_MultipleOR_65.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SoundModifier_v2_381_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_380();
    l0 = self.box_SoundModifier_v2_381;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2118896741", "2118896741", "UNI51_010_B20", "box_SoundModifier_v2_381.Started", "box_OutputOrder_v2_380.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_107_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_109();
    l0 = self.box_SoundModifier_v2_107;
    l1 = self.box_SoundModifier_v2_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1289682407", "1289682407", "UNI51_010_B20", "box_SoundModifier_v2_107.Started", "box_SoundModifier_v2_109.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_572_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_556();
    l0 = self.box_EntityStatusListener_572;
    l1 = self.box_Bind_v4_556;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|83790607", "83790607", "UNI51_010_B20", "box_EntityStatusListener_572.Loaded", "box_Bind_v4_556.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_MetaBreakableModifier_v2_533_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_534();
    l0 = self.box_MetaBreakableModifier_v2_533;
    l1 = self.box_MetaBreakableModifier_v2_534;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|662479279", "662479279", "UNI51_010_B20", "box_MetaBreakableModifier_v2_533.OnSetUnDamageable", "box_MetaBreakableModifier_v2_534.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2078311194", "2078311194", "UNI51_010_B20", "box_OutputOrder_v2_23.Out", "box_MultipleOR_41.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1685186260", "1685186260", "UNI51_010_B20", "box_OutputOrder_v2_23.Out", "box_Simple_Node_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_281_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_11();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1314642853", "1314642853", "UNI51_010_B20", "box_OutputOrder_v2_281.Out", "box_IsEntityLoaded_v3_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_281_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_292();
    l0 = self.box_Delay_v5_292;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1301074737", "1301074737", "UNI51_010_B20", "box_OutputOrder_v2_281.Out", "box_Delay_v5_292.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_237_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_229();
    l0 = self.box_MultipleOR_237;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1714459875", "1714459875", "UNI51_010_B20", "box_MultipleOR_237.Out", "box_IntegerArithmetics_v2_229.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_199_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_158();
    l0 = self.box_Bind_v4_199;
    l1 = self.box_Bind_v4_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1303008265", "1303008265", "UNI51_010_B20", "box_Bind_v4_199.Bound", "box_Bind_v4_158.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_21_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_280();
    l0 = self.box_SpawnAI_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1848102215", "1848102215", "UNI51_010_B20", "box_SpawnAI_21.Spawned", "box_OutputOrder_v2_280.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_111_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1948925468", "1948925468", "UNI51_010_B20", "box_OutputOrder_v2_111.Out", "box_Simple_Node_136.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_111_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_143();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1259350538", "1259350538", "UNI51_010_B20", "box_OutputOrder_v2_111.Out", "box_Simple_Node_143.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_111_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_142();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1464388442", "1464388442", "UNI51_010_B20", "box_OutputOrder_v2_111.Out", "box_Simple_Node_142.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_111_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_141();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1876621659", "1876621659", "UNI51_010_B20", "box_OutputOrder_v2_111.Out", "box_Simple_Node_141.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_111_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_422();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|999807182", "999807182", "UNI51_010_B20", "box_OutputOrder_v2_111.Out", "box_Simple_Node_422.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_111_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_431();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1858370478", "1858370478", "UNI51_010_B20", "box_OutputOrder_v2_111.Out", "box_Simple_Node_431.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_319_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_315();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|73994887", "73994887", "UNI51_010_B20", "box_IsEntityLoaded_v3_319.True", "box_StaticBreakableBreaker_315.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_189_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_225();
    l0 = self.box_PositionModifier_v2_189;
    l1 = self.box_PositionModifier_v2_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|908932597", "908932597", "UNI51_010_B20", "box_PositionModifier_v2_189.StartOut", "box_PositionModifier_v2_225.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_294_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_253;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2120951832", "2120951832", "UNI51_010_B20", "box_OutputOrder_v2_294.Out", "box_MultipleOR_253.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_294_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_295();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1759497529", "1759497529", "UNI51_010_B20", "box_OutputOrder_v2_294.Out", "box_Simple_Node_295.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_437_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_438();
    l0 = self.box_MultipleAND_v2_438;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1697500169", "1697500169", "UNI51_010_B20", "box_IsEntityLoaded_v3_437.True", "box_MultipleAND_v2_438.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MetaBreakableModifier_v2_526_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_527();
    l0 = self.box_MetaBreakableModifier_v2_526;
    l1 = self.box_MetaBreakableModifier_v2_527;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1453320903", "1453320903", "UNI51_010_B20", "box_MetaBreakableModifier_v2_526.OnSetUnDamageable", "box_MetaBreakableModifier_v2_527.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_MetaBreakableModifier_v2_530_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_531();
    l0 = self.box_MetaBreakableModifier_v2_530;
    l1 = self.box_MetaBreakableModifier_v2_531;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|851867539", "851867539", "UNI51_010_B20", "box_MetaBreakableModifier_v2_530.OnSetUnDamageable", "box_MetaBreakableModifier_v2_531.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_204_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_344();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1555299560", "1555299560", "UNI51_010_B20", "box_OutputOrder_v2_204.Out", "box_OutputOrder_v2_344.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_330_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_328();
    l0 = self.box_SoundModifier_v2_328;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1027114167", "1027114167", "UNI51_010_B20", "box_OutputOrder_v2_330.Out", "box_SoundModifier_v2_328.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_330_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_331();
    l0 = self.box_SoundModifier_v2_331;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|818844486", "818844486", "UNI51_010_B20", "box_OutputOrder_v2_330.Out", "box_SoundModifier_v2_331.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_330_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_332();
    l0 = self.box_SoundModifier_v2_332;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1776705522", "1776705522", "UNI51_010_B20", "box_OutputOrder_v2_330.Out", "box_SoundModifier_v2_332.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_330_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_329();
    l0 = self.box_SoundModifier_v2_329;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1029685437", "1029685437", "UNI51_010_B20", "box_OutputOrder_v2_330.Out", "box_SoundModifier_v2_329.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_330_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_333();
    l0 = self.box_SoundModifier_v2_333;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1114054606", "1114054606", "UNI51_010_B20", "box_OutputOrder_v2_330.Out", "box_SoundModifier_v2_333.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_58_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_417();
    l0 = self.box_PositionModifier_v2_58;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1106440190", "1106440190", "UNI51_010_B20", "box_PositionModifier_v2_58.Done", "box_OutputOrder_v2_417.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_563_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_564();
    l0 = self.box_RemoveEntity_v2_563;
    l1 = self.box_RemoveEntity_v2_564;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|436421605", "436421605", "UNI51_010_B20", "box_RemoveEntity_v2_563.Out", "box_RemoveEntity_v2_564.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_12_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_438();
    l0 = self.box_MultipleAND_v2_438;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|477217428", "477217428", "UNI51_010_B20", "box_IsEntityLoaded_v3_12.True", "box_MultipleAND_v2_438.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_WieldInventory_v5_452_Drawn()
    local l0, l1;
    l0 = self.box_WieldInventory_v5_452;
    l1 = self.box_MultipleOR_450;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|500067751", "500067751", "UNI51_010_B20", "box_WieldInventory_v5_452.Drawn", "box_MultipleOR_450.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EndActivityObjective_v2_210_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_29();
    l0 = self.box_HealthListener_v6_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1603112152", "1603112152", "UNI51_010_B20", "box_EndActivityObjective_v2_210.Out", "box_HealthListener_v6_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Bind_v4_187_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_200();
    l0 = self.box_Bind_v4_187;
    l1 = self.box_Bind_v4_200;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1368449173", "1368449173", "UNI51_010_B20", "box_Bind_v4_187.Bound", "box_Bind_v4_200.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_78_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_237;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|968576096", "968576096", "UNI51_010_B20", "box_ActivityObjectiveMarkerModifier_v3_78.Disabled", "box_MultipleOR_237.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UNI51_EquipWeapon_343_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_204();
    l0 = self.box_UNI51_EquipWeapon_343;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|472430750", "472430750", "UNI51_010_B20", "box_UNI51_EquipWeapon_343.Done", "box_OutputOrder_v2_204.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_532_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_533();
    l0 = self.box_MetaBreakableModifier_v2_532;
    l1 = self.box_MetaBreakableModifier_v2_533;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1791133805", "1791133805", "UNI51_010_B20", "box_MetaBreakableModifier_v2_532.OnSetUnDamageable", "box_MetaBreakableModifier_v2_533.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_WieldInventory_v5_446_Drawn()
    local l0, l1;
    l0 = self.box_WieldInventory_v5_446;
    l1 = self.box_MultipleOR_447;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|429453599", "429453599", "UNI51_010_B20", "box_WieldInventory_v5_446.Drawn", "box_MultipleOR_447.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GunsForHireSystemModifier_265_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_3();
    l0 = self.box_GunsForHireSystemModifier_265;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1016690812", "1016690812", "UNI51_010_B20", "box_GunsForHireSystemModifier_265.Enabled", "box_ActivityRetry_3.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_88_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_88;
    l1 = self.box_OnceOnly_v3_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|331559417", "331559417", "UNI51_010_B20", "box_MultipleOR_88.Out", "box_OnceOnly_v3_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_233_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_275();
    l0 = self.box_Delay_v5_233;
    l1 = self.box_RestrictedItemModifier_275;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|359345452", "359345452", "UNI51_010_B20", "box_Delay_v5_233.TimeElapsed", "box_RestrictedItemModifier_275.Clear", l0:GetLuaBox(), l1:GetLuaBox());
    -- Clear
    l1:Exec(1, params);
end;

function export:f_box_Bind_v4_559_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_154();
    l0 = self.box_Bind_v4_559;
    l1 = self.box_Bind_v4_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|235889599", "235889599", "UNI51_010_B20", "box_Bind_v4_559.Bound", "box_Bind_v4_154.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_559_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_154();
    l0 = self.box_Bind_v4_559;
    l1 = self.box_Bind_v4_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1128042852", "1128042852", "UNI51_010_B20", "box_Bind_v4_559.UnBound", "box_Bind_v4_154.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_228_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_38();
    l0 = self.box_StaticBreakableListener_228;
    l1 = self.box_StaticBreakableListener_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1049058367", "1049058367", "UNI51_010_B20", "box_StaticBreakableListener_228.Enabled", "box_StaticBreakableListener_38.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_228_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_228;
    l1 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|124831710", "124831710", "UNI51_010_B20", "box_StaticBreakableListener_228.OnBreak", "box_MultipleOR_88.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1782174712", "1782174712", "UNI51_010_B20", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1336561839", "1336561839", "UNI51_010_B20", "box_ActivityAcknowledgeGate_1.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PositionModifier_v2_267_Done()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_18();
    l0 = self.box_PositionModifier_v2_267;
    l1 = self.box_RemoveEntity_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1448782670", "1448782670", "UNI51_010_B20", "box_PositionModifier_v2_267.Done", "box_RemoveEntity_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_267_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_539();
    l0 = self.box_PositionModifier_v2_267;
    l1 = self.box_MetaBreakableModifier_v2_539;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1159107432", "1159107432", "UNI51_010_B20", "box_PositionModifier_v2_267.StartOut", "box_MetaBreakableModifier_v2_539.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_MetaBreakableModifier_v2_536_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_538();
    l0 = self.box_MetaBreakableModifier_v2_536;
    l1 = self.box_MetaBreakableModifier_v2_538;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|231712646", "231712646", "UNI51_010_B20", "box_MetaBreakableModifier_v2_536.OnSetUnDamageable", "box_MetaBreakableModifier_v2_538.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_StaticBreakableListener_242_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_215();
    l0 = self.box_StaticBreakableListener_242;
    l1 = self.box_StaticBreakableListener_215;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1980608362", "1980608362", "UNI51_010_B20", "box_StaticBreakableListener_242.Enabled", "box_StaticBreakableListener_215.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_242_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_242;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1413066459", "1413066459", "UNI51_010_B20", "box_StaticBreakableListener_242.OnBreak", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RemoveEntity_v2_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_25();
    l0 = self.box_RemoveEntity_v2_18;
    l1 = self.box_RemoveEntity_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1461718782", "1461718782", "UNI51_010_B20", "box_RemoveEntity_v2_18.Out", "box_RemoveEntity_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_248_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_258();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|38670213", "38670213", "UNI51_010_B20", "box_ActivityObjectiveMarkerModifier_v3_248.Enabled", "box_ActivityObjectiveMarkerModifier_v3_258.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_104_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_106();
    l0 = self.box_SoundModifier_v2_104;
    l1 = self.box_SoundModifier_v2_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|643777730", "643777730", "UNI51_010_B20", "box_SoundModifier_v2_104.Started", "box_SoundModifier_v2_106.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_226_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_221();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1871283604", "1871283604", "UNI51_010_B20", "box_OutputOrder_v2_226.Out", "box_ActivityObjectiveMarkerModifier_v3_221.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_226_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_13();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1061153418", "1061153418", "UNI51_010_B20", "box_OutputOrder_v2_226.Out", "box_IsEntityLoaded_v3_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_226_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_440();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1659433248", "1659433248", "UNI51_010_B20", "box_OutputOrder_v2_226.Out", "box_IsEntityLoaded_v3_440.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_580_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_584;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|952854268", "952854268", "UNI51_010_B20", "box_IsEntityLoaded_v3_580.False", "box_MultipleOR_584.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_IsEntityLoaded_v3_580_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_578();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|743984288", "743984288", "UNI51_010_B20", "box_IsEntityLoaded_v3_580.True", "box_IsEntityLoaded_v3_578.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_378_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_376();
    l0 = self.box_SoundModifier_v2_378;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2093821023", "2093821023", "UNI51_010_B20", "box_SoundModifier_v2_378.Started", "box_OutputOrder_v2_376.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_517_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RestrictedItemModifier_279();
    l0 = self.box_RestrictedItemModifier_279;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|339320541", "339320541", "UNI51_010_B20", "box_EndActivityObjective_v2_517.Out", "box_RestrictedItemModifier_279.Clear", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clear
    l0:Exec(1, params);
end;

function export:f_box_MetaBreakableModifier_v2_550_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_545();
    l0 = self.box_MetaBreakableModifier_v2_550;
    l1 = self.box_MetaBreakableModifier_v2_545;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|544627395", "544627395", "UNI51_010_B20", "box_MetaBreakableModifier_v2_550.OnSetDamageable", "box_MetaBreakableModifier_v2_545.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_258_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_16();
    l0 = self.box_PositionModifier_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|66294489", "66294489", "UNI51_010_B20", "box_ActivityObjectiveMarkerModifier_v3_258.Enabled", "box_PositionModifier_v2_16.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_345_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_358();
    l0 = self.box_SoundModifier_v2_345;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1236540640", "1236540640", "UNI51_010_B20", "box_SoundModifier_v2_345.Started", "box_OutputOrder_v2_358.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_191_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_165();
    l0 = self.box_Bind_v4_191;
    l1 = self.box_Bind_v4_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1125306354", "1125306354", "UNI51_010_B20", "box_Bind_v4_191.Bound", "box_Bind_v4_165.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_285_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_523();
    l0 = self.box_StaticBreakableListener_285;
    l1 = self.box_MetaBreakableModifier_v2_523;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1752702681", "1752702681", "UNI51_010_B20", "box_StaticBreakableListener_285.Enabled", "box_MetaBreakableModifier_v2_523.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_StaticBreakableListener_285_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_285;
    l1 = self.box_MultipleOR_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1695720803", "1695720803", "UNI51_010_B20", "box_StaticBreakableListener_285.OnBreak", "box_MultipleOR_291.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_PositionModifier_v2_54_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_189();
    l0 = self.box_PositionModifier_v2_54;
    l1 = self.box_PositionModifier_v2_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|878333821", "878333821", "UNI51_010_B20", "box_PositionModifier_v2_54.StartOut", "box_PositionModifier_v2_189.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Bind_v4_155_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_186();
    l0 = self.box_Bind_v4_155;
    l1 = self.box_Bind_v4_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1760515902", "1760515902", "UNI51_010_B20", "box_Bind_v4_155.Bound", "box_Bind_v4_186.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_200_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_560();
    l0 = self.box_Bind_v4_200;
    l1 = self.box_Bind_v4_560;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1362212864", "1362212864", "UNI51_010_B20", "box_Bind_v4_200.Bound", "box_Bind_v4_560.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_75_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_74();
    l0 = self.box_Bind_v4_75;
    l1 = self.box_Bind_v4_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1584275370", "1584275370", "UNI51_010_B20", "box_Bind_v4_75.Bound", "box_Bind_v4_74.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_MetaBreakableModifier_v2_553_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_554();
    l0 = self.box_MetaBreakableModifier_v2_553;
    l1 = self.box_MetaBreakableModifier_v2_554;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|489701809", "489701809", "UNI51_010_B20", "box_MetaBreakableModifier_v2_553.OnSetDamageable", "box_MetaBreakableModifier_v2_554.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_186_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_196();
    l0 = self.box_Bind_v4_186;
    l1 = self.box_Bind_v4_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|115930375", "115930375", "UNI51_010_B20", "box_Bind_v4_186.Bound", "box_Bind_v4_196.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_186_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_196();
    l0 = self.box_Bind_v4_186;
    l1 = self.box_Bind_v4_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1237954116", "1237954116", "UNI51_010_B20", "box_Bind_v4_186.UnBound", "box_Bind_v4_196.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_513_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_518();
    l0 = self.box_MultipleAND_v2_518;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1431089357", "1431089357", "UNI51_010_B20", "box_ActivityObjectiveMarkerModifier_v3_513.Disabled", "box_MultipleAND_v2_518.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Bind_v4_161_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_193();
    l0 = self.box_Bind_v4_161;
    l1 = self.box_Bind_v4_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1899315061", "1899315061", "UNI51_010_B20", "box_Bind_v4_161.Bound", "box_Bind_v4_193.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_161_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_193();
    l0 = self.box_Bind_v4_161;
    l1 = self.box_Bind_v4_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1724258366", "1724258366", "UNI51_010_B20", "box_Bind_v4_161.UnBound", "box_Bind_v4_193.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_36_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_414();
    l0 = self.box_PositionModifier_v2_36;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|267021771", "267021771", "UNI51_010_B20", "box_PositionModifier_v2_36.Done", "box_OutputOrder_v2_414.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_26_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_17();
    l0 = self.box_PositionModifier_v2_26;
    l1 = self.box_PositionModifier_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1385637024", "1385637024", "UNI51_010_B20", "box_PositionModifier_v2_26.StartOut", "box_PositionModifier_v2_17.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_SetActivityObjectiveProgress_v2_240_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_247();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1183142679", "1183142679", "UNI51_010_B20", "box_SetActivityObjectiveProgress_v2_240.Out", "box_Compare_Integers_247.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_168_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_197();
    l0 = self.box_Bind_v4_168;
    l1 = self.box_Bind_v4_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|103597863", "103597863", "UNI51_010_B20", "box_Bind_v4_168.Bound", "box_Bind_v4_197.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_168_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_197();
    l0 = self.box_Bind_v4_168;
    l1 = self.box_Bind_v4_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1493995967", "1493995967", "UNI51_010_B20", "box_Bind_v4_168.UnBound", "box_Bind_v4_197.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_516_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_518();
    l0 = self.box_MultipleAND_v2_518;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1604347358", "1604347358", "UNI51_010_B20", "box_ActivityObjectiveMarkerModifier_v3_516.Disabled", "box_MultipleAND_v2_518.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_ProximityTrigger_v2_347_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_339();
    l0 = self.box_ProximityTrigger_v2_347;
    l1 = self.box_SoundModifier_v2_339;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|941677654", "941677654", "UNI51_010_B20", "box_ProximityTrigger_v2_347.Enter", "box_SoundModifier_v2_339.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_336_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_334();
    l0 = self.box_ProximityTrigger_v2_336;
    l1 = self.box_SoundModifier_v2_334;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|137693029", "137693029", "UNI51_010_B20", "box_ProximityTrigger_v2_336.Enter", "box_SoundModifier_v2_334.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MetaBreakableModifier_v2_546_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_550();
    l0 = self.box_MetaBreakableModifier_v2_546;
    l1 = self.box_MetaBreakableModifier_v2_550;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2017562879", "2017562879", "UNI51_010_B20", "box_MetaBreakableModifier_v2_546.OnSetDamageable", "box_MetaBreakableModifier_v2_550.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_354_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_493;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1497672116", "1497672116", "UNI51_010_B20", "box_OutputOrder_v2_354.Out", "box_MultipleOR_493.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_354_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_359();
    l0 = self.box_SoundModifier_v2_359;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1982253166", "1982253166", "UNI51_010_B20", "box_OutputOrder_v2_354.Out", "box_SoundModifier_v2_359.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_238_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_78();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1236808919", "1236808919", "UNI51_010_B20", "box_OutputOrder_v2_238.Out", "box_ActivityObjectiveMarkerModifier_v3_78.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_238_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_12();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1481348320", "1481348320", "UNI51_010_B20", "box_OutputOrder_v2_238.Out", "box_IsEntityLoaded_v3_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_238_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_437();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|967351758", "967351758", "UNI51_010_B20", "box_OutputOrder_v2_238.Out", "box_IsEntityLoaded_v3_437.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_115_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_372();
    l0 = self.box_StaticBreakableListener_115;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|40307442", "40307442", "UNI51_010_B20", "box_StaticBreakableListener_115.OnBreak", "box_OutputOrder_v2_372.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_273_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_274();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|322112002", "322112002", "UNI51_010_B20", "box_IsEntityLoaded_v3_273.True", "box_StaticBreakableBreaker_274.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_542_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_551();
    l0 = self.box_MetaBreakableModifier_v2_542;
    l1 = self.box_MetaBreakableModifier_v2_551;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1691815337", "1691815337", "UNI51_010_B20", "box_MetaBreakableModifier_v2_542.OnSetDamageable", "box_MetaBreakableModifier_v2_551.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_389_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_390();
    l0 = self.box_ProximityTrigger_v2_389;
    l1 = self.box_SoundModifier_v2_390;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1025659005", "1025659005", "UNI51_010_B20", "box_ProximityTrigger_v2_389.Enter", "box_SoundModifier_v2_390.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_38_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_232();
    l0 = self.box_StaticBreakableListener_38;
    l1 = self.box_StaticBreakableListener_232;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1365311819", "1365311819", "UNI51_010_B20", "box_StaticBreakableListener_38.Enabled", "box_StaticBreakableListener_232.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_38_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_38;
    l1 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1986492568", "1986492568", "UNI51_010_B20", "box_StaticBreakableListener_38.OnBreak", "box_MultipleOR_88.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_260();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1750622217", "1750622217", "UNI51_010_B20", "box_OutputOrder_v2_51.Out", "box_AddActivityObjective_v2_260.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1323781867", "1323781867", "UNI51_010_B20", "box_OutputOrder_v2_51.Out", "box_OutputOrder_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_442_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_230();
    l0 = self.box_MultipleAND_v2_442;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|424888879", "424888879", "UNI51_010_B20", "box_MultipleAND_v2_442.Out", "box_ActivityObjectiveMarkerModifier_v3_230.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_202_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_466();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|970901140", "970901140", "UNI51_010_B20", "box_OutputOrder_v2_202.Out", "box_Simple_Node_466.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_202_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI51_EquipWeapon_341();
    l0 = self.box_UNI51_EquipWeapon_341;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2100475485", "2100475485", "UNI51_010_B20", "box_OutputOrder_v2_202.Out", "box_UNI51_EquipWeapon_341.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_225_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_246();
    l0 = self.box_PositionModifier_v2_225;
    l1 = self.box_PositionModifier_v2_246;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1007315519", "1007315519", "UNI51_010_B20", "box_PositionModifier_v2_225.StartOut", "box_PositionModifier_v2_246.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_393_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_497;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1513673038", "1513673038", "UNI51_010_B20", "box_OutputOrder_v2_393.Out", "box_MultipleOR_497.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_393_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_382();
    l0 = self.box_SoundModifier_v2_382;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1033211864", "1033211864", "UNI51_010_B20", "box_OutputOrder_v2_393.Out", "box_SoundModifier_v2_382.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Compare_Strings_33_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_82();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|363668772", "363668772", "UNI51_010_B20", "box_Compare_Strings_33.A_neq_B", "box_Compare_Strings_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_247_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_261();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|87903440", "87903440", "UNI51_010_B20", "box_Compare_Integers_247.A_ge_B", "box_EndActivityObjective_v2_261.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_334_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_362();
    l0 = self.box_SoundModifier_v2_334;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|964219931", "964219931", "UNI51_010_B20", "box_SoundModifier_v2_334.Started", "box_OutputOrder_v2_362.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_340_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_338();
    l0 = self.box_ProximityTrigger_v2_340;
    l1 = self.box_SoundModifier_v2_338;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|439932728", "439932728", "UNI51_010_B20", "box_ProximityTrigger_v2_340.Enter", "box_SoundModifier_v2_338.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_156_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_559();
    l0 = self.box_Bind_v4_156;
    l1 = self.box_Bind_v4_559;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|204722329", "204722329", "UNI51_010_B20", "box_Bind_v4_156.Bound", "box_Bind_v4_559.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_401_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_402();
    l0 = self.box_SoundModifier_v2_401;
    l1 = self.box_SoundModifier_v2_402;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1794830033", "1794830033", "UNI51_010_B20", "box_SoundModifier_v2_401.Started", "box_SoundModifier_v2_402.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_241_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_214();
    l0 = self.box_StaticBreakableListener_241;
    l1 = self.box_StaticBreakableListener_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|221434101", "221434101", "UNI51_010_B20", "box_StaticBreakableListener_241.Enabled", "box_StaticBreakableListener_214.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_241_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_241;
    l1 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2082056094", "2082056094", "UNI51_010_B20", "box_StaticBreakableListener_241.OnBreak", "box_MultipleOR_218.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StaticBreakableListener_112_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_128();
    l0 = self.box_StaticBreakableListener_112;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1004587563", "1004587563", "UNI51_010_B20", "box_StaticBreakableListener_112.OnBreak", "box_OutputOrder_v2_128.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_384_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_377();
    l0 = self.box_ProximityTrigger_v2_377;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2077734637", "2077734637", "UNI51_010_B20", "box_OutputOrder_v2_384.Out", "box_ProximityTrigger_v2_377.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_384_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_389();
    l0 = self.box_ProximityTrigger_v2_389;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2026729655", "2026729655", "UNI51_010_B20", "box_OutputOrder_v2_384.Out", "box_ProximityTrigger_v2_389.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_384_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_383();
    l0 = self.box_ProximityTrigger_v2_383;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|82572418", "82572418", "UNI51_010_B20", "box_OutputOrder_v2_384.Out", "box_ProximityTrigger_v2_383.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_384_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_499();
    l0 = self.box_ProximityTrigger_v2_499;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|587536764", "587536764", "UNI51_010_B20", "box_OutputOrder_v2_384.Out", "box_ProximityTrigger_v2_499.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_441_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_442();
    l0 = self.box_MultipleAND_v2_442;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1239693110", "1239693110", "UNI51_010_B20", "box_IsEntityLoaded_v3_441.True", "box_MultipleAND_v2_442.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_PositionModifier_v2_52_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_418();
    l0 = self.box_PositionModifier_v2_52;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|455536475", "455536475", "UNI51_010_B20", "box_PositionModifier_v2_52.Done", "box_OutputOrder_v2_418.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_291_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_290();
    l0 = self.box_MultipleOR_291;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|411257253", "411257253", "UNI51_010_B20", "box_MultipleOR_291.Out", "box_ActivityRetry_290.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_575_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_584;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|395845320", "395845320", "UNI51_010_B20", "box_IsEntityLoaded_v3_575.False", "box_MultipleOR_584.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_IsEntityLoaded_v3_575_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_576();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|935943818", "935943818", "UNI51_010_B20", "box_IsEntityLoaded_v3_575.True", "box_IsEntityLoaded_v3_576.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_288_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_287();
    l0 = self.box_StaticBreakableListener_288;
    l1 = self.box_StaticBreakableListener_287;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1364529469", "1364529469", "UNI51_010_B20", "box_StaticBreakableListener_288.Disabled", "box_StaticBreakableListener_287.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_288_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_287();
    l0 = self.box_StaticBreakableListener_288;
    l1 = self.box_StaticBreakableListener_287;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2122351475", "2122351475", "UNI51_010_B20", "box_StaticBreakableListener_288.Enabled", "box_StaticBreakableListener_287.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_288_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_288;
    l1 = self.box_MultipleOR_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|423616062", "423616062", "UNI51_010_B20", "box_StaticBreakableListener_288.OnBreak", "box_MultipleOR_291.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_170_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_169();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|920361810", "920361810", "UNI51_010_B20", "box_ParticleSystem_v3_170.Started", "box_ParticleSystem_v3_169.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_170_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_169();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|289673590", "289673590", "UNI51_010_B20", "box_ParticleSystem_v3_170.Stopped", "box_ParticleSystem_v3_169.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_576_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_584;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|992947134", "992947134", "UNI51_010_B20", "box_IsEntityLoaded_v3_576.False", "box_MultipleOR_584.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_IsEntityLoaded_v3_576_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_577();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|884408469", "884408469", "UNI51_010_B20", "box_IsEntityLoaded_v3_576.True", "box_IsEntityLoaded_v3_577.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_440_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_439();
    l0 = self.box_MultipleAND_v2_439;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|592678913", "592678913", "UNI51_010_B20", "box_IsEntityLoaded_v3_440.True", "box_MultipleAND_v2_439.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_IsEntityLoaded_v3_435_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_436();
    l0 = self.box_MultipleAND_v2_436;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1225653590", "1225653590", "UNI51_010_B20", "box_IsEntityLoaded_v3_435.True", "box_MultipleAND_v2_436.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_417_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|339096682", "339096682", "UNI51_010_B20", "box_OutputOrder_v2_417.Out", "box_MultipleOR_56.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_417_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_429();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1117117327", "1117117327", "UNI51_010_B20", "box_OutputOrder_v2_417.Out", "box_Simple_Node_429.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_130_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_140();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1299102172", "1299102172", "UNI51_010_B20", "box_OutputOrder_v2_130.Out", "box_Simple_Node_140.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_130_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_126();
    l0 = self.box_SoundModifier_v2_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|932616891", "932616891", "UNI51_010_B20", "box_OutputOrder_v2_130.Out", "box_SoundModifier_v2_126.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_130_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_181();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|23468237", "23468237", "UNI51_010_B20", "box_OutputOrder_v2_130.Out", "box_ParticleSystem_v3_181.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_130_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_403();
    l0 = self.box_SoundModifier_v2_403;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2025130126", "2025130126", "UNI51_010_B20", "box_OutputOrder_v2_130.Out", "box_SoundModifier_v2_403.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_130_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_503();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1194277475", "1194277475", "UNI51_010_B20", "box_OutputOrder_v2_130.Out", "box_Simple_Node_503.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_475_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_487();
    l0 = self.box_SoundModifier_v2_487;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|78514403", "78514403", "UNI51_010_B20", "box_OutputOrder_v2_475.Out", "box_SoundModifier_v2_487.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_475_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_484();
    l0 = self.box_SoundModifier_v2_484;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|911011997", "911011997", "UNI51_010_B20", "box_OutputOrder_v2_475.Out", "box_SoundModifier_v2_484.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_RestrictedItemModifier_275_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_449();
    l0 = self.box_RestrictedItemModifier_275;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|249448870", "249448870", "UNI51_010_B20", "box_RestrictedItemModifier_275.Out", "box_OutputOrder_v2_449.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_578_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_584;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|517281321", "517281321", "UNI51_010_B20", "box_IsEntityLoaded_v3_578.False", "box_MultipleOR_584.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_IsEntityLoaded_v3_578_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_579();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1807257825", "1807257825", "UNI51_010_B20", "box_IsEntityLoaded_v3_578.True", "box_IsEntityLoaded_v3_579.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_127_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_139();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|580448029", "580448029", "UNI51_010_B20", "box_OutputOrder_v2_127.Out", "box_Simple_Node_139.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_127_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_123();
    l0 = self.box_SoundModifier_v2_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|750152775", "750152775", "UNI51_010_B20", "box_OutputOrder_v2_127.Out", "box_SoundModifier_v2_123.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_127_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_170();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1963133778", "1963133778", "UNI51_010_B20", "box_OutputOrder_v2_127.Out", "box_ParticleSystem_v3_170.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_127_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_396();
    l0 = self.box_SoundModifier_v2_396;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|601704046", "601704046", "UNI51_010_B20", "box_OutputOrder_v2_127.Out", "box_SoundModifier_v2_396.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_127_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_510();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2065136718", "2065136718", "UNI51_010_B20", "box_OutputOrder_v2_127.Out", "box_Simple_Node_510.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_344_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_145();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|3389718", "3389718", "UNI51_010_B20", "box_OutputOrder_v2_344.Out", "box_OutputOrder_v2_145.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_344_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_15();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|938457490", "938457490", "UNI51_010_B20", "box_OutputOrder_v2_344.Out", "box_Simple_Node_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RestrictedItemModifier_279_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_147();
    l0 = self.box_RestrictedItemModifier_279;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|292312591", "292312591", "UNI51_010_B20", "box_RestrictedItemModifier_279.Out", "box_OutputOrder_v2_147.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|390145413", "390145413", "UNI51_010_B20", "box_OutputOrder_v2_42.Out", "box_MultipleOR_56.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_45();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1881401628", "1881401628", "UNI51_010_B20", "box_OutputOrder_v2_42.Out", "box_Simple_Node_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_39_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_39;
    l1 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|620563344", "620563344", "UNI51_010_B20", "box_StaticBreakableListener_39.OnBreak", "box_MultipleOR_90.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MetaBreakableModifier_v2_541_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_544();
    l0 = self.box_MetaBreakableModifier_v2_541;
    l1 = self.box_MetaBreakableModifier_v2_544;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1066647241", "1066647241", "UNI51_010_B20", "box_MetaBreakableModifier_v2_541.OnSetDamageable", "box_MetaBreakableModifier_v2_544.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_AddActivityObjective_v2_260_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_264();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|537892532", "537892532", "UNI51_010_B20", "box_AddActivityObjective_v2_260.Out", "box_AddActivityObjectiveProgress_v2_264.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_280_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_212();
    l0 = self.box_HealthListener_v6_212;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|182635719", "182635719", "UNI51_010_B20", "box_OutputOrder_v2_280.Out", "box_HealthListener_v6_212.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_280_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_521();
    l0 = self.box_Bind_v4_521;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1258818185", "1258818185", "UNI51_010_B20", "box_OutputOrder_v2_280.Out", "box_Bind_v4_521.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_Bind_v4_555_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_168();
    l0 = self.box_Bind_v4_555;
    l1 = self.box_Bind_v4_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1899184270", "1899184270", "UNI51_010_B20", "box_Bind_v4_555.Bound", "box_Bind_v4_168.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_568_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_160();
    l0 = self.box_EntityStatusListener_568;
    l1 = self.box_Bind_v4_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|181679989", "181679989", "UNI51_010_B20", "box_EntityStatusListener_568.Loaded", "box_Bind_v4_160.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_AddActivityObjectiveProgress_v2_264_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_264_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_249();
    l0 = self.box_StaticBreakableListener_249;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1928227283", "1928227283", "UNI51_010_B20", "box_AddActivityObjectiveProgress_v2_264.Out", "box_StaticBreakableListener_249.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_438_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_224();
    l0 = self.box_MultipleAND_v2_438;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1250148513", "1250148513", "UNI51_010_B20", "box_MultipleAND_v2_438.Out", "box_ActivityObjectiveMarkerModifier_v3_224.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_217_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_252();
    l0 = self.box_OnceOnly_v3_217;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1512449470", "1512449470", "UNI51_010_B20", "box_OnceOnly_v3_217.Out", "box_OutputOrder_v2_252.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_311_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_243;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1753979984", "1753979984", "UNI51_010_B20", "box_OutputOrder_v2_311.Out", "box_OnceOnly_v3_243.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_311_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_273();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1643559152", "1643559152", "UNI51_010_B20", "box_OutputOrder_v2_311.Out", "box_IsEntityLoaded_v3_273.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_311_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_300();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1072972211", "1072972211", "UNI51_010_B20", "box_OutputOrder_v2_311.Out", "box_IsEntityLoaded_v3_300.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_311_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_325();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1211452311", "1211452311", "UNI51_010_B20", "box_OutputOrder_v2_311.Out", "box_IsEntityLoaded_v3_325.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_311_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_323();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|476497586", "476497586", "UNI51_010_B20", "box_OutputOrder_v2_311.Out", "box_IsEntityLoaded_v3_323.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_212_Damaged()
    local l0, l1;
    l0 = self.box_HealthListener_v6_212;
    l1 = self.box_MultipleOR_284;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1965814971", "1965814971", "UNI51_010_B20", "box_HealthListener_v6_212.Damaged", "box_MultipleOR_284.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_212_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_212;
    l1 = self.box_MultipleOR_284;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1810000688", "1810000688", "UNI51_010_B20", "box_HealthListener_v6_212.Killed", "box_MultipleOR_284.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PositionModifier_v2_57_Cancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_58();
    l0 = self.box_PositionModifier_v2_57;
    l1 = self.box_PositionModifier_v2_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|714849654", "714849654", "UNI51_010_B20", "box_PositionModifier_v2_57.Cancelled", "box_PositionModifier_v2_58.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_57_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_416();
    l0 = self.box_PositionModifier_v2_57;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1429018468", "1429018468", "UNI51_010_B20", "box_PositionModifier_v2_57.Done", "box_OutputOrder_v2_416.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|459996490", "459996490", "UNI51_010_B20", "box_OutputOrder_v2_22.Out", "box_MultipleOR_53.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1545602830", "1545602830", "UNI51_010_B20", "box_OutputOrder_v2_22.Out", "box_Simple_Node_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_459_Out()
    local l0, l1;
    l0 = self.box_InventoryItemModifier_459;
    l1 = self.box_MultipleOR_455;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|242486666", "242486666", "UNI51_010_B20", "box_InventoryItemModifier_459.Out", "box_MultipleOR_455.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_ActivityInitialized_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1070975135", "1070975135", "UNI51_010_B20", "box_MultipleOR_5.Out", "box_ActivityInitialized_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Compare_Strings_32_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_33();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|669345511", "669345511", "UNI51_010_B20", "box_Compare_Strings_32.A_neq_B", "box_Compare_Strings_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_493_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_340();
    l0 = self.box_MultipleOR_493;
    l1 = self.box_ProximityTrigger_v2_340;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1425315407", "1425315407", "UNI51_010_B20", "box_MultipleOR_493.Out", "box_ProximityTrigger_v2_340.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_221_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_237;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|587895904", "587895904", "UNI51_010_B20", "box_ActivityObjectiveMarkerModifier_v3_221.Disabled", "box_MultipleOR_237.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IsEntityLoaded_v3_322_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_320();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|665355677", "665355677", "UNI51_010_B20", "box_IsEntityLoaded_v3_322.True", "box_StaticBreakableBreaker_320.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_71_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_72();
    l0 = self.box_Bind_v4_71;
    l1 = self.box_Bind_v4_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|547080946", "547080946", "UNI51_010_B20", "box_Bind_v4_71.Bound", "box_Bind_v4_72.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_497_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_389();
    l0 = self.box_MultipleOR_497;
    l1 = self.box_ProximityTrigger_v2_389;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|861376165", "861376165", "UNI51_010_B20", "box_MultipleOR_497.Out", "box_ProximityTrigger_v2_389.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_77_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_237;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1324960756", "1324960756", "UNI51_010_B20", "box_ActivityObjectiveMarkerModifier_v3_77.Disabled", "box_MultipleOR_237.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_415_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_55();
    l0 = self.box_PositionModifier_v2_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1515144106", "1515144106", "UNI51_010_B20", "box_OutputOrder_v2_415.Out", "box_PositionModifier_v2_55.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_415_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_424();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1759561271", "1759561271", "UNI51_010_B20", "box_OutputOrder_v2_415.Out", "box_Simple_Node_424.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_443_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_448;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|287172228", "287172228", "UNI51_010_B20", "box_Compare_Integers_443.A_ge_B", "box_MultipleOR_448.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_443_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_434();
    l0 = self.box_InventoryItemModifier_434;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1169757472", "1169757472", "UNI51_010_B20", "box_Compare_Integers_443.A_lt_B", "box_InventoryItemModifier_434.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_582_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_584;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1950123939", "1950123939", "UNI51_010_B20", "box_IsEntityLoaded_v3_582.False", "box_MultipleOR_584.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_582_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_581();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|783909041", "783909041", "UNI51_010_B20", "box_IsEntityLoaded_v3_582.True", "box_IsEntityLoaded_v3_581.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_551_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_543();
    l0 = self.box_MetaBreakableModifier_v2_551;
    l1 = self.box_MetaBreakableModifier_v2_543;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|869920173", "869920173", "UNI51_010_B20", "box_MetaBreakableModifier_v2_551.OnSetDamageable", "box_MetaBreakableModifier_v2_543.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_454_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|199334347", "199334347", "UNI51_010_B20", "box_OutputOrder_v2_454.Out", "box_OutputOrder_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_282_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_212();
    l0 = self.box_HealthListener_v6_212;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1673399257", "1673399257", "UNI51_010_B20", "box_OutputOrder_v2_282.Out", "box_HealthListener_v6_212.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_282_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_210();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1992055866", "1992055866", "UNI51_010_B20", "box_OutputOrder_v2_282.Out", "box_EndActivityObjective_v2_210.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_183_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_184();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|903735801", "903735801", "UNI51_010_B20", "box_ParticleSystem_v3_183.Started", "box_ParticleSystem_v3_184.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_183_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_184();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|420293222", "420293222", "UNI51_010_B20", "box_ParticleSystem_v3_183.Stopped", "box_ParticleSystem_v3_184.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_380_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_500;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1595171277", "1595171277", "UNI51_010_B20", "box_OutputOrder_v2_380.Out", "box_MultipleOR_500.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_380_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_379();
    l0 = self.box_SoundModifier_v2_379;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1472377863", "1472377863", "UNI51_010_B20", "box_OutputOrder_v2_380.Out", "box_SoundModifier_v2_379.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_GetInventoryItemQuantity_458_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_458_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_453();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1238064983", "1238064983", "UNI51_010_B20", "box_GetInventoryItemQuantity_458.Out", "box_Compare_Integers_453.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_588_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_586();
    l0 = self.box_RemoveEntity_v2_588;
    l1 = self.box_RemoveEntity_v2_586;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1525851807", "1525851807", "UNI51_010_B20", "box_RemoveEntity_v2_588.Out", "box_RemoveEntity_v2_586.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_17_Done()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_587();
    l0 = self.box_PositionModifier_v2_17;
    l1 = self.box_RemoveEntity_v2_587;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1867561495", "1867561495", "UNI51_010_B20", "box_PositionModifier_v2_17.Done", "box_RemoveEntity_v2_587.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_17_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_540();
    l0 = self.box_PositionModifier_v2_17;
    l1 = self.box_MetaBreakableModifier_v2_540;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|966393478", "966393478", "UNI51_010_B20", "box_PositionModifier_v2_17.StartOut", "box_MetaBreakableModifier_v2_540.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_185_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_253;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1936730667", "1936730667", "UNI51_010_B20", "box_OutputOrder_v2_185.Out", "box_MultipleOR_253.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_185_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_194();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1726547932", "1726547932", "UNI51_010_B20", "box_OutputOrder_v2_185.Out", "box_Simple_Node_194.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_376_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_501;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|206347047", "206347047", "UNI51_010_B20", "box_OutputOrder_v2_376.Out", "box_MultipleOR_501.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_376_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_386();
    l0 = self.box_SoundModifier_v2_386;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1032955377", "1032955377", "UNI51_010_B20", "box_OutputOrder_v2_376.Out", "box_SoundModifier_v2_386.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MetaBreakableModifier_v2_543_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_546();
    l0 = self.box_MetaBreakableModifier_v2_543;
    l1 = self.box_MetaBreakableModifier_v2_546;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|811462004", "811462004", "UNI51_010_B20", "box_MetaBreakableModifier_v2_543.OnSetDamageable", "box_MetaBreakableModifier_v2_546.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_AddActivityObjective_v2_67_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_70();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1762072059", "1762072059", "UNI51_010_B20", "box_AddActivityObjective_v2_67.Out", "box_AddActivityObjectiveProgress_v2_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_363_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_122();
    l0 = self.box_SoundModifier_v2_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|583873771", "583873771", "UNI51_010_B20", "box_OutputOrder_v2_363.Out", "box_SoundModifier_v2_122.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_363_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_356();
    l0 = self.box_SoundModifier_v2_356;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1702281261", "1702281261", "UNI51_010_B20", "box_OutputOrder_v2_363.Out", "box_SoundModifier_v2_356.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_363_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_508();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2091631819", "2091631819", "UNI51_010_B20", "box_OutputOrder_v2_363.Out", "box_Simple_Node_508.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_284_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_283();
    l0 = self.box_MultipleOR_284;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|299709131", "299709131", "UNI51_010_B20", "box_MultipleOR_284.Out", "box_ActivityRetry_283.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_10_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_436();
    l0 = self.box_MultipleAND_v2_436;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1239667343", "1239667343", "UNI51_010_B20", "box_IsEntityLoaded_v3_10.True", "box_MultipleAND_v2_436.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MetaBreakableModifier_v2_545_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_552();
    l0 = self.box_MetaBreakableModifier_v2_545;
    l1 = self.box_MetaBreakableModifier_v2_552;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2095009228", "2095009228", "UNI51_010_B20", "box_MetaBreakableModifier_v2_545.OnSetDamageable", "box_MetaBreakableModifier_v2_552.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_337_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_353();
    l0 = self.box_SoundModifier_v2_337;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|20952419", "20952419", "UNI51_010_B20", "box_SoundModifier_v2_337.Started", "box_OutputOrder_v2_353.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_528_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_529();
    l0 = self.box_MetaBreakableModifier_v2_528;
    l1 = self.box_MetaBreakableModifier_v2_529;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1500336589", "1500336589", "UNI51_010_B20", "box_MetaBreakableModifier_v2_528.OnSetUnDamageable", "box_MetaBreakableModifier_v2_529.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_65_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_65;
    l1 = self.box_OnceOnly_v3_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|188732079", "188732079", "UNI51_010_B20", "box_MultipleOR_65.Out", "box_OnceOnly_v3_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Bind_v4_197_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_561();
    l0 = self.box_Bind_v4_197;
    l1 = self.box_Bind_v4_561;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1503116523", "1503116523", "UNI51_010_B20", "box_Bind_v4_197.Bound", "box_Bind_v4_561.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_197_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_561();
    l0 = self.box_Bind_v4_197;
    l1 = self.box_Bind_v4_561;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|878744722", "878744722", "UNI51_010_B20", "box_Bind_v4_197.UnBound", "box_Bind_v4_561.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_236_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_227();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2011242222", "2011242222", "UNI51_010_B20", "box_OutputOrder_v2_236.Out", "box_ActivityObjectiveMarkerModifier_v3_227.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_236_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_14();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|305716884", "305716884", "UNI51_010_B20", "box_OutputOrder_v2_236.Out", "box_IsEntityLoaded_v3_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_236_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_441();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|675761342", "675761342", "UNI51_010_B20", "box_OutputOrder_v2_236.Out", "box_IsEntityLoaded_v3_441.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_520_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_519();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|178882324", "178882324", "UNI51_010_B20", "box_ActivityObjectiveMarkerModifier_v3_520.Enabled", "box_ActivityObjectiveMarkerModifier_v3_519.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_371_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_121();
    l0 = self.box_SoundModifier_v2_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1700540489", "1700540489", "UNI51_010_B20", "box_OutputOrder_v2_371.Out", "box_SoundModifier_v2_121.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_371_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_364();
    l0 = self.box_SoundModifier_v2_364;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|332968192", "332968192", "UNI51_010_B20", "box_OutputOrder_v2_371.Out", "box_SoundModifier_v2_364.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_371_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_509();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1656345523", "1656345523", "UNI51_010_B20", "box_OutputOrder_v2_371.Out", "box_Simple_Node_509.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_128_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_138();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|511002141", "511002141", "UNI51_010_B20", "box_OutputOrder_v2_128.Out", "box_Simple_Node_138.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_128_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_124();
    l0 = self.box_SoundModifier_v2_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1402038670", "1402038670", "UNI51_010_B20", "box_OutputOrder_v2_128.Out", "box_SoundModifier_v2_124.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_128_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_173();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1637343040", "1637343040", "UNI51_010_B20", "box_OutputOrder_v2_128.Out", "box_ParticleSystem_v3_173.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_128_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_398();
    l0 = self.box_SoundModifier_v2_398;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1628988392", "1628988392", "UNI51_010_B20", "box_OutputOrder_v2_128.Out", "box_SoundModifier_v2_398.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_128_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_504();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1236150621", "1236150621", "UNI51_010_B20", "box_OutputOrder_v2_128.Out", "box_Simple_Node_504.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_64_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_238();
    l0 = self.box_OnceOnly_v3_64;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1764231712", "1764231712", "UNI51_010_B20", "box_OnceOnly_v3_64.Out", "box_OutputOrder_v2_238.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_263();
    l0 = self.box_ActivityInitialized_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|757483331", "757483331", "UNI51_010_B20", "box_ActivityInitialized_4.Out", "box_OutputOrder_v2_263.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_535_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_532();
    l0 = self.box_MetaBreakableModifier_v2_535;
    l1 = self.box_MetaBreakableModifier_v2_532;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1842501041", "1842501041", "UNI51_010_B20", "box_MetaBreakableModifier_v2_535.OnSetUnDamageable", "box_MetaBreakableModifier_v2_532.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_SoundModifier_v2_99_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_101();
    l0 = self.box_SoundModifier_v2_99;
    l1 = self.box_SoundModifier_v2_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1299527330", "1299527330", "UNI51_010_B20", "box_SoundModifier_v2_99.Started", "box_SoundModifier_v2_101.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_321_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_327();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|340392461", "340392461", "UNI51_010_B20", "box_IsEntityLoaded_v3_321.True", "box_StaticBreakableBreaker_327.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_286_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_289();
    l0 = self.box_StaticBreakableListener_286;
    l1 = self.box_StaticBreakableListener_289;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1748735180", "1748735180", "UNI51_010_B20", "box_StaticBreakableListener_286.Disabled", "box_StaticBreakableListener_289.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_286_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_289();
    l0 = self.box_StaticBreakableListener_286;
    l1 = self.box_StaticBreakableListener_289;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1942342692", "1942342692", "UNI51_010_B20", "box_StaticBreakableListener_286.Enabled", "box_StaticBreakableListener_289.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_286_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_286;
    l1 = self.box_MultipleOR_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|316193814", "316193814", "UNI51_010_B20", "box_StaticBreakableListener_286.OnBreak", "box_MultipleOR_291.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SoundModifier_v2_103_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_105();
    l0 = self.box_SoundModifier_v2_103;
    l1 = self.box_SoundModifier_v2_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1279848931", "1279848931", "UNI51_010_B20", "box_SoundModifier_v2_103.Started", "box_SoundModifier_v2_105.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_253_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_266();
    l0 = self.box_MultipleOR_253;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|803988043", "803988043", "UNI51_010_B20", "box_MultipleOR_253.Out", "box_IntegerArithmetics_v2_266.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|395447477", "395447477", "UNI51_010_B20", "box_OutputOrder_v2_34.Out", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|31761045", "31761045", "UNI51_010_B20", "box_OutputOrder_v2_34.Out", "box_Simple_Node_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_94_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_97();
    l0 = self.box_SoundModifier_v2_94;
    l1 = self.box_SoundModifier_v2_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1157503649", "1157503649", "UNI51_010_B20", "box_SoundModifier_v2_94.Started", "box_SoundModifier_v2_97.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_373_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_131();
    l0 = self.box_SoundModifier_v2_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1783000041", "1783000041", "UNI51_010_B20", "box_OutputOrder_v2_373.Out", "box_SoundModifier_v2_131.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_373_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_370();
    l0 = self.box_SoundModifier_v2_370;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1502917029", "1502917029", "UNI51_010_B20", "box_OutputOrder_v2_373.Out", "box_SoundModifier_v2_370.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_373_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_507();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|591123593", "591123593", "UNI51_010_B20", "box_OutputOrder_v2_373.Out", "box_Simple_Node_507.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_85_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_242();
    l0 = self.box_StaticBreakableListener_85;
    l1 = self.box_StaticBreakableListener_242;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1964191452", "1964191452", "UNI51_010_B20", "box_StaticBreakableListener_85.Enabled", "box_StaticBreakableListener_242.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_85_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_85;
    l1 = self.box_MultipleOR_219;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|409874057", "409874057", "UNI51_010_B20", "box_StaticBreakableListener_85.OnBreak", "box_MultipleOR_219.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_298_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_297();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1257922923", "1257922923", "UNI51_010_B20", "box_IsEntityLoaded_v3_298.True", "box_StaticBreakableBreaker_297.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_220_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_28();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2047803264", "2047803264", "UNI51_010_B20", "box_Compare_Strings_220.A_neq_B", "box_Print_v2_28.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_448_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PawnWeaponCheck_v3_445();
    l0 = self.box_MultipleOR_448;
    l1 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1380095619", "1380095619", "UNI51_010_B20", "box_MultipleOR_448.Out", "box_PawnWeaponCheck_v3_445.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_303_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_304();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1310811324", "1310811324", "UNI51_010_B20", "box_IsEntityLoaded_v3_303.True", "box_StaticBreakableBreaker_304.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_263_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_244();
    l0 = self.box_GetEntityInPrefab_v2_244;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|81047886", "81047886", "UNI51_010_B20", "box_OutputOrder_v2_263.Out", "box_GetEntityInPrefab_v2_244.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_263_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_511();
    l0 = self.box_GunsForHireSystemModifier_511;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|851575814", "851575814", "UNI51_010_B20", "box_OutputOrder_v2_263.Out", "box_GunsForHireSystemModifier_511.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_173_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_175();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|343879731", "343879731", "UNI51_010_B20", "box_ParticleSystem_v3_173.Started", "box_ParticleSystem_v3_175.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_173_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_175();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|210750790", "210750790", "UNI51_010_B20", "box_ParticleSystem_v3_173.Stopped", "box_ParticleSystem_v3_175.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_269_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_270();
    l0 = self.box_PositionModifier_v2_269;
    l1 = self.box_PositionModifier_v2_270;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|870475455", "870475455", "UNI51_010_B20", "box_PositionModifier_v2_269.StartOut", "box_PositionModifier_v2_270.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_358_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_494;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|88169228", "88169228", "UNI51_010_B20", "box_OutputOrder_v2_358.Out", "box_MultipleOR_494.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_358_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_355();
    l0 = self.box_SoundModifier_v2_355;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|40670414", "40670414", "UNI51_010_B20", "box_OutputOrder_v2_358.Out", "box_SoundModifier_v2_355.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_116_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_368();
    l0 = self.box_StaticBreakableListener_116;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1486168449", "1486168449", "UNI51_010_B20", "box_StaticBreakableListener_116.OnBreak", "box_OutputOrder_v2_368.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_66_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_226();
    l0 = self.box_OnceOnly_v3_66;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|428110274", "428110274", "UNI51_010_B20", "box_OnceOnly_v3_66.Out", "box_OutputOrder_v2_226.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_418_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|810697596", "810697596", "UNI51_010_B20", "box_OutputOrder_v2_418.Out", "box_MultipleOR_53.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_418_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_427();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|962054003", "962054003", "UNI51_010_B20", "box_OutputOrder_v2_418.Out", "box_Simple_Node_427.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_419_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_52();
    l0 = self.box_PositionModifier_v2_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|461896975", "461896975", "UNI51_010_B20", "box_OutputOrder_v2_419.Out", "box_PositionModifier_v2_52.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_419_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_430();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|50879031", "50879031", "UNI51_010_B20", "box_OutputOrder_v2_419.Out", "box_Simple_Node_430.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_13_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_439();
    l0 = self.box_MultipleAND_v2_439;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1182857907", "1182857907", "UNI51_010_B20", "box_IsEntityLoaded_v3_13.True", "box_MultipleAND_v2_439.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_480_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_477();
    l0 = self.box_SoundModifier_v2_477;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|887195414", "887195414", "UNI51_010_B20", "box_OutputOrder_v2_480.Out", "box_SoundModifier_v2_477.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_480_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_485();
    l0 = self.box_SoundModifier_v2_485;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1023483434", "1023483434", "UNI51_010_B20", "box_OutputOrder_v2_480.Out", "box_SoundModifier_v2_485.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_PawnWeaponCheck_v3_451_InHands()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_450;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1087100853", "1087100853", "UNI51_010_B20", "box_PawnWeaponCheck_v3_451.InHands", "box_MultipleOR_450.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PawnWeaponCheck_v3_451_InInventory()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_WieldInventory_v5_452();
    l0 = self.box_WieldInventory_v5_452;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|702110014", "702110014", "UNI51_010_B20", "box_PawnWeaponCheck_v3_451.InInventory", "box_WieldInventory_v5_452.LuaDraw", clone:GetLuaBox(), l0:GetLuaBox());
    -- LuaDraw
    l0:Exec(0, params);
end;

function export:f_box_Bind_v4_167_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_562();
    l0 = self.box_Bind_v4_167;
    l1 = self.box_Bind_v4_562;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1421965972", "1421965972", "UNI51_010_B20", "box_Bind_v4_167.Bound", "box_Bind_v4_562.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_335_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_349();
    l0 = self.box_SoundModifier_v2_335;
    l1 = self.box_SoundModifier_v2_349;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|553066409", "553066409", "UNI51_010_B20", "box_SoundModifier_v2_335.Started", "box_SoundModifier_v2_349.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_68_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_47();
    l0 = self.box_StaticBreakableListener_68;
    l1 = self.box_StaticBreakableListener_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1993428397", "1993428397", "UNI51_010_B20", "box_StaticBreakableListener_68.Enabled", "box_StaticBreakableListener_47.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_68_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_68;
    l1 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|601497612", "601497612", "UNI51_010_B20", "box_StaticBreakableListener_68.OnBreak", "box_MultipleOR_60.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_293_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_253;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|90813520", "90813520", "UNI51_010_B20", "box_OutputOrder_v2_293.Out", "box_MultipleOR_253.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_293_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_296();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|628405291", "628405291", "UNI51_010_B20", "box_OutputOrder_v2_293.Out", "box_Simple_Node_296.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_251_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_293();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1746460098", "1746460098", "UNI51_010_B20", "box_ActivityObjectiveMarkerModifier_v3_251.Disabled", "box_OutputOrder_v2_293.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_246_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_267();
    l0 = self.box_PositionModifier_v2_246;
    l1 = self.box_PositionModifier_v2_267;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|73023680", "73023680", "UNI51_010_B20", "box_PositionModifier_v2_246.StartOut", "box_PositionModifier_v2_267.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_89_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_236();
    l0 = self.box_OnceOnly_v3_89;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1281513742", "1281513742", "UNI51_010_B20", "box_OnceOnly_v3_89.Out", "box_OutputOrder_v2_236.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_35_Cancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_36();
    l0 = self.box_PositionModifier_v2_35;
    l1 = self.box_PositionModifier_v2_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1742095224", "1742095224", "UNI51_010_B20", "box_PositionModifier_v2_35.Cancelled", "box_PositionModifier_v2_36.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_35_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_413();
    l0 = self.box_PositionModifier_v2_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1917081409", "1917081409", "UNI51_010_B20", "box_PositionModifier_v2_35.Done", "box_OutputOrder_v2_413.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_132_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_373();
    l0 = self.box_StaticBreakableListener_132;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1998872206", "1998872206", "UNI51_010_B20", "box_StaticBreakableListener_132.OnBreak", "box_OutputOrder_v2_373.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_566_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_567();
    l0 = self.box_RemoveEntity_v2_566;
    l1 = self.box_RemoveEntity_v2_567;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1974944967", "1974944967", "UNI51_010_B20", "box_RemoveEntity_v2_566.Out", "box_RemoveEntity_v2_567.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_27_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_54();
    l0 = self.box_PositionModifier_v2_27;
    l1 = self.box_PositionModifier_v2_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|967222653", "967222653", "UNI51_010_B20", "box_PositionModifier_v2_27.StartOut", "box_PositionModifier_v2_54.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_35();
    l0 = self.box_MultipleOR_30;
    l1 = self.box_PositionModifier_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1152231416", "1152231416", "UNI51_010_B20", "box_MultipleOR_30.Out", "box_PositionModifier_v2_35.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_414_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|540888738", "540888738", "UNI51_010_B20", "box_OutputOrder_v2_414.Out", "box_MultipleOR_30.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_414_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_425();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|608021779", "608021779", "UNI51_010_B20", "box_OutputOrder_v2_414.Out", "box_Simple_Node_425.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjectiveProgress_v2_70_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_70_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_281();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|642658820", "642658820", "UNI51_010_B20", "box_AddActivityObjectiveProgress_v2_70.Out", "box_OutputOrder_v2_281.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_490_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_473();
    l0 = self.box_SoundModifier_v2_473;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|905973183", "905973183", "UNI51_010_B20", "box_OutputOrder_v2_490.Out", "box_SoundModifier_v2_473.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_490_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_433();
    l0 = self.box_SoundModifier_v2_433;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|968503054", "968503054", "UNI51_010_B20", "box_OutputOrder_v2_490.Out", "box_SoundModifier_v2_433.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_467_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_470();
    l0 = self.box_SoundModifier_v2_470;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|931084980", "931084980", "UNI51_010_B20", "box_OutputOrder_v2_467.Out", "box_SoundModifier_v2_470.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_467_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_385();
    l0 = self.box_SoundModifier_v2_385;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1534990371", "1534990371", "UNI51_010_B20", "box_OutputOrder_v2_467.Out", "box_SoundModifier_v2_385.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MetaBreakableModifier_v2_531_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_535();
    l0 = self.box_MetaBreakableModifier_v2_531;
    l1 = self.box_MetaBreakableModifier_v2_535;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1900959210", "1900959210", "UNI51_010_B20", "box_MetaBreakableModifier_v2_531.OnSetUnDamageable", "box_MetaBreakableModifier_v2_535.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_MetaBreakableModifier_v2_523_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_524();
    l0 = self.box_MetaBreakableModifier_v2_523;
    l1 = self.box_MetaBreakableModifier_v2_524;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|50286071", "50286071", "UNI51_010_B20", "box_MetaBreakableModifier_v2_523.OnSetUnDamageable", "box_MetaBreakableModifier_v2_524.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_IntegerArithmetics_v2_229_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_229_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_69();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|574975011", "574975011", "UNI51_010_B20", "box_IntegerArithmetics_v2_229.Out", "box_SetActivityObjectiveProgress_v2_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_299_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1847011267", "1847011267", "UNI51_010_B20", "box_OutputOrder_v2_299.Out", "box_OnceOnly_v3_86.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_299_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_307();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|589423955", "589423955", "UNI51_010_B20", "box_OutputOrder_v2_299.Out", "box_IsEntityLoaded_v3_307.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_299_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_310();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|763255921", "763255921", "UNI51_010_B20", "box_OutputOrder_v2_299.Out", "box_IsEntityLoaded_v3_310.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_299_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_316();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1659635943", "1659635943", "UNI51_010_B20", "box_OutputOrder_v2_299.Out", "box_IsEntityLoaded_v3_316.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_299_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_318();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1608268707", "1608268707", "UNI51_010_B20", "box_OutputOrder_v2_299.Out", "box_IsEntityLoaded_v3_318.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_571_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_187();
    l0 = self.box_EntityStatusListener_571;
    l1 = self.box_Bind_v4_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|834707478", "834707478", "UNI51_010_B20", "box_EntityStatusListener_571.Loaded", "box_Bind_v4_187.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_377_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_394();
    l0 = self.box_ProximityTrigger_v2_377;
    l1 = self.box_SoundModifier_v2_394;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2104378272", "2104378272", "UNI51_010_B20", "box_ProximityTrigger_v2_377.Enter", "box_SoundModifier_v2_394.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_243_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_259();
    l0 = self.box_OnceOnly_v3_243;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1008833703", "1008833703", "UNI51_010_B20", "box_OnceOnly_v3_243.Out", "box_ActivityObjectiveMarkerModifier_v3_259.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_108_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_110();
    l0 = self.box_SoundModifier_v2_108;
    l1 = self.box_SoundModifier_v2_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|152230316", "152230316", "UNI51_010_B20", "box_SoundModifier_v2_108.Started", "box_SoundModifier_v2_110.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_171_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_172();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1696922418", "1696922418", "UNI51_010_B20", "box_ParticleSystem_v3_171.Started", "box_ParticleSystem_v3_172.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_171_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_172();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|975110322", "975110322", "UNI51_010_B20", "box_ParticleSystem_v3_171.Stopped", "box_ParticleSystem_v3_172.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_584_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_583();
    l0 = self.box_MultipleOR_584;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1666694622", "1666694622", "UNI51_010_B20", "box_MultipleOR_584.Out", "box_ActivityRetry_583.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_129_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_137();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1921660222", "1921660222", "UNI51_010_B20", "box_OutputOrder_v2_129.Out", "box_Simple_Node_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_129_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_125();
    l0 = self.box_SoundModifier_v2_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|120727459", "120727459", "UNI51_010_B20", "box_OutputOrder_v2_129.Out", "box_SoundModifier_v2_125.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_129_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_177();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|78930559", "78930559", "UNI51_010_B20", "box_OutputOrder_v2_129.Out", "box_ParticleSystem_v3_177.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_129_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_401();
    l0 = self.box_SoundModifier_v2_401;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|876577892", "876577892", "UNI51_010_B20", "box_OutputOrder_v2_129.Out", "box_SoundModifier_v2_401.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_129_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_506();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1027942294", "1027942294", "UNI51_010_B20", "box_OutputOrder_v2_129.Out", "box_Simple_Node_506.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_92_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|3458995", "3458995", "UNI51_010_B20", "box_UseContextualActionModifier_v3_92.Disabled", "box_OutputOrder_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_375_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_498;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|813668639", "813668639", "UNI51_010_B20", "box_OutputOrder_v2_375.Out", "box_MultipleOR_498.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_375_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_391();
    l0 = self.box_SoundModifier_v2_391;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|522112062", "522112062", "UNI51_010_B20", "box_OutputOrder_v2_375.Out", "box_SoundModifier_v2_391.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_24();
    l0 = self.box_MultipleOR_41;
    l1 = self.box_PositionModifier_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|276849615", "276849615", "UNI51_010_B20", "box_MultipleOR_41.Out", "box_PositionModifier_v2_24.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_192_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_253;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|197415338", "197415338", "UNI51_010_B20", "box_OutputOrder_v2_192.Out", "box_MultipleOR_253.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_192_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_201();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|509978070", "509978070", "UNI51_010_B20", "box_OutputOrder_v2_192.Out", "box_Simple_Node_201.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_489_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_491();
    l0 = self.box_SoundModifier_v2_491;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|729876835", "729876835", "UNI51_010_B20", "box_OutputOrder_v2_489.Out", "box_SoundModifier_v2_491.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_489_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_474();
    l0 = self.box_SoundModifier_v2_474;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|566424566", "566424566", "UNI51_010_B20", "box_OutputOrder_v2_489.Out", "box_SoundModifier_v2_474.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Bind_v4_72_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_73();
    l0 = self.box_Bind_v4_72;
    l1 = self.box_Bind_v4_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|635969778", "635969778", "UNI51_010_B20", "box_Bind_v4_72.Bound", "box_Bind_v4_73.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_AddActivityObjective_v2_512_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_520();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|499655439", "499655439", "UNI51_010_B20", "box_AddActivityObjective_v2_512.Out", "box_ActivityObjectiveMarkerModifier_v3_520.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_587_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_588();
    l0 = self.box_RemoveEntity_v2_587;
    l1 = self.box_RemoveEntity_v2_588;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1069006061", "1069006061", "UNI51_010_B20", "box_RemoveEntity_v2_587.Out", "box_RemoveEntity_v2_588.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PawnWeaponCheck_v3_445_InHands()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_447;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1738881333", "1738881333", "UNI51_010_B20", "box_PawnWeaponCheck_v3_445.InHands", "box_MultipleOR_447.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PawnWeaponCheck_v3_445_InInventory()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_WieldInventory_v5_446();
    l0 = self.box_WieldInventory_v5_446;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|97785395", "97785395", "UNI51_010_B20", "box_PawnWeaponCheck_v3_445.InInventory", "box_WieldInventory_v5_446.LuaDraw", clone:GetLuaBox(), l0:GetLuaBox());
    -- LuaDraw
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_514_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_513();
    l0 = self.box_HealthListener_v6_514;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1589462853", "1589462853", "UNI51_010_B20", "box_HealthListener_v6_514.Damaged", "box_ActivityObjectiveMarkerModifier_v3_513.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_514_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_515();
    l0 = self.box_HealthListener_v6_514;
    l1 = self.box_HealthListener_v6_515;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|678055980", "678055980", "UNI51_010_B20", "box_HealthListener_v6_514.Enabled", "box_HealthListener_v6_515.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_215_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_241();
    l0 = self.box_StaticBreakableListener_215;
    l1 = self.box_StaticBreakableListener_241;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|996481692", "996481692", "UNI51_010_B20", "box_StaticBreakableListener_215.Enabled", "box_StaticBreakableListener_241.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_215_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_215;
    l1 = self.box_MultipleOR_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|553649699", "553649699", "UNI51_010_B20", "box_StaticBreakableListener_215.OnBreak", "box_MultipleOR_48.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Bind_v4_153_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_195();
    l0 = self.box_Bind_v4_153;
    l1 = self.box_Bind_v4_195;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1807614116", "1807614116", "UNI51_010_B20", "box_Bind_v4_153.Bound", "box_Bind_v4_195.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_153_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_195();
    l0 = self.box_Bind_v4_153;
    l1 = self.box_Bind_v4_195;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|513583839", "513583839", "UNI51_010_B20", "box_Bind_v4_153.UnBound", "box_Bind_v4_195.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_250_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_269();
    l0 = self.box_PositionModifier_v2_269;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|498386638", "498386638", "UNI51_010_B20", "box_ActivityObjectiveMarkerModifier_v3_250.Enabled", "box_PositionModifier_v2_269.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_98_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_127();
    l0 = self.box_StaticBreakableListener_98;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|227549972", "227549972", "UNI51_010_B20", "box_StaticBreakableListener_98.OnBreak", "box_OutputOrder_v2_127.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_255_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_27();
    l0 = self.box_PositionModifier_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1815519896", "1815519896", "UNI51_010_B20", "box_ActivityObjectiveMarkerModifier_v3_255.Enabled", "box_PositionModifier_v2_27.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_100_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_102();
    l0 = self.box_SoundModifier_v2_100;
    l1 = self.box_SoundModifier_v2_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2079861476", "2079861476", "UNI51_010_B20", "box_SoundModifier_v2_100.Started", "box_SoundModifier_v2_102.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_311();
    l0 = self.box_MultipleOR_48;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|234028814", "234028814", "UNI51_010_B20", "box_MultipleOR_48.Out", "box_OutputOrder_v2_311.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_82_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_83();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1894807167", "1894807167", "UNI51_010_B20", "box_Compare_Strings_82.A_neq_B", "box_Compare_Strings_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_362_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_492;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1654058443", "1654058443", "UNI51_010_B20", "box_OutputOrder_v2_362.Out", "box_MultipleOR_492.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_362_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_352();
    l0 = self.box_SoundModifier_v2_352;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|465089657", "465089657", "UNI51_010_B20", "box_OutputOrder_v2_362.Out", "box_SoundModifier_v2_352.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_398_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_399();
    l0 = self.box_SoundModifier_v2_398;
    l1 = self.box_SoundModifier_v2_399;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2129616901", "2129616901", "UNI51_010_B20", "box_SoundModifier_v2_398.Started", "box_SoundModifier_v2_399.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_326_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_317();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1524918390", "1524918390", "UNI51_010_B20", "box_IsEntityLoaded_v3_326.True", "box_StaticBreakableBreaker_317.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_11_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_76();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1100713968", "1100713968", "UNI51_010_B20", "box_IsEntityLoaded_v3_11.True", "box_ActivityObjectiveMarkerModifier_v3_76.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetInventoryItemQuantity_203_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_203_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_443();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1584912966", "1584912966", "UNI51_010_B20", "box_GetInventoryItemQuantity_203.Out", "box_Compare_Integers_443.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_208_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_59();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2119669453", "2119669453", "UNI51_010_B20", "box_UseContextualActionModifier_v3_208.Disabled", "box_UseContextualActionModifier_v3_59.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_73_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_75();
    l0 = self.box_Bind_v4_73;
    l1 = self.box_Bind_v4_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2034030183", "2034030183", "UNI51_010_B20", "box_Bind_v4_73.Bound", "box_Bind_v4_75.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_60_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_60;
    l1 = self.box_OnceOnly_v3_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1816105497", "1816105497", "UNI51_010_B20", "box_MultipleOR_60.Out", "box_OnceOnly_v3_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_147_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_148();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1336092904", "1336092904", "UNI51_010_B20", "box_OutputOrder_v2_147.Out", "box_Simple_Node_148.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_147_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_92();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|80405073", "80405073", "UNI51_010_B20", "box_OutputOrder_v2_147.Out", "box_UseContextualActionModifier_v3_92.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_529_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_530();
    l0 = self.box_MetaBreakableModifier_v2_529;
    l1 = self.box_MetaBreakableModifier_v2_530;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1097597462", "1097597462", "UNI51_010_B20", "box_MetaBreakableModifier_v2_529.OnSetUnDamageable", "box_MetaBreakableModifier_v2_530.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_SoundModifier_v2_396_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_397();
    l0 = self.box_SoundModifier_v2_396;
    l1 = self.box_SoundModifier_v2_397;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1724306504", "1724306504", "UNI51_010_B20", "box_SoundModifier_v2_396.Started", "box_SoundModifier_v2_397.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_93_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_231();
    l0 = self.box_OnceOnly_v3_93;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|945688009", "945688009", "UNI51_010_B20", "box_OnceOnly_v3_93.Out", "box_ActivityObjectiveMarkerModifier_v3_231.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_547_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_548();
    l0 = self.box_MetaBreakableModifier_v2_547;
    l1 = self.box_MetaBreakableModifier_v2_548;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|944756476", "944756476", "UNI51_010_B20", "box_MetaBreakableModifier_v2_547.OnSetDamageable", "box_MetaBreakableModifier_v2_548.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_181_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_183();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1065769007", "1065769007", "UNI51_010_B20", "box_ParticleSystem_v3_181.Started", "box_ParticleSystem_v3_183.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_181_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_183();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|762507249", "762507249", "UNI51_010_B20", "box_ParticleSystem_v3_181.Stopped", "box_ParticleSystem_v3_183.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UNI51_EquipWeapon_342_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_454();
    l0 = self.box_UNI51_EquipWeapon_342;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|73092032", "73092032", "UNI51_010_B20", "box_UNI51_EquipWeapon_342.Done", "box_OutputOrder_v2_454.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_196_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_161();
    l0 = self.box_Bind_v4_196;
    l1 = self.box_Bind_v4_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1044580789", "1044580789", "UNI51_010_B20", "box_Bind_v4_196.Bound", "box_Bind_v4_161.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_196_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_161();
    l0 = self.box_Bind_v4_196;
    l1 = self.box_Bind_v4_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|246464449", "246464449", "UNI51_010_B20", "box_Bind_v4_196.UnBound", "box_Bind_v4_161.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_573_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_584;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2091625761", "2091625761", "UNI51_010_B20", "box_IsEntityLoaded_v3_573.False", "box_MultipleOR_584.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_IsEntityLoaded_v3_573_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_574();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|671980139", "671980139", "UNI51_010_B20", "box_IsEntityLoaded_v3_573.True", "box_IsEntityLoaded_v3_574.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_453_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_455;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|284840877", "284840877", "UNI51_010_B20", "box_Compare_Integers_453.A_ge_B", "box_MultipleOR_455.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_453_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_459();
    l0 = self.box_InventoryItemModifier_459;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1651532364", "1651532364", "UNI51_010_B20", "box_Compare_Integers_453.A_lt_B", "box_InventoryItemModifier_459.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_227_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_237;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|549719034", "549719034", "UNI51_010_B20", "box_ActivityObjectiveMarkerModifier_v3_227.Disabled", "box_MultipleOR_237.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Delay_v5_292_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_68();
    l0 = self.box_Delay_v5_292;
    l1 = self.box_StaticBreakableListener_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|983869099", "983869099", "UNI51_010_B20", "box_Delay_v5_292.TimeElapsed", "box_StaticBreakableListener_68.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_325_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_312();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|152410073", "152410073", "UNI51_010_B20", "box_IsEntityLoaded_v3_325.True", "box_StaticBreakableBreaker_312.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_394_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_375();
    l0 = self.box_SoundModifier_v2_394;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1137412476", "1137412476", "UNI51_010_B20", "box_SoundModifier_v2_394.Started", "box_OutputOrder_v2_375.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_537_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_558();
    l0 = self.box_MetaBreakableModifier_v2_537;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1774957800", "1774957800", "UNI51_010_B20", "box_MetaBreakableModifier_v2_537.OnSetUnDamageable", "box_OutputOrder_v2_558.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_160_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_188();
    l0 = self.box_Bind_v4_160;
    l1 = self.box_Bind_v4_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|300595145", "300595145", "UNI51_010_B20", "box_Bind_v4_160.Bound", "box_Bind_v4_188.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_289_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_285();
    l0 = self.box_StaticBreakableListener_289;
    l1 = self.box_StaticBreakableListener_285;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1690277011", "1690277011", "UNI51_010_B20", "box_StaticBreakableListener_289.Disabled", "box_StaticBreakableListener_285.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_289_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_285();
    l0 = self.box_StaticBreakableListener_289;
    l1 = self.box_StaticBreakableListener_285;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|858791842", "858791842", "UNI51_010_B20", "box_StaticBreakableListener_289.Enabled", "box_StaticBreakableListener_285.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_289_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_289;
    l1 = self.box_MultipleOR_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|288166308", "288166308", "UNI51_010_B20", "box_StaticBreakableListener_289.OnBreak", "box_MultipleOR_291.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_PositionModifier_v2_50_Cancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_52();
    l0 = self.box_PositionModifier_v2_50;
    l1 = self.box_PositionModifier_v2_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|406141899", "406141899", "UNI51_010_B20", "box_PositionModifier_v2_50.Cancelled", "box_PositionModifier_v2_52.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_50_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_419();
    l0 = self.box_PositionModifier_v2_50;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1477897914", "1477897914", "UNI51_010_B20", "box_PositionModifier_v2_50.Done", "box_OutputOrder_v2_419.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_59_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_84();
    l0 = self.box_Delay_v5_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|858789005", "858789005", "UNI51_010_B20", "box_UseContextualActionModifier_v3_59.Enabled", "box_Delay_v5_84.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_256_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_255();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2023728223", "2023728223", "UNI51_010_B20", "box_OutputOrder_v2_256.Out", "box_ActivityObjectiveMarkerModifier_v3_255.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_256_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_216();
    l0 = self.box_StaticBreakableListener_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|298348134", "298348134", "UNI51_010_B20", "box_OutputOrder_v2_256.Out", "box_StaticBreakableListener_216.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_494_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_346();
    l0 = self.box_MultipleOR_494;
    l1 = self.box_ProximityTrigger_v2_346;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|908648766", "908648766", "UNI51_010_B20", "box_MultipleOR_494.Out", "box_ProximityTrigger_v2_346.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_117_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_371();
    l0 = self.box_StaticBreakableListener_117;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1965327724", "1965327724", "UNI51_010_B20", "box_StaticBreakableListener_117.OnBreak", "box_OutputOrder_v2_371.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_539_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_549();
    l0 = self.box_MetaBreakableModifier_v2_539;
    l1 = self.box_MetaBreakableModifier_v2_549;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1206123118", "1206123118", "UNI51_010_B20", "box_MetaBreakableModifier_v2_539.OnSetDamageable", "box_MetaBreakableModifier_v2_549.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_IsValueNil_v3_149_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RestrictedItemModifier_456();
    l0 = self.box_RestrictedItemModifier_456;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|331807702", "331807702", "UNI51_010_B20", "box_IsValueNil_v3_149.No", "box_RestrictedItemModifier_456.AddItem", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddItem
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_370_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_369();
    l0 = self.box_SoundModifier_v2_370;
    l1 = self.box_SoundModifier_v2_369;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|993685216", "993685216", "UNI51_010_B20", "box_SoundModifier_v2_370.Started", "box_SoundModifier_v2_369.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemModifier_434_Out()
    local l0, l1;
    l0 = self.box_InventoryItemModifier_434;
    l1 = self.box_MultipleOR_448;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1190862158", "1190862158", "UNI51_010_B20", "box_InventoryItemModifier_434.Out", "box_MultipleOR_448.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_360_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_496;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1458825004", "1458825004", "UNI51_010_B20", "box_OutputOrder_v2_360.Out", "box_MultipleOR_496.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_360_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_350();
    l0 = self.box_SoundModifier_v2_350;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|209337537", "209337537", "UNI51_010_B20", "box_OutputOrder_v2_360.Out", "box_SoundModifier_v2_350.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_180_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_178();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1994146704", "1994146704", "UNI51_010_B20", "box_ParticleSystem_v3_180.Started", "box_ParticleSystem_v3_178.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_180_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_178();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1132037554", "1132037554", "UNI51_010_B20", "box_ParticleSystem_v3_180.Stopped", "box_ParticleSystem_v3_178.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_244_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_244_Out();
    params = self:OnEnter_box_UseContextualActionModifier_v3_239();
    l0 = self.box_GetEntityInPrefab_v2_244;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|748556901", "748556901", "UNI51_010_B20", "box_GetEntityInPrefab_v2_244.Out", "box_UseContextualActionModifier_v3_239.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_24_Cancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_55();
    l0 = self.box_PositionModifier_v2_24;
    l1 = self.box_PositionModifier_v2_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1201503186", "1201503186", "UNI51_010_B20", "box_PositionModifier_v2_24.Cancelled", "box_PositionModifier_v2_55.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_24_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_415();
    l0 = self.box_PositionModifier_v2_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1043197781", "1043197781", "UNI51_010_B20", "box_PositionModifier_v2_24.Done", "box_OutputOrder_v2_415.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_439_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_222();
    l0 = self.box_MultipleAND_v2_439;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1042433726", "1042433726", "UNI51_010_B20", "box_MultipleAND_v2_439.Out", "box_ActivityObjectiveMarkerModifier_v3_222.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_152_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_153();
    l0 = self.box_Bind_v4_152;
    l1 = self.box_Bind_v4_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2082339938", "2082339938", "UNI51_010_B20", "box_Bind_v4_152.Bound", "box_Bind_v4_153.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_152_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_153();
    l0 = self.box_Bind_v4_152;
    l1 = self.box_Bind_v4_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|46238059", "46238059", "UNI51_010_B20", "box_Bind_v4_152.UnBound", "box_Bind_v4_153.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_368_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_119();
    l0 = self.box_SoundModifier_v2_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|157120252", "157120252", "UNI51_010_B20", "box_OutputOrder_v2_368.Out", "box_SoundModifier_v2_119.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_368_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_367();
    l0 = self.box_SoundModifier_v2_367;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|459885018", "459885018", "UNI51_010_B20", "box_OutputOrder_v2_368.Out", "box_SoundModifier_v2_367.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_368_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_502();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1157794744", "1157794744", "UNI51_010_B20", "box_OutputOrder_v2_368.Out", "box_Simple_Node_502.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_521_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_522();
    l0 = self.box_Bind_v4_521;
    l1 = self.box_Bind_v4_522;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1792500412", "1792500412", "UNI51_010_B20", "box_Bind_v4_521.Bound", "box_Bind_v4_522.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_177_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_179();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1258015188", "1258015188", "UNI51_010_B20", "box_ParticleSystem_v3_177.Started", "box_ParticleSystem_v3_179.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_177_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_179();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|927458750", "927458750", "UNI51_010_B20", "box_ParticleSystem_v3_177.Stopped", "box_ParticleSystem_v3_179.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_234_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_233();
    l0 = self.box_Delay_v5_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1392829335", "1392829335", "UNI51_010_B20", "box_EndActivityObjective_v2_234.Out", "box_Delay_v5_233.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_447_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_151();
    l0 = self.box_MultipleOR_447;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|134002993", "134002993", "UNI51_010_B20", "box_MultipleOR_447.Out", "box_IsValueNil_v3_151.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_154_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_557();
    l0 = self.box_Bind_v4_154;
    l1 = self.box_Bind_v4_557;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1380716729", "1380716729", "UNI51_010_B20", "box_Bind_v4_154.Bound", "box_Bind_v4_557.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_154_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_557();
    l0 = self.box_Bind_v4_154;
    l1 = self.box_Bind_v4_557;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|805010772", "805010772", "UNI51_010_B20", "box_Bind_v4_154.UnBound", "box_Bind_v4_557.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_254_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_192();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|646822374", "646822374", "UNI51_010_B20", "box_ActivityObjectiveMarkerModifier_v3_254.Disabled", "box_OutputOrder_v2_192.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_323_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_314();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1252244998", "1252244998", "UNI51_010_B20", "box_IsEntityLoaded_v3_323.True", "box_StaticBreakableBreaker_314.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_308_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1089419451", "1089419451", "UNI51_010_B20", "box_OutputOrder_v2_308.Out", "box_OnceOnly_v3_217.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_308_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_303();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|180132181", "180132181", "UNI51_010_B20", "box_OutputOrder_v2_308.Out", "box_IsEntityLoaded_v3_303.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_308_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_306();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1675717722", "1675717722", "UNI51_010_B20", "box_OutputOrder_v2_308.Out", "box_IsEntityLoaded_v3_306.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_308_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_319();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|846196004", "846196004", "UNI51_010_B20", "box_OutputOrder_v2_308.Out", "box_IsEntityLoaded_v3_319.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_308_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_321();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1872116058", "1872116058", "UNI51_010_B20", "box_OutputOrder_v2_308.Out", "box_IsEntityLoaded_v3_321.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_216_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_262();
    l0 = self.box_StaticBreakableListener_216;
    l1 = self.box_StaticBreakableListener_262;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1811208371", "1811208371", "UNI51_010_B20", "box_StaticBreakableListener_216.Enabled", "box_StaticBreakableListener_262.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_216_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_216;
    l1 = self.box_MultipleOR_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|548765833", "548765833", "UNI51_010_B20", "box_StaticBreakableListener_216.OnBreak", "box_MultipleOR_213.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PositionModifier_v2_270_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_268();
    l0 = self.box_PositionModifier_v2_270;
    l1 = self.box_PositionModifier_v2_268;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|886892365", "886892365", "UNI51_010_B20", "box_PositionModifier_v2_270.StartOut", "box_PositionModifier_v2_268.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_390_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_393();
    l0 = self.box_SoundModifier_v2_390;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1511315217", "1511315217", "UNI51_010_B20", "box_SoundModifier_v2_390.Started", "box_OutputOrder_v2_393.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_249_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_256();
    l0 = self.box_StaticBreakableListener_249;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|555712525", "555712525", "UNI51_010_B20", "box_StaticBreakableListener_249.Enabled", "box_OutputOrder_v2_256.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_249_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_249;
    l1 = self.box_MultipleOR_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1026380039", "1026380039", "UNI51_010_B20", "box_StaticBreakableListener_249.OnBreak", "box_MultipleOR_213.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_318_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_324();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|368329008", "368329008", "UNI51_010_B20", "box_IsEntityLoaded_v3_318.True", "box_StaticBreakableBreaker_324.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_86_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_257();
    l0 = self.box_OnceOnly_v3_86;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1206274209", "1206274209", "UNI51_010_B20", "box_OnceOnly_v3_86.Out", "box_OutputOrder_v2_257.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_570_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_191();
    l0 = self.box_EntityStatusListener_570;
    l1 = self.box_Bind_v4_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1787532733", "1787532733", "UNI51_010_B20", "box_EntityStatusListener_570.Loaded", "box_Bind_v4_191.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_179_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_180();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1412957461", "1412957461", "UNI51_010_B20", "box_ParticleSystem_v3_179.Started", "box_ParticleSystem_v3_180.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_179_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_180();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|970004348", "970004348", "UNI51_010_B20", "box_ParticleSystem_v3_179.Stopped", "box_ParticleSystem_v3_180.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_478_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_481();
    l0 = self.box_SoundModifier_v2_481;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|807913242", "807913242", "UNI51_010_B20", "box_OutputOrder_v2_478.Out", "box_SoundModifier_v2_481.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_478_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_483();
    l0 = self.box_SoundModifier_v2_483;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|921329485", "921329485", "UNI51_010_B20", "box_OutputOrder_v2_478.Out", "box_SoundModifier_v2_483.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Bind_v4_166_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_152();
    l0 = self.box_Bind_v4_166;
    l1 = self.box_Bind_v4_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|175934081", "175934081", "UNI51_010_B20", "box_Bind_v4_166.Bound", "box_Bind_v4_152.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_166_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_152();
    l0 = self.box_Bind_v4_166;
    l1 = self.box_Bind_v4_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|665813216", "665813216", "UNI51_010_B20", "box_Bind_v4_166.UnBound", "box_Bind_v4_152.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_558_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_568();
    l0 = self.box_EntityStatusListener_568;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1975556701", "1975556701", "UNI51_010_B20", "box_OutputOrder_v2_558.Out", "box_EntityStatusListener_568.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_558_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_569();
    l0 = self.box_EntityStatusListener_569;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|182302866", "182302866", "UNI51_010_B20", "box_OutputOrder_v2_558.Out", "box_EntityStatusListener_569.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_558_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_570();
    l0 = self.box_EntityStatusListener_570;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1195118695", "1195118695", "UNI51_010_B20", "box_OutputOrder_v2_558.Out", "box_EntityStatusListener_570.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_558_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_571();
    l0 = self.box_EntityStatusListener_571;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|3318224", "3318224", "UNI51_010_B20", "box_OutputOrder_v2_558.Out", "box_EntityStatusListener_571.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_558_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_572();
    l0 = self.box_EntityStatusListener_572;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1594247687", "1594247687", "UNI51_010_B20", "box_OutputOrder_v2_558.Out", "box_EntityStatusListener_572.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_84_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_91();
    l0 = self.box_Delay_v5_84;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1613977242", "1613977242", "UNI51_010_B20", "box_Delay_v5_84.TimeElapsed", "box_UseContextualActionModifier_v3_91.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_235_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_77();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|260120207", "260120207", "UNI51_010_B20", "box_OutputOrder_v2_235.Out", "box_ActivityObjectiveMarkerModifier_v3_77.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_235_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_10();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|364265614", "364265614", "UNI51_010_B20", "box_OutputOrder_v2_235.Out", "box_IsEntityLoaded_v3_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_235_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_435();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1183780444", "1183780444", "UNI51_010_B20", "box_OutputOrder_v2_235.Out", "box_IsEntityLoaded_v3_435.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_96_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_95();
    l0 = self.box_SoundModifier_v2_96;
    l1 = self.box_SoundModifier_v2_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1876274764", "1876274764", "UNI51_010_B20", "box_SoundModifier_v2_96.Started", "box_SoundModifier_v2_95.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_198_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_156();
    l0 = self.box_Bind_v4_198;
    l1 = self.box_Bind_v4_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|52471437", "52471437", "UNI51_010_B20", "box_Bind_v4_198.Bound", "box_Bind_v4_156.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_MetaBreakableModifier_v2_527_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_528();
    l0 = self.box_MetaBreakableModifier_v2_527;
    l1 = self.box_MetaBreakableModifier_v2_528;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|750913347", "750913347", "UNI51_010_B20", "box_MetaBreakableModifier_v2_527.OnSetUnDamageable", "box_MetaBreakableModifier_v2_528.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_StaticBreakableListener_287_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_286();
    l0 = self.box_StaticBreakableListener_287;
    l1 = self.box_StaticBreakableListener_286;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1575309066", "1575309066", "UNI51_010_B20", "box_StaticBreakableListener_287.Disabled", "box_StaticBreakableListener_286.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_287_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_286();
    l0 = self.box_StaticBreakableListener_287;
    l1 = self.box_StaticBreakableListener_286;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1257121683", "1257121683", "UNI51_010_B20", "box_StaticBreakableListener_287.Enabled", "box_StaticBreakableListener_286.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_287_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_287;
    l1 = self.box_MultipleOR_291;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1594766611", "1594766611", "UNI51_010_B20", "box_StaticBreakableListener_287.OnBreak", "box_MultipleOR_291.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ParticleSystem_v3_175_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_176();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|828643034", "828643034", "UNI51_010_B20", "box_ParticleSystem_v3_175.Started", "box_ParticleSystem_v3_176.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_175_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_176();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|154023326", "154023326", "UNI51_010_B20", "box_ParticleSystem_v3_175.Stopped", "box_ParticleSystem_v3_176.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_346_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_345();
    l0 = self.box_ProximityTrigger_v2_346;
    l1 = self.box_SoundModifier_v2_345;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|362941143", "362941143", "UNI51_010_B20", "box_ProximityTrigger_v2_346.Enter", "box_SoundModifier_v2_345.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_564_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_565();
    l0 = self.box_RemoveEntity_v2_564;
    l1 = self.box_RemoveEntity_v2_565;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|455409785", "455409785", "UNI51_010_B20", "box_RemoveEntity_v2_564.Out", "box_RemoveEntity_v2_565.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_476_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_469();
    l0 = self.box_SoundModifier_v2_469;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|922474326", "922474326", "UNI51_010_B20", "box_OutputOrder_v2_476.Out", "box_SoundModifier_v2_469.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_476_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_472();
    l0 = self.box_SoundModifier_v2_472;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|903543703", "903543703", "UNI51_010_B20", "box_OutputOrder_v2_476.Out", "box_SoundModifier_v2_472.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_176_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_174();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|613007548", "613007548", "UNI51_010_B20", "box_ParticleSystem_v3_176.Started", "box_ParticleSystem_v3_174.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_176_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_174();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2027077092", "2027077092", "UNI51_010_B20", "box_ParticleSystem_v3_176.Stopped", "box_ParticleSystem_v3_174.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_164_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_166();
    l0 = self.box_Bind_v4_164;
    l1 = self.box_Bind_v4_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1465561998", "1465561998", "UNI51_010_B20", "box_Bind_v4_164.Bound", "box_Bind_v4_166.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_455_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PawnWeaponCheck_v3_451();
    l0 = self.box_MultipleOR_455;
    l1 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1627372690", "1627372690", "UNI51_010_B20", "box_MultipleOR_455.Out", "box_PawnWeaponCheck_v3_451.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI51_EquipWeapon_341_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_461();
    l0 = self.box_UNI51_EquipWeapon_341;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2072528249", "2072528249", "UNI51_010_B20", "box_UNI51_EquipWeapon_341.Done", "box_OutputOrder_v2_461.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_316_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_313();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|891254820", "891254820", "UNI51_010_B20", "box_IsEntityLoaded_v3_316.True", "box_StaticBreakableBreaker_313.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_515_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_516();
    l0 = self.box_HealthListener_v6_515;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|528760586", "528760586", "UNI51_010_B20", "box_HealthListener_v6_515.Damaged", "box_ActivityObjectiveMarkerModifier_v3_516.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_556_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_199();
    l0 = self.box_Bind_v4_556;
    l1 = self.box_Bind_v4_199;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1225823198", "1225823198", "UNI51_010_B20", "box_Bind_v4_556.Bound", "box_Bind_v4_199.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_162_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_198();
    l0 = self.box_Bind_v4_162;
    l1 = self.box_Bind_v4_198;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|498184164", "498184164", "UNI51_010_B20", "box_Bind_v4_162.Bound", "box_Bind_v4_198.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_579_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_584;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|606170153", "606170153", "UNI51_010_B20", "box_IsEntityLoaded_v3_579.False", "box_MultipleOR_584.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IsEntityLoaded_v3_579_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_582();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1149294685", "1149294685", "UNI51_010_B20", "box_IsEntityLoaded_v3_579.True", "box_IsEntityLoaded_v3_582.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_205_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_GetInventoryItemQuantity_203();
    l0 = self.box_CoopActivePlayers_205;
    l1 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1498569824", "1498569824", "UNI51_010_B20", "box_CoopActivePlayers_205.PlayerAdded", "box_GetInventoryItemQuantity_203.GetNumberOfItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetNumberOfItems
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_205_TwoPlayers()
    self:OnExit_box_CoopActivePlayers_205_TwoPlayers();
end;

function export:f_box_SoundModifier_v2_338_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_354();
    l0 = self.box_SoundModifier_v2_338;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1779397765", "1779397765", "UNI51_010_B20", "box_SoundModifier_v2_338.Started", "box_OutputOrder_v2_354.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_231_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_237;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1017453349", "1017453349", "UNI51_010_B20", "box_ActivityObjectiveMarkerModifier_v3_231.Disabled", "box_MultipleOR_237.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_ProximityTrigger_v2_499_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_378();
    l0 = self.box_ProximityTrigger_v2_499;
    l1 = self.box_SoundModifier_v2_378;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|322195784", "322195784", "UNI51_010_B20", "box_ProximityTrigger_v2_499.Enter", "box_SoundModifier_v2_378.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_188_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_167();
    l0 = self.box_Bind_v4_188;
    l1 = self.box_Bind_v4_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1304873381", "1304873381", "UNI51_010_B20", "box_Bind_v4_188.Bound", "box_Bind_v4_167.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_SetActivityObjectiveProgress_v2_69_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_80();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2064534294", "2064534294", "UNI51_010_B20", "box_SetActivityObjectiveProgress_v2_69.Out", "box_Compare_Integers_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_259_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_185();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|890768081", "890768081", "UNI51_010_B20", "box_ActivityObjectiveMarkerModifier_v3_259.Disabled", "box_OutputOrder_v2_185.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_57();
    l0 = self.box_MultipleOR_56;
    l1 = self.box_PositionModifier_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1119239076", "1119239076", "UNI51_010_B20", "box_MultipleOR_56.Out", "box_PositionModifier_v2_57.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_232_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_39();
    l0 = self.box_StaticBreakableListener_232;
    l1 = self.box_StaticBreakableListener_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2028404490", "2028404490", "UNI51_010_B20", "box_StaticBreakableListener_232.Enabled", "box_StaticBreakableListener_39.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_232_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_232;
    l1 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1853029983", "1853029983", "UNI51_010_B20", "box_StaticBreakableListener_232.OnBreak", "box_MultipleOR_90.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_577_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_584;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|662511816", "662511816", "UNI51_010_B20", "box_IsEntityLoaded_v3_577.False", "box_MultipleOR_584.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_IsEntityLoaded_v3_577_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_580();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1221766607", "1221766607", "UNI51_010_B20", "box_IsEntityLoaded_v3_577.True", "box_IsEntityLoaded_v3_580.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_218_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_302();
    l0 = self.box_MultipleOR_218;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1309545760", "1309545760", "UNI51_010_B20", "box_MultipleOR_218.Out", "box_OutputOrder_v2_302.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_118_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_363();
    l0 = self.box_StaticBreakableListener_118;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1442746339", "1442746339", "UNI51_010_B20", "box_StaticBreakableListener_118.OnBreak", "box_OutputOrder_v2_363.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_353_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_495;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1589755095", "1589755095", "UNI51_010_B20", "box_OutputOrder_v2_353.Out", "box_MultipleOR_495.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_353_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_351();
    l0 = self.box_SoundModifier_v2_351;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1763804303", "1763804303", "UNI51_010_B20", "box_OutputOrder_v2_353.Out", "box_SoundModifier_v2_351.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_RestrictedItemModifier_61_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_265();
    l0 = self.box_RestrictedItemModifier_61;
    l1 = self.box_GunsForHireSystemModifier_265;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|185301558", "185301558", "UNI51_010_B20", "box_RestrictedItemModifier_61.Out", "box_GunsForHireSystemModifier_265.EnableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- EnableGFHSystem
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_471_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_468();
    l0 = self.box_SoundModifier_v2_468;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|865200784", "865200784", "UNI51_010_B20", "box_OutputOrder_v2_471.Out", "box_SoundModifier_v2_468.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_471_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_488();
    l0 = self.box_SoundModifier_v2_488;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1775604281", "1775604281", "UNI51_010_B20", "box_OutputOrder_v2_471.Out", "box_SoundModifier_v2_488.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_482_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_486();
    l0 = self.box_SoundModifier_v2_486;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|185986963", "185986963", "UNI51_010_B20", "box_OutputOrder_v2_482.Out", "box_SoundModifier_v2_486.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_482_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_479();
    l0 = self.box_SoundModifier_v2_479;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|666204817", "666204817", "UNI51_010_B20", "box_OutputOrder_v2_482.Out", "box_SoundModifier_v2_479.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_79_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_40();
    l0 = self.box_StaticBreakableListener_79;
    l1 = self.box_StaticBreakableListener_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1430406157", "1430406157", "UNI51_010_B20", "box_StaticBreakableListener_79.Enabled", "box_StaticBreakableListener_40.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_79_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_79;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|69360799", "69360799", "UNI51_010_B20", "box_StaticBreakableListener_79.OnBreak", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_348_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_337();
    l0 = self.box_ProximityTrigger_v2_348;
    l1 = self.box_SoundModifier_v2_337;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1908971426", "1908971426", "UNI51_010_B20", "box_ProximityTrigger_v2_348.Enter", "box_SoundModifier_v2_337.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_IntegerArithmetics_v2_266_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_266_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_240();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1508439949", "1508439949", "UNI51_010_B20", "box_IntegerArithmetics_v2_266.Out", "box_SetActivityObjectiveProgress_v2_240.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_519_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_514();
    l0 = self.box_HealthListener_v6_514;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|811557341", "811557341", "UNI51_010_B20", "box_ActivityObjectiveMarkerModifier_v3_519.Enabled", "box_HealthListener_v6_514.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_310_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_305();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1819379119", "1819379119", "UNI51_010_B20", "box_IsEntityLoaded_v3_310.True", "box_StaticBreakableBreaker_305.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_518_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_517();
    l0 = self.box_MultipleAND_v2_518;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1466039683", "1466039683", "UNI51_010_B20", "box_MultipleAND_v2_518.Out", "box_EndActivityObjective_v2_517.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_158_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_164();
    l0 = self.box_Bind_v4_158;
    l1 = self.box_Bind_v4_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1445095859", "1445095859", "UNI51_010_B20", "box_Bind_v4_158.Bound", "box_Bind_v4_164.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_261_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_21();
    l0 = self.box_SpawnAI_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1133343329", "1133343329", "UNI51_010_B20", "box_EndActivityObjective_v2_261.Out", "box_SpawnAI_21.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_223_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_49();
    l0 = self.box_StaticBreakableListener_223;
    l1 = self.box_StaticBreakableListener_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|386120800", "386120800", "UNI51_010_B20", "box_StaticBreakableListener_223.Enabled", "box_StaticBreakableListener_49.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_223_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_223;
    l1 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|285737700", "285737700", "UNI51_010_B20", "box_StaticBreakableListener_223.OnBreak", "box_MultipleOR_65.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SoundModifier_v2_356_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_357();
    l0 = self.box_SoundModifier_v2_356;
    l1 = self.box_SoundModifier_v2_357;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|493946074", "493946074", "UNI51_010_B20", "box_SoundModifier_v2_356.Started", "box_SoundModifier_v2_357.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_55_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_406();
    l0 = self.box_PositionModifier_v2_55;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|503149931", "503149931", "UNI51_010_B20", "box_PositionModifier_v2_55.Done", "box_OutputOrder_v2_406.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Print_v2_28_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_31();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|778498715", "778498715", "UNI51_010_B20", "box_Print_v2_28.PrintedToScreen", "box_ActivityRetry_31.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_165_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_159();
    l0 = self.box_Bind_v4_165;
    l1 = self.box_Bind_v4_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1780039216", "1780039216", "UNI51_010_B20", "box_Bind_v4_165.Bound", "box_Bind_v4_159.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_CoopActivePlayers_457_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_GetInventoryItemQuantity_458();
    l0 = self.box_CoopActivePlayers_457;
    l1 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1135511115", "1135511115", "UNI51_010_B20", "box_CoopActivePlayers_457.PlayerAdded", "box_GetInventoryItemQuantity_458.GetNumberOfItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetNumberOfItems
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_457_TwoPlayers()
    self:OnExit_box_CoopActivePlayers_457_TwoPlayers();
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|970874431", "970874431", "UNI51_010_B20", "box_OutputOrder_v2_7.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_19();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1537881808", "1537881808", "UNI51_010_B20", "box_OutputOrder_v2_7.Out", "box_Simple_Node_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_2();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|253204446", "253204446", "UNI51_010_B20", "box_OutputOrder_v2_7.Out", "box_ActivityEnd_2.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_74_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_87();
    l0 = self.box_Bind_v4_74;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1536466484", "1536466484", "UNI51_010_B20", "box_Bind_v4_74.Bound", "box_OutputOrder_v2_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_278_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_276();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2103276226", "2103276226", "UNI51_010_B20", "box_IsEntityLoaded_v3_278.True", "box_StaticBreakableBreaker_276.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_151_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RestrictedItemModifier_444();
    l0 = self.box_RestrictedItemModifier_444;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2035588604", "2035588604", "UNI51_010_B20", "box_IsValueNil_v3_151.No", "box_RestrictedItemModifier_444.AddItem", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddItem
    l0:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_574_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_584;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|248330206", "248330206", "UNI51_010_B20", "box_IsEntityLoaded_v3_574.False", "box_MultipleOR_584.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_IsEntityLoaded_v3_574_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_575();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|366701397", "366701397", "UNI51_010_B20", "box_IsEntityLoaded_v3_574.True", "box_IsEntityLoaded_v3_575.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_367_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_366();
    l0 = self.box_SoundModifier_v2_367;
    l1 = self.box_SoundModifier_v2_366;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|734459755", "734459755", "UNI51_010_B20", "box_SoundModifier_v2_367.Started", "box_SoundModifier_v2_366.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_560_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_155();
    l0 = self.box_Bind_v4_560;
    l1 = self.box_Bind_v4_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1573146069", "1573146069", "UNI51_010_B20", "box_Bind_v4_560.Bound", "box_Bind_v4_155.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_406_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1283562538", "1283562538", "UNI51_010_B20", "box_OutputOrder_v2_406.Out", "box_MultipleOR_41.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_406_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_423();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|921703961", "921703961", "UNI51_010_B20", "box_OutputOrder_v2_406.Out", "box_Simple_Node_423.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_525_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_526();
    l0 = self.box_MetaBreakableModifier_v2_525;
    l1 = self.box_MetaBreakableModifier_v2_526;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|673466998", "673466998", "UNI51_010_B20", "box_MetaBreakableModifier_v2_525.OnSetUnDamageable", "box_MetaBreakableModifier_v2_526.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_SoundModifier_v2_403_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_404();
    l0 = self.box_SoundModifier_v2_403;
    l1 = self.box_SoundModifier_v2_404;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1811415056", "1811415056", "UNI51_010_B20", "box_SoundModifier_v2_403.Started", "box_SoundModifier_v2_404.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_113_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_129();
    l0 = self.box_StaticBreakableListener_113;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|754384058", "754384058", "UNI51_010_B20", "box_StaticBreakableListener_113.OnBreak", "box_OutputOrder_v2_129.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_524_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_525();
    l0 = self.box_MetaBreakableModifier_v2_524;
    l1 = self.box_MetaBreakableModifier_v2_525;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|837230909", "837230909", "UNI51_010_B20", "box_MetaBreakableModifier_v2_524.OnSetUnDamageable", "box_MetaBreakableModifier_v2_525.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_Compare_Integers_80_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_234();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1923706883", "1923706883", "UNI51_010_B20", "box_Compare_Integers_80.A_ge_B", "box_EndActivityObjective_v2_234.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_540_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_542();
    l0 = self.box_MetaBreakableModifier_v2_540;
    l1 = self.box_MetaBreakableModifier_v2_542;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|942392095", "942392095", "UNI51_010_B20", "box_MetaBreakableModifier_v2_540.OnSetDamageable", "box_MetaBreakableModifier_v2_542.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_63_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_63;
    l1 = self.box_OnceOnly_v3_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1003704423", "1003704423", "UNI51_010_B20", "box_MultipleOR_63.Out", "box_OnceOnly_v3_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_501_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_499();
    l0 = self.box_MultipleOR_501;
    l1 = self.box_ProximityTrigger_v2_499;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|353498834", "353498834", "UNI51_010_B20", "box_MultipleOR_501.Out", "box_ProximityTrigger_v2_499.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_40_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_223();
    l0 = self.box_StaticBreakableListener_40;
    l1 = self.box_StaticBreakableListener_223;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|908179422", "908179422", "UNI51_010_B20", "box_StaticBreakableListener_40.Enabled", "box_StaticBreakableListener_223.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_40_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_40;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|205265317", "205265317", "UNI51_010_B20", "box_StaticBreakableListener_40.OnBreak", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Bind_v4_522_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_277();
    l0 = self.box_Bind_v4_522;
    l1 = self.box_RestrictedItemModifier_277;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1207450949", "1207450949", "UNI51_010_B20", "box_Bind_v4_522.Bound", "box_RestrictedItemModifier_277.Clear", l0:GetLuaBox(), l1:GetLuaBox());
    -- Clear
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_306_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_309();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1456547766", "1456547766", "UNI51_010_B20", "box_IsEntityLoaded_v3_306.True", "box_StaticBreakableBreaker_309.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_413_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_36();
    l0 = self.box_PositionModifier_v2_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1681608624", "1681608624", "UNI51_010_B20", "box_OutputOrder_v2_413.Out", "box_PositionModifier_v2_36.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_413_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_428();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|750394353", "750394353", "UNI51_010_B20", "box_OutputOrder_v2_413.Out", "box_Simple_Node_428.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_29_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Strings_32();
    l0 = self.box_HealthListener_v6_29;
    l1 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1780452548", "1780452548", "UNI51_010_B20", "box_HealthListener_v6_29.Damaged", "box_Compare_Strings_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_29_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_512();
    l0 = self.box_HealthListener_v6_29;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2086181567", "2086181567", "UNI51_010_B20", "box_HealthListener_v6_29.Enabled", "box_AddActivityObjective_v2_512.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_37();
    l0 = self.box_RemoveEntity_v2_25;
    l1 = self.box_RemoveEntity_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2009856517", "2009856517", "UNI51_010_B20", "box_RemoveEntity_v2_25.Out", "box_RemoveEntity_v2_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_169_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_171();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1109700495", "1109700495", "UNI51_010_B20", "box_ParticleSystem_v3_169.Started", "box_ParticleSystem_v3_171.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_169_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_171();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|486103208", "486103208", "UNI51_010_B20", "box_ParticleSystem_v3_169.Stopped", "box_ParticleSystem_v3_171.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_83_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_220();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|795359155", "795359155", "UNI51_010_B20", "box_Compare_Strings_83.A_neq_B", "box_Compare_Strings_220.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_561_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_190();
    l0 = self.box_Bind_v4_561;
    l1 = self.box_Bind_v4_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|228397318", "228397318", "UNI51_010_B20", "box_Bind_v4_561.Bound", "box_Bind_v4_190.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_561_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_190();
    l0 = self.box_Bind_v4_561;
    l1 = self.box_Bind_v4_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|614939827", "614939827", "UNI51_010_B20", "box_Bind_v4_561.UnBound", "box_Bind_v4_190.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_569_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_163();
    l0 = self.box_EntityStatusListener_569;
    l1 = self.box_Bind_v4_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1343959325", "1343959325", "UNI51_010_B20", "box_EntityStatusListener_569.Loaded", "box_Bind_v4_163.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_87_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_288();
    l0 = self.box_StaticBreakableListener_288;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|879411973", "879411973", "UNI51_010_B20", "box_OutputOrder_v2_87.Out", "box_StaticBreakableListener_288.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_87_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI51_EquipWeapon_343();
    l0 = self.box_UNI51_EquipWeapon_343;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|676752212", "676752212", "UNI51_010_B20", "box_OutputOrder_v2_87.Out", "box_UNI51_EquipWeapon_343.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_87_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_208();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2018183466", "2018183466", "UNI51_010_B20", "box_OutputOrder_v2_87.Out", "box_UseContextualActionModifier_v3_208.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_563();
    l0 = self.box_RemoveEntity_v2_37;
    l1 = self.box_RemoveEntity_v2_563;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|358975256", "358975256", "UNI51_010_B20", "box_RemoveEntity_v2_37.Out", "box_RemoveEntity_v2_563.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_449_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_465();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1700361880", "1700361880", "UNI51_010_B20", "box_OutputOrder_v2_449.Out", "box_Simple_Node_465.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_449_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI51_EquipWeapon_342();
    l0 = self.box_UNI51_EquipWeapon_342;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|372850478", "372850478", "UNI51_010_B20", "box_OutputOrder_v2_449.Out", "box_UNI51_EquipWeapon_342.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_Bind_v4_557_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_157();
    l0 = self.box_Bind_v4_557;
    l1 = self.box_Bind_v4_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1305534209", "1305534209", "UNI51_010_B20", "box_Bind_v4_557.Bound", "box_Bind_v4_157.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_557_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_157();
    l0 = self.box_Bind_v4_557;
    l1 = self.box_Bind_v4_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|534220936", "534220936", "UNI51_010_B20", "box_Bind_v4_557.UnBound", "box_Bind_v4_157.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_436_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_81();
    l0 = self.box_MultipleAND_v2_436;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|560599517", "560599517", "UNI51_010_B20", "box_MultipleAND_v2_436.Out", "box_ActivityObjectiveMarkerModifier_v3_81.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_339_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_360();
    l0 = self.box_SoundModifier_v2_339;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1760616477", "1760616477", "UNI51_010_B20", "box_SoundModifier_v2_339.Started", "box_OutputOrder_v2_360.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_184_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_182();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|629305920", "629305920", "UNI51_010_B20", "box_ParticleSystem_v3_184.Started", "box_ParticleSystem_v3_182.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_184_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_182();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|916391269", "916391269", "UNI51_010_B20", "box_ParticleSystem_v3_184.Stopped", "box_ParticleSystem_v3_182.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_114_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_130();
    l0 = self.box_StaticBreakableListener_114;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2049066194", "2049066194", "UNI51_010_B20", "box_StaticBreakableListener_114.OnBreak", "box_OutputOrder_v2_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_257_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_251();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|460745961", "460745961", "UNI51_010_B20", "box_OutputOrder_v2_257.Out", "box_ActivityObjectiveMarkerModifier_v3_251.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_257_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_250();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1364726218", "1364726218", "UNI51_010_B20", "box_OutputOrder_v2_257.Out", "box_ActivityObjectiveMarkerModifier_v3_250.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_461_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_282();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|341527357", "341527357", "UNI51_010_B20", "box_OutputOrder_v2_461.Out", "box_OutputOrder_v2_282.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_511_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_573();
    l0 = self.box_GunsForHireSystemModifier_511;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|389694530", "389694530", "UNI51_010_B20", "box_GunsForHireSystemModifier_511.Disabled", "box_IsEntityLoaded_v3_573.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_159_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_555();
    l0 = self.box_Bind_v4_159;
    l1 = self.box_Bind_v4_555;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1362260578", "1362260578", "UNI51_010_B20", "box_Bind_v4_159.Bound", "box_Bind_v4_555.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_416_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_58();
    l0 = self.box_PositionModifier_v2_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1779030233", "1779030233", "UNI51_010_B20", "box_OutputOrder_v2_416.Out", "box_PositionModifier_v2_58.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_416_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_426();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1129456840", "1129456840", "UNI51_010_B20", "box_OutputOrder_v2_416.Out", "box_Simple_Node_426.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_581_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_584;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1565918228", "1565918228", "UNI51_010_B20", "box_IsEntityLoaded_v3_581.False", "box_MultipleOR_584.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_581_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_71();
    l0 = self.box_Bind_v4_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1442980437", "1442980437", "UNI51_010_B20", "box_IsEntityLoaded_v3_581.True", "box_Bind_v4_71.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_219_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_308();
    l0 = self.box_MultipleOR_219;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|70758443", "70758443", "UNI51_010_B20", "box_MultipleOR_219.Out", "box_OutputOrder_v2_308.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_62_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_235();
    l0 = self.box_OnceOnly_v3_62;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|278776104", "278776104", "UNI51_010_B20", "box_OnceOnly_v3_62.Out", "box_OutputOrder_v2_235.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RestrictedItemModifier_277_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_202();
    l0 = self.box_RestrictedItemModifier_277;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2116516500", "2116516500", "UNI51_010_B20", "box_RestrictedItemModifier_277.Out", "box_OutputOrder_v2_202.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_302_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_271;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|681173581", "681173581", "UNI51_010_B20", "box_OutputOrder_v2_302.Out", "box_OnceOnly_v3_271.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_302_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_298();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1838533588", "1838533588", "UNI51_010_B20", "box_OutputOrder_v2_302.Out", "box_IsEntityLoaded_v3_298.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_302_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_278();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|390999242", "390999242", "UNI51_010_B20", "box_OutputOrder_v2_302.Out", "box_IsEntityLoaded_v3_278.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_302_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_322();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|480146497", "480146497", "UNI51_010_B20", "box_OutputOrder_v2_302.Out", "box_IsEntityLoaded_v3_322.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_302_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_326();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1341966414", "1341966414", "UNI51_010_B20", "box_OutputOrder_v2_302.Out", "box_IsEntityLoaded_v3_326.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_372_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_120();
    l0 = self.box_SoundModifier_v2_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1804520715", "1804520715", "UNI51_010_B20", "box_OutputOrder_v2_372.Out", "box_SoundModifier_v2_120.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_372_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_335();
    l0 = self.box_SoundModifier_v2_335;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|495993474", "495993474", "UNI51_010_B20", "box_OutputOrder_v2_372.Out", "box_SoundModifier_v2_335.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_372_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_505();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1710284029", "1710284029", "UNI51_010_B20", "box_OutputOrder_v2_372.Out", "box_Simple_Node_505.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_496_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_347();
    l0 = self.box_MultipleOR_496;
    l1 = self.box_ProximityTrigger_v2_347;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2068293366", "2068293366", "UNI51_010_B20", "box_MultipleOR_496.Out", "box_ProximityTrigger_v2_347.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_47_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_79();
    l0 = self.box_StaticBreakableListener_47;
    l1 = self.box_StaticBreakableListener_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|463112385", "463112385", "UNI51_010_B20", "box_StaticBreakableListener_47.Enabled", "box_StaticBreakableListener_79.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_47_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_47;
    l1 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|723388377", "723388377", "UNI51_010_B20", "box_StaticBreakableListener_47.OnBreak", "box_MultipleOR_60.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_50();
    l0 = self.box_MultipleOR_53;
    l1 = self.box_PositionModifier_v2_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|154228430", "154228430", "UNI51_010_B20", "box_MultipleOR_53.Out", "box_PositionModifier_v2_50.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1529348441", "1529348441", "UNI51_010_B20", "box_OutputOrder_v2_20.Out", "box_OutputOrder_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1283450405", "1283450405", "UNI51_010_B20", "box_OutputOrder_v2_20.Out", "box_OutputOrder_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1388924260", "1388924260", "UNI51_010_B20", "box_OutputOrder_v2_20.Out", "box_OutputOrder_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|948663537", "948663537", "UNI51_010_B20", "box_OutputOrder_v2_20.Out", "box_OutputOrder_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_144();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1937937749", "1937937749", "UNI51_010_B20", "box_OutputOrder_v2_20.Out", "box_Simple_Node_144.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MetaBreakableModifier_v2_548_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_541();
    l0 = self.box_MetaBreakableModifier_v2_548;
    l1 = self.box_MetaBreakableModifier_v2_541;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1282114614", "1282114614", "UNI51_010_B20", "box_MetaBreakableModifier_v2_548.OnSetDamageable", "box_MetaBreakableModifier_v2_541.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_364_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_365();
    l0 = self.box_SoundModifier_v2_364;
    l1 = self.box_SoundModifier_v2_365;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1736778094", "1736778094", "UNI51_010_B20", "box_SoundModifier_v2_364.Started", "box_SoundModifier_v2_365.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_90_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_90;
    l1 = self.box_OnceOnly_v3_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1132518008", "1132518008", "UNI51_010_B20", "box_MultipleOR_90.Out", "box_OnceOnly_v3_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PositionModifier_v2_268_Done()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_566();
    l0 = self.box_PositionModifier_v2_268;
    l1 = self.box_RemoveEntity_v2_566;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|66723187", "66723187", "UNI51_010_B20", "box_PositionModifier_v2_268.Done", "box_RemoveEntity_v2_566.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_268_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_547();
    l0 = self.box_PositionModifier_v2_268;
    l1 = self.box_MetaBreakableModifier_v2_547;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1984067406", "1984067406", "UNI51_010_B20", "box_PositionModifier_v2_268.StartOut", "box_MetaBreakableModifier_v2_547.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_MetaBreakableModifier_v2_549_OnSetDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_553();
    l0 = self.box_MetaBreakableModifier_v2_549;
    l1 = self.box_MetaBreakableModifier_v2_553;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1880671281", "1880671281", "UNI51_010_B20", "box_MetaBreakableModifier_v2_549.OnSetDamageable", "box_MetaBreakableModifier_v2_553.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_361_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_336();
    l0 = self.box_ProximityTrigger_v2_336;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|797356436", "797356436", "UNI51_010_B20", "box_OutputOrder_v2_361.Out", "box_ProximityTrigger_v2_336.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_361_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_340();
    l0 = self.box_ProximityTrigger_v2_340;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1960333206", "1960333206", "UNI51_010_B20", "box_OutputOrder_v2_361.Out", "box_ProximityTrigger_v2_340.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_361_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_346();
    l0 = self.box_ProximityTrigger_v2_346;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1525843105", "1525843105", "UNI51_010_B20", "box_OutputOrder_v2_361.Out", "box_ProximityTrigger_v2_346.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_361_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_347();
    l0 = self.box_ProximityTrigger_v2_347;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|884296875", "884296875", "UNI51_010_B20", "box_OutputOrder_v2_361.Out", "box_ProximityTrigger_v2_347.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_361_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_348();
    l0 = self.box_ProximityTrigger_v2_348;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1940647592", "1940647592", "UNI51_010_B20", "box_OutputOrder_v2_361.Out", "box_ProximityTrigger_v2_348.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MetaBreakableModifier_v2_534_OnSetUnDamageable()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_536();
    l0 = self.box_MetaBreakableModifier_v2_534;
    l1 = self.box_MetaBreakableModifier_v2_536;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|290170815", "290170815", "UNI51_010_B20", "box_MetaBreakableModifier_v2_534.OnSetUnDamageable", "box_MetaBreakableModifier_v2_536.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_PositionModifier_v2_16_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_26();
    l0 = self.box_PositionModifier_v2_16;
    l1 = self.box_PositionModifier_v2_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1137335831", "1137335831", "UNI51_010_B20", "box_PositionModifier_v2_16.StartOut", "box_PositionModifier_v2_26.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_214_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_214;
    l1 = self.box_MultipleOR_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1768373912", "1768373912", "UNI51_010_B20", "box_StaticBreakableListener_214.OnBreak", "box_MultipleOR_218.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_145_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_67();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1472390280", "1472390280", "UNI51_010_B20", "box_OutputOrder_v2_145.Out", "box_AddActivityObjective_v2_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_148();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1231461478", "1231461478", "UNI51_010_B20", "box_OutputOrder_v2_145.Out", "box_Simple_Node_148.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_420();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1899683974", "1899683974", "UNI51_010_B20", "box_OutputOrder_v2_145.Out", "box_Simple_Node_420.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_145_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_421();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|508714502", "508714502", "UNI51_010_B20", "box_OutputOrder_v2_145.Out", "box_Simple_Node_421.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1768243375", "1768243375", "UNI51_010_B20", "box_OutputOrder_v2_9.Out", "box_ActivityAcknowledgeGate_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_8();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|387260975", "387260975", "UNI51_010_B20", "box_OutputOrder_v2_9.Out", "box_Print_v2_8.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_135();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|138432793", "138432793", "UNI51_010_B20", "box_OutputOrder_v2_9.Out", "box_Simple_Node_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_163_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_162();
    l0 = self.box_Bind_v4_163;
    l1 = self.box_Bind_v4_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|381919780", "381919780", "UNI51_010_B20", "box_Bind_v4_163.Bound", "box_Bind_v4_162.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_498_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_377();
    l0 = self.box_MultipleOR_498;
    l1 = self.box_ProximityTrigger_v2_377;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2026245455", "2026245455", "UNI51_010_B20", "box_MultipleOR_498.Out", "box_ProximityTrigger_v2_377.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_495_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_348();
    l0 = self.box_MultipleOR_495;
    l1 = self.box_ProximityTrigger_v2_348;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|69003616", "69003616", "UNI51_010_B20", "box_MultipleOR_495.Out", "box_ProximityTrigger_v2_348.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_262_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_85();
    l0 = self.box_StaticBreakableListener_262;
    l1 = self.box_StaticBreakableListener_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1564439583", "1564439583", "UNI51_010_B20", "box_StaticBreakableListener_262.Enabled", "box_StaticBreakableListener_85.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_262_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_262;
    l1 = self.box_MultipleOR_219;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1095864703", "1095864703", "UNI51_010_B20", "box_StaticBreakableListener_262.OnBreak", "box_MultipleOR_219.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_252_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_245();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1665518715", "1665518715", "UNI51_010_B20", "box_OutputOrder_v2_252.Out", "box_ActivityObjectiveMarkerModifier_v3_245.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_252_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_248();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1721982064", "1721982064", "UNI51_010_B20", "box_OutputOrder_v2_252.Out", "box_ActivityObjectiveMarkerModifier_v3_248.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_500_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_383();
    l0 = self.box_MultipleOR_500;
    l1 = self.box_ProximityTrigger_v2_383;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1170054797", "1170054797", "UNI51_010_B20", "box_MultipleOR_500.Out", "box_ProximityTrigger_v2_383.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_271_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_254();
    l0 = self.box_OnceOnly_v3_271;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1262732200", "1262732200", "UNI51_010_B20", "box_OnceOnly_v3_271.Out", "box_ActivityObjectiveMarkerModifier_v3_254.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Bell_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_148_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@BreakableListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_15_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_431()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_431");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@change_random_sound_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_431_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_421()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_421");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Change_Sound_Random");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_421_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Dest_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_135_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_465()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_465");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@DisableShotgunCOOPcheck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_465_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_466()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_466");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@DisableSMGCOOPCheck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_466_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_422()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_422");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Start_Mannequin_Attract_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_422_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_420()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_420");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Start_Mannequin_attract_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_420_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Start_TrackSound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_144_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Start_TrackSound_02");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_143_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Start_TrackSound_03");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_136_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Start_TrackSound_04");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_141_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Start_TrackSound_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_142_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@StartSparks1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_43_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@StartSparks2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_44_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@StartSparks3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_45_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@StartSparks4");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_46_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@stop_sequence");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_508()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_508");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Stop_Target_VO_Sound_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_508_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_509()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_509");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Stop_Target_VO_Sound_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_509_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_505()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_505");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Stop_Target_VO_Sound_3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_505_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_507()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_507");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Stop_Target_VO_Sound_4");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_507_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_502()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_502");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Stop_Target_VO_Sound_5");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_502_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_510()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_510");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Stop_Target_Vo_Sound_Rail1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_510_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_504()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_504");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Stop_Target_Vo_Sound_Rail2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_504_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_506()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_506");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Stop_Target_Vo_Sound_Rail3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_506_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_503()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_503");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Stop_Target_Vo_Sound_Rail4");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_503_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Stop_TrackSound_02");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_138_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Stop_TrackSound_03");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_137_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Stop_TrackSound_04");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_140_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Stop_TrackSound_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_139_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_423()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_423");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Target_Rail_Left_Sound_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_423_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_425()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_425");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Target_Rail_Left_Sound_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_425_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_426()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_426");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Target_Rail_Left_Sound_3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_426_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_427()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_427");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Target_Rail_Left_Sound_4");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_427_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_424()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_424");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Target_Rail_Right_Sound_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_424_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_428()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_428");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Target_Rail_Right_Sound_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_428_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_429()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_429");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Target_Rail_Right_Sound_3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_429_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_430()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_430");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Target_Rail_Right_Sound_4");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_430_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_295()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_295");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Unbind1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_295_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_296()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_296");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Unbind2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_296_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Unbind3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_194_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|@Unbind4");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_201_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_388()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_388");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|3992364");
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
                [0] = self.f_box_OutputOrder_v2_388_Out_0,
                [1] = self.f_box_OutputOrder_v2_388_Out_1,
                [2] = self.f_box_OutputOrder_v2_388_Out_2,
                [3] = self.f_box_OutputOrder_v2_388_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_300()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_300");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|23867662");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_300_True,
    });
    params = {
        -- entityId,
        [0] = "2101810365118558154",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_245()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_245");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|24466333");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_245_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2100001747295607691",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Dynamic_01",
            id = "554883",
        },
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|26362151");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_14_True,
    });
    params = {
        -- entityId,
        [0] = "2101811975739674185",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_383()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103691597530029556",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_320()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_320");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|39848377");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2101810467610570711",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_307()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_307");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|59351421");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_307_True,
    });
    params = {
        -- entityId,
        [0] = "2104438825167108733",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_538()
    local params;
    params = {
        -- targets,
        [0] = "2101810467610570711",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_567()
    local params;
    params = {
        -- Group,
        [0] = "2102682649320496368",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_49()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101743726522010952",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_405()
    local params;
    params = {
        -- Pawns,
        [0] = "2101563674639483897",
        -- SoundId,
        [1] = "3941081612",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|87922155");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objective",
            item = "UNI51_010_HardFail_2",
            id = "588854",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_381()
    local params;
    params = {
        -- Pawns,
        [0] = "2101563608942003189",
        -- SoundId,
        [1] = "596728657",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_107()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615280477193721",
        -- SoundId,
        [1] = "1952880547",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_572()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101756993185261646",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_533()
    local params;
    params = {
        -- targets,
        [0] = "2101810365116460998",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|118099301");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_281()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_281");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|124958888");
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
                [0] = self.f_box_OutputOrder_v2_281_Out_0,
                [1] = self.f_box_OutputOrder_v2_281_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_193()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756382454746490",
        -- EntityB,
        [2] = "2101810365116460998",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_199()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756993185261646",
        -- EntityB,
        [2] = "2101756993181067335",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_391()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615271637698037",
        -- SoundId,
        [1] = "3431207683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_21()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100551410513888845",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|150706059");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2101563960974134612",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|152813712");
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
                [0] = self.f_box_OutputOrder_v2_111_Out_0,
                [1] = self.f_box_OutputOrder_v2_111_Out_1,
                [2] = self.f_box_OutputOrder_v2_111_Out_2,
                [3] = self.f_box_OutputOrder_v2_111_Out_3,
                [4] = self.f_box_OutputOrder_v2_111_Out_4,
                [5] = self.f_box_OutputOrder_v2_111_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_319()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_319");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|156666969");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_319_True,
    });
    params = {
        -- entityId,
        [0] = "2101810534012694511",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_189()
    local params;
    params = {
        -- blendTime,
        [1] = 1.5,
        -- endTarget,
        [4] = "2102682520601500884",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2102682520601500881",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_294()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_294");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|160739939");
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
                [0] = self.f_box_OutputOrder_v2_294_Out_0,
                [1] = self.f_box_OutputOrder_v2_294_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_437()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_437");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|170120796");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_437_True,
    });
    params = {
        -- entityId,
        [0] = "2101743726522010952",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_526()
    local params;
    params = {
        -- targets,
        [0] = "2101809769988763549",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_530()
    local params;
    params = {
        -- targets,
        [0] = "2101810534006403049",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_204()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|177123792");
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
                [0] = self.f_box_OutputOrder_v2_204_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_330()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_330");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|188802093");
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
                [0] = self.f_box_OutputOrder_v2_330_Out_0,
                [1] = self.f_box_OutputOrder_v2_330_Out_1,
                [2] = self.f_box_OutputOrder_v2_330_Out_2,
                [3] = self.f_box_OutputOrder_v2_330_Out_3,
                [4] = self.f_box_OutputOrder_v2_330_Out_4,
            },
            count = 9,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_58()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2101162212811875695",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101756382454746490",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_563()
    local params;
    params = {
        -- Group,
        [0] = "2102682520601500891",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|191779294");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_12_True,
    });
    params = {
        -- entityId,
        [0] = "2101743726522010950",
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_452()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015223510819216",
        -- pawns,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|194026711");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_210_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI51_010_B20_PickUpWeapon_Melee",
            id = "586895",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_187()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756382454746490",
        -- EntityB,
        [2] = "2101756467336973707",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|198481451");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_78_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2100568388251243285",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Static_01",
            id = "554882",
        },
    };
    return params;
end;

function export:OnEnter_box_UNI51_EquipWeapon_343()
    local params;
    params = {
        -- eClientMarker,
        [0] = "2103967868180772814",
        -- eHostMarker,
        [1] = "2100595275690179481",
        -- oClientObjective,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_EquipShotgunCLIENT",
            id = "848821",
        },
        -- oHostObjective,
        [3] = {
            section = "Objective",
            item = "UNI51_010_B20_EquipShotgunHOST",
            id = "715370",
        },
        -- Weapon,
        [4] = "9015214679603873",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_532()
    local params;
    params = {
        -- targets,
        [0] = "2101810365118558152",
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_446()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015214679603873",
        -- pawns,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_265()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_233()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_559()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756814321264658",
        -- EntityB,
        [2] = "2101810534010597357",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_131()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615315080201729",
        -- SoundId,
        [1] = "460638522",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_228()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101770564107513377",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_267()
    local params;
    params = {
        -- blendTime,
        [1] = 1.5,
        -- endTarget,
        [4] = "2102682545318534374",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2102682545318534371",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_146()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "294667235",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_536()
    local params;
    params = {
        -- targets,
        [0] = "2101810467608473557",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_242()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101810365114363844",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_18()
    local params;
    params = {
        -- Group,
        [0] = "2102682473027607743",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_248()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_248");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|256991100");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_248_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100582688791480063",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Dynamic_01",
            id = "554883",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_104()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615276605851127",
        -- SoundId,
        [1] = "529472244",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|262443602");
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
                [0] = self.f_box_OutputOrder_v2_226_Out_0,
                [1] = self.f_box_OutputOrder_v2_226_Out_1,
                [2] = self.f_box_OutputOrder_v2_226_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_580()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_580");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|263804969");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_580_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_580_True,
    });
    params = {
        -- entityId,
        [0] = "2101743726522010952",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_378()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615280477193721",
        -- SoundId,
        [1] = "596728657",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_517()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_517");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|271381291");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_517_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI51_010_B20_HitPigs",
            id = "869967",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_550()
    local params;
    params = {
        -- targets,
        [0] = "2101810467608473557",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_481()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615276605851127",
        -- SoundId,
        [1] = "3431207683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_258()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_258");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|286528743");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_258_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2101134592460203232",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Dynamic_01",
            id = "554883",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_345()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615312985146879",
        -- SoundId,
        [1] = "596728657",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_191()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756129865378859",
        -- EntityB,
        [2] = "2101756426885008767",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_312()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_312");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|292233217");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2101810365118558152",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_285()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101811975739674185",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_327()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_327");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|299927616");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2101810534006403049",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_54()
    local params;
    params = {
        -- blendTime,
        [1] = 1.5,
        -- endTarget,
        [4] = "2102682514651880654",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2102682512825261259",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_155()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756382454746490",
        -- EntityB,
        [2] = "2101756463989919113",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_200()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756382454746490",
        -- EntityB,
        [2] = "2101729962259130275",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_75()
    local params;
    params = {
        -- EntityA,
        [1] = "2101770564107513377",
        -- EntityB,
        [2] = "2100568394272166689",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_553()
    local params;
    params = {
        -- targets,
        [0] = "2101809769990860703",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_485()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615291806008829",
        -- SoundId,
        [1] = "1037011969",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_186()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756382454746490",
        -- EntityB,
        [2] = "2101810365114363844",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_565()
    local params;
    params = {
        -- Group,
        [0] = "2102682545318534371",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_544()
    local params;
    params = {
        -- targets,
        [0] = "2101810534006403049",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_513()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_513");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|332826718");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_513_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2103456039434203651",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_HitPigs",
            id = "869967",
        },
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_161()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756382454746490",
        -- EntityB,
        [2] = "2101810365118558152",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_357()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615286584100347",
        -- SoundId,
        [1] = "1312326526",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_36()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2101162229305976191",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101756814321264658",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_26()
    local params;
    params = {
        -- blendTime,
        [1] = 1.5,
        -- endTarget,
        [4] = "2102682722374786308",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2102682722374786311",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_240()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_240");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|353567899");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_240_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Dynamic_01",
            id = "554883",
        },
        -- Progress,
        [1] = self.iDynamicTargets,
        -- ProgressId,
        [2] = self.IDprogressDynamic,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_379()
    local params;
    params = {
        -- Pawns,
        [0] = "2101563608942003189",
        -- SoundId,
        [1] = "3431207683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_483()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615276605851127",
        -- SoundId,
        [1] = "1037011969",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_168()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756129865378859",
        -- EntityB,
        [2] = "2104438825167108733",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_397()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615276605851127",
        -- SoundId,
        [1] = "1312326526",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_516()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_516");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|375685125");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_516_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2100595398556034799",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_HitPigs",
            id = "869967",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_347()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103691569809874414",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_328()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615286584100347",
        -- SoundId,
        [1] = "2067737371",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|387406130");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2100568394272166689",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Static_01",
            id = "554882",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_336()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103691524786118118",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_546()
    local params;
    params = {
        -- targets,
        [0] = "2101810467606376403",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_354()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_354");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|398304996");
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
                [0] = self.f_box_OutputOrder_v2_354_Out_0,
                [1] = self.f_box_OutputOrder_v2_354_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_238()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_238");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|398496845");
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
                [0] = self.f_box_OutputOrder_v2_238_Out_0,
                [1] = self.f_box_OutputOrder_v2_238_Out_1,
                [2] = self.f_box_OutputOrder_v2_238_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_115()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101743726522010950",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_273()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_273");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|403838616");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_273_True,
    });
    params = {
        -- entityId,
        [0] = "2101810365114363844",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_121()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615291806008829",
        -- SoundId,
        [1] = "460638522",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_542()
    local params;
    params = {
        -- targets,
        [0] = "2101810365118558154",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_314()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_314");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|421770208");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2101810365116460998",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_389()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103691593067290098",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_38()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101770564109610539",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|430068574");
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
                [1] = self.f_box_OutputOrder_v2_51_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_442()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|432257495");
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
                [0] = self.f_box_OutputOrder_v2_202_Out_0,
                [1] = self.f_box_OutputOrder_v2_202_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_225()
    local params;
    params = {
        -- blendTime,
        [1] = 1.5,
        -- endTarget,
        [4] = "2102682520601500888",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2102682520601500891",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_393()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_393");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|439842254");
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
                [0] = self.f_box_OutputOrder_v2_393_Out_0,
                [1] = self.f_box_OutputOrder_v2_393_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|446170979");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_33_A_neq_B,
    });
    l0 = self.box_HealthListener_v6_29;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(5),
        -- B,
        [1] = "Kicking",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_247()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_247");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|449590541");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_247_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iDynamicTargets,
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_407()
    local params;
    params = {
        -- Pawns,
        [0] = "2103702482048802412",
        -- SoundId,
        [1] = "3941081612",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_334()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615286584100347",
        -- SoundId,
        [1] = "596728657",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|455416081");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101756814331750429",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_340()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103691547940773352",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_126()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615280477193721",
        -- SoundId,
        [1] = "460638522",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_156()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756814321264658",
        -- EntityB,
        [2] = "2101729964484208549",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_401()
    local params;
    params = {
        -- Pawns,
        [0] = "2101563608942003189",
        -- SoundId,
        [1] = "1037011969",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_351()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615315080201729",
        -- SoundId,
        [1] = "3431207683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_241()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101810467606376403",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_112()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2104438825167108733",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_384()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_384");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|468894635");
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
                [0] = self.f_box_OutputOrder_v2_384_Out_0,
                [1] = self.f_box_OutputOrder_v2_384_Out_1,
                [2] = self.f_box_OutputOrder_v2_384_Out_2,
                [3] = self.f_box_OutputOrder_v2_384_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_441()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_441");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|478372621");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_441_True,
    });
    params = {
        -- entityId,
        [0] = "2101811975739674187",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_585()
    local params;
    params = {
        -- Group,
        [0] = "2102682663816010998",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_52()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2101134550175327446",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101756993185261646",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_575()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_575");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|485995745");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_575_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_575_True,
    });
    params = {
        -- entityId,
        [0] = "2102047765738557166",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|486683911");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101756426885008767",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_288()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101743520510381332",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|492196262");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_170_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_170_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2101756814327556119",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_576()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_576");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|498683362");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_576_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_576_True,
    });
    params = {
        -- entityId,
        [0] = "2102047765738557168",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_440()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_440");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|506384069");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_440_True,
    });
    params = {
        -- entityId,
        [0] = "2101770564109610539",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_435()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_435");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|518271607");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_435_True,
    });
    params = {
        -- entityId,
        [0] = "2102047765738557168",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_417()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_417");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|526368436");
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
                [0] = self.f_box_OutputOrder_v2_417_Out_0,
                [1] = self.f_box_OutputOrder_v2_417_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|528574244");
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
                [0] = self.f_box_OutputOrder_v2_130_Out_0,
                [1] = self.f_box_OutputOrder_v2_130_Out_1,
                [2] = self.f_box_OutputOrder_v2_130_Out_2,
                [3] = self.f_box_OutputOrder_v2_130_Out_3,
                [4] = self.f_box_OutputOrder_v2_130_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_475()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_475");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|530469822");
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
                [0] = self.f_box_OutputOrder_v2_475_Out_0,
                [1] = self.f_box_OutputOrder_v2_475_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_433()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615988632988649",
        -- SoundId,
        [1] = "1037011969",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_275()
    local params;
    params = {
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_411()
    local params;
    params = {
        -- Pawns,
        [0] = "2103702512298122870",
        -- SoundId,
        [1] = "3941081612",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_404()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615280477193721",
        -- SoundId,
        [1] = "1312326526",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_578()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_578");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|564432897");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_578_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_578_True,
    });
    params = {
        -- entityId,
        [0] = "2101770564107513377",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|564447107");
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
                [0] = self.f_box_OutputOrder_v2_127_Out_0,
                [1] = self.f_box_OutputOrder_v2_127_Out_1,
                [2] = self.f_box_OutputOrder_v2_127_Out_2,
                [3] = self.f_box_OutputOrder_v2_127_Out_3,
                [4] = self.f_box_OutputOrder_v2_127_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_344()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_344");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|571094439");
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
                [0] = self.f_box_OutputOrder_v2_344_Out_0,
                [1] = self.f_box_OutputOrder_v2_344_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_190()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756129865378859",
        -- EntityB,
        [2] = "2101809769988763549",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_279()
    local params;
    params = {
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|577417167");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_39()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101811975739674187",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_468()
    local params;
    params = {
        -- Pawns,
        [0] = "2101563608942003189",
        -- SoundId,
        [1] = "3431207683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_541()
    local params;
    params = {
        -- targets,
        [0] = "2101810534012694511",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_260()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_260");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|597604825");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_260_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Dynamic_01",
            id = "554883",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_280()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_280");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|601301824");
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
                [0] = self.f_box_OutputOrder_v2_280_Out_0,
                [1] = self.f_box_OutputOrder_v2_280_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_125()
    local params;
    params = {
        -- Pawns,
        [0] = "2101563608942003189",
        -- SoundId,
        [1] = "460638522",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_554()
    local params;
    params = {
        -- targets,
        [0] = "2101809769988763549",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_555()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756129865378859",
        -- EntityB,
        [2] = "2101756423263227261",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_568()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104438825167108733",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_264()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_264");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|611680248");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_264_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Dynamic_01",
            id = "554883",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 4,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_469()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615315080201729",
        -- SoundId,
        [1] = "3431207683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_438()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_484()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615312985146879",
        -- SoundId,
        [1] = "1037011969",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_311()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_311");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|621838448");
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
                [0] = self.f_box_OutputOrder_v2_311_Out_0,
                [1] = self.f_box_OutputOrder_v2_311_Out_1,
                [2] = self.f_box_OutputOrder_v2_311_Out_2,
                [3] = self.f_box_OutputOrder_v2_311_Out_3,
                [4] = self.f_box_OutputOrder_v2_311_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_212()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#9323E315",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_382()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615276605851127",
        -- SoundId,
        [1] = "3431207683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_57()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2101162215758374259",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101756382454746490",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|647268244");
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

function export:OnEnter_box_InventoryItemModifier_459()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015223510819216",
        -- players,
        [2] = self.Client,
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|657580564");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_32_A_neq_B,
    });
    l0 = self.box_HealthListener_v6_29;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(5),
        -- B,
        [1] = "WeaponMeleeAttack",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|662113860");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_221_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2100568389983490841",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Static_01",
            id = "554882",
        },
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_322()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_322");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|667806834");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_322_True,
    });
    params = {
        -- entityId,
        [0] = "2101810467610570711",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_71()
    local params;
    params = {
        -- EntityA,
        [1] = "2101743520510381332",
        -- EntityB,
        [2] = "2100001743462013831",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|676483699");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_77_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2100001743462013831",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Static_01",
            id = "554882",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_415()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_415");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|676832032");
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
                [0] = self.f_box_OutputOrder_v2_415_Out_0,
                [1] = self.f_box_OutputOrder_v2_415_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_309()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_309");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|684356297");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2101810534008500203",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_443()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_443");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|686060625");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_443_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_443_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_203,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_582()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_582");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|694245737");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_582_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_582_True,
    });
    params = {
        -- entityId,
        [0] = "2101811975739674185",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_551()
    local params;
    params = {
        -- targets,
        [0] = "2101810365118558152",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_454()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_454");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|705310223");
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
                [0] = self.f_box_OutputOrder_v2_454_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_282()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_282");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|710256477");
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
                [0] = self.f_box_OutputOrder_v2_282_Out_0,
                [1] = self.f_box_OutputOrder_v2_282_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|716020344");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_183_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_183_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2101756993178970181",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|720056788");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101756993183164491",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_380()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_380");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|725858849");
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
                [0] = self.f_box_OutputOrder_v2_380_Out_0,
                [1] = self.f_box_OutputOrder_v2_380_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_409()
    local params;
    params = {
        -- Pawns,
        [0] = "2103702490223500912",
        -- SoundId,
        [1] = "3941081612",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_458()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_458");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|735994228");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_458_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015223510819216",
        -- players,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_588()
    local params;
    params = {
        -- Group,
        [0] = "2102682722374786311",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_17()
    local params;
    params = {
        -- blendTime,
        [1] = 1.5,
        -- endTarget,
        [4] = "2102682739569335564",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2102682739569335561",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_586()
    local params;
    params = {
        -- Group,
        [0] = "2102682739569335561",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|747046702");
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
                [0] = self.f_box_OutputOrder_v2_185_Out_0,
                [1] = self.f_box_OutputOrder_v2_185_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_376()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_376");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|749668791");
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
                [0] = self.f_box_OutputOrder_v2_376_Out_0,
                [1] = self.f_box_OutputOrder_v2_376_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_387()
    local params;
    params = {
        -- Pawns,
        [0] = "2101563608942003189",
        -- SoundId,
        [1] = "2067737371",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_119()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615988632988649",
        -- SoundId,
        [1] = "460638522",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_543()
    local params;
    params = {
        -- targets,
        [0] = "2101810365116460998",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|769204743");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_67_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Static_01",
            id = "554882",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_363()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_363");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|771145525");
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
                [0] = self.f_box_OutputOrder_v2_363_Out_0,
                [1] = self.f_box_OutputOrder_v2_363_Out_1,
                [2] = self.f_box_OutputOrder_v2_363_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_331()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615291806008829",
        -- SoundId,
        [1] = "2067737371",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|776834217");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_10_True,
    });
    params = {
        -- entityId,
        [0] = "2102047765738557166",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_324()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_324");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|781440150");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2101809769988763549",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_545()
    local params;
    params = {
        -- targets,
        [0] = "2101810467610570711",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_355()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615312985146879",
        -- SoundId,
        [1] = "3431207683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_337()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615315080201729",
        -- SoundId,
        [1] = "596728657",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_528()
    local params;
    params = {
        -- targets,
        [0] = "2101810534008500203",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_313()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_313");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|808550000");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2101809769990860703",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_197()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756129865378859",
        -- EntityB,
        [2] = "2101809769992957857",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|821558257");
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
                [0] = self.f_box_OutputOrder_v2_236_Out_0,
                [1] = self.f_box_OutputOrder_v2_236_Out_1,
                [2] = self.f_box_OutputOrder_v2_236_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_97()
    local params;
    params = {
        -- Pawns,
        [0] = "2101563608942003189",
        -- SoundId,
        [1] = "4287883565",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_195()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756993185261646",
        -- EntityB,
        [2] = "2101810467610570713",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_102()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615271637698037",
        -- SoundId,
        [1] = "4287883565",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_520()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_520");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|857809946");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_520_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2103456039434203651",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_HitPigs",
            id = "869967",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_371()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_371");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|862228415");
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
                [0] = self.f_box_OutputOrder_v2_371_Out_0,
                [1] = self.f_box_OutputOrder_v2_371_Out_1,
                [2] = self.f_box_OutputOrder_v2_371_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|862374032");
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
                [0] = self.f_box_OutputOrder_v2_128_Out_0,
                [1] = self.f_box_OutputOrder_v2_128_Out_1,
                [2] = self.f_box_OutputOrder_v2_128_Out_2,
                [3] = self.f_box_OutputOrder_v2_128_Out_3,
                [4] = self.f_box_OutputOrder_v2_128_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_535()
    local params;
    params = {
        -- targets,
        [0] = "2101810365118558154",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_157()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756814321264658",
        -- EntityB,
        [2] = "2101810534006403049",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|877613865");
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
        [8] = "B20 -Started!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_99()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615271637698037",
        -- SoundId,
        [1] = "1952880547",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|898092169");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2100568388251243285",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Static_01",
            id = "554882",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_290()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_290");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|903182913");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objective",
            item = "UNI51_010_B20_FailFollowDirections",
            id = "793740",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_321()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_321");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|912122318");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_321_True,
    });
    params = {
        -- entityId,
        [0] = "2101810534006403049",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_286()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101743726522010950",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_103()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615276605851127",
        -- SoundId,
        [1] = "1952880547",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|926573712");
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
        [8] = "B20 -DONE!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_305()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_305");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|928155481");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2101809769992957857",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|934091122");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_94()
    local params;
    params = {
        -- Pawns,
        [0] = "2101563608942003189",
        -- SoundId,
        [1] = "529472244",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_373()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_373");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|944687967");
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
                [0] = self.f_box_OutputOrder_v2_373_Out_0,
                [1] = self.f_box_OutputOrder_v2_373_Out_1,
                [2] = self.f_box_OutputOrder_v2_373_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_85()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101810534008500203",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_298()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_298");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|957631617");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_298_True,
    });
    params = {
        -- entityId,
        [0] = "2101810467606376403",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|966404676");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_220_A_neq_B,
    });
    l0 = self.box_HealthListener_v6_29;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(5),
        -- B,
        [1] = "ArrowImpact",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_303()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_303");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|969483471");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_303_True,
    });
    params = {
        -- entityId,
        [0] = "2101810534010597357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_263()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_263");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|971063422");
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
                [0] = self.f_box_OutputOrder_v2_263_Out_0,
                [1] = self.f_box_OutputOrder_v2_263_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_444()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015214679603873",
        -- players,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|979817486");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_173_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_173_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2101729871779604381",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_269()
    local params;
    params = {
        -- blendTime,
        [1] = 1.5,
        -- endTarget,
        [4] = "2102682625333271789",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2102682625333271786",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_358()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_358");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|983796214");
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
                [0] = self.f_box_OutputOrder_v2_358_Out_0,
                [1] = self.f_box_OutputOrder_v2_358_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_116()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101811975739674185",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_552()
    local params;
    params = {
        -- targets,
        [0] = "2101810467610570713",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_349()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615312985146879",
        -- SoundId,
        [1] = "1312326526",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_418()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_418");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|997969350");
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
                [0] = self.f_box_OutputOrder_v2_418_Out_0,
                [1] = self.f_box_OutputOrder_v2_418_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_456()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015223510819216",
        -- players,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_419()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_419");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1000540620");
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
                [0] = self.f_box_OutputOrder_v2_419_Out_0,
                [1] = self.f_box_OutputOrder_v2_419_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1003807696");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_13_True,
    });
    params = {
        -- entityId,
        [0] = "2101770564107513377",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1004830053");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_480()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_480");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1005763973");
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
                [0] = self.f_box_OutputOrder_v2_480_Out_0,
                [1] = self.f_box_OutputOrder_v2_480_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PawnWeaponCheck_v3_451()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnWeaponCheck_v3_451");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1008446052");
    l0:SetConnections({
        -- InHands,
        [0] = self.f_box_PawnWeaponCheck_v3_451_InHands,
        -- InInventory,
        [1] = self.f_box_PawnWeaponCheck_v3_451_InInventory,
    });
    params = {
        -- pawn,
        [2] = self.Client,
        -- weaponDesc,
        [3] = "9015223510819216",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_562()
    local params;
    params = {
        -- EntityA,
        [1] = "2101810467606376403",
        -- EntityB,
        [2] = "2101134592460203232",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_167()
    local params;
    params = {
        -- EntityA,
        [1] = "2101810534010597357",
        -- EntityB,
        [2] = "2100001747295607691",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_335()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615312985146879",
        -- SoundId,
        [1] = "1037011969",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_68()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101743520510381332",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_293()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_293");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1048613202");
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
                [0] = self.f_box_OutputOrder_v2_293_Out_0,
                [1] = self.f_box_OutputOrder_v2_293_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_251()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_251");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1049957532");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_251_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2100582686650287867",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Dynamic_01",
            id = "554883",
        },
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_246()
    local params;
    params = {
        -- blendTime,
        [1] = 1.5,
        -- endTarget,
        [4] = "2102682540067265760",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2102682528751033565",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_35()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2101162233236039043",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101756814321264658",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_395()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615280477193721",
        -- SoundId,
        [1] = "2067737371",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_132()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101770564107513377",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_566()
    local params;
    params = {
        -- Group,
        [0] = "2102682625333271786",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_27()
    local params;
    params = {
        -- blendTime,
        [1] = 1.5,
        -- endTarget,
        [4] = "2102682491943918792",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2102682473027607743",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_414()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_414");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1079532383");
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
                [0] = self.f_box_OutputOrder_v2_414_Out_0,
                [1] = self.f_box_OutputOrder_v2_414_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1080591740");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1081765788");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_70_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Static_01",
            id = "554882",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_490()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_490");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1082903276");
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
                [0] = self.f_box_OutputOrder_v2_490_Out_0,
                [1] = self.f_box_OutputOrder_v2_490_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_467()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_467");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1084131505");
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
                [0] = self.f_box_OutputOrder_v2_467_Out_0,
                [1] = self.f_box_OutputOrder_v2_467_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_531()
    local params;
    params = {
        -- targets,
        [0] = "2101810365114363844",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_523()
    local params;
    params = {
        -- targets,
        [0] = "2104438825167108733",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1106805785");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_229_Out,
    });
    params = {
        -- A,
        [0] = self.iStaticTargets,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_299()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_299");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1107591064");
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
                [0] = self.f_box_OutputOrder_v2_299_Out_0,
                [1] = self.f_box_OutputOrder_v2_299_Out_1,
                [2] = self.f_box_OutputOrder_v2_299_Out_2,
                [3] = self.f_box_OutputOrder_v2_299_Out_3,
                [4] = self.f_box_OutputOrder_v2_299_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_571()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101756382454746490",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_377()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103691580828311024",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_108()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615280477193721",
        -- SoundId,
        [1] = "529472244",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1120638267");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_171_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_171_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2101729964484208549",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_392()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615276605851127",
        -- SoundId,
        [1] = "2067737371",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_369()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615315080201729",
        -- SoundId,
        [1] = "1312326526",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_106()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615276605851127",
        -- SoundId,
        [1] = "4287883565",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1151132294");
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
                [0] = self.f_box_OutputOrder_v2_129_Out_0,
                [1] = self.f_box_OutputOrder_v2_129_Out_1,
                [2] = self.f_box_OutputOrder_v2_129_Out_2,
                [3] = self.f_box_OutputOrder_v2_129_Out_3,
                [4] = self.f_box_OutputOrder_v2_129_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1152121078");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_92_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101563960974134612",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_375()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_375");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1153508212");
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
                [0] = self.f_box_OutputOrder_v2_375_Out_0,
                [1] = self.f_box_OutputOrder_v2_375_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1155215020");
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
                [0] = self.f_box_OutputOrder_v2_192_Out_0,
                [1] = self.f_box_OutputOrder_v2_192_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_489()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_489");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1155432042");
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
                [0] = self.f_box_OutputOrder_v2_489_Out_0,
                [1] = self.f_box_OutputOrder_v2_489_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_72()
    local params;
    params = {
        -- EntityA,
        [1] = "2102047765738557166",
        -- EntityB,
        [2] = "2100568388251243285",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_512()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_512");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1161644702");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_512_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI51_010_B20_HitPigs",
            id = "869967",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_587()
    local params;
    params = {
        -- Group,
        [0] = "2102682722374786305",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_304()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_304");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1174881183");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2101810534010597357",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_274()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_274");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1175958830");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2101810365114363844",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_297()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_297");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1176372899");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2101810467606376403",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_PawnWeaponCheck_v3_445()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnWeaponCheck_v3_445");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1176560885");
    l0:SetConnections({
        -- InHands,
        [0] = self.f_box_PawnWeaponCheck_v3_445_InHands,
        -- InInventory,
        [1] = self.f_box_PawnWeaponCheck_v3_445_InInventory,
    });
    params = {
        -- pawn,
        [2] = self.Client,
        -- weaponDesc,
        [3] = "9015214679603873",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_514()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "2103456032823980477",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1183905920");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2100568389983490841",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Static_01",
            id = "554882",
        },
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_215()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101810365118558154",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_153()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756993185261646",
        -- EntityB,
        [2] = "2101810467610570711",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_487()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615312985146879",
        -- SoundId,
        [1] = "3431207683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_250()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_250");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1199119320");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_250_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100001747295607691",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Dynamic_01",
            id = "554883",
        },
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_98()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101810534010597357",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_255()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_255");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1212961000");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_255_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100582686650287867",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Dynamic_01",
            id = "554883",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_100()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615271637698037",
        -- SoundId,
        [1] = "529472244",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1236093570");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_82_A_neq_B,
    });
    l0 = self.box_HealthListener_v6_29;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(5),
        -- B,
        [1] = "BleedToDeath",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_385()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615286584100347",
        -- SoundId,
        [1] = "1037011969",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_362()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_362");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1257553643");
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
                [0] = self.f_box_OutputOrder_v2_362_Out_0,
                [1] = self.f_box_OutputOrder_v2_362_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_398()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615271637698037",
        -- SoundId,
        [1] = "1037011969",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_472()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615315080201729",
        -- SoundId,
        [1] = "1037011969",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_326()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_326");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1266482506");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_326_True,
    });
    params = {
        -- entityId,
        [0] = "2101810467610570713",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1268958766");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_11_True,
    });
    params = {
        -- entityId,
        [0] = "2101743520510381332",
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1270675002");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_203_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015214679603873",
        -- players,
        [2] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_122()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615286584100347",
        -- SoundId,
        [1] = "460638522",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1276734648");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_208_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101825352992056352",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_73()
    local params;
    params = {
        -- EntityA,
        [1] = "2101743726522010950",
        -- EntityB,
        [2] = "2100568389983490841",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_101()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615271637698037",
        -- SoundId,
        [1] = "550653703",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1286818407");
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
                [0] = self.f_box_OutputOrder_v2_147_Out_0,
                [1] = self.f_box_OutputOrder_v2_147_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_529()
    local params;
    params = {
        -- targets,
        [0] = "2101810534012694511",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_396()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615276605851127",
        -- SoundId,
        [1] = "1037011969",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_547()
    local params;
    params = {
        -- targets,
        [0] = "2101810534010597357",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1320973260");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_181_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_181_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2101756993181067335",
    };
    return params;
end;

function export:OnEnter_box_UNI51_EquipWeapon_342()
    local params;
    params = {
        -- eClientMarker,
        [0] = "2103979339306514492",
        -- eHostMarker,
        [1] = "2102044294138310407",
        -- oClientObjective,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_EquipSMG_CLIENT",
            id = "849165",
        },
        -- oHostObjective,
        [3] = {
            section = "Objective",
            item = "UNI51_010_B20_PickUpWeapon_SMG",
            id = "586886",
        },
        -- Weapon,
        [4] = "9015223510819216",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_196()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756382454746490",
        -- EntityB,
        [2] = "2101810365118558154",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_573()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_573");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1328699217");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_573_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_573_True,
    });
    params = {
        -- entityId,
        [0] = "2101743520510381332",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_453()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_453");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1329528163");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_453_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_453_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_458,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1330644891");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2101756467336973707",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1331357709");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_227_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2100568394272166689",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Static_01",
            id = "554882",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_292()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_230()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1338309152");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2100568391449400093",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Static_01",
            id = "554882",
        },
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_325()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_325");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1342631246");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_325_True,
    });
    params = {
        -- entityId,
        [0] = "2101810365118558152",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_394()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615271637698037",
        -- SoundId,
        [1] = "596728657",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_105()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615276605851127",
        -- SoundId,
        [1] = "550653703",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_537()
    local params;
    params = {
        -- targets,
        [0] = "2101810467610570713",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_160()
    local params;
    params = {
        -- EntityA,
        [1] = "2104438825167108733",
        -- EntityB,
        [2] = "2100582686650287867",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_289()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101770564107513377",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_50()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2101134551815300314",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101756993185261646",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_399()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615271637698037",
        -- SoundId,
        [1] = "1312326526",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_352()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615286584100347",
        -- SoundId,
        [1] = "3431207683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_491()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615280477193721",
        -- SoundId,
        [1] = "3431207683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1386822528");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_59_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = self.STP_Chemical,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_315()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_315");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1393199064");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2101810534012694511",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_256()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_256");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1395427250");
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
                [0] = self.f_box_OutputOrder_v2_256_Out_0,
                [1] = self.f_box_OutputOrder_v2_256_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_117()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2102047765738557166",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_539()
    local params;
    params = {
        -- targets,
        [0] = "2104438825167108733",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_386()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615280477193721",
        -- SoundId,
        [1] = "3431207683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1417966205");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_149_No,
    });
    params = {
        -- ent,
        [4] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_370()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615315080201729",
        -- SoundId,
        [1] = "1037011969",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_434()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015214679603873",
        -- players,
        [2] = self.Client,
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_360()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_360");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1426460094");
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
                [0] = self.f_box_OutputOrder_v2_360_Out_0,
                [1] = self.f_box_OutputOrder_v2_360_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_317()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_317");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1435229671");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2101810467610570713",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1435380890");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_180_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_180_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2101756463989919113",
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_244()
    local params;
    params = {
        -- ObjectName,
        [0] = "STP_ChemistMixingChemical",
        -- PrefabEntity,
        [1] = "2104754794850695087",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_24()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2101162224763544955",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101756129865378859",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_400()
    local params;
    params = {
        -- Pawns,
        [0] = "2101563673576227831",
        -- SoundId,
        [1] = "3941081612",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_439()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_152()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756993185261646",
        -- EntityB,
        [2] = "2101810467608473557",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_479()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615271637698037",
        -- SoundId,
        [1] = "1037011969",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_368()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_368");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1466291825");
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
                [0] = self.f_box_OutputOrder_v2_368_Out_0,
                [1] = self.f_box_OutputOrder_v2_368_Out_1,
                [2] = self.f_box_OutputOrder_v2_368_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_486()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615271637698037",
        -- SoundId,
        [1] = "3431207683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_521()
    local params;
    params = {
        -- EntityA,
        [1] = "2103456032823980477",
        -- EntityB,
        [2] = "2103456039434203651",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1475915533");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_177_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_177_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2101729962259130275",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_234()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1477129541");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_234_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Static_01",
            id = "554882",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_154()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756814321264658",
        -- EntityB,
        [2] = "2101810534008500203",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_254()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_254");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1485168455");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_254_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2101134592460203232",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Dynamic_01",
            id = "554883",
        },
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_323()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_323");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1485716289");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_323_True,
    });
    params = {
        -- entityId,
        [0] = "2101810365116460998",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_308()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_308");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1488386938");
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
                [0] = self.f_box_OutputOrder_v2_308_Out_0,
                [1] = self.f_box_OutputOrder_v2_308_Out_1,
                [2] = self.f_box_OutputOrder_v2_308_Out_2,
                [3] = self.f_box_OutputOrder_v2_308_Out_3,
                [4] = self.f_box_OutputOrder_v2_308_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_216()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101809769992957857",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_270()
    local params;
    params = {
        -- blendTime,
        [1] = 1.5,
        -- endTarget,
        [4] = "2102682649320496371",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2102682649320496368",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_276()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_276");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1519430431");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2101810467608473557",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_390()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615276605851127",
        -- SoundId,
        [1] = "596728657",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_249()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2104438825167108733",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_318()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_318");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1535303245");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_318_True,
    });
    params = {
        -- entityId,
        [0] = "2101809769988763549",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_570()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101756129865378859",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_583()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_583");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1547197983");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objective",
            item = "UNI51_010_B20_FailFollowDirections",
            id = "793740",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1551485736");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_179_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_179_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2101756460076633479",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_478()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_478");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1552274028");
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
                [0] = self.f_box_OutputOrder_v2_478_Out_0,
                [1] = self.f_box_OutputOrder_v2_478_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_166()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756993185261646",
        -- EntityB,
        [2] = "2101810467606376403",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_558()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_558");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1564182439");
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
                [0] = self.f_box_OutputOrder_v2_558_Out_0,
                [1] = self.f_box_OutputOrder_v2_558_Out_1,
                [2] = self.f_box_OutputOrder_v2_558_Out_2,
                [3] = self.f_box_OutputOrder_v2_558_Out_3,
                [4] = self.f_box_OutputOrder_v2_558_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_84()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 40,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1569291780");
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
                [0] = self.f_box_OutputOrder_v2_235_Out_0,
                [1] = self.f_box_OutputOrder_v2_235_Out_1,
                [2] = self.f_box_OutputOrder_v2_235_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_96()
    local params;
    params = {
        -- Pawns,
        [0] = "2101563608942003189",
        -- SoundId,
        [1] = "1952880547",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_198()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756814321264658",
        -- EntityB,
        [2] = "2101756814327556121",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_527()
    local params;
    params = {
        -- targets,
        [0] = "2101810534010597357",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_272()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_272");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1581362570");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2101810365118558154",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1581601397");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2100001743462013831",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Static_01",
            id = "554882",
        },
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_287()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2102047765738557166",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1584868548");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_175_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_175_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2101756416982257019",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_346()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103691554521636330",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_95()
    local params;
    params = {
        -- Pawns,
        [0] = "2101563608942003189",
        -- SoundId,
        [1] = "550653703",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_123()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615276605851127",
        -- SoundId,
        [1] = "460638522",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_564()
    local params;
    params = {
        -- Group,
        [0] = "2102682528751033565",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_476()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_476");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1609751020");
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
                [0] = self.f_box_OutputOrder_v2_476_Out_0,
                [1] = self.f_box_OutputOrder_v2_476_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_366()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615988632988649",
        -- SoundId,
        [1] = "1312326526",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1614443509");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_176_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_176_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2101756423263227261",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_164()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756993185261646",
        -- EntityB,
        [2] = "2101756993181067337",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_UNI51_EquipWeapon_341()
    local params;
    params = {
        -- eClientMarker,
        [0] = "2103979446196254794",
        -- eHostMarker,
        [1] = "2100595274790501269",
        -- oClientObjective,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_EquipBat_CLIENT",
            id = "849164",
        },
        -- oHostObjective,
        [3] = {
            section = "Objective",
            item = "UNI51_010_B20_PickUpWeapon_Melee",
            id = "586895",
        },
        -- Weapon,
        [4] = "9015190635381244",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_316()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_316");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1642314810");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_316_True,
    });
    params = {
        -- entityId,
        [0] = "2101809769990860703",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_515()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "2100551415742088847",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_556()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756993185261646",
        -- EntityB,
        [2] = "2101756993183164491",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_162()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756814321264658",
        -- EntityB,
        [2] = "2101756814327556119",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_579()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_579");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1668157632");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_579_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_579_True,
    });
    params = {
        -- entityId,
        [0] = "2101770564109610539",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_374()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615271637698037",
        -- SoundId,
        [1] = "2067737371",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_338()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615291806008829",
        -- SoundId,
        [1] = "596728657",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_231()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_231");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1689198809");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_231_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2100568391449400093",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Static_01",
            id = "554882",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_474()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615280477193721",
        -- SoundId,
        [1] = "1037011969",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_499()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104145448953453675",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_188()
    local params;
    params = {
        -- EntityA,
        [1] = "2101810365114363844",
        -- EntityB,
        [2] = "2100582688791480063",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_301()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_301");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1691622087");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2104438825167108733",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_402()
    local params;
    params = {
        -- Pawns,
        [0] = "2101563608942003189",
        -- SoundId,
        [1] = "1312326526",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_120()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615312985146879",
        -- SoundId,
        [1] = "460638522",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1701231351");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_69_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Static_01",
            id = "554882",
        },
        -- Progress,
        [1] = self.iStaticTargets,
        -- ProgressId,
        [2] = self.IDprogressStatic,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_259()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_259");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1702443519");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_259_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2100582688791480063",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Dynamic_01",
            id = "554883",
        },
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_232()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101811975739674185",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_577()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_577");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1709964907");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_577_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_577_True,
    });
    params = {
        -- entityId,
        [0] = "2101743726522010950",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_118()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101743520510381332",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_353()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_353");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1712282883");
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
                [0] = self.f_box_OutputOrder_v2_353_Out_0,
                [1] = self.f_box_OutputOrder_v2_353_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_61()
    local params;
    params = {
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_471()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_471");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1714042623");
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
                [0] = self.f_box_OutputOrder_v2_471_Out_0,
                [1] = self.f_box_OutputOrder_v2_471_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_482()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_482");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1715028152");
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
                [0] = self.f_box_OutputOrder_v2_482_Out_0,
                [1] = self.f_box_OutputOrder_v2_482_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_408()
    local params;
    params = {
        -- Pawns,
        [0] = "2103702486444433006",
        -- SoundId,
        [1] = "3941081612",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_79()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2102047765738557166",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_365()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615291806008829",
        -- SoundId,
        [1] = "1312326526",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_348()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103691558497836524",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_266()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_266");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1733911613");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_266_Out,
    });
    params = {
        -- A,
        [0] = self.iDynamicTargets,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_332()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615312985146879",
        -- SoundId,
        [1] = "2067737371",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_519()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_519");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1742823146");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_519_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100595398556034799",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI51_010_B20_HitPigs",
            id = "869967",
        },
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_310()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_310");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1754054166");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_310_True,
    });
    params = {
        -- entityId,
        [0] = "2101809769992957857",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_518()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_158()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756993185261646",
        -- EntityB,
        [2] = "2101756993178970181",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_261()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_261");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1763697274");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_261_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI51_010_B20_DestroyTarget_Dynamic_01",
            id = "554883",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_223()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101743726522010950",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_356()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615286584100347",
        -- SoundId,
        [1] = "1037011969",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_55()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2101162221055780215",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101756129865378859",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1778053005");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_28_PrintedToScreen,
    });
    l0 = self.box_HealthListener_v6_29;
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 25,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = l0:GetDataOutValue(5),
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_165()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756129865378859",
        -- EntityB,
        [2] = "2101729871779604381",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_109()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615280477193721",
        -- SoundId,
        [1] = "550653703",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_239()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_239");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1783348168");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = self.STP_Chemical,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1792191265");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
                [2] = self.f_box_OutputOrder_v2_7_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_488()
    local params;
    params = {
        -- Pawns,
        [0] = "2101563608942003189",
        -- SoundId,
        [1] = "1037011969",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_74()
    local params;
    params = {
        -- EntityA,
        [1] = "2101811975739674185",
        -- EntityB,
        [2] = "2100568391449400093",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_473()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615988632988649",
        -- SoundId,
        [1] = "3431207683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_278()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_278");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1803944152");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_278_True,
    });
    params = {
        -- entityId,
        [0] = "2101810467608473557",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_283()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_283");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1805038318");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objective",
            item = "UNI51_010_B20_FailFollowDirections",
            id = "793740",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1805429003");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_151_No,
    });
    params = {
        -- ent,
        [4] = self.Client,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_574()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_574");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1809250447");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_574_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_574_True,
    });
    params = {
        -- entityId,
        [0] = "2101743520512478490",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_367()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615988632988649",
        -- SoundId,
        [1] = "1037011969",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_560()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756382454746490",
        -- EntityB,
        [2] = "2101756460076633479",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_406()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_406");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1822206183");
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
                [0] = self.f_box_OutputOrder_v2_406_Out_0,
                [1] = self.f_box_OutputOrder_v2_406_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_525()
    local params;
    params = {
        -- targets,
        [0] = "2101809769990860703",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_403()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615280477193721",
        -- SoundId,
        [1] = "1037011969",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_113()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101810365114363844",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_524()
    local params;
    params = {
        -- targets,
        [0] = "2101809769992957857",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1831859021");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_80_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iStaticTargets,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_540()
    local params;
    params = {
        -- targets,
        [0] = "2101810365114363844",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_40()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2102047765738557168",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_522()
    local params;
    params = {
        -- EntityA,
        [1] = "2100551415742088847",
        -- EntityB,
        [2] = "2100595398556034799",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_306()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_306");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1862555525");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_306_True,
    });
    params = {
        -- entityId,
        [0] = "2101810534008500203",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_413()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_413");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1868880378");
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
                [0] = self.f_box_OutputOrder_v2_413_Out_0,
                [1] = self.f_box_OutputOrder_v2_413_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_29()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#9323E315",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_25()
    local params;
    params = {
        -- Group,
        [0] = "2102682512825261259",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1905348061");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_169_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_169_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2101756814327556121",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_110()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615280477193721",
        -- SoundId,
        [1] = "4287883565",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1911105539");
    l0:SetConnections({
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_83_A_neq_B,
    });
    l0 = self.box_HealthListener_v6_29;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(5),
        -- B,
        [1] = "Generic",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_561()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756129865378859",
        -- EntityB,
        [2] = "2101809769990860703",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_569()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101756814321264658",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1921729651");
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
                [0] = self.f_box_OutputOrder_v2_87_Out_0,
                [1] = self.f_box_OutputOrder_v2_87_Out_1,
                [2] = self.f_box_OutputOrder_v2_87_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_37()
    local params;
    params = {
        -- Group,
        [0] = "2102682520601500881",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_449()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_449");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1932246163");
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
                [0] = self.f_box_OutputOrder_v2_449_Out_0,
                [1] = self.f_box_OutputOrder_v2_449_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_557()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756814321264658",
        -- EntityB,
        [2] = "2101810534012694511",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_436()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_339()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615988632988649",
        -- SoundId,
        [1] = "596728657",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1942726365");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_184_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_184_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2101756993181067337",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_114()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101810467606376403",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_477()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615291806008829",
        -- SoundId,
        [1] = "3431207683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_257()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_257");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1950180308");
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
                [0] = self.f_box_OutputOrder_v2_257_Out_0,
                [1] = self.f_box_OutputOrder_v2_257_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_470()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615286584100347",
        -- SoundId,
        [1] = "3431207683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_461()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_461");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1953094685");
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
                [0] = self.f_box_OutputOrder_v2_461_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_511()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_159()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756129865378859",
        -- EntityB,
        [2] = "2101756416982257019",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_124()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615271637698037",
        -- SoundId,
        [1] = "460638522",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_416()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_416");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1966301987");
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
                [0] = self.f_box_OutputOrder_v2_416_Out_0,
                [1] = self.f_box_OutputOrder_v2_416_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_581()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_581");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1978549713");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_581_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_581_True,
    });
    params = {
        -- entityId,
        [0] = "2101811975739674187",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_329()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615988632988649",
        -- SoundId,
        [1] = "2067737371",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_277()
    local params;
    params = {
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_302()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_302");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1990345154");
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
                [0] = self.f_box_OutputOrder_v2_302_Out_0,
                [1] = self.f_box_OutputOrder_v2_302_Out_1,
                [2] = self.f_box_OutputOrder_v2_302_Out_2,
                [3] = self.f_box_OutputOrder_v2_302_Out_3,
                [4] = self.f_box_OutputOrder_v2_302_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_372()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_372");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|1991792469");
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
                [0] = self.f_box_OutputOrder_v2_372_Out_0,
                [1] = self.f_box_OutputOrder_v2_372_Out_1,
                [2] = self.f_box_OutputOrder_v2_372_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_47()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101743520512478490",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2019751554");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
                [2] = self.f_box_OutputOrder_v2_20_Out_2,
                [3] = self.f_box_OutputOrder_v2_20_Out_3,
                [4] = self.f_box_OutputOrder_v2_20_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_548()
    local params;
    params = {
        -- targets,
        [0] = "2101810534008500203",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_364()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615291806008829",
        -- SoundId,
        [1] = "1037011969",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_359()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615291806008829",
        -- SoundId,
        [1] = "3431207683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_410()
    local params;
    params = {
        -- Pawns,
        [0] = "2103702503783685746",
        -- SoundId,
        [1] = "3941081612",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_350()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615988632988649",
        -- SoundId,
        [1] = "3431207683",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_268()
    local params;
    params = {
        -- blendTime,
        [1] = 1.5,
        -- endTarget,
        [4] = "2102682663816011001",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2102682663816010998",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_549()
    local params;
    params = {
        -- targets,
        [0] = "2101809769992957857",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_333()
    local params;
    params = {
        -- Pawns,
        [0] = "2101615315080201729",
        -- SoundId,
        [1] = "2067737371",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_361()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_361");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2106528009");
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
                [0] = self.f_box_OutputOrder_v2_361_Out_0,
                [1] = self.f_box_OutputOrder_v2_361_Out_1,
                [2] = self.f_box_OutputOrder_v2_361_Out_2,
                [3] = self.f_box_OutputOrder_v2_361_Out_3,
                [4] = self.f_box_OutputOrder_v2_361_Out_4,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_534()
    local params;
    params = {
        -- targets,
        [0] = "2101810467606376403",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_16()
    local params;
    params = {
        -- blendTime,
        [1] = 1.5,
        -- endTarget,
        [4] = "2102682722372689150",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2102682722374786305",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_214()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101810467608473557",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2118878118");
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
                [0] = self.f_box_OutputOrder_v2_145_Out_0,
                [1] = self.f_box_OutputOrder_v2_145_Out_1,
                [2] = self.f_box_OutputOrder_v2_145_Out_2,
                [3] = self.f_box_OutputOrder_v2_145_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2119615266");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
                [2] = self.f_box_OutputOrder_v2_9_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_412()
    local params;
    params = {
        -- Pawns,
        [0] = "2103702510125473396",
        -- SoundId,
        [1] = "3941081612",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_163()
    local params;
    params = {
        -- EntityA,
        [1] = "2101756814321264658",
        -- EntityB,
        [2] = "2101756814331750429",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_262()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2101810534010597357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_252()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_252");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI51\\UNI51_010_B20.domino|@UNI51_010_B20|2132298220");
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
                [0] = self.f_box_OutputOrder_v2_252_Out_0,
                [1] = self.f_box_OutputOrder_v2_252_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_264_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.IDprogressDynamic = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetInventoryItemQuantity_458_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_458 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_70_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.IDprogressStatic = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_229_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iStaticTargets = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetInventoryItemQuantity_203_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_203 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_244_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_244;
    self.STP_Chemical = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_205_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_205;
    self.Client = l0:GetDataOutValue(1);
end;

function export:OnExit_box_IntegerArithmetics_v2_266_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iDynamicTargets = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_457_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_457;
    self.Client = l0:GetDataOutValue(1);
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
		<DataIn Name="Weapon" AnchorDynType="0" DataTypeID="genericdb" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
