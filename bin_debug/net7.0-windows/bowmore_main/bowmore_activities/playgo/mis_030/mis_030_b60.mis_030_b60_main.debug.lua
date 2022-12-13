LUAC�
 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/playgo/mis_030/mis_030_b60.domino
-- User graph: MIS_030_B60_MAIN
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/ChangeSunOrientation_v4.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DisbandUniqueGunsForHire.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FastTravelModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemListener.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/RequestTutorial_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/UIListener.lua");
        cboxRes:RegisterBox("Domino/System/UnlockDoor.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1588229939.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4004970442.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3678919802.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3139098712.bnk]], "CSoundResource");
        cboxRes:LoadResource([[157778728.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3787297731.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1549367364.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3157265785.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3140190123.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_030/MIS_030_B60.MIS_030_B60_MAIN.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua")] = {
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
                name = "bCheckAmountInInventory",
                type = "bool",
            },
            [2] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [3] = {
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [4] = {
                name = "LootItemID",
                type = "genericdb",
            },
            [5] = {
                name = "MarkerTypeId",
                type = "database",
            },
            [6] = {
                name = "Objective",
                type = "oasis",
            },
            [7] = {
                name = "opt_eMarker",
                type = "entity",
            },
            [8] = {
                name = "ProtectItemOnSuccess",
                type = "bool",
            },
        },
        dataInCount = 9,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")] = {
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
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Active",
                delayed = false,
            },
            [1] = {
                name = "Canceled",
                delayed = false,
            },
            [2] = {
                name = "Completed",
                delayed = false,
            },
            [3] = {
                name = "Failed",
                delayed = false,
            },
            [4] = {
                name = "Inactive",
                delayed = false,
            },
            [5] = {
                name = "Out",
                delayed = false,
            },
            [6] = {
                name = "Unavailable",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "activityDescriptorID",
                type = "genericdb",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener_v2.lua")] = {
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
                type = "genericdb",
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
    metadataTable[GetPathID("Domino/System/AI/StateListener_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Alert",
            },
            [1] = {
                name = "Combat",
            },
            [2] = {
                name = "Dead",
            },
            [3] = {
                name = "Disable",
            },
            [4] = {
                name = "Idle_RelaxCautious",
            },
            [5] = {
                name = "Investigate",
            },
        },
        controlInCount = 6,
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
                name = "MemberInState",
                delayed = true,
            },
            [3] = {
                name = "StateStart",
                delayed = true,
            },
            [4] = {
                name = "StateStop",
                delayed = true,
            },
        },
        controlOutCount = 5,
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
                name = "memberCountInState",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/ChangeSunOrientation_v4.lua")] = {
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
                name = "Out",
                delayed = false,
            },
            [1] = {
                name = "Reseted",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "AzimuthDegree",
                type = "float",
            },
            [1] = {
                name = "ElevationDegree",
                type = "float",
            },
            [2] = {
                name = "ResetAfterBeat",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CHEAT_SetEnvironmentTimeScale.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetTimeScale",
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
                name = "timeScale",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "RequestDisband",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "RequestFail",
                delayed = false,
            },
            [1] = {
                name = "RequestSuccess",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "player",
                type = "entity",
            },
            [1] = {
                name = "uniqueCharacterDesc",
                type = "genericdb",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/FastTravelModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v3.lua")] = {
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
                name = "OnAllInside",
                delayed = true,
            },
            [5] = {
                name = "OnEmpty",
                delayed = true,
            },
            [6] = {
                name = "OnOccupied",
                delayed = true,
            },
            [7] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 8,
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
                name = "requiresPawnsActive",
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
    metadataTable[GetPathID("Domino/System/RadioModifier_v3.lua")] = {
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
                name = "Enable",
                type = "bool",
            },
            [1] = {
                name = "ImmediateOverride",
                type = "bool",
            },
            [2] = {
                name = "LockOnOff",
                type = "bool",
            },
            [3] = {
                name = "LockStationSwitching",
                type = "bool",
            },
            [4] = {
                name = "StationOverride",
                type = "genericdb",
            },
            [5] = {
                name = "TargetRadio",
                type = "entity",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/SetTimeOfDay.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "IncrementTimeOfDay",
            },
            [1] = {
                name = "SetTimeOfDay",
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
                name = "Hour",
                type = "int",
            },
            [1] = {
                name = "Minute",
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
    metadataTable[GetPathID("Domino/System/UI/OverrideMenuAccessibility_v2.lua")] = {
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
                name = "HomebaseMenuEnabled",
                type = "bool",
            },
            [5] = {
                name = "LootMenuEnabled",
                type = "bool",
            },
            [6] = {
                name = "OnlineMenuEnabled",
                type = "bool",
            },
            [7] = {
                name = "PerksMenuEnabled",
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
    metadataTable[GetPathID("Domino/System/UI/UIListener.lua")] = {
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
                name = "ExitPauseMenu",
                delayed = true,
            },
            [3] = {
                name = "OpenCraftingPage",
                delayed = true,
            },
            [4] = {
                name = "OpenPauseMenu",
                delayed = true,
            },
            [5] = {
                name = "OpenPhotoMap",
                delayed = true,
            },
            [6] = {
                name = "OpenSkillPage",
                delayed = true,
            },
            [7] = {
                name = "OpenWorldMap",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    self._name = "MIS_030_B60_MAIN";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN";
    self.iMaterials = 0;
    self.eCarmina = nil;
    self.box_StaticBreakableListener_8 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|22524919");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_8_OnBreak,
    });
    self.box_UIListener_61 = cbox:CreateBox("Domino/System/UI/UIListener.lua");
    l0 = self.box_UIListener_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIListener_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|96209982");
    l0:SetConnections({
        -- ExitPauseMenu,
        [2] = self.f_box_UIListener_61_ExitPauseMenu,
    });
    self.box_OverrideMenuAccessibility_v2_36 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
    l0 = self.box_OverrideMenuAccessibility_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|101042598");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_v2_36_Out,
    });
    self.box_InventoryItemListener_60 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|115918982");
    l0:SetConnections({
        -- ItemAdded,
        [2] = self.f_box_InventoryItemListener_60_ItemAdded,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|133057111");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_RequestTutorial_v3_21 = cbox:CreateBox("Domino/System/RequestTutorial_v3.lua");
    l0 = self.box_RequestTutorial_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestTutorial_v3_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|143725561");
    l0:SetConnections({
        -- OnDisplayed,
        [0] = self.f_box_RequestTutorial_v3_21_OnDisplayed,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_59 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|147399743");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_59_Out,
    });
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|216361220");
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
        [0] = self.f_box_MultipleOR_43_Out,
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|255435204");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_Brick_AcquireObject_v6_56 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua");
    l0 = self.box_Brick_AcquireObject_v6_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v6_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|377835521");
    l0:SetConnections({
        -- ItemsAcquired,
        [0] = self.f_box_Brick_AcquireObject_v6_56_ItemsAcquired,
    });
    self.box_PlayDialog_v6_18 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|419459710");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_18_Finished,
    });
    self.box_StateListener_v2_40 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|491157514");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StateListener_v2_40_Enabled,
        -- StateStart,
        [3] = self.f_box_StateListener_v2_40_StateStart,
    });
    self.box_PlayDialog_v6_29 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|530979384");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_29_Finished,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_29_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_29_Stopped,
    });
    self.box_ProximityTrigger_v3_27 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|670445941");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_27_Enter,
    });
    self.box_PlayDialog_v6_53 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|718453104");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_7 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|766804276");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_7_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_7_Reloaded,
    });
    self.box_PlayDialog_v6_31 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|768208121");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_64 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|815787410");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_64_Loaded,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|844378604");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_OnceOnly_v3_44 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|854920192");
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
                [0] = self.f_box_OnceOnly_v3_44_Out_0,
            },
            count = 2,
        },
    });
    self.box_MessageListener_v3_48 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|857026152");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MessageListener_v3_48_Enabled,
        -- Received,
        [2] = self.f_box_MessageListener_v3_48_Received,
    });
    self.box_PlayDialog_v6_15 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|857302003");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_15_Finished,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_15_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_15_Stopped,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|894673404");
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
    self.box_MultipleOR_47 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|973618136");
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
        [0] = self.f_box_MultipleOR_47_Out,
    });
    self.box_PlayDialog_v6_16 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1059520212");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_16_Finished,
    });
    self.box_StateListener_v2_41 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1072297182");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_41_StateStart,
    });
    self.box_PlayDialog_v6_28 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1092627625");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_28_Finished,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_28_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_28_Stopped,
    });
    self.box_SpawnAI_11 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1139987019");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_11_Spawned,
    });
    self.box_Delay_v5_63 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1227838295");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_63_TimeElapsed,
    });
    self.box_MessageListener_v3_10 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1374930311");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MessageListener_v3_10_Enabled,
        -- Received,
        [2] = self.f_box_MessageListener_v3_10_Received,
    });
    self.box_OnceOnly_v3_52 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1483034785");
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
                [0] = self.f_box_OnceOnly_v3_52_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_32 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1485414699");
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
    self.box_Brick_AcquireObject_v6_55 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua");
    l0 = self.box_Brick_AcquireObject_v6_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v6_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1546985967");
    l0:SetConnections({
        -- ItemsAcquired,
        [0] = self.f_box_Brick_AcquireObject_v6_55_ItemsAcquired,
    });
    self.box_PlayDialog_v6_19 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1559388756");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_54 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1690850093");
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
        [0] = self.f_box_MultipleAND_v2_54_Out,
    });
    self.box_ProximityTrigger_v3_14 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1704676837");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_14_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_14_Enter,
    });
    self.box_ChangeSunOrientation_v4_58 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1728166729");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ChangeSunOrientation_v4_58_Out,
    });
    self.box_StateListener_v2_38 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1836604929");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StateListener_v2_38_Enabled,
        -- StateStart,
        [3] = self.f_box_StateListener_v2_38_StateStart,
    });
    self.box_CharacterLoadedIdListener_v2_33 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1846072488");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_33_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_33_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_33_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_33_LoadedIdReceived,
    });
    self.box_Brick_AcquireObject_v6_51 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua");
    l0 = self.box_Brick_AcquireObject_v6_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v6_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1883762548");
    l0:SetConnections({
        -- ItemsAcquired,
        [0] = self.f_box_Brick_AcquireObject_v6_51_ItemsAcquired,
    });
    self.box_ProximityTrigger_v3_23 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1928133950");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_23_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_23_Enter,
    });
    self.box_ProximityTrigger_v3_22 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|2009931849");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_22_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_22_Enter,
    });
    self.box_PlayDialog_v6_20 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|2063909427");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_20_Finished,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_20_QueueCancelled,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_20_Stopped,
    });
    self.box_ProximityTrigger_v3_24 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|2131822614");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_24_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_24_Enter,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|642463727", "642463727", "MIS_030_B60_MAIN", "In", "box_ActivityAcknowledgeGate_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1440216994", "1440216994", "MIS_030_B60_MAIN", "OnLeaveZone", "box_ActivityRetry_v2_6.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_8_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_UnlockDoor_9();
    l0 = self.box_StaticBreakableListener_8;
    l1 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|2036430664", "2036430664", "MIS_030_B60_MAIN", "box_StaticBreakableListener_8.OnBreak", "box_UnlockDoor_9.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UIListener_61_ExitPauseMenu()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_63();
    l0 = self.box_UIListener_61;
    l1 = self.box_Delay_v5_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1939908054", "1939908054", "MIS_030_B60_MAIN", "box_UIListener_61.ExitPauseMenu", "box_Delay_v5_63.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OverrideMenuAccessibility_v2_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_57();
    l0 = self.box_OverrideMenuAccessibility_v2_36;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1282467986", "1282467986", "MIS_030_B60_MAIN", "box_OverrideMenuAccessibility_v2_36.Out", "box_SetTimeOfDay_57.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryItemListener_60_ItemAdded()
    local params, l0, l1;
    params = self:OnEnter_box_UIListener_61();
    l0 = self.box_InventoryItemListener_60;
    l1 = self.box_UIListener_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|906780990", "906780990", "MIS_030_B60_MAIN", "box_InventoryItemListener_60.ItemAdded", "box_UIListener_61.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemListener_60();
    l0 = self.box_InventoryItemListener_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1434930456", "1434930456", "MIS_030_B60_MAIN", "box_OutputOrder_v2_62.Out", "box_InventoryItemListener_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1271166545", "1271166545", "MIS_030_B60_MAIN", "box_OutputOrder_v2_62.Out", "box_OutputOrder_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_49();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|756443997", "756443997", "MIS_030_B60_MAIN", "box_ActivityInitialized_2.Out", "box_ActivityMiscInfoModifier_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestTutorial_v3_21_OnDisplayed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_RequestTutorial_v3_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|337646242", "337646242", "MIS_030_B60_MAIN", "box_RequestTutorial_v3_21.OnDisplayed", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_59_Out()
    local params, l0, l1;
    params = self:OnEnter_box_FastTravelModifier_v2_37();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_59;
    l1 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1800175058", "1800175058", "MIS_030_B60_MAIN", "box_CHEAT_SetEnvironmentTimeScale_59.Out", "box_FastTravelModifier_v2_37.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_57_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_ChangeSunOrientation_v4_58();
    l0 = self.box_ChangeSunOrientation_v4_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1226126323", "1226126323", "MIS_030_B60_MAIN", "box_SetTimeOfDay_57.Out", "box_ChangeSunOrientation_v4_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_43_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_43;
    l1 = self.box_OnceOnly_v3_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1133652048", "1133652048", "MIS_030_B60_MAIN", "box_MultipleOR_43.Out", "box_OnceOnly_v3_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideMenuAccessibility_v2_36();
    l0 = self.box_MultipleOR_13;
    l1 = self.box_OverrideMenuAccessibility_v2_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|364448250", "364448250", "MIS_030_B60_MAIN", "box_MultipleOR_13.Out", "box_OverrideMenuAccessibility_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_20();
    l0 = self.box_PlayDialog_v6_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|2084944898", "2084944898", "MIS_030_B60_MAIN", "box_OutputOrder_v2_42.Out", "box_PlayDialog_v6_20.CancelQueued", clone:GetLuaBox(), l0:GetLuaBox());
    -- CancelQueued
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_20();
    l0 = self.box_PlayDialog_v6_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|554895597", "554895597", "MIS_030_B60_MAIN", "box_OutputOrder_v2_42.Out", "box_PlayDialog_v6_20.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_Brick_AcquireObject_v6_56_ItemsAcquired()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_54();
    l0 = self.box_Brick_AcquireObject_v6_56;
    l1 = self.box_MultipleAND_v2_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|889247149", "889247149", "MIS_030_B60_MAIN", "box_Brick_AcquireObject_v6_56.ItemsAcquired", "box_MultipleAND_v2_54.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_GetActivityState_v2_45_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1744146064", "1744146064", "MIS_030_B60_MAIN", "box_GetActivityState_v2_45.Completed", "box_MultipleOR_47.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityMiscInfoModifier_v2_49_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|743774466", "743774466", "MIS_030_B60_MAIN", "box_ActivityMiscInfoModifier_v2_49.Out", "box_OutputOrder_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_18_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_19();
    l0 = self.box_PlayDialog_v6_18;
    l1 = self.box_PlayDialog_v6_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|148819031", "148819031", "MIS_030_B60_MAIN", "box_PlayDialog_v6_18.Finished", "box_PlayDialog_v6_19.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_StateListener_v2_40_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_41();
    l0 = self.box_StateListener_v2_40;
    l1 = self.box_StateListener_v2_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|648621482", "648621482", "MIS_030_B60_MAIN", "box_StateListener_v2_40.Enabled", "box_StateListener_v2_41.Alert", l0:GetLuaBox(), l1:GetLuaBox());
    -- Alert
    l1:Exec(0, params);
