LUAC�G -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/playgo/mis_030/mis_030_b70.domino
-- User graph: MIS_030_B70_MAIN
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/ChangeSunOrientation_v4.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/DisbandUniqueGunsForHire.lua");
        cboxRes:RegisterBox("Domino/System/FastTravelModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetInventoryItemQuantity.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RestrictedItemModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/UIListener.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2270105790.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1281529039.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2289438344.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_030/MIS_030_B70.MIS_030_B70_MAIN.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CIN_Skip",
            },
            [1] = {
                name = "Start",
            },
            [2] = {
                name = "Start_Reset_MIS_Attacked",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Box_Skipped",
                delayed = false,
            },
            [1] = {
                name = "CIN_Skipped",
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
                name = "EntityId",
                type = "entity",
            },
            [1] = {
                name = "FadeOutType",
                type = "int",
            },
            [2] = {
                name = "MUS_MIS_Step",
                type = "int",
            },
            [3] = {
                name = "Priority",
                type = "int",
            },
            [4] = {
                name = "SoundType",
                type = "SoundType",
            },
            [5] = {
                name = "Stackable",
                type = "bool",
            },
            [6] = {
                name = "StartEvent",
                type = "Sound",
            },
            [7] = {
                name = "StopEvent",
                type = "Sound",
            },
            [8] = {
                name = "StopFadeOut",
                type = "float",
            },
            [9] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [10] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 11,
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
    metadataTable[GetPathID("Domino/System/RestrictedItemModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "AddItemRestriction",
            },
            [1] = {
                name = "ClearRestrictions",
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
                name = "allowedItemDescriptorID",
                type = "genericdb",
            },
            [1] = {
                name = "allowedItemFilterID",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_030_B70_MAIN";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN";
    self.eCarmina = nil;
    self.box_Music_Quest_v2_41 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|40118046");
    l0:SetConnections({
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|46043373");
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
    self.box_UIListener_53 = cbox:CreateBox("Domino/System/UI/UIListener.lua");
    l0 = self.box_UIListener_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIListener_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|142185273");
    l0:SetConnections({
        -- ExitPauseMenu,
        [2] = self.f_box_UIListener_53_ExitPauseMenu,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_24 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|218163150");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_24_Out,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|397194336");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
    self.box_OnceOnly_v3_43 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|481128508");
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
                [0] = self.f_box_OnceOnly_v3_43_Out_0,
            },
            count = 2,
        },
    });
    self.box_ActivityAcknowledgeGate_7 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|535102716");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_7_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_7_Reloaded,
    });
    self.box_Music_Quest_v2_40 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|665928279");
    l0:SetConnections({
    });
    self.box_RestrictedItemModifier_v2_8 = cbox:CreateBox("Domino/System/RestrictedItemModifier_v2.lua");
    l0 = self.box_RestrictedItemModifier_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|684329170");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_v2_8_Out,
    });
    self.box_OnceOnly_v3_32 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|700456131");
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
    self.box_OverrideMenuAccessibility_v2_29 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
    l0 = self.box_OverrideMenuAccessibility_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|917848137");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_v2_29_Out,
    });
    self.box_PlayDialog_v6_56 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1183562175");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_25 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1217071656");
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
                [0] = self.f_box_OnceOnly_v3_25_Out_0,
            },
            count = 2,
        },
    });
    self.box_InventoryItemListener_46 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1233985137");
    l0:SetConnections({
        -- ItemAdded,
        [2] = self.f_box_InventoryItemListener_46_ItemAdded,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1605574374");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1871652790");
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
    self.box_ChangeSunOrientation_v4_13 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1998248433");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ChangeSunOrientation_v4_13_Out,
    });
    self.box_CharacterLoadedIdListener_v2_20 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|2129847128");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_20_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_20_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_20_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_20_LoadedIdReceived,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1974506185", "1974506185", "MIS_030_B70_MAIN", "In", "box_ActivityAcknowledgeGate_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|879821288", "879821288", "MIS_030_B70_MAIN", "OnLeaveZone", "box_OutputOrder_v2_42.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|964950330", "964950330", "MIS_030_B70_MAIN", "box_Simple_Node_12.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisbandUniqueGunsForHire_16();
    l0 = self.box_MultipleOR_1;
    l1 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1899680296", "1899680296", "MIS_030_B70_MAIN", "box_MultipleOR_1.Out", "box_DisbandUniqueGunsForHire_16.RequestDisband", l0:GetLuaBox(), l1:GetLuaBox());
    -- RequestDisband
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UIListener_53_ExitPauseMenu()
    local l0, l1;
    l0 = self.box_UIListener_53;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1780593446", "1780593446", "MIS_030_B70_MAIN", "box_UIListener_53.ExitPauseMenu", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_24_Out()
    local l0, l1;
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_24;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1325808659", "1325808659", "MIS_030_B70_MAIN", "box_CHEAT_SetEnvironmentTimeScale_24.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_37();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1891402169", "1891402169", "MIS_030_B70_MAIN", "box_OutputOrder_v2_3.Out", "box_ActivityForceAndLockTracking_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|316016789", "316016789", "MIS_030_B70_MAIN", "box_OutputOrder_v2_3.Out", "box_Print_v2_4.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_40();
    l0 = self.box_Music_Quest_v2_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1278406592", "1278406592", "MIS_030_B70_MAIN", "box_OutputOrder_v2_3.Out", "box_Music_Quest_v2_40.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_9_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_9;
    l1 = self.box_OnceOnly_v3_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1981600198", "1981600198", "MIS_030_B70_MAIN", "box_MultipleOR_9.Out", "box_OnceOnly_v3_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_47_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_12();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|521831686", "521831686", "MIS_030_B70_MAIN", "box_Compare_Integers_47.A_ge_B", "box_Simple_Node_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_47_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|173848045", "173848045", "MIS_030_B70_MAIN", "box_Compare_Integers_47.A_lt_B", "box_OutputOrder_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_43_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_OnceOnly_v3_43;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|669100397", "669100397", "MIS_030_B70_MAIN", "box_OnceOnly_v3_43.Out", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_7_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|381905104", "381905104", "MIS_030_B70_MAIN", "box_ActivityAcknowledgeGate_7.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|380390212", "380390212", "MIS_030_B70_MAIN", "box_ActivityAcknowledgeGate_7.Reloaded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_DisbandUniqueGunsForHire_16_RequestFail()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|610300159", "610300159", "MIS_030_B70_MAIN", "box_DisbandUniqueGunsForHire_16.RequestFail", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_DisbandUniqueGunsForHire_16_RequestSuccess()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|90762524", "90762524", "MIS_030_B70_MAIN", "box_DisbandUniqueGunsForHire_16.RequestSuccess", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RestrictedItemModifier_v2_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_RestrictedItemModifier_v2_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1964736707", "1964736707", "MIS_030_B70_MAIN", "box_RestrictedItemModifier_v2_8.Out", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_ChangeSunOrientation_v4_13();
    l0 = self.box_ChangeSunOrientation_v4_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1296359920", "1296359920", "MIS_030_B70_MAIN", "box_SetTimeOfDay_23.Out", "box_ChangeSunOrientation_v4_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_32_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_OnceOnly_v3_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|784993413", "784993413", "MIS_030_B70_MAIN", "box_OnceOnly_v3_32.Out", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1058771724", "1058771724", "MIS_030_B70_MAIN", "box_OutputOrder_v2_55.Out", "box_AddActivityObjective_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetInventoryItemQuantity_45();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|389069927", "389069927", "MIS_030_B70_MAIN", "box_OutputOrder_v2_55.Out", "box_GetInventoryItemQuantity_45.GetNumberOfItems", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetNumberOfItems
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OverrideMenuAccessibility_v2_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_FastTravelModifier_v2_28();
    l0 = self.box_OverrideMenuAccessibility_v2_29;
    l1 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|378124995", "378124995", "MIS_030_B70_MAIN", "box_OverrideMenuAccessibility_v2_29.Out", "box_FastTravelModifier_v2_28.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UIListener_53();
    l0 = self.box_UIListener_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1843239841", "1843239841", "MIS_030_B70_MAIN", "box_OutputOrder_v2_14.Out", "box_UIListener_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_38();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1150407468", "1150407468", "MIS_030_B70_MAIN", "box_OutputOrder_v2_14.Out", "box_BroadcastMessage_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_41();
    l0 = self.box_Music_Quest_v2_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|2030855868", "2030855868", "MIS_030_B70_MAIN", "box_OutputOrder_v2_42.Out", "box_Music_Quest_v2_41.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1876417934", "1876417934", "MIS_030_B70_MAIN", "box_OutputOrder_v2_42.Out", "box_ActivityRetry_v2_6.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityMiscInfoModifier_v2_36_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RestrictedItemModifier_v2_8();
    l0 = self.box_RestrictedItemModifier_v2_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|475216200", "475216200", "MIS_030_B70_MAIN", "box_ActivityMiscInfoModifier_v2_36.Out", "box_RestrictedItemModifier_v2_8.AddItemRestriction", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddItemRestriction
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_25_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_20();
    l0 = self.box_OnceOnly_v3_25;
    l1 = self.box_CharacterLoadedIdListener_v2_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1945558325", "1945558325", "MIS_030_B70_MAIN", "box_OnceOnly_v3_25.Out", "box_CharacterLoadedIdListener_v2_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_InventoryItemListener_46_ItemAdded()
    local l0, l1;
    l0 = self.box_InventoryItemListener_46;
    l1 = self.box_OnceOnly_v3_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1998532806", "1998532806", "MIS_030_B70_MAIN", "box_InventoryItemListener_46.ItemAdded", "box_OnceOnly_v3_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemListener_46();
    l0 = self.box_InventoryItemListener_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|2439", "2439", "MIS_030_B70_MAIN", "box_OutputOrder_v2_21.Out", "box_InventoryItemListener_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|818342931", "818342931", "MIS_030_B70_MAIN", "box_OutputOrder_v2_21.Out", "box_OnceOnly_v3_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetInventoryItemQuantity_45_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_45_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_47();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|2014054566", "2014054566", "MIS_030_B70_MAIN", "box_GetInventoryItemQuantity_45.Out", "box_Compare_Integers_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_36();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|898271246", "898271246", "MIS_030_B70_MAIN", "box_ActivityInitialized_2.Out", "box_ActivityMiscInfoModifier_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FastTravelModifier_v2_28_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_23();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1117600332", "1117600332", "MIS_030_B70_MAIN", "box_FastTravelModifier_v2_28.Disabled", "box_SetTimeOfDay_23.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1169015049", "1169015049", "MIS_030_B70_MAIN", "box_AddActivityObjective_v2_10.Out", "box_ActivityObjectiveMarkerModifier_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideMenuAccessibility_v2_29();
    l0 = self.box_MultipleOR_17;
    l1 = self.box_OverrideMenuAccessibility_v2_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|501885173", "501885173", "MIS_030_B70_MAIN", "box_MultipleOR_17.Out", "box_OverrideMenuAccessibility_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_15();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|614971444", "614971444", "MIS_030_B70_MAIN", "box_OutputOrder_v2_18.Out", "box_BroadcastMessage_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1020156587", "1020156587", "MIS_030_B70_MAIN", "box_OutputOrder_v2_18.Out", "box_ActivityEnd_5.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ChangeSunOrientation_v4_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_24();
    l0 = self.box_ChangeSunOrientation_v4_13;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|130183798", "130183798", "MIS_030_B70_MAIN", "box_ChangeSunOrientation_v4_13.Out", "box_CHEAT_SetEnvironmentTimeScale_24.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_ActivityForceAndLockTracking_37_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|600168457", "600168457", "MIS_030_B70_MAIN", "box_ActivityForceAndLockTracking_37.Enabled", "box_OutputOrder_v2_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_20_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_20_LoadedIdReceived();
    params = self:OnEnter_box_PlayDialog_v6_56();
    l0 = self.box_CharacterLoadedIdListener_v2_20;
    l1 = self.box_PlayDialog_v6_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1090904000", "1090904000", "MIS_030_B70_MAIN", "box_CharacterLoadedIdListener_v2_20.LoadedIdReceived", "box_PlayDialog_v6_56.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|@GotLauncherAlready");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_12_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_41()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 0,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1281529039",
        -- StopEvent,
        [7] = "2270105790",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = true,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_UIListener_53()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|195054859");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_24()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|246196273");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|246691773");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "WeaponCrafted",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|329897002");
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
        [8] = "MIS_030_B70 STARTED",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|421380074");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_47_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_47_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_45,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|569313748");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "WeaponCrafted",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_40()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 0,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1281529039",
        -- StopEvent,
        [7] = "2270105790",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_DisbandUniqueGunsForHire_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisbandUniqueGunsForHire_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|670747536");
    l0:SetConnections({
        -- RequestFail,
        [0] = self.f_box_DisbandUniqueGunsForHire_16_RequestFail,
        -- RequestSuccess,
        [1] = self.f_box_DisbandUniqueGunsForHire_16_RequestSuccess,
    });
    params = {
        -- uniqueCharacterDesc,
        [1] = "9015333852467969",
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_v2_8()
    local params;
    params = {
        -- allowedItemFilterID,
        [1] = "9015356267264662",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|699591632");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_23_Out,
    });
    params = {
        -- Hour,
        [0] = 14,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|855538919");
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
                [0] = self.f_box_OutputOrder_v2_55_Out_0,
                [1] = self.f_box_OutputOrder_v2_55_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_v2_29()
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

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|956723991");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1072711913");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1100915579");
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

function export:OnEnter_box_ActivityMiscInfoModifier_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1155228457");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_36_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_56()
    local params;
    params = {
        -- Group,
        [0] = self.eCarmina,
        -- RelevancyTime,
        [1] = 100,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2289438344",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemListener_46()
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

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1376958158");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1506957582");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_45_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015350883700177",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1677039633");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2108582975502295332",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_030_B85_OBJ_CraftWeapon",
            id = "1022082",
        },
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1685177364");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FastTravelModifier_v2_28_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1846342503");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_10_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_030_B85_OBJ_CraftWeapon",
            id = "1022082",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|1991927163");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_13()
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

function export:OnEnter_box_ActivityForceAndLockTracking_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B70.domino|@MIS_030_B70_MAIN|2017159020");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_37_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015333852467969",
    };
    return params;
end;

function export:OnExit_box_GetInventoryItemQuantity_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_45 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_20_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_20;
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
