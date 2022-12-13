LUACZ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_012/intro_012_b20.domino
-- User graph: INTRO_012_B20
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetMissionLayerState_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v4.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/PickupListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetInventoryItemQuantity.lua");
        cboxRes:RegisterBox("Domino/System/Player/IgnoreSignal_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/WieldInventory_v5.lua");
        cboxRes:RegisterBox("Domino/System/RequestTutorial_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideDisabledLogicId.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility.lua");
        cboxRes:RegisterBox("Domino/System/UnlockDoor.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_012/INTRO_Fog.globals.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_012/INTRO_012_B20.INTRO_012_B20.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")] = {
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
                name = "ActivityAbortAndFastTravelEnabled",
                type = "bool",
            },
            [1] = {
                name = "SleepingCampEnabled",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener.lua")] = {
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
                name = "EntityUnloaded",
                delayed = true,
            },
            [3] = {
                name = "LoadedIdReceived",
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
                name = "CharacterId",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "EntityId",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/GetMissionLayerState_v2.lua")] = {
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
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [1] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Narrative/PlaySequence_v8.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Play",
            },
            [2] = {
                name = "PlayFromStart",
            },
            [3] = {
                name = "Skip",
            },
            [4] = {
                name = "SPIn",
                dynamicType = 2,
            },
            [5] = {
                name = "Stop",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Paused",
                delayed = true,
            },
            [2] = {
                name = "Skipped",
                delayed = true,
            },
            [3] = {
                name = "SPOut",
                dynamicType = 2,
                delayed = false,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "Stopped",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "cleanupArrows",
                type = "bool",
            },
            [1] = {
                name = "IsSkippable",
                type = "bool",
            },
            [2] = {
                name = "MetaSequenceID",
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
            [5] = {
                name = "ShouldRemovePostFx",
                type = "bool",
            },
            [6] = {
                name = "SkipPostFx",
                type = "string",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Narrative/StartMetaSequence.lua")] = {
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
            [0] = {
                name = "ID",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Interrupt",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Interrupted",
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
                name = "ContextFlags",
                type = "list",
            },
            [1] = {
                name = "ID",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/NoWeaponMode_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Off",
            },
            [1] = {
                name = "On",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnEnter",
                delayed = false,
            },
            [1] = {
                name = "OnLeave",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "useAnims",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/OverrideEnvironment_v3.lua")] = {
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
                name = "adaptiveBloom",
                type = "string",
            },
            [1] = {
                name = "atmosphericScattering",
                type = "string",
            },
            [2] = {
                name = "characterVisibility",
                type = "string",
            },
            [3] = {
                name = "cloud",
                type = "string",
            },
            [4] = {
                name = "depthOfField",
                type = "string",
            },
            [5] = {
                name = "exposure",
                type = "string",
            },
            [6] = {
                name = "fog",
                type = "string",
            },
            [7] = {
                name = "lighting",
                type = "string",
            },
            [8] = {
                name = "motionBlur",
                type = "string",
            },
            [9] = {
                name = "ratio",
                type = "float",
            },
            [10] = {
                name = "shadow",
                type = "string",
            },
            [11] = {
                name = "sky",
                type = "string",
            },
            [12] = {
                name = "stormFactor",
                type = "float",
            },
            [13] = {
                name = "transitionTime",
                type = "float",
            },
            [14] = {
                name = "wind",
                type = "string",
            },
        },
        dataInCount = 15,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PickupListener_v2.lua")] = {
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
                name = "PickedUp",
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
                name = "pickupId",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "InstigatorId",
                type = "entity",
            },
            [1] = {
                name = "PickedUpId",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/Player/IgnoreSignal_v2.lua")] = {
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
            [0] = {
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "signal",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/RequestTutorial_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "OnDisplayed",
                delayed = true,
            },
            [1] = {
                name = "OnHidden",
                delayed = true,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "RequestFailure",
                delayed = false,
            },
            [4] = {
                name = "RequestSuccess",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bypassPreconditions",
                type = "bool",
            },
            [1] = {
                name = "tutorialdb",
                type = "database",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "AreaMessage",
            },
            [1] = {
                name = "Cinematic",
            },
            [2] = {
                name = "Compass",
            },
            [3] = {
                name = "DetectionMeter",
            },
            [4] = {
                name = "EnergyGauge",
            },
            [5] = {
                name = "Health",
            },
            [6] = {
                name = "HelmetMask",
            },
            [7] = {
                name = "Hiring",
            },
            [8] = {
                name = "HudActivityStatus",
            },
            [9] = {
                name = "HudAutodriveStatus",
            },
            [10] = {
                name = "HudChallenge",
            },
            [11] = {
                name = "HudDiscovery",
            },
            [12] = {
                name = "HudGunsForHire",
            },
            [13] = {
                name = "HudHint",
            },
            [14] = {
                name = "HudLocationDiscovery",
            },
            [15] = {
                name = "HudNewCharacterDiscovery",
            },
            [16] = {
                name = "HudNotifGFH",
            },
            [17] = {
                name = "HudNotificationsQueue",
            },
            [18] = {
                name = "HudNotificationsQueueCenterMessage",
            },
            [19] = {
                name = "HudNotificationsQueueDiscovery",
            },
            [20] = {
                name = "HudNotificationsQueueGMS",
            },
            [21] = {
                name = "HudNotificationsQueuePlayerPoints",
            },
            [22] = {
                name = "HudNotificationsQueueWarning",
            },
            [23] = {
                name = "HudObjective",
            },
            [24] = {
                name = "HudObjectiveRewards",
            },
            [25] = {
                name = "HudOpenWorld",
            },
            [26] = {
                name = "HudOutpostSuccess",
            },
            [27] = {
                name = "HudPerkPoints",
            },
            [28] = {
                name = "HudSurvivalInstinct",
            },
            [29] = {
                name = "Interaction",
            },
            [30] = {
                name = "Looting",
            },
            [31] = {
                name = "MissionGiver",
            },
            [32] = {
                name = "ObjectiveProgress",
            },
            [33] = {
                name = "ObjectiveTracked",
            },
            [34] = {
                name = "PlayerBuffs",
            },
            [35] = {
                name = "RepairBar",
            },
            [36] = {
                name = "Reputation",
            },
            [37] = {
                name = "Reticle",
            },
            [38] = {
                name = "Tag",
            },
            [39] = {
                name = "TopCenterTimer",
            },
            [40] = {
                name = "Tutorial",
            },
        },
        controlInCount = 41,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "disableUI",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/OverrideMenuAccessibility.lua")] = {
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
                name = "ActivityLogMenuEnabled",
                type = "bool",
            },
            [1] = {
                name = "AvatarCreationMenuEnabled",
                type = "bool",
            },
            [2] = {
                name = "AvatarCustomizationMenuEnabled",
                type = "bool",
            },
            [3] = {
                name = "ChallengeMenuEnabled",
                type = "bool",
            },
            [4] = {
                name = "LootMenuEnabled",
                type = "bool",
            },
            [5] = {
                name = "OnlineMenuEnabled",
                type = "bool",
            },
            [6] = {
                name = "PerksMenuEnabled",
                type = "bool",
            },
            [7] = {
                name = "ResistanceMenuEnabled",
                type = "bool",
            },
            [8] = {
                name = "SquadMenuEnabled",
                type = "bool",
            },
            [9] = {
                name = "WorldmapMenuEnabled",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UnlockDoor.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Unlock",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Unlocked",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "door",
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
    self._name = "INTRO_012_B20";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20";
    self.UNI61 = nil;
    self.ProgressBodies = 0;
    self.ProgressKills = 0;
    self.fFarZone = 0;
    self.bIsCorpseInRange = false;
    self.SuccessDropDistance = 15;
    self.CorpseCarried = nil;
    self.CorpseMarker = nil;
    self.WarningDistance = 80;
    self.FailDistance = 90;
    self.gPlayerGroup = nil;
    self.DropForSuccess = true;
    self.ePlayer = nil;
    self.Body1_Done = false;
    self.Body2_Done = false;
    self.Body3_Done = false;
    self.Body4_Done = false;
    self.ProgressID2 = 0;
    self.ProgressID1 = 0;
    self.Guard_2 = nil;
    self.UNI62 = nil;
    self.MetaSequenceID = 0;
    self.box_InventoryItemModifier_36 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|31590637");
    l0:SetConnections({
    });
    self.box_Brick_AcquireObject_v5_29 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v5.debug.lua");
    l0 = self.box_Brick_AcquireObject_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v5_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|192614180");
    l0:SetConnections({
        -- ItemsAcquired,
        [0] = self.f_box_Brick_AcquireObject_v5_29_ItemsAcquired,
        -- Started,
        [2] = self.f_box_Brick_AcquireObject_v5_29_Started,
    });
    self.box_StartMetaSequence_13 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|267008584");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_13_Out,
    });
    self.box_ActivityInitialized_9 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|312692478");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_9_Out,
    });
    self.box_RequestTutorial_v3_41 = cbox:CreateBox("Domino/System/RequestTutorial_v3.lua");
    l0 = self.box_RequestTutorial_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestTutorial_v3_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|357964846");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_15 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|391852902");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 0,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_15_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_15_Skipped,
    });
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|527066173");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
    self.box_IgnoreSignal_v2_65 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|546619834");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_25 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|724335174");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_25_Loaded,
    });
    self.box_CharacterLoadedIdListener_59 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|742677919");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_59_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_59_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_59_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_59_LoadedIdReceived,
    });
    self.box_PickupListener_v2_10 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|761730825");
    l0:SetConnections({
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_10_PickedUp,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|875785977");
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1189746617");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_MultipleOR_70 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1210956732");
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
        [0] = self.f_box_MultipleOR_70_Out,
    });
    self.box_OverrideMenuAccessibility_43 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility.lua");
    l0 = self.box_OverrideMenuAccessibility_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1223290470");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_43_Out,
    });
    self.box_ActivityAcknowledgeGate_22 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1466083770");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_22_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_22_Reloaded,
    });
    self.box_Delay_v5_47 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1546167302");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_47_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_47_TimeElapsed,
    });
    self.box_Delay_v5_66 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1573494795");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_66_TimeElapsed,
    });
    self.box_InventoryItemModifier_7 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1579729203");
    l0:SetConnections({
    });
    self.box_OverrideMenuAccessibility_6 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility.lua");
    l0 = self.box_OverrideMenuAccessibility_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1673978285");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_6_Out,
    });
    self.box_WieldInventory_v5_49 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1684572872");
    l0:SetConnections({
        -- Drawn,
        [0] = self.f_box_WieldInventory_v5_49_Drawn,
        -- Holstered,
        [1] = self.f_box_WieldInventory_v5_49_Holstered,
    });
    self.box_NoWeaponMode_v3_45 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1715515759");
    l0:SetConnections({
        -- OnEnter,
        [0] = self.f_box_NoWeaponMode_v3_45_OnEnter,
        -- OnLeave,
        [1] = self.f_box_NoWeaponMode_v3_45_OnLeave,
    });
    self.box_WieldInventory_v5_54 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1794578765");
    l0:SetConnections({
        -- Holstered,
        [1] = self.f_box_WieldInventory_v5_54_Holstered,
    });
    self.box_Brick_AcquireObject_v5_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v5.debug.lua");
    l0 = self.box_Brick_AcquireObject_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v5_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1981934263");
    l0:SetConnections({
        -- ItemsAcquired,
        [0] = self.f_box_Brick_AcquireObject_v5_2_ItemsAcquired,
        -- Started,
        [2] = self.f_box_Brick_AcquireObject_v5_2_Started,
    });
    self.box_Delay_v5_37 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1994418518");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_37_TimeElapsed,
    });
    self.box_MultipleAND_v2_40 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|2008738715");
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
        [0] = self.f_box_MultipleAND_v2_40_Out,
    });
    self.box_PickupListener_v2_31 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|2066711778");
    l0:SetConnections({
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_31_PickedUp,
    });
    self.box_Delay_v5_48 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|2105720855");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_48_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1772993656", "1772993656", "INTRO_012_B20", "In", "box_OutputOrder_v2_57.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_12();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|412518764", "412518764", "INTRO_012_B20", "OnLeaveZone", "box_ActivityRetry_12.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_33();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1015975698", "1015975698", "INTRO_012_B20", "box_OutputOrder_v2_17.Out", "box_AddActivityObjective_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_1();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|329985052", "329985052", "INTRO_012_B20", "box_OutputOrder_v2_17.Out", "box_UnlockDoor_1.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_52_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1533709235", "1533709235", "INTRO_012_B20", "box_MissionBlockLayer_52.Activated", "box_OutputOrder_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_40();
    l0 = self.box_MultipleAND_v2_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|280330841", "280330841", "INTRO_012_B20", "box_OutputOrder_v2_42.Out", "box_MultipleAND_v2_40.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideMenuAccessibility_43();
    l0 = self.box_OverrideMenuAccessibility_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1346903401", "1346903401", "INTRO_012_B20", "box_OutputOrder_v2_42.Out", "box_OverrideMenuAccessibility_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Brick_AcquireObject_v5_29_ItemsAcquired()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = self.box_Brick_AcquireObject_v5_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1036845016", "1036845016", "INTRO_012_B20", "box_Brick_AcquireObject_v5_29.ItemsAcquired", "box_OutputOrder_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_AcquireObject_v5_29_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PickupListener_v2_31();
    l0 = self.box_Brick_AcquireObject_v5_29;
    l1 = self.box_PickupListener_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|619717636", "619717636", "INTRO_012_B20", "box_Brick_AcquireObject_v5_29.Started", "box_PickupListener_v2_31.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StartMetaSequence_13_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_13_Out();
    params = self:OnEnter_box_PlaySequence_v8_15();
    l0 = self.box_StartMetaSequence_13;
    l1 = self.box_PlaySequence_v8_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1629772137", "1629772137", "INTRO_012_B20", "box_StartMetaSequence_13.Out", "box_PlaySequence_v8_15.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_ActivityInitialized_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1120128506", "1120128506", "INTRO_012_B20", "box_ActivityInitialized_9.Out", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_AcquireObject_v5_2();
    l0 = self.box_Brick_AcquireObject_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1090876795", "1090876795", "INTRO_012_B20", "box_OutputOrder_v2_30.Out", "box_Brick_AcquireObject_v5_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_AcquireObject_v5_29();
    l0 = self.box_Brick_AcquireObject_v5_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|998277074", "998277074", "INTRO_012_B20", "box_OutputOrder_v2_30.Out", "box_Brick_AcquireObject_v5_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_4_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideMenuAccessibility_6();
    l0 = self.box_OverrideMenuAccessibility_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|739288918", "739288918", "INTRO_012_B20", "box_MissionBlockLayer_4.Activated", "box_OverrideMenuAccessibility_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GetMissionLayerState_v2_72_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_71();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|822837724", "822837724", "INTRO_012_B20", "box_GetMissionLayerState_v2_72.Disabled", "box_MissionBlockLayer_71.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_15_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|772047561", "772047561", "INTRO_012_B20", "box_PlaySequence_v8_15.Finished", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_15_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|760805644", "760805644", "INTRO_012_B20", "box_PlaySequence_v8_15.Skipped", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StopMetaSequence_v4_14_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetMissionLayerState_v2_68();
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1640190960", "1640190960", "INTRO_012_B20", "box_StopMetaSequence_v4_14.Stopped", "box_GetMissionLayerState_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_32_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|992707912", "992707912", "INTRO_012_B20", "box_EndActivityObjective_v2_32.Out", "box_OutputOrder_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_11_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_52();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|313426494", "313426494", "INTRO_012_B20", "box_GetPlayerGroup_v2_11.Out", "box_MissionBlockLayer_52.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetInventoryItemQuantity_20();
    l0 = self.box_Delay_v5_19;
    l1 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|2052901298", "2052901298", "INTRO_012_B20", "box_Delay_v5_19.TimeElapsed", "box_GetInventoryItemQuantity_20.GetNumberOfItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetNumberOfItems
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_39_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_36();
    l0 = self.box_InventoryItemModifier_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|386430285", "386430285", "INTRO_012_B20", "box_Compare_Integers_39.A_lt_B", "box_InventoryItemModifier_36.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_25_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_66();
    l0 = self.box_EntityStatusListener_25;
    l1 = self.box_Delay_v5_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|855341073", "855341073", "INTRO_012_B20", "box_EntityStatusListener_25.Loaded", "box_Delay_v5_66.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|733491133", "733491133", "INTRO_012_B20", "box_OutputOrder_v2_46.Out", "box_Delay_v5_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NoWeaponMode_v3_45();
    l0 = self.box_NoWeaponMode_v3_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|956622418", "956622418", "INTRO_012_B20", "box_OutputOrder_v2_46.Out", "box_NoWeaponMode_v3_45.Off", clone:GetLuaBox(), l0:GetLuaBox());
    -- Off
    l0:Exec(0, params);