end;

function export:f_box_StateListener_v2_40_StateStart()
    local l0, l1;
    l0 = self.box_StateListener_v2_40;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1072819569", "1072819569", "MIS_030_B60_MAIN", "box_StateListener_v2_40.StateStart", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_22();
    l0 = self.box_ProximityTrigger_v3_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1334975195", "1334975195", "MIS_030_B60_MAIN", "box_OutputOrder_v2_26.Out", "box_ProximityTrigger_v3_22.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_23();
    l0 = self.box_ProximityTrigger_v3_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1319925856", "1319925856", "MIS_030_B60_MAIN", "box_OutputOrder_v2_26.Out", "box_ProximityTrigger_v3_23.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_26_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_24();
    l0 = self.box_ProximityTrigger_v3_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1780872891", "1780872891", "MIS_030_B60_MAIN", "box_OutputOrder_v2_26.Out", "box_ProximityTrigger_v3_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_26_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_27();
    l0 = self.box_ProximityTrigger_v3_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1297787915", "1297787915", "MIS_030_B60_MAIN", "box_OutputOrder_v2_26.Out", "box_ProximityTrigger_v3_27.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_FastTravelModifier_v2_37_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|769590534", "769590534", "MIS_030_B60_MAIN", "box_FastTravelModifier_v2_37.Disabled", "box_ActivityInitialized_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_PlayDialog_v6_29_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_28();
    l0 = self.box_PlayDialog_v6_29;
    l1 = self.box_PlayDialog_v6_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1962981002", "1962981002", "MIS_030_B60_MAIN", "box_PlayDialog_v6_29.Finished", "box_PlayDialog_v6_28.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_29_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_28();
    l0 = self.box_PlayDialog_v6_29;
    l1 = self.box_PlayDialog_v6_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1221086027", "1221086027", "MIS_030_B60_MAIN", "box_PlayDialog_v6_29.QueueCancelled", "box_PlayDialog_v6_28.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_29_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_28();
    l0 = self.box_PlayDialog_v6_29;
    l1 = self.box_PlayDialog_v6_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|143966850", "143966850", "MIS_030_B60_MAIN", "box_PlayDialog_v6_29.Stopped", "box_PlayDialog_v6_28.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_48();
    l0 = self.box_MessageListener_v3_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|2031981789", "2031981789", "MIS_030_B60_MAIN", "box_OutputOrder_v2_3.Out", "box_MessageListener_v3_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_8();
    l0 = self.box_StaticBreakableListener_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1186994770", "1186994770", "MIS_030_B60_MAIN", "box_OutputOrder_v2_3.Out", "box_StaticBreakableListener_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_10();
    l0 = self.box_MessageListener_v3_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1753665921", "1753665921", "MIS_030_B60_MAIN", "box_OutputOrder_v2_3.Out", "box_MessageListener_v3_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_22();
    l0 = self.box_ProximityTrigger_v3_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|285081987", "285081987", "MIS_030_B60_MAIN", "box_OutputOrder_v2_3.Out", "box_ProximityTrigger_v3_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|992177319", "992177319", "MIS_030_B60_MAIN", "box_OutputOrder_v2_3.Out", "box_Print_v2_4.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_27_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_27;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|442135290", "442135290", "MIS_030_B60_MAIN", "box_ProximityTrigger_v3_27.Enter", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_ActivityAcknowledgeGate_7_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1136321944", "1136321944", "MIS_030_B60_MAIN", "box_ActivityAcknowledgeGate_7.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1630788085", "1630788085", "MIS_030_B60_MAIN", "box_ActivityAcknowledgeGate_7.Reloaded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_64_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RadioModifier_v3_30();
    l0 = self.box_EntityStatusListener_64;
    l1 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1668568001", "1668568001", "MIS_030_B60_MAIN", "box_EntityStatusListener_64.Loaded", "box_RadioModifier_v3_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestTutorial_v3_21();
    l0 = self.box_MultipleOR_25;
    l1 = self.box_RequestTutorial_v3_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|283877948", "283877948", "MIS_030_B60_MAIN", "box_MultipleOR_25.Out", "box_RequestTutorial_v3_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_44_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = self.box_OnceOnly_v3_44;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|550563987", "550563987", "MIS_030_B60_MAIN", "box_OnceOnly_v3_44.Out", "box_OutputOrder_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_48_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_33();
    l0 = self.box_MessageListener_v3_48;
    l1 = self.box_CharacterLoadedIdListener_v2_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1026674540", "1026674540", "MIS_030_B60_MAIN", "box_MessageListener_v3_48.Enabled", "box_CharacterLoadedIdListener_v2_33.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_48_Received()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = self.box_MessageListener_v3_48;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|320239202", "320239202", "MIS_030_B60_MAIN", "box_MessageListener_v3_48.Received", "box_ActivityEnd_5.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_15_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_29();
    l0 = self.box_PlayDialog_v6_15;
    l1 = self.box_PlayDialog_v6_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1026117893", "1026117893", "MIS_030_B60_MAIN", "box_PlayDialog_v6_15.Finished", "box_PlayDialog_v6_29.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_15_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_29();
    l0 = self.box_PlayDialog_v6_15;
    l1 = self.box_PlayDialog_v6_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|2105959023", "2105959023", "MIS_030_B60_MAIN", "box_PlayDialog_v6_15.QueueCancelled", "box_PlayDialog_v6_29.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_15_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_29();
    l0 = self.box_PlayDialog_v6_15;
    l1 = self.box_PlayDialog_v6_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|2040578034", "2040578034", "MIS_030_B60_MAIN", "box_PlayDialog_v6_15.Stopped", "box_PlayDialog_v6_29.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisbandUniqueGunsForHire_12();
    l0 = self.box_MultipleOR_1;
    l1 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|964933693", "964933693", "MIS_030_B60_MAIN", "box_MultipleOR_1.Out", "box_DisbandUniqueGunsForHire_12.RequestDisband", l0:GetLuaBox(), l1:GetLuaBox());
    -- RequestDisband
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_64();
    l0 = self.box_MultipleOR_47;
    l1 = self.box_EntityStatusListener_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|676947168", "676947168", "MIS_030_B60_MAIN", "box_MultipleOR_47.Out", "box_EntityStatusListener_64.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_11();
    l0 = self.box_SpawnAI_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1465777093", "1465777093", "MIS_030_B60_MAIN", "box_OutputOrder_v2_17.Out", "box_SpawnAI_11.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1866359952", "1866359952", "MIS_030_B60_MAIN", "box_OutputOrder_v2_17.Out", "box_MultipleOR_47.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_16_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_18();
    l0 = self.box_PlayDialog_v6_16;
    l1 = self.box_PlayDialog_v6_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|364118291", "364118291", "MIS_030_B60_MAIN", "box_PlayDialog_v6_16.Finished", "box_PlayDialog_v6_18.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_StateListener_v2_41_StateStart()
    local l0, l1;
    l0 = self.box_StateListener_v2_41;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1459983691", "1459983691", "MIS_030_B60_MAIN", "box_StateListener_v2_41.StateStart", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_28_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_31();
    l0 = self.box_PlayDialog_v6_28;
    l1 = self.box_PlayDialog_v6_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|677317272", "677317272", "MIS_030_B60_MAIN", "box_PlayDialog_v6_28.Finished", "box_PlayDialog_v6_31.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_28_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_31();
    l0 = self.box_PlayDialog_v6_28;
    l1 = self.box_PlayDialog_v6_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1069842240", "1069842240", "MIS_030_B60_MAIN", "box_PlayDialog_v6_28.QueueCancelled", "box_PlayDialog_v6_31.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_28_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_31();
    l0 = self.box_PlayDialog_v6_28;
    l1 = self.box_PlayDialog_v6_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|172903884", "172903884", "MIS_030_B60_MAIN", "box_PlayDialog_v6_28.Stopped", "box_PlayDialog_v6_31.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_11_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = self.box_SpawnAI_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|333270493", "333270493", "MIS_030_B60_MAIN", "box_SpawnAI_11.Spawned", "box_OutputOrder_v2_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_63_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_16();
    l0 = self.box_Delay_v5_63;
    l1 = self.box_PlayDialog_v6_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1686919085", "1686919085", "MIS_030_B60_MAIN", "box_Delay_v5_63.TimeElapsed", "box_PlayDialog_v6_16.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_10_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_45();
    l0 = self.box_MessageListener_v3_10;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1365121575", "1365121575", "MIS_030_B60_MAIN", "box_MessageListener_v3_10.Enabled", "box_GetActivityState_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_10_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_10;
    l1 = self.box_OnceOnly_v3_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1532262272", "1532262272", "MIS_030_B60_MAIN", "box_MessageListener_v3_10.Received", "box_OnceOnly_v3_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_52_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_53();
    l0 = self.box_OnceOnly_v3_52;
    l1 = self.box_PlayDialog_v6_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|933555871", "933555871", "MIS_030_B60_MAIN", "box_OnceOnly_v3_52.Out", "box_PlayDialog_v6_53.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_32_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_OnceOnly_v3_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1132470082", "1132470082", "MIS_030_B60_MAIN", "box_OnceOnly_v3_32.Out", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_AcquireObject_v6_55_ItemsAcquired()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_54();
    l0 = self.box_Brick_AcquireObject_v6_55;
    l1 = self.box_MultipleAND_v2_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|224327577", "224327577", "MIS_030_B60_MAIN", "box_Brick_AcquireObject_v6_55.ItemsAcquired", "box_MultipleAND_v2_54.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_DisbandUniqueGunsForHire_12_RequestFail()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|604724919", "604724919", "MIS_030_B60_MAIN", "box_DisbandUniqueGunsForHire_12.RequestFail", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_DisbandUniqueGunsForHire_12_RequestSuccess()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|2051546960", "2051546960", "MIS_030_B60_MAIN", "box_DisbandUniqueGunsForHire_12.RequestSuccess", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleAND_v2_54_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_54;
    l1 = self.box_OnceOnly_v3_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|359144485", "359144485", "MIS_030_B60_MAIN", "box_MultipleAND_v2_54.Out", "box_OnceOnly_v3_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_AcquireObject_v6_55();
    l0 = self.box_Brick_AcquireObject_v6_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1351189526", "1351189526", "MIS_030_B60_MAIN", "box_OutputOrder_v2_50.Out", "box_Brick_AcquireObject_v6_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_AcquireObject_v6_56();
    l0 = self.box_Brick_AcquireObject_v6_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1375633132", "1375633132", "MIS_030_B60_MAIN", "box_OutputOrder_v2_50.Out", "box_Brick_AcquireObject_v6_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_50_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_AcquireObject_v6_51();
    l0 = self.box_Brick_AcquireObject_v6_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|857657937", "857657937", "MIS_030_B60_MAIN", "box_OutputOrder_v2_50.Out", "box_Brick_AcquireObject_v6_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_14_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_35();
    l0 = self.box_ProximityTrigger_v3_14;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1833210424", "1833210424", "MIS_030_B60_MAIN", "box_ProximityTrigger_v3_14.Enabled", "box_SetContextualStrategy_35.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_14_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_20();
    l0 = self.box_ProximityTrigger_v3_14;
    l1 = self.box_PlayDialog_v6_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1891687046", "1891687046", "MIS_030_B60_MAIN", "box_ProximityTrigger_v3_14.Enter", "box_PlayDialog_v6_20.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ChangeSunOrientation_v4_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_59();
    l0 = self.box_ChangeSunOrientation_v4_58;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|474911641", "474911641", "MIS_030_B60_MAIN", "box_ChangeSunOrientation_v4_58.Out", "box_CHEAT_SetEnvironmentTimeScale_59.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_StateListener_v2_38_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_40();
    l0 = self.box_StateListener_v2_38;
    l1 = self.box_StateListener_v2_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1348457768", "1348457768", "MIS_030_B60_MAIN", "box_StateListener_v2_38.Enabled", "box_StateListener_v2_40.Investigate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Investigate
    l1:Exec(5, params);
