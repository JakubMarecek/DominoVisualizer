LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key02/key02_005/key02_005_b10.domino
-- User graph: KEY02_005_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Specific.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemListener.lua");
        cboxRes:RegisterBox("Domino/System/IsVehicleAvailable_v2.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/RadioStationModifier.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetLootGroup.lua");
        cboxRes:RegisterBox("Domino/System/SetOasis.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleSeatModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B10.KEY02_005_GuardDialogs.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B10.globals.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B10.KEY02_005_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v5.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "RemoveItemFromInventory",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "ItemsAcquired",
                delayed = false,
            },
            [1] = {
                name = "ItemsRemoved",
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
                name = "AmountRequired",
                type = "int",
            },
            [1] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [2] = {
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [3] = {
                name = "LootItemID",
                type = "genericdb",
            },
            [4] = {
                name = "MarkerTypeId",
                type = "database",
            },
            [5] = {
                name = "Objective",
                type = "oasis",
            },
            [6] = {
                name = "opt_eMarker",
                type = "entity",
            },
            [7] = {
                name = "ProtectItemOnSuccess",
                type = "bool",
            },
        },
        dataInCount = 8,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua")] = {
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
                name = "PlayerDetected",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Success",
                delayed = false,
            },
            [4] = {
                name = "TimerExpired",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bIsTrigger",
                type = "bool",
            },
            [2] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [3] = {
                name = "bUse2d_ProximityCheck",
                type = "bool",
            },
            [4] = {
                name = "bUseDetectionModifier",
                type = "bool",
            },
            [5] = {
                name = "eMarker",
                type = "entity",
            },
            [6] = {
                name = "eRadiusTarget",
                type = "entity",
            },
            [7] = {
                name = "eTrigger",
                type = "entity",
            },
            [8] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [9] = {
                name = "fObjectiveTimer",
                type = "float",
            },
            [10] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [11] = {
                name = "opt_Objective",
                type = "oasis",
            },
        },
        dataInCount = 12,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Specific.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Destroyed",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = true,
            },
            [3] = {
                name = "Unloaded",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "e_MobileObjectiveMarker",
                type = "entity",
            },
            [2] = {
                name = "e_Vehicle",
                type = "entity",
            },
            [3] = {
                name = "hasObjective",
                type = "bool",
            },
            [4] = {
                name = "o_Objective",
                type = "oasis",
            },
            [5] = {
                name = "opt_FailReason",
                type = "oasis",
            },
            [6] = {
                name = "opt_MarkerBone",
                type = "string",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "FailureReason",
                type = "oasis",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/InventoryItemListener.lua")] = {
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
                name = "ItemAdded",
                delayed = true,
            },
            [3] = {
                name = "ItemRemoved",
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
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [2] = {
                name = "itemFilterID",
                type = "genericdb",
            },
            [3] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "itemQuantityRemain",
                type = "int",
            },
            [1] = {
                name = "outItemDescriptorID",
                type = "genericdb",
            },
            [2] = {
                name = "player",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/System/IsVehicleAvailable_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Disabled",
                delayed = false,
            },
            [1] = {
                name = "EngineFail",
                delayed = false,
            },
            [2] = {
                name = "Flipped",
                delayed = false,
            },
            [3] = {
                name = "OK",
                delayed = false,
            },
            [4] = {
                name = "Underwater",
                delayed = false,
            },
            [5] = {
                name = "Unusable",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "Vehicle",
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
    metadataTable[GetPathID("Domino/System/RadioStationModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "AddBlockToPlay",
            },
            [1] = {
                name = "Censor",
            },
            [2] = {
                name = "Uncensor",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "AddedBlockToPlay",
                delayed = false,
            },
            [1] = {
                name = "Censored",
                delayed = false,
            },
            [2] = {
                name = "Uncensored",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "FadeDuration",
                type = "float",
            },
            [1] = {
                name = "IsRadioBlockPermanent",
                type = "bool",
            },
            [2] = {
                name = "MustPlayRadioBlockImmediately",
                type = "bool",
            },
            [3] = {
                name = "RadioBlockToPlay",
                type = "genericdb",
            },
            [4] = {
                name = "TargetStation",
                type = "genericdb",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/SetLootGroup.lua")] = {
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
                name = "LootGroup",
                type = "genericdb",
            },
            [1] = {
                name = "Targets",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/UniversalInterationListener.lua")] = {
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
                name = "Interacted",
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
                name = "usableEntityId",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "entityInteracted",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/VehicleDamageListener_v2.lua")] = {
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
                name = "BoxDisabled",
                delayed = false,
            },
            [1] = {
                name = "Broken",
                delayed = true,
            },
            [2] = {
                name = "Destroyed",
                delayed = true,
            },
            [3] = {
                name = "Disabled",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "MajorDamage",
                delayed = true,
            },
            [6] = {
                name = "MinorDamage",
                delayed = true,
            },
            [7] = {
                name = "Mint",
                delayed = true,
            },
            [8] = {
                name = "OnFire",
                delayed = true,
            },
            [9] = {
                name = "Perfect",
                delayed = true,
            },
            [10] = {
                name = "StateChange",
                delayed = true,
            },
        },
        controlOutCount = 11,
        dataIn = {
            [0] = {
                name = "Vehicle",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "StateID",
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B10.KEY02_005_GuardDialogs.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "KEY02_005_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10";
    self.g_PlayerGroup = nil;
    self.var_FailureReason = {
        section = "",
        item = "",
        id = "",
    };
    self.var_Reloaded = false;
    self.box_EntityStatusListener_41 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|82649688");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_41_Loaded,
    });
    self.box_UniversalInteractionListener_54 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|121029085");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_54_Interacted,
    });
    self.box_UniversalInteractionListener_55 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|193955771");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_55_Interacted,
    });
    self.box_MultipleAND_v2_25 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|199153076");
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
        [0] = self.f_box_MultipleAND_v2_25_Out,
    });
    self.box_Gate_v3_75 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|229268965");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_75_Out,
    });
    self.box_InventoryItemListener_85 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|230798541");
    l0:SetConnections({
        -- ItemAdded,
        [2] = self.f_box_InventoryItemListener_85_ItemAdded,
    });
    self.box_UniversalInteractionListener_48 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|343432287");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_48_Interacted,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|390231790");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_MultipleOR_66 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|410409060");
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
        [0] = self.f_box_MultipleOR_66_Out,
    });
    self.box_Bind_v4_46 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|541120668");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_46_Bound,
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|615007572");
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
        [0] = self.f_box_MultipleOR_18_Out,
    });
    self.box_OnceOnly_v3_14 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|713797355");
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
                [0] = self.f_box_OnceOnly_v3_14_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_80 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|747443559");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_80_TimeElapsed,
    });
    self.box_Brick_AcquireObject_v5_65 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v5.debug.lua");
    l0 = self.box_Brick_AcquireObject_v5_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v5_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|785250018");
    l0:SetConnections({
        -- ItemsAcquired,
        [0] = self.f_box_Brick_AcquireObject_v5_65_ItemsAcquired,
    });
    self.box_RadioStationModifier_96 = cbox:CreateBox("Domino/System/RadioStationModifier.lua");
    l0 = self.box_RadioStationModifier_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioStationModifier_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|799681049");
    l0:SetConnections({
        -- AddedBlockToPlay,
        [0] = self.f_box_RadioStationModifier_96_AddedBlockToPlay,
    });
    self.box_OnceOnly_v3_28 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|817404747");
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
                [0] = self.f_box_OnceOnly_v3_28_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_22 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|940767806");
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
                [0] = self.f_box_OnceOnly_v3_22_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_AcquireObject_v5_76 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v5.debug.lua");
    l0 = self.box_Brick_AcquireObject_v5_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v5_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|990964562");
    l0:SetConnections({
        -- ItemsAcquired,
        [0] = self.f_box_Brick_AcquireObject_v5_76_ItemsAcquired,
    });
    self.box_MultipleOR_60 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1003873359");
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
    self.box_Brick_TakeControl_Vehicle_Specific_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Specific.debug.lua");
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_TakeControl_Vehicle_Specific_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1044661042");
    l0:SetConnections({
        -- Destroyed,
        [0] = self.f_box_Brick_TakeControl_Vehicle_Specific_9_Destroyed,
        -- Started,
        [1] = self.f_box_Brick_TakeControl_Vehicle_Specific_9_Started,
        -- Success,
        [2] = self.f_box_Brick_TakeControl_Vehicle_Specific_9_Success,
        -- Unloaded,
        [3] = self.f_box_Brick_TakeControl_Vehicle_Specific_9_Unloaded,
    });
    self.box_MultipleOR_69 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1078605495");
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
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1106607731");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_SetLootGroup_49 = cbox:CreateBox("Domino/System/SetLootGroup.lua");
    l0 = self.box_SetLootGroup_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetLootGroup_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1119747196");
    l0:SetConnections({
    });
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1174276216");
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
        [0] = self.f_box_MultipleOR_52_Out,
    });
    self.box_Gate_v3_91 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1181306891");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_91_Out,
    });
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1274525938");
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
    self.box_VehicleDamageListener_v2_72 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1289227683");
    l0:SetConnections({
        -- Broken,
        [1] = self.f_box_VehicleDamageListener_v2_72_Broken,
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_72_Destroyed,
        -- OnFire,
        [8] = self.f_box_VehicleDamageListener_v2_72_OnFire,
        -- StateChange,
        [10] = self.f_box_VehicleDamageListener_v2_72_StateChange,
    });
    self.box_ProximityRadiusListener_v3_10 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1391377469");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_10_SomeoneNear,
    });
    self.box_UniversalInteractionListener_50 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1418187083");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_50_Interacted,
    });
    self.box_Delay_v5_23 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1425735509");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_23_TimeElapsed,
    });
    self.box_EntityStatusListener_47 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1435689769");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_47_Loaded,
    });
    self.box_EntityStatusListener_38 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1457017238");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_38_Loaded,
    });
    self.box_Brick_AcquireObject_v5_67 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v5.debug.lua");
    l0 = self.box_Brick_AcquireObject_v5_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v5_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1512485711");
    l0:SetConnections({
        -- ItemsAcquired,
        [0] = self.f_box_Brick_AcquireObject_v5_67_ItemsAcquired,
    });
    self.box_OnceOnly_v3_26 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1519251591");
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
                [0] = self.f_box_OnceOnly_v3_26_Out_0,
            },
            count = 2,
        },
    });
    self.box_MessageListener_v3_90 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1580374924");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_90_Received,
    });
    self.box_SpawnAI_39 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1595221942");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_39_Out,
    });
    self.box_ActivityInitialized_8 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1630030090");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_8_Out,
    });
    self.box_Reach_GoTo_v2_31 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1649796199");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v2_31_Success,
    });
    self.box_HealthListener_v6_58 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1719320662");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_58_Killed,
    });
    self.box_ProximityRadiusListener_v3_81 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1877003720");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_81_SomeoneNear,
    });
    self.box_EntityStatusListener_43 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1981082058");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_43_Loaded,
    });
    self.box_Delay_v5_88 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1995309234");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_88_TimeElapsed,
    });
    self.box_EntityStatusListener_19 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|2074012249");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_19_Loaded,
    });
    self.box_KEY02_005_GuardDialogs_83 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY02/KEY02_005/KEY02_005_B10.KEY02_005_GuardDialogs.debug.lua");
    l0 = self.box_KEY02_005_GuardDialogs_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_KEY02_005_GuardDialogs_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|2088518187");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_32 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|2097597893");
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
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1088617937", "1088617937", "KEY02_005_B10", "In", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|596042666", "596042666", "KEY02_005_B10", "OnLeaveZone", "box_ActivityRetry_3.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_92_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_90();
    l0 = self.box_MessageListener_v3_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1201411488", "1201411488", "KEY02_005_B10", "box_Simple_Node_92.Out", "box_MessageListener_v3_90.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_35_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1228599359", "1228599359", "KEY02_005_B10", "box_Simple_Node_35.Out", "box_OnceOnly_v3_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_57_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_48();
    l0 = self.box_UniversalInteractionListener_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|299948933", "299948933", "KEY02_005_B10", "box_Simple_Node_57.Out", "box_UniversalInteractionListener_48.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_45();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1930932486", "1930932486", "KEY02_005_B10", "box_Simple_Node_57.Out", "box_ActivityObjectiveMarkerModifier_v3_45.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1314268688", "1314268688", "KEY02_005_B10", "box_Simple_Node_57.Out", "box_MultipleOR_60.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_UniversalInteractionListener_50();
    l0 = self.box_UniversalInteractionListener_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1812977283", "1812977283", "KEY02_005_B10", "box_Simple_Node_57.Out", "box_UniversalInteractionListener_50.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_61();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1830602046", "1830602046", "KEY02_005_B10", "box_OutputOrder_v2_77.Out", "box_AddActivityObjective_v2_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_75();
    l0 = self.box_Gate_v3_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1979822655", "1979822655", "KEY02_005_B10", "box_OutputOrder_v2_77.Out", "box_Gate_v3_75.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_41_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_43();
    l0 = self.box_EntityStatusListener_41;
    l1 = self.box_EntityStatusListener_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|304562359", "304562359", "KEY02_005_B10", "box_EntityStatusListener_41.Loaded", "box_EntityStatusListener_43.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1745894863", "1745894863", "KEY02_005_B10", "box_AddActivityObjective_v2_61.Out", "box_OutputOrder_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_54_Interacted()
    local l0, l1;
    l0 = self.box_UniversalInteractionListener_54;
    l1 = self.box_MultipleOR_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|727233604", "727233604", "KEY02_005_B10", "box_UniversalInteractionListener_54.Interacted", "box_MultipleOR_69.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UniversalInteractionListener_55_Interacted()
    local l0, l1;
    l0 = self.box_UniversalInteractionListener_55;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1180936988", "1180936988", "KEY02_005_B10", "box_UniversalInteractionListener_55.Interacted", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleAND_v2_25_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_25;
    l1 = self.box_OnceOnly_v3_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|540308850", "540308850", "KEY02_005_B10", "box_MultipleAND_v2_25.Out", "box_OnceOnly_v3_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleSeatModifier_v2_29_Unlocked()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1017207372", "1017207372", "KEY02_005_B10", "box_VehicleSeatModifier_v2_29.Unlocked", "box_OnceOnly_v3_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_AcquireObject_v5_76();
    l0 = self.box_Gate_v3_75;
    l1 = self.box_Brick_AcquireObject_v5_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1990598508", "1990598508", "KEY02_005_B10", "box_Gate_v3_75.Out", "box_Brick_AcquireObject_v5_76.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_InventoryItemListener_85_ItemAdded()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_87();
    l0 = self.box_InventoryItemListener_85;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|989299885", "989299885", "KEY02_005_B10", "box_InventoryItemListener_85.ItemAdded", "box_AddActivityObjective_v2_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_51_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1633071038", "1633071038", "KEY02_005_B10", "box_ActivityObjectiveMarkerModifier_v3_51.Enabled", "box_OutputOrder_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_54();
    l0 = self.box_UniversalInteractionListener_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1099542068", "1099542068", "KEY02_005_B10", "box_OutputOrder_v2_68.Out", "box_UniversalInteractionListener_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_AcquireObject_v5_67();
    l0 = self.box_Brick_AcquireObject_v5_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|246581075", "246581075", "KEY02_005_B10", "box_OutputOrder_v2_68.Out", "box_Brick_AcquireObject_v5_67.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_UniversalInteractionListener_48_Interacted()
    local l0, l1;
    l0 = self.box_UniversalInteractionListener_48;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1872332222", "1872332222", "KEY02_005_B10", "box_UniversalInteractionListener_48.Interacted", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_7_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_7;
    l1 = self.box_ActivityInitialized_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|942228998", "942228998", "KEY02_005_B10", "box_MultipleOR_7.Out", "box_ActivityInitialized_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_66_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_63();
    l0 = self.box_MultipleOR_66;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1302048477", "1302048477", "KEY02_005_B10", "box_MultipleOR_66.Out", "box_EndActivityObjective_v2_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleSeatModifier_v2_27_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_25();
    l0 = self.box_MultipleAND_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1371754022", "1371754022", "KEY02_005_B10", "box_VehicleSeatModifier_v2_27.Locked", "box_MultipleAND_v2_25.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_AddActivityObjective_v2_87_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_88();
    l0 = self.box_Delay_v5_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1254186101", "1254186101", "KEY02_005_B10", "box_AddActivityObjective_v2_87.Out", "box_Delay_v5_88.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_EndActivityObjective_v2_63_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_57();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1174288061", "1174288061", "KEY02_005_B10", "box_EndActivityObjective_v2_63.Out", "box_Simple_Node_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_12_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_12_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_38();
    l0 = self.box_EntityStatusListener_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|15318974", "15318974", "KEY02_005_B10", "box_GetPlayerGroup_v2_12.Out", "box_EntityStatusListener_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_13_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|973307697", "973307697", "KEY02_005_B10", "box_SetEntity_v2_13.Out", "box_OutputOrder_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_17();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|11632958", "11632958", "KEY02_005_B10", "box_OutputOrder_v2_16.Out", "box_Simple_Node_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_35();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|161310498", "161310498", "KEY02_005_B10", "box_OutputOrder_v2_16.Out", "box_Simple_Node_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_46_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_64();
    l0 = self.box_Bind_v4_46;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1113646154", "1113646154", "KEY02_005_B10", "box_Bind_v4_46.Bound", "box_OutputOrder_v2_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_18_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_18;
    l1 = self.box_OnceOnly_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1328459980", "1328459980", "KEY02_005_B10", "box_MultipleOR_18.Out", "box_OnceOnly_v3_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_14_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = self.box_OnceOnly_v3_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|246333810", "246333810", "KEY02_005_B10", "box_OnceOnly_v3_14.Out", "box_OutputOrder_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_80_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_79();
    l0 = self.box_Delay_v5_80;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|436164534", "436164534", "KEY02_005_B10", "box_Delay_v5_80.TimeElapsed", "box_EndActivityObjective_v2_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_29();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1538745493", "1538745493", "KEY02_005_B10", "box_OutputOrder_v2_71.Out", "box_VehicleSeatModifier_v2_29.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_70();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1789166204", "1789166204", "KEY02_005_B10", "box_OutputOrder_v2_71.Out", "box_EndActivityObjective_v2_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_71_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_89();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1273083231", "1273083231", "KEY02_005_B10", "box_OutputOrder_v2_71.Out", "box_EndActivityObjective_v2_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_AcquireObject_v5_65_ItemsAcquired()
    local l0, l1;
    l0 = self.box_Brick_AcquireObject_v5_65;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|679854060", "679854060", "KEY02_005_B10", "box_Brick_AcquireObject_v5_65.ItemsAcquired", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RadioStationModifier_96_AddedBlockToPlay()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_37();
    l0 = self.box_RadioStationModifier_96;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|794401248", "794401248", "KEY02_005_B10", "box_RadioStationModifier_96.AddedBlockToPlay", "box_VehicleModifier_v2_37.SetExitDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetExitDisabled
    l1:Exec(15, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_28_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_OnceOnly_v3_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|155441450", "155441450", "KEY02_005_B10", "box_OnceOnly_v3_28.Out", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_22_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_73();
    l0 = self.box_OnceOnly_v3_22;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|713505613", "713505613", "KEY02_005_B10", "box_OnceOnly_v3_22.Out", "box_ActivityRetry_73.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsVehicleAvailableBox_v2_20_EngineFail()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsVehicleAvailable_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|222522501", "222522501", "KEY02_005_B10", "box_IsVehicleAvailableBox_v2_20.EngineFail", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IsVehicleAvailableBox_v2_20_Underwater()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsVehicleAvailable_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1503687370", "1503687370", "KEY02_005_B10", "box_IsVehicleAvailableBox_v2_20.Underwater", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsVehicleAvailableBox_v2_20_Unusable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsVehicleAvailable_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1720615457", "1720615457", "KEY02_005_B10", "box_IsVehicleAvailableBox_v2_20.Unusable", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleModifier_v2_37_OnSetExitDisabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1693742761", "1693742761", "KEY02_005_B10", "box_VehicleModifier_v2_37.OnSetExitDisabled", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_AcquireObject_v5_76_ItemsAcquired()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_78();
    l0 = self.box_Brick_AcquireObject_v5_76;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|60998149", "60998149", "KEY02_005_B10", "box_Brick_AcquireObject_v5_76.ItemsAcquired", "box_AddActivityObjective_v2_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_60_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_51();
    l0 = self.box_MultipleOR_60;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|2121420991", "2121420991", "KEY02_005_B10", "box_MultipleOR_60.Out", "box_ActivityObjectiveMarkerModifier_v3_51.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_TakeControl_Vehicle_Specific_9_Destroyed()
    local l0, l1;
    self:OnExit_box_Brick_TakeControl_Vehicle_Specific_9_Destroyed();
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_9;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1846192935", "1846192935", "KEY02_005_B10", "box_Brick_TakeControl_Vehicle_Specific_9.Destroyed", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_TakeControl_Vehicle_Specific_9_Started()
    self:OnExit_box_Brick_TakeControl_Vehicle_Specific_9_Started();
end;

function export:f_box_Brick_TakeControl_Vehicle_Specific_9_Success()
    local params, l0, l1;
    self:OnExit_box_Brick_TakeControl_Vehicle_Specific_9_Success();
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1014189996", "1014189996", "KEY02_005_B10", "box_Brick_TakeControl_Vehicle_Specific_9.Success", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_TakeControl_Vehicle_Specific_9_Unloaded()
    local l0, l1;
    self:OnExit_box_Brick_TakeControl_Vehicle_Specific_9_Unloaded();
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_9;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|426691618", "426691618", "KEY02_005_B10", "box_Brick_TakeControl_Vehicle_Specific_9.Unloaded", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_TakeControl_Vehicle_Specific_9();
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|474528481", "474528481", "KEY02_005_B10", "box_OutputOrder_v2_11.Out", "box_Brick_TakeControl_Vehicle_Specific_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_2();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|100303420", "100303420", "KEY02_005_B10", "box_OutputOrder_v2_11.Out", "box_VehicleSeatModifier_v2_2.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_69_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_62();
    l0 = self.box_MultipleOR_69;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1419740043", "1419740043", "KEY02_005_B10", "box_MultipleOR_69.Out", "box_EndActivityObjective_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_51();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1860889739", "1860889739", "KEY02_005_B10", "box_OutputOrder_v2_53.Out", "box_ActivityObjectiveMarkerModifier_v3_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_58();
    l0 = self.box_HealthListener_v6_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1286021535", "1286021535", "KEY02_005_B10", "box_OutputOrder_v2_53.Out", "box_HealthListener_v6_58.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1941631034", "1941631034", "KEY02_005_B10", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1543161990", "1543161990", "KEY02_005_B10", "box_ActivityAcknowledgeGate_1.Reloaded", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_47();
    l0 = self.box_EntityStatusListener_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1739077462", "1739077462", "KEY02_005_B10", "box_OutputOrder_v2_42.Out", "box_EntityStatusListener_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|71258797", "71258797", "KEY02_005_B10", "box_OutputOrder_v2_42.Out", "box_OutputOrder_v2_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = self.box_MultipleOR_52;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|492907099", "492907099", "KEY02_005_B10", "box_MultipleOR_52.Out", "box_OutputOrder_v2_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_91_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_41();
    l0 = self.box_Gate_v3_91;
    l1 = self.box_EntityStatusListener_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1343165268", "1343165268", "KEY02_005_B10", "box_Gate_v3_91.Out", "box_EntityStatusListener_41.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleSeatModifier_v2_2_Locked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_10();
    l0 = self.box_ProximityRadiusListener_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|916808685", "916808685", "KEY02_005_B10", "box_VehicleSeatModifier_v2_2.Locked", "box_ProximityRadiusListener_v3_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_30_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_30;
    l1 = self.box_OnceOnly_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|999037804", "999037804", "KEY02_005_B10", "box_MultipleOR_30.Out", "box_OnceOnly_v3_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_72_Broken()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_72;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1876012272", "1876012272", "KEY02_005_B10", "box_VehicleDamageListener_v2_72.Broken", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_VehicleDamageListener_v2_72_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_72;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|113247878", "113247878", "KEY02_005_B10", "box_VehicleDamageListener_v2_72.Destroyed", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_VehicleDamageListener_v2_72_OnFire()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_72;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1382309779", "1382309779", "KEY02_005_B10", "box_VehicleDamageListener_v2_72.OnFire", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_VehicleDamageListener_v2_72_StateChange()
    local params, l0, l1;
    params = self:OnEnter_box_IsVehicleAvailableBox_v2_20();
    l0 = self.box_VehicleDamageListener_v2_72;
    l1 = Boxes[GetPathID("Domino/System/IsVehicleAvailable_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|674592307", "674592307", "KEY02_005_B10", "box_VehicleDamageListener_v2_72.StateChange", "box_IsVehicleAvailableBox_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_91();
    l0 = self.box_Gate_v3_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|235572569", "235572569", "KEY02_005_B10", "box_OutputOrder_v2_40.Out", "box_Gate_v3_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioStationModifier_96();
    l0 = self.box_RadioStationModifier_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1728217335", "1728217335", "KEY02_005_B10", "box_OutputOrder_v2_40.Out", "box_RadioStationModifier_96.AddBlockToPlay", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddBlockToPlay
    l0:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_10_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleSeatModifier_v2_2();
    l0 = self.box_ProximityRadiusListener_v3_10;
    l1 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|546230926", "546230926", "KEY02_005_B10", "box_ProximityRadiusListener_v3_10.SomeoneNear", "box_VehicleSeatModifier_v2_2.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_50_Interacted()
    local l0, l1;
    l0 = self.box_UniversalInteractionListener_50;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|249478467", "249478467", "KEY02_005_B10", "box_UniversalInteractionListener_50.Interacted", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_23_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetOasis_21();
    l0 = self.box_Delay_v5_23;
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1791426899", "1791426899", "KEY02_005_B10", "box_Delay_v5_23.TimeElapsed", "box_SetOasis_21.FromOasis", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromOasis
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_47_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetLootGroup_49();
    l0 = self.box_EntityStatusListener_47;
    l1 = self.box_SetLootGroup_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1858887479", "1858887479", "KEY02_005_B10", "box_EntityStatusListener_47.Loaded", "box_SetLootGroup_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_38_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_39();
    l0 = self.box_EntityStatusListener_38;
    l1 = self.box_SpawnAI_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1169429736", "1169429736", "KEY02_005_B10", "box_EntityStatusListener_38.Loaded", "box_SpawnAI_39.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_45_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_46();
    l0 = self.box_Bind_v4_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1135351421", "1135351421", "KEY02_005_B10", "box_ActivityObjectiveMarkerModifier_v3_45.Enabled", "box_Bind_v4_46.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_Brick_AcquireObject_v5_67_ItemsAcquired()
    local l0, l1;
    l0 = self.box_Brick_AcquireObject_v5_67;
    l1 = self.box_MultipleOR_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|317928937", "317928937", "KEY02_005_B10", "box_Brick_AcquireObject_v5_67.ItemsAcquired", "box_MultipleOR_69.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_26_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_23();
    l0 = self.box_OnceOnly_v3_26;
    l1 = self.box_Delay_v5_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1088825353", "1088825353", "KEY02_005_B10", "box_OnceOnly_v3_26.Out", "box_Delay_v5_23.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MessageListener_v3_90_Received()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_91();
    l0 = self.box_MessageListener_v3_90;
    l1 = self.box_Gate_v3_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|839597203", "839597203", "KEY02_005_B10", "box_MessageListener_v3_90.Received", "box_Gate_v3_91.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_19();
    l0 = self.box_SpawnAI_39;
    l1 = self.box_EntityStatusListener_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1921424248", "1921424248", "KEY02_005_B10", "box_SpawnAI_39.Out", "box_EntityStatusListener_19.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_12();
    l0 = self.box_ActivityInitialized_8;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|531338739", "531338739", "KEY02_005_B10", "box_ActivityInitialized_8.Out", "box_GetPlayerGroup_v2_12.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v2_31_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_71();
    l0 = self.box_Reach_GoTo_v2_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1692863197", "1692863197", "KEY02_005_B10", "box_Reach_GoTo_v2_31.Success", "box_OutputOrder_v2_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_58_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = self.box_HealthListener_v6_58;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1285199958", "1285199958", "KEY02_005_B10", "box_HealthListener_v6_58.Killed", "box_OutputOrder_v2_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_78_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_80();
    l0 = self.box_Delay_v5_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1190275552", "1190275552", "KEY02_005_B10", "box_AddActivityObjective_v2_78.Out", "box_Delay_v5_80.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_25();
    l0 = self.box_MultipleAND_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1408652777", "1408652777", "KEY02_005_B10", "box_OutputOrder_v2_24.Out", "box_MultipleAND_v2_25.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_25();
    l0 = self.box_MultipleAND_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1467202744", "1467202744", "KEY02_005_B10", "box_OutputOrder_v2_24.Out", "box_MultipleAND_v2_25.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_24_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_27();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|889837841", "889837841", "KEY02_005_B10", "box_OutputOrder_v2_24.Out", "box_VehicleSeatModifier_v2_27.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_92();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|195214440", "195214440", "KEY02_005_B10", "box_OutputOrder_v2_24.Out", "box_Simple_Node_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_KEY02_005_GuardDialogs_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|836383458", "836383458", "KEY02_005_B10", "box_OutputOrder_v2_24.Out", "box_KEY02_005_GuardDialogs_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_24_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_81();
    l0 = self.box_ProximityRadiusListener_v3_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1422042789", "1422042789", "KEY02_005_B10", "box_OutputOrder_v2_24.Out", "box_ProximityRadiusListener_v3_81.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_24_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleDamageListener_v2_72();
    l0 = self.box_VehicleDamageListener_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|232813588", "232813588", "KEY02_005_B10", "box_OutputOrder_v2_24.Out", "box_VehicleDamageListener_v2_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_24_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|944883347", "944883347", "KEY02_005_B10", "box_OutputOrder_v2_24.Out", "box_OutputOrder_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_57();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1086892858", "1086892858", "KEY02_005_B10", "box_EndActivityObjective_v2_62.Out", "box_Simple_Node_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_17();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1416297054", "1416297054", "KEY02_005_B10", "box_OutputOrder_v2_15.Out", "box_Simple_Node_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|74783125", "74783125", "KEY02_005_B10", "box_OutputOrder_v2_15.Out", "box_ActivityEnd_5.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_81_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_82();
    l0 = self.box_ProximityRadiusListener_v3_81;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1280978118", "1280978118", "KEY02_005_B10", "box_ProximityRadiusListener_v3_81.SomeoneNear", "box_UseContextualActionModifier_v3_82.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|27160584", "27160584", "KEY02_005_B10", "box_OutputOrder_v2_4.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|108861882", "108861882", "KEY02_005_B10", "box_OutputOrder_v2_4.Out", "box_ActivityAcknowledgeGate_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_45();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1314684676", "1314684676", "KEY02_005_B10", "box_OutputOrder_v2_59.Out", "box_ActivityObjectiveMarkerModifier_v3_45.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1702825949", "1702825949", "KEY02_005_B10", "box_OutputOrder_v2_59.Out", "box_MultipleOR_60.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_17();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|879830092", "879830092", "KEY02_005_B10", "box_OutputOrder_v2_33.Out", "box_Simple_Node_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_34();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|943695209", "943695209", "KEY02_005_B10", "box_OutputOrder_v2_33.Out", "box_ActivityRetry_34.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_43_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_44();
    l0 = self.box_EntityStatusListener_43;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1404194707", "1404194707", "KEY02_005_B10", "box_EntityStatusListener_43.Loaded", "box_BroadcastMessage_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_48();
    l0 = self.box_UniversalInteractionListener_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1483164842", "1483164842", "KEY02_005_B10", "box_OutputOrder_v2_56.Out", "box_UniversalInteractionListener_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_50();
    l0 = self.box_UniversalInteractionListener_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|242113641", "242113641", "KEY02_005_B10", "box_OutputOrder_v2_56.Out", "box_UniversalInteractionListener_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_56_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_75();
    l0 = self.box_Gate_v3_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|501987529", "501987529", "KEY02_005_B10", "box_OutputOrder_v2_56.Out", "box_Gate_v3_75.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_56_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemListener_85();
    l0 = self.box_InventoryItemListener_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|348792520", "348792520", "KEY02_005_B10", "box_OutputOrder_v2_56.Out", "box_InventoryItemListener_85.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_88_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_86();
    l0 = self.box_Delay_v5_88;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|149039418", "149039418", "KEY02_005_B10", "box_Delay_v5_88.TimeElapsed", "box_EndActivityObjective_v2_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_64_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_55();
    l0 = self.box_UniversalInteractionListener_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1693501520", "1693501520", "KEY02_005_B10", "box_OutputOrder_v2_64.Out", "box_UniversalInteractionListener_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_64_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_AcquireObject_v5_65();
    l0 = self.box_Brick_AcquireObject_v5_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|693764618", "693764618", "KEY02_005_B10", "box_OutputOrder_v2_64.Out", "box_Brick_AcquireObject_v5_65.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_19_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_13();
    l0 = self.box_EntityStatusListener_19;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1978646562", "1978646562", "KEY02_005_B10", "box_EntityStatusListener_19.Loaded", "box_SetEntity_v2_13.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_32_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_OnceOnly_v3_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1741202000", "1741202000", "KEY02_005_B10", "box_OnceOnly_v3_32.Out", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetOasis_21_Out()
    local params, l0;
    self:OnExit_box_SetOasis_21_Out();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v2_31();
    l0 = self.box_Reach_GoTo_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1044406814", "1044406814", "KEY02_005_B10", "box_SetOasis_21.Out", "box_Reach_GoTo_v2_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|@n_CleanUp");
    l0:SetConnections({
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|@n_DoorSFXListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_92_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|@n_Failed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_35_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|@n_KeyCleanup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_57_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|13004180");
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

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|34490290");
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
                [0] = self.f_box_OutputOrder_v2_77_Out_0,
                [1] = self.f_box_OutputOrder_v2_77_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_41()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101243638840311930",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|99494489");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_61_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "KEY02_005_B10_OBJKEY",
            id = "820035",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_54()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2101367737400987063",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_55()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2100068238191793243",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_25()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|219952677");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_29_Unlocked,
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
        [4] = PersistentGlobals.KEY02_005_B10.var_e_WidowMaker,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_75()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemListener_85()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptorID,
        [1] = "9015220425777336",
        -- players,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|257894916");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_51_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2103195214159033102",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "KEY02_005_B10_OBJKEY",
            id = "820035",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|329014140");
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

function export:OnEnter_box_UniversalInteractionListener_48()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- usableEntityId,
        [1] = "2103178559475467753",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|453642017");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_27_Locked,
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
        [4] = PersistentGlobals.KEY02_005_B10.var_e_WidowMaker,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|462841885");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_87_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "KEY02_005_B10_OBJKEY",
            id = "820035",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|482448390");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_63_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "KEY02_005_B10_OBJKEY",
            id = "820035",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|487386956");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_12_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|490615678");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_13_Out,
    });
    params = {
        -- Entity,
        [0] = "2101288357171567470",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|500116345");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_46()
    local params;
    params = {
        -- BoneName,
        [0] = "Hips",
        -- EntityA,
        [1] = "2100068238191793243",
        -- EntityB,
        [2] = "2103195222595875610",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|596037989");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "KEY02_005_B10_OBJKEY",
            id = "820035",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|673410147");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "KEY02_005_B20_OBJ_Blocks",
            id = "545921",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_80()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|768217565");
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
                [0] = self.f_box_OutputOrder_v2_71_Out_0,
                [1] = self.f_box_OutputOrder_v2_71_Out_1,
                [2] = self.f_box_OutputOrder_v2_71_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_AcquireObject_v5_65()
    local params;
    params = {
        -- AmountRequired,
        [0] = 1,
        -- bRequiresObjective,
        [1] = false,
        -- CompletePreviousObjective,
        [2] = true,
        -- LootItemID,
        [3] = "9015220425777336",
        -- ProtectItemOnSuccess,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_RadioStationModifier_96()
    local params;
    params = {
        -- FadeDuration,
        [0] = 3,
        -- IsRadioBlockPermanent,
        [1] = false,
        -- MustPlayRadioBlockImmediately,
        [2] = true,
        -- RadioBlockToPlay,
        [3] = "9015207160140708",
        -- TargetStation,
        [4] = "9015204464899149",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|897010090");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = self.var_FailureReason,
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_IsVehicleAvailableBox_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsVehicleAvailable_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsVehicleAvailableBox_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|947338289");
    l0:SetConnections({
        -- EngineFail,
        [1] = self.f_box_IsVehicleAvailableBox_v2_20_EngineFail,
        -- Underwater,
        [4] = self.f_box_IsVehicleAvailableBox_v2_20_Underwater,
        -- Unusable,
        [5] = self.f_box_IsVehicleAvailableBox_v2_20_Unusable,
    });
    params = {
        -- Vehicle,
        [0] = PersistentGlobals.KEY02_005_B10.var_e_WidowMaker,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|990712328");
    l0:SetConnections({
        -- OnSetExitDisabled,
        [15] = self.f_box_VehicleModifier_v2_37_OnSetExitDisabled,
    });
    params = {
        -- targets,
        [0] = "2101288357171567470",
    };
    return params;
end;

function export:OnEnter_box_Brick_AcquireObject_v5_76()
    local params;
    params = {
        -- AmountRequired,
        [0] = 1,
        -- bRequiresObjective,
        [1] = false,
        -- CompletePreviousObjective,
        [2] = false,
        -- LootItemID,
        [3] = "9015220425777336",
        -- ProtectItemOnSuccess,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1000120924");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_TakeControl_Vehicle_Specific_9()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- e_MobileObjectiveMarker,
        [1] = "2100496804022882302",
        -- e_Vehicle,
        [2] = PersistentGlobals.KEY02_005_B10.var_e_WidowMaker,
        -- hasObjective,
        [3] = true,
        -- o_Objective,
        [4] = {
            section = "Objectives",
            item = "KEY02_005_B10_OBJ_Widowmaker",
            id = "545920",
        },
        -- opt_FailReason,
        [5] = {
            section = "Objectives",
            item = "KEY02_005_Fail_TruckLost",
            id = "546016",
        },
        -- opt_MarkerBone,
        [6] = "DRIVER_SITPOINT_00",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1072285484");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1082846786");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "KEY02_005_B10_OBJKEY",
            id = "820035",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1090361811");
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

function export:OnEnter_box_SetLootGroup_49()
    local params;
    params = {
        -- LootGroup,
        [0] = "9015249405062087",
        -- Targets,
        [1] = "#0A91838E",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1139083115");
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

function export:OnEnter_box_Gate_v3_91()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1210722496");
    l0:SetConnections({
        -- Locked,
        [0] = self.f_box_VehicleSeatModifier_v2_2_Locked,
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
        [4] = PersistentGlobals.KEY02_005_B10.var_e_WidowMaker,
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_72()
    local params;
    params = {
        -- Vehicle,
        [0] = PersistentGlobals.KEY02_005_B10.var_e_WidowMaker,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1322214426");
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

function export:OnEnter_box_ProximityRadiusListener_v3_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.g_PlayerGroup,
        -- id2,
        [3] = PersistentGlobals.KEY02_005_B10.var_e_WidowMaker,
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_50()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- usableEntityId,
        [1] = "2101868537411808068",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_23()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_47()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100068238198084705",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_38()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101288357158984550",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1479946129");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "KEY02_005_B10_OBJKEY",
            id = "820035",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1493945923");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_45_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2103195222595875610",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "KEY02_005_B10_OBJKEY",
            id = "820035",
        },
    };
    return params;
end;

function export:OnEnter_box_Brick_AcquireObject_v5_67()
    local params;
    params = {
        -- AmountRequired,
        [0] = 1,
        -- bRequiresObjective,
        [1] = false,
        -- CompletePreviousObjective,
        [2] = true,
        -- LootItemID,
        [3] = "9015220425777336",
        -- ProtectItemOnSuccess,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_90()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "GrainElevatorDoor_Opened",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_39()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101288357158984550",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1637137927");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2103510027284321090",
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_31()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = true,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2100496804022882302",
        -- eTrigger,
        [7] = "2101248927402603951",
        -- fDistanceFromTarget,
        [8] = 5,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "KEY02_005_B20_OBJ_Blocks",
            id = "545921",
        },
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1712028901");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "ForceOpenDoor",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_58()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2100068238191793243",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1733874734");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_78_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "KEY02_005_B10_OBJKEY",
            id = "820035",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1778838356");
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

function export:OnEnter_box_EndActivityObjective_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1811898729");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_62_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "KEY02_005_B10_OBJKEY",
            id = "820035",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1824784501");
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

function export:OnEnter_box_ProximityRadiusListener_v3_81()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = PersistentGlobals.KEY02_005_B10.var_e_WidowMaker,
        -- id2,
        [3] = "2103484341899255019",
        -- nearZone,
        [4] = 50,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1878491294");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1904240793");
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
                [0] = self.f_box_OutputOrder_v2_59_Out_0,
                [1] = self.f_box_OutputOrder_v2_59_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1924158920");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "orange",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "KEY02_005_B10 ---SCRIPT RUNNING---",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1962643221");
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

function export:OnEnter_box_EntityStatusListener_43()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101243552215351415",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|1983800149");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
                [2] = self.f_box_OutputOrder_v2_56_Out_2,
                [3] = self.f_box_OutputOrder_v2_56_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_88()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|2044873411");
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

function export:OnEnter_box_EntityStatusListener_19()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101288357171567470",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|2109821948");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "KEY02_005_Fail_TruckLost",
            id = "546016",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SetOasis_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetOasis_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY02\\KEY02_005\\KEY02_005_B10.domino|@KEY02_005_B10|2132025064");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetOasis_21_Out,
    });
    params = {
        -- Oasis,
        [0] = {
            section = "Objectives",
            item = "KEY02_005_Fail_TruckLost",
            id = "546016",
        },
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.g_PlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    PersistentGlobals.KEY02_005_B10.var_e_WidowMaker = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_TakeControl_Vehicle_Specific_9_Destroyed()
    local l0;
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_9;
    self.var_FailureReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_TakeControl_Vehicle_Specific_9_Started()
    local l0;
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_9;
    self.var_FailureReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_TakeControl_Vehicle_Specific_9_Success()
    local l0;
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_9;
    self.var_FailureReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_TakeControl_Vehicle_Specific_9_Unloaded()
    local l0;
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_9;
    self.var_FailureReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetOasis_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.var_FailureReason = l0:GetDataOutValue(0);
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