end;

function export:f_box_CharacterLoadedIdListener_59_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_59_LoadedIdReceived();
    params = self:OnEnter_box_EntityStatusListener_25();
    l0 = self.box_CharacterLoadedIdListener_59;
    l1 = self.box_EntityStatusListener_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1981463105", "1981463105", "INTRO_012_B20", "box_CharacterLoadedIdListener_59.LoadedIdReceived", "box_EntityStatusListener_25.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PickupListener_v2_10_PickedUp()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = self.box_PickupListener_v2_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1933147195", "1933147195", "INTRO_012_B20", "box_PickupListener_v2_10.PickedUp", "box_OutputOrder_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetMissionLayerState_v2_55_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_56();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1660693630", "1660693630", "INTRO_012_B20", "box_GetMissionLayerState_v2_55.Disabled", "box_MissionBlockLayer_56.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetInventoryItemQuantity_38_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_38_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_39();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|369013286", "369013286", "INTRO_012_B20", "box_GetInventoryItemQuantity_38.Out", "box_Compare_Integers_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_34();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1528020923", "1528020923", "INTRO_012_B20", "box_AddActivityObjective_v2_33.Out", "box_ActivityObjectiveMarkerModifier_v3_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_26();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|734270400", "734270400", "INTRO_012_B20", "box_OutputOrder_v2_76.Out", "box_UseContextualActionModifier_v3_26.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_77();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|2115119524", "2115119524", "INTRO_012_B20", "box_OutputOrder_v2_76.Out", "box_MissionBlockLayer_77.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityForceAndLockTracking_44_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|644802782", "644802782", "INTRO_012_B20", "box_ActivityForceAndLockTracking_44.Enabled", "box_ActivityAcknowledgeGate_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_14();
    l0 = self.box_MultipleOR_16;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1780744659", "1780744659", "INTRO_012_B20", "box_MultipleOR_16.Out", "box_StopMetaSequence_v4_14.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_26_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_53();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1977724758", "1977724758", "INTRO_012_B20", "box_UseContextualActionModifier_v3_26.Disabled", "box_ActivityForceAndLockTracking_53.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_37();
    l0 = self.box_Delay_v5_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1755182407", "1755182407", "INTRO_012_B20", "box_OutputOrder_v2_61.Out", "box_Delay_v5_37.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_60();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1179920876", "1179920876", "INTRO_012_B20", "box_OutputOrder_v2_61.Out", "box_OverrideDisabledLogicId_60.Compass", clone:GetLuaBox(), l0:GetLuaBox());
    -- Compass
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetMissionLayerState_v2_68_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_67();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|395962453", "395962453", "INTRO_012_B20", "box_GetMissionLayerState_v2_68.Enabled", "box_MissionBlockLayer_67.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_64_Out()
    self:OnExit_box_SetBoolean_v2_64_Out();
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|510125813", "510125813", "INTRO_012_B20", "box_MultipleOR_3.Out", "box_ActivityInitialized_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityMiscInfoModifier_v2_24_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_11();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|403950603", "403950603", "INTRO_012_B20", "box_ActivityMiscInfoModifier_v2_24.Out", "box_GetPlayerGroup_v2_11.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_51();
    l0 = self.box_MultipleOR_70;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|581553757", "581553757", "INTRO_012_B20", "box_MultipleOR_70.Out", "box_MissionBlockLayer_51.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OverrideMenuAccessibility_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestTutorial_v3_41();
    l0 = self.box_OverrideMenuAccessibility_43;
    l1 = self.box_RequestTutorial_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|940955812", "940955812", "INTRO_012_B20", "box_OverrideMenuAccessibility_43.Out", "box_RequestTutorial_v3_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|945998167", "945998167", "INTRO_012_B20", "box_OutputOrder_v2_62.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_63();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1701190693", "1701190693", "INTRO_012_B20", "box_OutputOrder_v2_62.Out", "box_OverrideEnvironment_v3_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityForceAndLockTracking_53_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|102954969", "102954969", "INTRO_012_B20", "box_ActivityForceAndLockTracking_53.Disabled", "box_ActivityEnd_8.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_24();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|2102470715", "2102470715", "INTRO_012_B20", "box_OutputOrder_v2_27.Out", "box_ActivityMiscInfoModifier_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_28();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1676795798", "1676795798", "INTRO_012_B20", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_28.HudLocationDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudLocationDiscovery
    l0:Exec(14, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_28();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1648196239", "1648196239", "INTRO_012_B20", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_28.HudNewCharacterDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNewCharacterDiscovery
    l0:Exec(15, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_28();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|51233392", "51233392", "INTRO_012_B20", "box_OutputOrder_v2_27.Out", "box_OverrideDisabledLogicId_28.Compass", clone:GetLuaBox(), l0:GetLuaBox());
    -- Compass
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetMissionLayerState_v2_74();
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|518334000", "518334000", "INTRO_012_B20", "box_OutputOrder_v2_27.Out", "box_GetMissionLayerState_v2_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetMissionLayerState_v2_74_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_73();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|584999259", "584999259", "INTRO_012_B20", "box_GetMissionLayerState_v2_74.Disabled", "box_MissionBlockLayer_73.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_35_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_32();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1198828647", "1198828647", "INTRO_012_B20", "box_ActivityObjectiveMarkerModifier_v3_35.Disabled", "box_EndActivityObjective_v2_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BroadcastMessage_78_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_48();
    l0 = self.box_Delay_v5_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|741457067", "741457067", "INTRO_012_B20", "box_BroadcastMessage_78.Out", "box_Delay_v5_48.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ActivityAcknowledgeGate_22_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_22;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|228581180", "228581180", "INTRO_012_B20", "box_ActivityAcknowledgeGate_22.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_22_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_18();
    l0 = self.box_ActivityAcknowledgeGate_22;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|2092736794", "2092736794", "INTRO_012_B20", "box_ActivityAcknowledgeGate_22.Reloaded", "box_MissionBlockLayer_18.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_67_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_75();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1653598677", "1653598677", "INTRO_012_B20", "box_MissionBlockLayer_67.Deactivated", "box_MissionBlockLayer_75.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_47_Started()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_65();
    l0 = self.box_Delay_v5_47;
    l1 = self.box_IgnoreSignal_v2_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|938448794", "938448794", "INTRO_012_B20", "box_Delay_v5_47.Started", "box_IgnoreSignal_v2_65.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_47_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_WieldInventory_v5_49();
    l0 = self.box_Delay_v5_47;
    l1 = self.box_WieldInventory_v5_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|681108275", "681108275", "INTRO_012_B20", "box_Delay_v5_47.TimeElapsed", "box_WieldInventory_v5_49.LuaHolster", l0:GetLuaBox(), l1:GetLuaBox());
    -- LuaHolster
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_66_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_58();
    l0 = self.box_Delay_v5_66;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1148086682", "1148086682", "INTRO_012_B20", "box_Delay_v5_66.TimeElapsed", "box_UseContextualActionModifier_v3_58.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_50_Deactivated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|696275694", "696275694", "INTRO_012_B20", "box_MissionBlockLayer_50.Deactivated", "box_MultipleOR_70.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetInventoryItemQuantity_20_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_20_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_21();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|297623823", "297623823", "INTRO_012_B20", "box_GetInventoryItemQuantity_20.Out", "box_Compare_Integers_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OverrideMenuAccessibility_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = self.box_OverrideMenuAccessibility_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|610785191", "610785191", "INTRO_012_B20", "box_OverrideMenuAccessibility_6.Out", "box_OutputOrder_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_WieldInventory_v5_49_Drawn()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_47();
    l0 = self.box_WieldInventory_v5_49;
    l1 = self.box_Delay_v5_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|785686123", "785686123", "INTRO_012_B20", "box_WieldInventory_v5_49.Drawn", "box_Delay_v5_47.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_WieldInventory_v5_49_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_45();
    l0 = self.box_WieldInventory_v5_49;
    l1 = self.box_NoWeaponMode_v3_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1959635504", "1959635504", "INTRO_012_B20", "box_WieldInventory_v5_49.Holstered", "box_NoWeaponMode_v3_45.On", l0:GetLuaBox(), l1:GetLuaBox());
    -- On
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_18_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_5();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1212104334", "1212104334", "INTRO_012_B20", "box_MissionBlockLayer_18.Activated", "box_MissionBlockLayer_5.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_44();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|692419698", "692419698", "INTRO_012_B20", "box_OutputOrder_v2_57.Out", "box_ActivityForceAndLockTracking_44.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetMissionLayerState_v2_55();
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|506181827", "506181827", "INTRO_012_B20", "box_OutputOrder_v2_57.Out", "box_GetMissionLayerState_v2_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_59();
    l0 = self.box_CharacterLoadedIdListener_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1030586243", "1030586243", "INTRO_012_B20", "box_OutputOrder_v2_57.Out", "box_CharacterLoadedIdListener_59.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_57_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetMissionLayerState_v2_72();
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|47503482", "47503482", "INTRO_012_B20", "box_OutputOrder_v2_57.Out", "box_GetMissionLayerState_v2_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NoWeaponMode_v3_45_OnEnter()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_65();
    l0 = self.box_NoWeaponMode_v3_45;
    l1 = self.box_IgnoreSignal_v2_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1030363660", "1030363660", "INTRO_012_B20", "box_NoWeaponMode_v3_45.OnEnter", "box_IgnoreSignal_v2_65.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_NoWeaponMode_v3_45_OnLeave()
    local params, l0, l1;
    params = self:OnEnter_box_WieldInventory_v5_49();
    l0 = self.box_NoWeaponMode_v3_45;
    l1 = self.box_WieldInventory_v5_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|230625568", "230625568", "INTRO_012_B20", "box_NoWeaponMode_v3_45.OnLeave", "box_WieldInventory_v5_49.LuaDraw", l0:GetLuaBox(), l1:GetLuaBox());
    -- LuaDraw
    l1:Exec(0, params);
end;

function export:f_box_GetMissionLayerState_v2_69_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1183383990", "1183383990", "INTRO_012_B20", "box_GetMissionLayerState_v2_69.Disabled", "box_MultipleOR_70.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetMissionLayerState_v2_69_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_50();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1815436130", "1815436130", "INTRO_012_B20", "box_GetMissionLayerState_v2_69.Enabled", "box_MissionBlockLayer_50.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_WieldInventory_v5_54_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = self.box_WieldInventory_v5_54;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|879174172", "879174172", "INTRO_012_B20", "box_WieldInventory_v5_54.Holstered", "box_OutputOrder_v2_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OverrideEnvironment_v3_63_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_64();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|238325987", "238325987", "INTRO_012_B20", "box_OverrideEnvironment_v3_63.Enabled", "box_SetBoolean_v2_64.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UnlockDoor_1_Unlocked()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1540605590", "1540605590", "INTRO_012_B20", "box_UnlockDoor_1.Unlocked", "box_StartMetaSequence_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MissionBlockLayer_5_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_4();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1698468489", "1698468489", "INTRO_012_B20", "box_MissionBlockLayer_5.Activated", "box_MissionBlockLayer_4.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_AcquireObject_v5_2_ItemsAcquired()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_40();
    l0 = self.box_Brick_AcquireObject_v5_2;
    l1 = self.box_MultipleAND_v2_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|463020458", "463020458", "INTRO_012_B20", "box_Brick_AcquireObject_v5_2.ItemsAcquired", "box_MultipleAND_v2_40.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Brick_AcquireObject_v5_2_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PickupListener_v2_10();
    l0 = self.box_Brick_AcquireObject_v5_2;
    l1 = self.box_PickupListener_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|727046320", "727046320", "INTRO_012_B20", "box_Brick_AcquireObject_v5_2.Started", "box_PickupListener_v2_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_37_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetInventoryItemQuantity_38();
    l0 = self.box_Delay_v5_37;
    l1 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|438913938", "438913938", "INTRO_012_B20", "box_Delay_v5_37.TimeElapsed", "box_GetInventoryItemQuantity_38.GetNumberOfItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetNumberOfItems
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_35();
    l0 = self.box_MultipleAND_v2_40;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|344011814", "344011814", "INTRO_012_B20", "box_MultipleAND_v2_40.Out", "box_ActivityObjectiveMarkerModifier_v3_35.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PickupListener_v2_31_PickedUp()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = self.box_PickupListener_v2_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1762248806", "1762248806", "INTRO_012_B20", "box_PickupListener_v2_31.PickedUp", "box_OutputOrder_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_78();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1750792098", "1750792098", "INTRO_012_B20", "box_OutputOrder_v2_23.Out", "box_BroadcastMessage_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetMissionLayerState_v2_69();
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|978617685", "978617685", "INTRO_012_B20", "box_OutputOrder_v2_23.Out", "box_GetMissionLayerState_v2_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_21_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_7();
    l0 = self.box_InventoryItemModifier_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|218229081", "218229081", "INTRO_012_B20", "box_Compare_Integers_21.A_lt_B", "box_InventoryItemModifier_7.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_34_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|2127694007", "2127694007", "INTRO_012_B20", "box_ActivityObjectiveMarkerModifier_v3_34.Enabled", "box_OutputOrder_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_48_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_WieldInventory_v5_54();
    l0 = self.box_Delay_v5_48;
    l1 = self.box_WieldInventory_v5_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1476236487", "1476236487", "INTRO_012_B20", "box_Delay_v5_48.TimeElapsed", "box_WieldInventory_v5_54.LuaHolster", l0:GetLuaBox(), l1:GetLuaBox());
    -- LuaHolster
    l1:Exec(1, params);
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|27134457");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_36()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015286876474127",
        -- players,
        [2] = self.gPlayerGroup,
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|57124840");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_52_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160253210629666",
        -- missionLayerId,
        [1] = "27160253362433572",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|154010974");
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

function export:OnEnter_box_Brick_AcquireObject_v5_29()
    local params;
    params = {
        -- AmountRequired,
        [0] = 1,
        -- bRequiresObjective,
        [1] = false,
        -- CompletePreviousObjective,
        [2] = false,
        -- LootItemID,
        [3] = "9015286876474127",
        -- ProtectItemOnSuccess,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|283426592");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|320348867");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_4()
    local params, l0;
    DrawTextToScreen("Comment: BUNKERDOOR_BEFORE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: BUNKERDOOR_BEFORE");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|324335835");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_4_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160253335547570",
        -- missionLayerId,
        [1] = "45174651845044507",
    };
    return params;
end;

function export:OnEnter_box_GetMissionLayerState_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetMissionLayerState_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|343034473");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GetMissionLayerState_v2_72_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160253335547570",
        -- missionBlockLayerId,
        [1] = "45174651845044507",
    };
    return params;