end;

function export:f_box_StateListener_v2_38_StateStart()
    local l0, l1;
    l0 = self.box_StateListener_v2_38;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|986889148", "986889148", "MIS_030_B60_MAIN", "box_StateListener_v2_38.StateStart", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CharacterLoadedIdListener_v2_33_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_33_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = self.box_CharacterLoadedIdListener_v2_33;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|663730415", "663730415", "MIS_030_B60_MAIN", "box_CharacterLoadedIdListener_v2_33.LoadedIdReceived", "box_OutputOrder_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_14();
    l0 = self.box_ProximityTrigger_v3_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1618985982", "1618985982", "MIS_030_B60_MAIN", "box_OutputOrder_v2_39.Out", "box_ProximityTrigger_v3_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_38();
    l0 = self.box_StateListener_v2_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1782471201", "1782471201", "MIS_030_B60_MAIN", "box_OutputOrder_v2_39.Out", "box_StateListener_v2_38.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_Brick_AcquireObject_v6_51_ItemsAcquired()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_54();
    l0 = self.box_Brick_AcquireObject_v6_51;
    l1 = self.box_MultipleAND_v2_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|675372969", "675372969", "MIS_030_B60_MAIN", "box_Brick_AcquireObject_v6_51.ItemsAcquired", "box_MultipleAND_v2_54.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_ProximityTrigger_v3_23_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_24();
    l0 = self.box_ProximityTrigger_v3_23;
    l1 = self.box_ProximityTrigger_v3_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|277398041", "277398041", "MIS_030_B60_MAIN", "box_ProximityTrigger_v3_23.Enabled", "box_ProximityTrigger_v3_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_23_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_23;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|322725932", "322725932", "MIS_030_B60_MAIN", "box_ProximityTrigger_v3_23.Enter", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v3_22_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_23();
    l0 = self.box_ProximityTrigger_v3_22;
    l1 = self.box_ProximityTrigger_v3_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|16152483", "16152483", "MIS_030_B60_MAIN", "box_ProximityTrigger_v3_22.Enabled", "box_ProximityTrigger_v3_23.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_22_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_22;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|522159948", "522159948", "MIS_030_B60_MAIN", "box_ProximityTrigger_v3_22.Enter", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_20_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_15();
    l0 = self.box_PlayDialog_v6_20;
    l1 = self.box_PlayDialog_v6_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1115006725", "1115006725", "MIS_030_B60_MAIN", "box_PlayDialog_v6_20.Finished", "box_PlayDialog_v6_15.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_20_QueueCancelled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_15();
    l0 = self.box_PlayDialog_v6_20;
    l1 = self.box_PlayDialog_v6_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1263711387", "1263711387", "MIS_030_B60_MAIN", "box_PlayDialog_v6_20.QueueCancelled", "box_PlayDialog_v6_15.CancelQueued", l0:GetLuaBox(), l1:GetLuaBox());
    -- CancelQueued
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_20_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_15();
    l0 = self.box_PlayDialog_v6_20;
    l1 = self.box_PlayDialog_v6_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1324572713", "1324572713", "MIS_030_B60_MAIN", "box_PlayDialog_v6_20.Stopped", "box_PlayDialog_v6_15.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_24_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_27();
    l0 = self.box_ProximityTrigger_v3_24;
    l1 = self.box_ProximityTrigger_v3_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|933623280", "933623280", "MIS_030_B60_MAIN", "box_ProximityTrigger_v3_24.Enabled", "box_ProximityTrigger_v3_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_24_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_24;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|153435513", "153435513", "MIS_030_B60_MAIN", "box_ProximityTrigger_v3_24.Enter", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:OnEnter_box_StaticBreakableListener_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2109124499518532278",
    };
    return params;
end;

function export:OnEnter_box_UIListener_61()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_v2_36()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = false,
        -- AvatarCustomizationMenuEnabled,
        [2] = false,
        -- ChallengeMenuEnabled,
        [3] = false,
        -- HomebaseMenuEnabled,
        [4] = false,
        -- LootMenuEnabled,
        [5] = false,
        -- OnlineMenuEnabled,
        [6] = false,
        -- PerksMenuEnabled,
        [7] = false,
        -- SquadMenuEnabled,
        [8] = false,
        -- WorldmapMenuEnabled,
        [9] = false,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemListener_60()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- itemDescriptorID,
        [1] = "9015350883700177",
        -- players,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|123355726");
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

function export:OnEnter_box_RequestTutorial_v3_21()
    local params;
    params = {
        -- bypassPreconditions,
        [0] = true,
        -- tutorialdb,
        [1] = "9015353330999097",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_59()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|198582294");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_57_Out,
    });
    params = {
        -- Hour,
        [0] = 14,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|216918342");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "MIS_030_B60 STARTED",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|229886857");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108515860306991808",
        -- Group,
        [1] = "#BD035122",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|288833142");
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

function export:OnEnter_box_Brick_AcquireObject_v6_56()
    local params;
    params = {
        -- AmountRequired,
        [0] = 1,
        -- bCheckAmountInInventory,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- CompletePreviousObjective,
        [3] = true,
        -- LootItemID,
        [4] = "9015340844927881",
        -- ProtectItemOnSuccess,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|399491849");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_45_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015340814579077",
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|408818916");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_49_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_18()
    local params;
    params = {
        -- Group,
        [0] = self.eCarmina,
        -- RelevancyTime,
        [1] = 100,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "157778728",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_40()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#B1D8956F",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|514566163");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
                [2] = self.f_box_OutputOrder_v2_26_Out_2,
                [3] = self.f_box_OutputOrder_v2_26_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|521340730");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FastTravelModifier_v2_37_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_29()
    local params;
    params = {
        -- Group,
        [0] = "2108722399496156546",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3140190123",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|571812252");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
                [3] = self.f_box_OutputOrder_v2_3_Out_3,
                [4] = self.f_box_OutputOrder_v2_3_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109554013365085388",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_53()
    local params;
    params = {
        -- Group,
        [0] = self.eCarmina,
        -- RelevancyTime,
        [1] = 20,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3678919802",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_31()
    local params;
    params = {
        -- Group,
        [0] = "2108722399496156546",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3139098712",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_64()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109969476771397902",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_48()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "playgodone",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_15()
    local params;
    params = {
        -- Group,
        [0] = "2108722400217576844",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3787297731",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1014289761");
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

function export:OnEnter_box_PlayDialog_v6_16()
    local params;
    params = {
        -- Group,
        [0] = self.eCarmina,
        -- RelevancyTime,
        [1] = 100,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1588229939",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_41()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#B1D8956F",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_28()
    local params;
    params = {
        -- Group,
        [0] = "2108722400217576844",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1549367364",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_11()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108722397648565550",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_63()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1241509493");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1254562795");
    l0:SetConnections({
    });
    params = {
        -- Enable,
        [0] = true,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2109969476771397902",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "WeaponCrafted",
    };
    return params;
end;

function export:OnEnter_box_Brick_AcquireObject_v6_55()
    local params;
    params = {
        -- AmountRequired,
        [0] = 1,
        -- bCheckAmountInInventory,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- CompletePreviousObjective,
        [3] = true,
        -- LootItemID,
        [4] = "9015192908824165",
        -- ProtectItemOnSuccess,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_19()
    local params;
    params = {
        -- Group,
        [0] = self.eCarmina,
        -- RelevancyTime,
        [1] = 100,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3157265785",
    };
    return params;
end;

function export:OnEnter_box_DisbandUniqueGunsForHire_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisbandUniqueGunsForHire_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1643142518");
    l0:SetConnections({
        -- RequestFail,
        [0] = self.f_box_DisbandUniqueGunsForHire_12_RequestFail,
        -- RequestSuccess,
        [1] = self.f_box_DisbandUniqueGunsForHire_12_RequestSuccess,
    });
    params = {
        -- uniqueCharacterDesc,
        [1] = "9015333852467969",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_54()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1691037818");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
                [2] = self.f_box_OutputOrder_v2_50_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_14()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108778763446663107",
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_58()
    local params;
    params = {
        -- AzimuthDegree,
        [0] = 150,
        -- ElevationDegree,
        [1] = 30,
        -- ResetAfterBeat,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_38()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#B1D8956F",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_33()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015333852467969",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1869606862");
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

function export:OnEnter_box_ActivityRetry_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1879644910");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_AcquireObject_v6_51()
    local params;
    params = {
        -- AmountRequired,
        [0] = 1,
        -- bCheckAmountInInventory,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- CompletePreviousObjective,
        [3] = true,
        -- LootItemID,
        [4] = "9015218939235547",
        -- ProtectItemOnSuccess,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_23()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109553978311189679",
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B60.domino|@MIS_030_B60_MAIN|1998055733");
    l0:SetConnections({
    });
    params = {
        -- door,
        [0] = "2109124519506480261",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_22()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109553970285388971",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_20()
    local params;
    params = {
        -- Group,
        [0] = "2108722399496156546",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4004970442",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_24()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109553981781976243",
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_33_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_33;
    self.eCarmina = l0:GetDataOutValue(0);
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