end;

function export:OnEnter_box_RequestTutorial_v3_41()
    local params;
    params = {
        -- bypassPreconditions,
        [0] = true,
        -- tutorialdb,
        [1] = "9015280980598000",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|376379500");
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

function export:OnEnter_box_PlaySequence_v8_15()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2104145991983715323",
        -- SequenceFile,
        [4] = "sequences/zeta_main/cin_playgo_safedoor/cin_playgo_safedoor.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_71()
    local params, l0;
    DrawTextToScreen("Comment: BUNKERDOOR_BEFORE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: BUNKERDOOR_BEFORE");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|420672349");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160253335547570",
        -- missionLayerId,
        [1] = "45174651845044507",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|431903709");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_14_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|432329554");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_32_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT04_012_B20_ExitBunker",
            id = "658483",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|505901166");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_11_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_19()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_65()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "updateshooting",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|683085927");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_39_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_38,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_25()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103750585508487922",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|731662731");
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

function export:OnEnter_box_CharacterLoadedIdListener_59()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015223375451837",
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pickupId,
        [1] = "2103403793625394458",
    };
    return params;
end;

function export:OnEnter_box_GetMissionLayerState_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetMissionLayerState_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|769893766");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GetMissionLayerState_v2_55_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160253210629666",
        -- missionBlockLayerId,
        [1] = "36167452465370658",
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|823080873");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_38_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015286876474127",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|830549018");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_33_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT04_012_B20_ExitBunker",
            id = "658483",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|860640547");
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
                [0] = self.f_box_OutputOrder_v2_76_Out_0,
                [1] = self.f_box_OutputOrder_v2_76_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|865374788");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_44_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|894174998");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2103750585508487922",
        -- Entity,
        [1] = self.UNI61,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|916145958");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_26_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103750585508487922",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_56()
    local params, l0;
    DrawTextToScreen("Comment: SAFEDOOR_BEFORE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: SAFEDOOR_BEFORE");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|954504344");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160253210629666",
        -- missionLayerId,
        [1] = "36167452465370658",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|984654479");
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
                [0] = self.f_box_OutputOrder_v2_61_Out_0,
                [1] = self.f_box_OutputOrder_v2_61_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetMissionLayerState_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetMissionLayerState_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1070039011");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GetMissionLayerState_v2_68_Enabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160253210629666",
        -- missionBlockLayerId,
        [1] = "36167452465370658",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1131926649");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_64_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1195933367");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_24_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_43()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = false,
        -- AvatarCustomizationMenuEnabled,
        [2] = true,
        -- ChallengeMenuEnabled,
        [3] = false,
        -- LootMenuEnabled,
        [4] = true,
        -- OnlineMenuEnabled,
        [5] = false,
        -- PerksMenuEnabled,
        [6] = false,
        -- ResistanceMenuEnabled,
        [7] = false,
        -- SquadMenuEnabled,
        [8] = false,
        -- WorldmapMenuEnabled,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1297370058");
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
                [0] = self.f_box_OutputOrder_v2_62_Out_0,
                [1] = self.f_box_OutputOrder_v2_62_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1306253711");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityForceAndLockTracking_53_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1331942787");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
                [2] = self.f_box_OutputOrder_v2_27_Out_2,
                [3] = self.f_box_OutputOrder_v2_27_Out_3,
                [4] = self.f_box_OutputOrder_v2_27_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetMissionLayerState_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetMissionLayerState_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1335367042");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GetMissionLayerState_v2_74_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160253335547570",
        -- missionBlockLayerId,
        [1] = "45174651845044507",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1345880479");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_35_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2103706849862765176",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT04_012_B20_ExitBunker",
            id = "658483",
        },
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_78()
    local params, l0;
    DrawTextToScreen("Comment: INTRO_012_FOG", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'BroadcastMessage')-- Comment: INTRO_012_FOG");
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1366131623");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_78_Out,
    });
    params = {
        -- Message,
        [0] = "INTRO_GUNPICKEDUP",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_67()
    local params, l0;
    DrawTextToScreen("Comment: SAFEDOOR_BEFORE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: SAFEDOOR_BEFORE");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1478095177");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_67_Deactivated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160253210629666",
        -- missionLayerId,
        [1] = "36167452465370658",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_47()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_66()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_7()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015213189219337",
        -- players,
        [2] = self.gPlayerGroup,
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_50()
    local params, l0;
    DrawTextToScreen("Comment: BUNKERDOOR_BEFORE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: BUNKERDOOR_BEFORE");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1607707906");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_50_Deactivated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160253335547570",
        -- missionLayerId,
        [1] = "45174651845044507",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1631295302");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1635238890");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_20_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015213189219337",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_6()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = false,
        -- AvatarCustomizationMenuEnabled,
        [2] = true,
        -- ChallengeMenuEnabled,
        [3] = false,
        -- LootMenuEnabled,
        [4] = false,
        -- OnlineMenuEnabled,
        [5] = false,
        -- PerksMenuEnabled,
        [6] = false,
        -- ResistanceMenuEnabled,
        [7] = false,
        -- SquadMenuEnabled,
        [8] = false,
        -- WorldmapMenuEnabled,
        [9] = false,
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_49()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015213189219337",
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_18()
    local params, l0;
    DrawTextToScreen("Comment: COMMON_BEFORE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: COMMON_BEFORE");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1692953062");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_18_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "54181820388102972",
        -- missionLayerId,
        [1] = "63189019642843965",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_75()
    local params, l0;
    DrawTextToScreen("Comment: SAFEDOOR_AFTER", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: SAFEDOOR_AFTER");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1702128160");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160253210629666",
        -- missionLayerId,
        [1] = "45174651720232920",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1703141654");
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
                [0] = self.f_box_OutputOrder_v2_57_Out_0,
                [1] = self.f_box_OutputOrder_v2_57_Out_1,
                [2] = self.f_box_OutputOrder_v2_57_Out_2,
                [3] = self.f_box_OutputOrder_v2_57_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_45()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_GetMissionLayerState_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetMissionLayerState_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1769228326");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GetMissionLayerState_v2_69_Disabled,
        -- Enabled,
        [1] = self.f_box_GetMissionLayerState_v2_69_Enabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160253335547570",
        -- missionBlockLayerId,
        [1] = "45174651845044507",
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_54()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015197341010330",
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_73()
    local params, l0;
    DrawTextToScreen("Comment: BUNKERDOOR_BEFORE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: BUNKERDOOR_BEFORE");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1820998045");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160253335547570",
        -- missionLayerId,
        [1] = "45174651845044507",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_63()
    local params, l0;
    DrawTextToScreen("Comment: Inside", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OverrideEnvironment_v3')-- Comment: Inside");
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1846077388");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_OverrideEnvironment_v3_63_Enabled,
    });
    params = {
        -- fog,
        [6] = "FCZ_Default:Unique_Fogs.Playgo_fog_interior",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 0.01,
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1933267383");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_1_Unlocked,
    });
    params = {
        -- door,
        [0] = "2103855872670210987",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_51()
    local params, l0;
    DrawTextToScreen("Comment: SAFEDOOR_AFTER", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: SAFEDOOR_AFTER");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1947551298");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160253210629666",
        -- missionLayerId,
        [1] = "45174651720232920",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_5()
    local params, l0;
    DrawTextToScreen("Comment: SAFEDOOR_BEFORE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: SAFEDOOR_BEFORE");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1951245209");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_5_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160253210629666",
        -- missionLayerId,
        [1] = "36167452465370658",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_77()
    local params, l0;
    DrawTextToScreen("Comment: SAFEDOOR_BEFORE", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: SAFEDOOR_BEFORE");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|1962568445");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160253210629666",
        -- missionLayerId,
        [1] = "36167452465370658",
    };
    return params;
end;

function export:OnEnter_box_Brick_AcquireObject_v5_2()
    local params;
    params = {
        -- AmountRequired,
        [0] = 1,
        -- bRequiresObjective,
        [1] = false,
        -- CompletePreviousObjective,
        [2] = false,
        -- LootItemID,
        [3] = "9015213189219337",
        -- ProtectItemOnSuccess,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_37()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.2,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_40()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|2061318892");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_31()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pickupId,
        [1] = "2104646730036298012",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|2078294044");
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

function export:OnEnter_box_Compare_Integers_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|2084409602");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_21_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_20,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\INTRO_012_B20.domino|@INTRO_012_B20|2093782546");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_34_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2103706849862765176",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT04_012_B20_ExitBunker",
            id = "658483",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_48()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.55,
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_13_Out()
    local l0;
    l0 = self.box_StartMetaSequence_13;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_59_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_59;
    self.UNI61 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetInventoryItemQuantity_38_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_38 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_64_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.INTRO_Fog.isOutsideFog = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetInventoryItemQuantity_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_20 = l0:GetDataOutValue(0);
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
