LUAC�L -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/playgo/mis_030/mis_030_b85.domino
-- User graph: MIS_030_B85_MAIN
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/ChangeSunOrientation_v4.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/DisbandUniqueGunsForHire.lua");
        cboxRes:RegisterBox("Domino/System/FastTravelModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PickupListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetInventoryItemQuantity.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/RestrictedItemModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_030/MIS_030_B20.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2054733744.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1281529039.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2264895690.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2390141711.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1903913801.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2270105790.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1794683735.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3915077004.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3925095335.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_030/MIS_030_B85.MIS_030_B85_MAIN.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/ContextualActionListener.lua")] = {
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
                name = "Available",
                delayed = true,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "End",
                delayed = true,
            },
            [4] = {
                name = "Interrupt",
                delayed = true,
            },
            [5] = {
                name = "Markup1",
                delayed = true,
            },
            [6] = {
                name = "Markup2",
                delayed = true,
            },
            [7] = {
                name = "Select",
                delayed = true,
            },
            [8] = {
                name = "Start",
                delayed = true,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "InCAIndex",
                type = "int",
            },
            [2] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "OutCAIndex",
                type = "int",
            },
            [1] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
                name = "ContextualActionIndex",
                type = "int",
            },
            [2] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 3,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_030_B85_MAIN";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN";
    self.iCopper = 0;
    self.iProgressCopper = 0;
    self.iProgressDuctTape = 0;
    self.iDuctTape = 0;
    self.iProgressC4 = 0;
    self.iC4 = 0;
    self.eCarmina = nil;
    self.iProgressHardwood = 0;
    self.iHardwood = 0;
    self.gPlayer = nil;
    self.box_PickupListener_v2_188 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|14393969");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PickupListener_v2_188_Enabled,
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_188_PickedUp,
    });
    self.box_MultipleOR_178 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|29427768");
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
        [0] = self.f_box_MultipleOR_178_Out,
    });
    self.box_ProximityRadiusListener_v3_135 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|54740838");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_135_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_135_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_135_SomeoneNear,
    });
    self.box_MultipleAND_v2_19 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|78831422");
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
        [0] = self.f_box_MultipleAND_v2_19_Out,
    });
    self.box_Gate_v3_27 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|85828925");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_27_Out,
    });
    self.box_PickupListener_v2_101 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|89584739");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PickupListener_v2_101_Enabled,
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_101_PickedUp,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|117071348");
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
    self.box_PickupListener_v2_97 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|156930923");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PickupListener_v2_97_Enabled,
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_97_PickedUp,
    });
    self.box_PickupListener_v2_122 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|201931345");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PickupListener_v2_122_Enabled,
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_122_PickedUp,
    });
    self.box_PlayDialog_v6_157 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|234587257");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_157_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_157_FinishedInterrupted,
    });
    self.box_MultipleOR_174 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|252195173");
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
        [0] = self.f_box_MultipleOR_174_Out,
    });
    self.box_MultipleAND_v2_99 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|263779751");
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
        [0] = self.f_box_MultipleAND_v2_99_Out,
    });
    self.box_Gate_v3_28 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|266488136");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_28_Out,
    });
    self.box_ContextualActionListener_126 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|284203565");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_126_Start,
    });
    self.box_MultipleOR_195 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|314066885");
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
        [0] = self.f_box_MultipleOR_195_Out,
    });
    self.box_MultipleOR_168 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|344554757");
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
        [0] = self.f_box_MultipleOR_168_Out,
    });
    self.box_ContextualActionListener_152 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|357571670");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_152_Start,
    });
    self.box_RestrictedItemModifier_v2_24 = cbox:CreateBox("Domino/System/RestrictedItemModifier_v2.lua");
    l0 = self.box_RestrictedItemModifier_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|476964745");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_v2_24_Out,
    });
    self.box_ProximityRadiusListener_v3_153 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|484323804");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_153_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_153_SomeoneNear,
    });
    self.box_MultipleOR_198 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|485415269");
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
        [0] = self.f_box_MultipleOR_198_Out,
    });
    self.box_CharacterLoadedIdListener_v2_67 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|659740013");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_67_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_67_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_67_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_67_LoadedIdReceived,
    });
    self.box_Gate_v3_26 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|672641307");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_26_Out,
    });
    self.box_ContextualActionListener_140 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|681878468");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_140_Start,
    });
    self.box_MultipleAND_v2_192 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|685155613");
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
        [0] = self.f_box_MultipleAND_v2_192_Out,
    });
    self.box_OverrideMenuAccessibility_v2_108 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
    l0 = self.box_OverrideMenuAccessibility_v2_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_v2_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|714953474");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_v2_108_Out,
    });
    self.box_MultipleOR_193 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|724274157");
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
        [0] = self.f_box_MultipleOR_193_Out,
    });
    self.box_MultipleAND_v2_100 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|734519702");
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
        [0] = self.f_box_MultipleAND_v2_100_Out,
    });
    self.box_PickupListener_v2_118 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|802280155");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PickupListener_v2_118_Enabled,
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_118_PickedUp,
    });
    self.box_PlayDialog_v6_158 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|841637925");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_158_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_158_FinishedInterrupted,
    });
    self.box_Gate_v3_32 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|905012703");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_32_Out,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|908447958");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box_Brick_AcquireObject_v6_84 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua");
    l0 = self.box_Brick_AcquireObject_v6_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v6_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|966394340");
    l0:SetConnections({
        -- ItemsAcquired,
        [0] = self.f_box_Brick_AcquireObject_v6_84_ItemsAcquired,
    });
    self.box_MultipleAND_v2_186 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|976875366");
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
        [0] = self.f_box_MultipleAND_v2_186_Out,
    });
    self.box_Gate_v3_30 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|996934412");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_30_Out,
    });
    self.box_PlayDialog_v6_161 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|997608264");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_161_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_161_FinishedInterrupted,
    });
    self.box_ContextualActionListener_119 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1024418777");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_119_Start,
    });
    self.box_MultipleAND_v2_189 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1028488267");
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
        [0] = self.f_box_MultipleAND_v2_189_Out,
    });
    self.box_HealthListener_v6_73 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1037523771");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_73_Killed,
    });
    self.box_MultipleOR_64 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1059874593");
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
        [0] = self.f_box_MultipleOR_64_Out,
    });
    self.box_PlayDialog_v6_164 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1090432658");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_164_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_164_FinishedInterrupted,
    });
    self.box_ProximityRadiusListener_v3_127 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1093231012");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_127_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_127_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_127_SomeoneNear,
    });
    self.box_ProximityRadiusListener_v3_120 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1094643922");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_120_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_120_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_120_SomeoneNear,
    });
    self.box_MultipleOR_129 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1119067320");
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
        [0] = self.f_box_MultipleOR_129_Out,
    });
    self.box_ContextualActionListener_134 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1123987695");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_134_Start,
    });
    self.box_ProximityRadiusListener_v3_138 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1146553052");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_138_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_138_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_138_SomeoneNear,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1209367495");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_MultipleOR_171 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1224905378");
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
        [0] = self.f_box_MultipleOR_171_Out,
    });
    self.box_PickupListener_v2_191 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1255222452");
    l0:SetConnections({
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_191_PickedUp,
    });
    self.box_MultipleOR_194 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1261294836");
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
        [0] = self.f_box_MultipleOR_194_Out,
    });
    self.box_Gate_v3_29 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1303030930");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_29_Out,
    });
    self.box_Gate_v3_31 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1315231473");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_31_Out,
    });
    self.box_MultipleOR_190 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1327221150");
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
        [0] = self.f_box_MultipleOR_190_Out,
    });
    self.box_MultipleOR_169 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1356538610");
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
        [0] = self.f_box_MultipleOR_169_Out,
    });
    self.box_ContextualActionListener_125 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1450582648");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_125_Start,
    });
    self.box_ContextualActionListener_109 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1541075494");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_109_Start,
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1566081411");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_Brick_AcquireObject_v6_91 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua");
    l0 = self.box_Brick_AcquireObject_v6_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v6_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1566362526");
    l0:SetConnections({
        -- ItemsAcquired,
        [0] = self.f_box_Brick_AcquireObject_v6_91_ItemsAcquired,
    });
    self.box_PickupListener_v2_187 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1571444686");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PickupListener_v2_187_Enabled,
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_187_PickedUp,
    });
    self.box_Music_Quest_v2_200 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1601503042");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1610246145");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_PlayDialog_v6_167 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1626648196");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_167_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_167_FinishedInterrupted,
    });
    self.box_Music_Quest_v2_201 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1694561326");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_9 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1844445669");
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
                [0] = self.f_box_OnceOnly_v3_9_Out_0,
            },
            count = 2,
        },
    });
    self.box_CHEAT_SetEnvironmentTimeScale_51 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1860965723");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_51_Out,
    });
    self.box_PlayDialog_v6_165 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1929367609");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_165_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_165_FinishedInterrupted,
    });
    self.box_MultipleOR_197 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1929413719");
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
        [0] = self.f_box_MultipleOR_197_Out,
    });
    self.box_MultipleOR_196 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1989365517");
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
        [0] = self.f_box_MultipleOR_196_Out,
    });
    self.box_PlayDialog_v6_155 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|2002780479");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_155_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_155_FinishedInterrupted,
    });
    self.box_PickupListener_v2_98 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|2035807725");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PickupListener_v2_98_Enabled,
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_98_PickedUp,
    });
    self.box_PickupListener_v2_185 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|2066975968");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PickupListener_v2_185_Enabled,
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_185_PickedUp,
    });
    self.box_ChangeSunOrientation_v4_18 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|2084525200");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ChangeSunOrientation_v4_18_Out,
    });
    self.box_ProximityRadiusListener_v3_124 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|2085048383");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_124_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_124_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_124_SomeoneNear,
    });
    self.box_MultipleOR_146 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|2093286624");
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
        [0] = self.f_box_MultipleOR_146_Out,
    });
    self.box_PickupListener_v2_110 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|2105704520");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PickupListener_v2_110_Enabled,
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_110_PickedUp,
    });
    self.box_ProximityRadiusListener_v3_112 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|2115563523");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_112_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_112_Enabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_112_SomeoneNear,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|86404317", "86404317", "MIS_030_B85_MAIN", "In", "box_ActivityAcknowledgeGate_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1994567685", "1994567685", "MIS_030_B85_MAIN", "box_Simple_Node_17.Out", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_25_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|240010929", "240010929", "MIS_030_B85_MAIN", "box_Simple_Node_25.Out", "box_MultipleOR_146.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
    l0 = self.box_MultipleOR_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|624839517", "624839517", "MIS_030_B85_MAIN", "box_Simple_Node_25.Out", "box_MultipleOR_129.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
    l0 = self.box_MultipleOR_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1350300152", "1350300152", "MIS_030_B85_MAIN", "box_Simple_Node_25.Out", "box_MultipleOR_169.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
    l0 = self.box_MultipleOR_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|240633806", "240633806", "MIS_030_B85_MAIN", "box_Simple_Node_25.Out", "box_MultipleOR_171.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
    l0 = self.box_MultipleOR_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1446734681", "1446734681", "MIS_030_B85_MAIN", "box_Simple_Node_25.Out", "box_MultipleOR_168.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
    l0 = self.box_MultipleOR_178;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|720196405", "720196405", "MIS_030_B85_MAIN", "box_Simple_Node_25.Out", "box_MultipleOR_178.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
    l0 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1638526098", "1638526098", "MIS_030_B85_MAIN", "box_Simple_Node_25.Out", "box_MultipleOR_174.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PickupListener_v2_188_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PickupListener_v2_187();
    l0 = self.box_PickupListener_v2_188;
    l1 = self.box_PickupListener_v2_187;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1883346588", "1883346588", "MIS_030_B85_MAIN", "box_PickupListener_v2_188.Enabled", "box_PickupListener_v2_187.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PickupListener_v2_188_PickedUp()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_192();
    l0 = self.box_PickupListener_v2_188;
    l1 = self.box_MultipleAND_v2_192;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1884333668", "1884333668", "MIS_030_B85_MAIN", "box_PickupListener_v2_188.PickedUp", "box_MultipleAND_v2_192.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_UseContextualActionModifier_v3_128_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_29();
    l0 = self.box_Gate_v3_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1854382927", "1854382927", "MIS_030_B85_MAIN", "box_UseContextualActionModifier_v3_128.Disabled", "box_Gate_v3_29.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_128_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_126();
    l0 = self.box_ContextualActionListener_126;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|841136393", "841136393", "MIS_030_B85_MAIN", "box_UseContextualActionModifier_v3_128.Enabled", "box_ContextualActionListener_126.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_178_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_178;
    l1 = self.box_MultipleOR_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|401763923", "401763923", "MIS_030_B85_MAIN", "box_MultipleOR_178.Out", "box_MultipleOR_197.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_135_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_135;
    l1 = self.box_MultipleOR_196;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1977511303", "1977511303", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_135.Disabled", "box_MultipleOR_196.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_135_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_138();
    l0 = self.box_ProximityRadiusListener_v3_135;
    l1 = self.box_ProximityRadiusListener_v3_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|873638687", "873638687", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_135.Enabled", "box_ProximityRadiusListener_v3_138.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_135_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_132();
    l0 = self.box_ProximityRadiusListener_v3_135;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|107278633", "107278633", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_135.SomeoneNear", "box_UseContextualActionModifier_v3_132.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_117_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_31();
    l0 = self.box_Gate_v3_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|394058128", "394058128", "MIS_030_B85_MAIN", "box_UseContextualActionModifier_v3_117.Disabled", "box_Gate_v3_31.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_117_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_119();
    l0 = self.box_ContextualActionListener_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|337533018", "337533018", "MIS_030_B85_MAIN", "box_UseContextualActionModifier_v3_117.Enabled", "box_ContextualActionListener_119.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_MultipleAND_v2_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1030522117", "1030522117", "MIS_030_B85_MAIN", "box_MultipleAND_v2_19.Out", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_38_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_161();
    l0 = self.box_PlayDialog_v6_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|622076386", "622076386", "MIS_030_B85_MAIN", "box_IsValueNil_v3_38.No", "box_PlayDialog_v6_161.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_33();
    l0 = self.box_Gate_v3_27;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1446126832", "1446126832", "MIS_030_B85_MAIN", "box_Gate_v3_27.Out", "box_IsValueNil_v3_33.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PickupListener_v2_101_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PickupListener_v2_98();
    l0 = self.box_PickupListener_v2_101;
    l1 = self.box_PickupListener_v2_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1628370450", "1628370450", "MIS_030_B85_MAIN", "box_PickupListener_v2_101.Enabled", "box_PickupListener_v2_98.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PickupListener_v2_101_PickedUp()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_186();
    l0 = self.box_PickupListener_v2_101;
    l1 = self.box_MultipleAND_v2_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|384916092", "384916092", "MIS_030_B85_MAIN", "box_PickupListener_v2_101.PickedUp", "box_MultipleAND_v2_186.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_UseContextualActionModifier_v3_123_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_30();
    l0 = self.box_Gate_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1349325316", "1349325316", "MIS_030_B85_MAIN", "box_UseContextualActionModifier_v3_123.Disabled", "box_Gate_v3_30.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_123_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_125();
    l0 = self.box_ContextualActionListener_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1883262016", "1883262016", "MIS_030_B85_MAIN", "box_UseContextualActionModifier_v3_123.Enabled", "box_ContextualActionListener_125.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisbandUniqueGunsForHire_63();
    l0 = self.box_MultipleOR_7;
    l1 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|555936039", "555936039", "MIS_030_B85_MAIN", "box_MultipleOR_7.Out", "box_DisbandUniqueGunsForHire_63.RequestDisband", l0:GetLuaBox(), l1:GetLuaBox());
    -- RequestDisband
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_35_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_164();
    l0 = self.box_PlayDialog_v6_164;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1169343369", "1169343369", "MIS_030_B85_MAIN", "box_IsValueNil_v3_35.No", "box_PlayDialog_v6_164.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_PickupListener_v2_97_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PickupListener_v2_110();
    l0 = self.box_PickupListener_v2_97;
    l1 = self.box_PickupListener_v2_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|769083027", "769083027", "MIS_030_B85_MAIN", "box_PickupListener_v2_97.Enabled", "box_PickupListener_v2_110.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PickupListener_v2_97_PickedUp()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_120();
    l0 = self.box_PickupListener_v2_97;
    l1 = self.box_ProximityRadiusListener_v3_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1476067241", "1476067241", "MIS_030_B85_MAIN", "box_PickupListener_v2_97.PickedUp", "box_ProximityRadiusListener_v3_120.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PickupListener_v2_122_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PickupListener_v2_118();
    l0 = self.box_PickupListener_v2_122;
    l1 = self.box_PickupListener_v2_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1550443570", "1550443570", "MIS_030_B85_MAIN", "box_PickupListener_v2_122.Enabled", "box_PickupListener_v2_118.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PickupListener_v2_122_PickedUp()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_99();
    l0 = self.box_PickupListener_v2_122;
    l1 = self.box_MultipleAND_v2_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|781486823", "781486823", "MIS_030_B85_MAIN", "box_PickupListener_v2_122.PickedUp", "box_MultipleAND_v2_99.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_IsValueNil_v3_34_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_155();
    l0 = self.box_PlayDialog_v6_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1341653066", "1341653066", "MIS_030_B85_MAIN", "box_IsValueNil_v3_34.No", "box_PlayDialog_v6_155.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_157_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_157;
    l1 = self.box_MultipleOR_178;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|448583805", "448583805", "MIS_030_B85_MAIN", "box_PlayDialog_v6_157.Finished", "box_MultipleOR_178.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_157_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_157;
    l1 = self.box_MultipleOR_178;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1748175588", "1748175588", "MIS_030_B85_MAIN", "box_PlayDialog_v6_157.FinishedInterrupted", "box_MultipleOR_178.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_174_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_174;
    l1 = self.box_MultipleOR_195;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1865205317", "1865205317", "MIS_030_B85_MAIN", "box_MultipleOR_174.Out", "box_MultipleOR_195.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleAND_v2_99_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_112();
    l0 = self.box_MultipleAND_v2_99;
    l1 = self.box_ProximityRadiusListener_v3_112;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|844494471", "844494471", "MIS_030_B85_MAIN", "box_MultipleAND_v2_99.Out", "box_ProximityRadiusListener_v3_112.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_35();
    l0 = self.box_Gate_v3_28;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|270001856", "270001856", "MIS_030_B85_MAIN", "box_Gate_v3_28.Out", "box_IsValueNil_v3_35.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_126_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_29();
    l0 = self.box_ContextualActionListener_126;
    l1 = self.box_Gate_v3_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1004005493", "1004005493", "MIS_030_B85_MAIN", "box_ContextualActionListener_126.Start", "box_Gate_v3_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_151_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_26();
    l0 = self.box_Gate_v3_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1732686042", "1732686042", "MIS_030_B85_MAIN", "box_UseContextualActionModifier_v3_151.Disabled", "box_Gate_v3_26.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_151_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_152();
    l0 = self.box_ContextualActionListener_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1738741692", "1738741692", "MIS_030_B85_MAIN", "box_UseContextualActionModifier_v3_151.Enabled", "box_ContextualActionListener_152.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_195_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_128();
    l0 = self.box_MultipleOR_195;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1688808552", "1688808552", "MIS_030_B85_MAIN", "box_MultipleOR_195.Out", "box_UseContextualActionModifier_v3_128.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_168_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_168;
    l1 = self.box_MultipleOR_193;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|595671846", "595671846", "MIS_030_B85_MAIN", "box_MultipleOR_168.Out", "box_MultipleOR_193.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_152_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_26();
    l0 = self.box_ContextualActionListener_152;
    l1 = self.box_Gate_v3_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|46399691", "46399691", "MIS_030_B85_MAIN", "box_ContextualActionListener_152.Start", "box_Gate_v3_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_FastTravelModifier_v2_107_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1674606903", "1674606903", "MIS_030_B85_MAIN", "box_FastTravelModifier_v2_107.Disabled", "box_ActivityInitialized_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetInventoryItemQuantity_12();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1879356897", "1879356897", "MIS_030_B85_MAIN", "box_OutputOrder_v2_14.Out", "box_GetInventoryItemQuantity_12.GetNumberOfItems", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetNumberOfItems
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetInventoryItemQuantity_11();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1928001013", "1928001013", "MIS_030_B85_MAIN", "box_OutputOrder_v2_14.Out", "box_GetInventoryItemQuantity_11.GetNumberOfItems", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetNumberOfItems
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RestrictedItemModifier_v2_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_113();
    l0 = self.box_RestrictedItemModifier_v2_24;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|752400516", "752400516", "MIS_030_B85_MAIN", "box_RestrictedItemModifier_v2_24.Out", "box_GetPlayerGroup_v2_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_114_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_32();
    l0 = self.box_Gate_v3_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|835566815", "835566815", "MIS_030_B85_MAIN", "box_UseContextualActionModifier_v3_114.Disabled", "box_Gate_v3_32.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_114_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_109();
    l0 = self.box_ContextualActionListener_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|560571466", "560571466", "MIS_030_B85_MAIN", "box_UseContextualActionModifier_v3_114.Enabled", "box_ContextualActionListener_109.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsValueNil_v3_21_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_167();
    l0 = self.box_PlayDialog_v6_167;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1381200607", "1381200607", "MIS_030_B85_MAIN", "box_IsValueNil_v3_21.No", "box_PlayDialog_v6_167.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_153_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_153;
    l1 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1256156276", "1256156276", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_153.Disabled", "box_MultipleOR_198.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_153_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_151();
    l0 = self.box_ProximityRadiusListener_v3_153;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1143064225", "1143064225", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_153.SomeoneNear", "box_UseContextualActionModifier_v3_151.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_198_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_151();
    l0 = self.box_MultipleOR_198;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|2012993669", "2012993669", "MIS_030_B85_MAIN", "box_MultipleOR_198.Out", "box_UseContextualActionModifier_v3_151.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DisbandUniqueGunsForHire_63_RequestFail()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1929243907", "1929243907", "MIS_030_B85_MAIN", "box_DisbandUniqueGunsForHire_63.RequestFail", "box_MultipleOR_64.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_DisbandUniqueGunsForHire_63_RequestSuccess()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|708502702", "708502702", "MIS_030_B85_MAIN", "box_DisbandUniqueGunsForHire_63.RequestSuccess", "box_MultipleOR_64.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_23_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|304113160", "304113160", "MIS_030_B85_MAIN", "box_Compare_Boolean_23.A_is_False", "box_OutputOrder_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_23_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_17();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|258027440", "258027440", "MIS_030_B85_MAIN", "box_Compare_Boolean_23.A_is_True", "box_Simple_Node_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityMiscInfoModifier_v2_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RestrictedItemModifier_v2_24();
    l0 = self.box_RestrictedItemModifier_v2_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|2141020742", "2141020742", "MIS_030_B85_MAIN", "box_ActivityMiscInfoModifier_v2_22.Out", "box_RestrictedItemModifier_v2_24.AddItemRestriction", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddItemRestriction
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_25();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1832985471", "1832985471", "MIS_030_B85_MAIN", "box_OutputOrder_v2_13.Out", "box_Simple_Node_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|717534979", "717534979", "MIS_030_B85_MAIN", "box_OutputOrder_v2_13.Out", "box_ActivityEnd_4.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_67_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_67_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_115();
    l0 = self.box_CharacterLoadedIdListener_v2_67;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1487127207", "1487127207", "MIS_030_B85_MAIN", "box_CharacterLoadedIdListener_v2_67.LoadedIdReceived", "box_OutputOrder_v2_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_21();
    l0 = self.box_Gate_v3_26;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1006320873", "1006320873", "MIS_030_B85_MAIN", "box_Gate_v3_26.Out", "box_IsValueNil_v3_21.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_140_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_27();
    l0 = self.box_ContextualActionListener_140;
    l1 = self.box_Gate_v3_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1899437211", "1899437211", "MIS_030_B85_MAIN", "box_ContextualActionListener_140.Start", "box_Gate_v3_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_192_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_135();
    l0 = self.box_MultipleAND_v2_192;
    l1 = self.box_ProximityRadiusListener_v3_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|880492407", "880492407", "MIS_030_B85_MAIN", "box_MultipleAND_v2_192.Out", "box_ProximityRadiusListener_v3_135.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OverrideMenuAccessibility_v2_108_Out()
    local params, l0, l1;
    params = self:OnEnter_box_FastTravelModifier_v2_107();
    l0 = self.box_OverrideMenuAccessibility_v2_108;
    l1 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1301388911", "1301388911", "MIS_030_B85_MAIN", "box_OverrideMenuAccessibility_v2_108.Out", "box_FastTravelModifier_v2_107.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_193_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_117();
    l0 = self.box_MultipleOR_193;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|105196905", "105196905", "MIS_030_B85_MAIN", "box_MultipleOR_193.Out", "box_UseContextualActionModifier_v3_117.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_100_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_100;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|378804863", "378804863", "MIS_030_B85_MAIN", "box_MultipleAND_v2_100.Out", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PickupListener_v2_118_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PickupListener_v2_97();
    l0 = self.box_PickupListener_v2_118;
    l1 = self.box_PickupListener_v2_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|505781001", "505781001", "MIS_030_B85_MAIN", "box_PickupListener_v2_118.Enabled", "box_PickupListener_v2_97.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PickupListener_v2_118_PickedUp()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_99();
    l0 = self.box_PickupListener_v2_118;
    l1 = self.box_MultipleAND_v2_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|348317033", "348317033", "MIS_030_B85_MAIN", "box_PickupListener_v2_118.PickedUp", "box_MultipleAND_v2_99.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_UseContextualActionModifier_v3_132_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_28();
    l0 = self.box_Gate_v3_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|921116944", "921116944", "MIS_030_B85_MAIN", "box_UseContextualActionModifier_v3_132.Disabled", "box_Gate_v3_28.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_132_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_134();
    l0 = self.box_ContextualActionListener_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|998099535", "998099535", "MIS_030_B85_MAIN", "box_UseContextualActionModifier_v3_132.Enabled", "box_ContextualActionListener_134.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_158_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_158;
    l1 = self.box_MultipleOR_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1644061415", "1644061415", "MIS_030_B85_MAIN", "box_PlayDialog_v6_158.Finished", "box_MultipleOR_171.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_158_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_158;
    l1 = self.box_MultipleOR_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|2972623", "2972623", "MIS_030_B85_MAIN", "box_PlayDialog_v6_158.FinishedInterrupted", "box_MultipleOR_171.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayerGroup_v2_113_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_113_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_199();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|441972151", "441972151", "MIS_030_B85_MAIN", "box_GetPlayerGroup_v2_113.Out", "box_ActivityForceAndLockTracking_199.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_34();
    l0 = self.box_Gate_v3_32;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|472742216", "472742216", "MIS_030_B85_MAIN", "box_Gate_v3_32.Out", "box_IsValueNil_v3_34.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_17();
    l0 = self.box_MultipleOR_8;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1760058403", "1760058403", "MIS_030_B85_MAIN", "box_MultipleOR_8.Out", "box_Simple_Node_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_AcquireObject_v6_84_ItemsAcquired()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_100();
    l0 = self.box_Brick_AcquireObject_v6_84;
    l1 = self.box_MultipleAND_v2_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1155995565", "1155995565", "MIS_030_B85_MAIN", "box_Brick_AcquireObject_v6_84.ItemsAcquired", "box_MultipleAND_v2_100.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleAND_v2_186_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_124();
    l0 = self.box_MultipleAND_v2_186;
    l1 = self.box_ProximityRadiusListener_v3_124;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|364371804", "364371804", "MIS_030_B85_MAIN", "box_MultipleAND_v2_186.Out", "box_ProximityRadiusListener_v3_124.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_23();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|608469365", "608469365", "MIS_030_B85_MAIN", "box_OutputOrder_v2_1.Out", "box_Compare_Boolean_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_67();
    l0 = self.box_CharacterLoadedIdListener_v2_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1047458567", "1047458567", "MIS_030_B85_MAIN", "box_OutputOrder_v2_1.Out", "box_CharacterLoadedIdListener_v2_67.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_201();
    l0 = self.box_Music_Quest_v2_201;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1867611264", "1867611264", "MIS_030_B85_MAIN", "box_OutputOrder_v2_1.Out", "box_Music_Quest_v2_201.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|2132291554", "2132291554", "MIS_030_B85_MAIN", "box_OutputOrder_v2_1.Out", "box_Print_v2_2.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_37();
    l0 = self.box_Gate_v3_30;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1247660470", "1247660470", "MIS_030_B85_MAIN", "box_Gate_v3_30.Out", "box_IsValueNil_v3_37.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_161_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_161;
    l1 = self.box_MultipleOR_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1885610613", "1885610613", "MIS_030_B85_MAIN", "box_PlayDialog_v6_161.Finished", "box_MultipleOR_168.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_161_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_161;
    l1 = self.box_MultipleOR_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|103729283", "103729283", "MIS_030_B85_MAIN", "box_PlayDialog_v6_161.FinishedInterrupted", "box_MultipleOR_168.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_119_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_31();
    l0 = self.box_ContextualActionListener_119;
    l1 = self.box_Gate_v3_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1936894264", "1936894264", "MIS_030_B85_MAIN", "box_ContextualActionListener_119.Start", "box_Gate_v3_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_189_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_127();
    l0 = self.box_MultipleAND_v2_189;
    l1 = self.box_ProximityRadiusListener_v3_127;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|890896721", "890896721", "MIS_030_B85_MAIN", "box_MultipleAND_v2_189.Out", "box_ProximityRadiusListener_v3_127.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_73_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_202();
    l0 = self.box_HealthListener_v6_73;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|843289863", "843289863", "MIS_030_B85_MAIN", "box_HealthListener_v6_73.Killed", "box_OutputOrder_v2_202.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_64_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_41();
    l0 = self.box_MultipleOR_64;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1318204993", "1318204993", "MIS_030_B85_MAIN", "box_MultipleOR_64.Out", "box_SetTimeOfDay_41.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_136_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_27();
    l0 = self.box_Gate_v3_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1574144433", "1574144433", "MIS_030_B85_MAIN", "box_UseContextualActionModifier_v3_136.Disabled", "box_Gate_v3_27.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_136_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_140();
    l0 = self.box_ContextualActionListener_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|2044169748", "2044169748", "MIS_030_B85_MAIN", "box_UseContextualActionModifier_v3_136.Enabled", "box_ContextualActionListener_140.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_164_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_164;
    l1 = self.box_MultipleOR_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1775694647", "1775694647", "MIS_030_B85_MAIN", "box_PlayDialog_v6_164.Finished", "box_MultipleOR_169.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_164_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_164;
    l1 = self.box_MultipleOR_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|164355756", "164355756", "MIS_030_B85_MAIN", "box_PlayDialog_v6_164.FinishedInterrupted", "box_MultipleOR_169.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_127_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_127;
    l1 = self.box_MultipleOR_195;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1265260369", "1265260369", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_127.Disabled", "box_MultipleOR_195.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_127_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_135();
    l0 = self.box_ProximityRadiusListener_v3_127;
    l1 = self.box_ProximityRadiusListener_v3_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|797862136", "797862136", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_127.Enabled", "box_ProximityRadiusListener_v3_135.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_127_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_128();
    l0 = self.box_ProximityRadiusListener_v3_127;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|446436574", "446436574", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_127.SomeoneNear", "box_UseContextualActionModifier_v3_128.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_120_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_120;
    l1 = self.box_MultipleOR_193;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1217084785", "1217084785", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_120.Disabled", "box_MultipleOR_193.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_120_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_124();
    l0 = self.box_ProximityRadiusListener_v3_120;
    l1 = self.box_ProximityRadiusListener_v3_124;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1275868828", "1275868828", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_120.Enabled", "box_ProximityRadiusListener_v3_124.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_120_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_117();
    l0 = self.box_ProximityRadiusListener_v3_120;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1440204365", "1440204365", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_120.SomeoneNear", "box_UseContextualActionModifier_v3_117.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_202_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_200();
    l0 = self.box_Music_Quest_v2_200;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1933940557", "1933940557", "MIS_030_B85_MAIN", "box_OutputOrder_v2_202.Out", "box_Music_Quest_v2_200.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_202_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_72();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1070398959", "1070398959", "MIS_030_B85_MAIN", "box_OutputOrder_v2_202.Out", "box_ActivityRetry_v2_72.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_129_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_129;
    l1 = self.box_MultipleOR_190;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|190361449", "190361449", "MIS_030_B85_MAIN", "box_MultipleOR_129.Out", "box_MultipleOR_190.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_134_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_28();
    l0 = self.box_ContextualActionListener_134;
    l1 = self.box_Gate_v3_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1775559277", "1775559277", "MIS_030_B85_MAIN", "box_ContextualActionListener_134.Start", "box_Gate_v3_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_138_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_138;
    l1 = self.box_MultipleOR_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1349223380", "1349223380", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_138.Disabled", "box_MultipleOR_197.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_138_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_153();
    l0 = self.box_ProximityRadiusListener_v3_138;
    l1 = self.box_ProximityRadiusListener_v3_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1618820595", "1618820595", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_138.Enabled", "box_ProximityRadiusListener_v3_153.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_138_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_136();
    l0 = self.box_ProximityRadiusListener_v3_138;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1374510949", "1374510949", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_138.SomeoneNear", "box_UseContextualActionModifier_v3_136.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_15_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_15;
    l1 = self.box_OnceOnly_v3_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|95181486", "95181486", "MIS_030_B85_MAIN", "box_MultipleOR_15.Out", "box_OnceOnly_v3_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_171_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_171;
    l1 = self.box_MultipleOR_194;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1548951865", "1548951865", "MIS_030_B85_MAIN", "box_MultipleOR_171.Out", "box_MultipleOR_194.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PickupListener_v2_191_PickedUp()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_138();
    l0 = self.box_PickupListener_v2_191;
    l1 = self.box_ProximityRadiusListener_v3_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1227643678", "1227643678", "MIS_030_B85_MAIN", "box_PickupListener_v2_191.PickedUp", "box_ProximityRadiusListener_v3_138.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_194_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_123();
    l0 = self.box_MultipleOR_194;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1265308978", "1265308978", "MIS_030_B85_MAIN", "box_MultipleOR_194.Out", "box_UseContextualActionModifier_v3_123.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_41_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_ChangeSunOrientation_v4_18();
    l0 = self.box_ChangeSunOrientation_v4_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|830058860", "830058860", "MIS_030_B85_MAIN", "box_SetTimeOfDay_41.Out", "box_ChangeSunOrientation_v4_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_36();
    l0 = self.box_Gate_v3_29;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1854711138", "1854711138", "MIS_030_B85_MAIN", "box_Gate_v3_29.Out", "box_IsValueNil_v3_36.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_38();
    l0 = self.box_Gate_v3_31;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|680534555", "680534555", "MIS_030_B85_MAIN", "box_Gate_v3_31.Out", "box_IsValueNil_v3_38.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_36_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_165();
    l0 = self.box_PlayDialog_v6_165;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1615904035", "1615904035", "MIS_030_B85_MAIN", "box_IsValueNil_v3_36.No", "box_PlayDialog_v6_165.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_190_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_114();
    l0 = self.box_MultipleOR_190;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|313118581", "313118581", "MIS_030_B85_MAIN", "box_MultipleOR_190.Out", "box_UseContextualActionModifier_v3_114.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_169_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_169;
    l1 = self.box_MultipleOR_196;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|617231296", "617231296", "MIS_030_B85_MAIN", "box_MultipleOR_169.Out", "box_MultipleOR_196.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_125_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_30();
    l0 = self.box_ContextualActionListener_125;
    l1 = self.box_Gate_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1313752113", "1313752113", "MIS_030_B85_MAIN", "box_ContextualActionListener_125.Start", "box_Gate_v3_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ActivityForceAndLockTracking_199_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1947909568", "1947909568", "MIS_030_B85_MAIN", "box_ActivityForceAndLockTracking_199.Enabled", "box_OutputOrder_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_109_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_32();
    l0 = self.box_ContextualActionListener_109;
    l1 = self.box_Gate_v3_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|982459052", "982459052", "MIS_030_B85_MAIN", "box_ContextualActionListener_109.Start", "box_Gate_v3_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_22();
    l0 = self.box_ActivityInitialized_5;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|310299319", "310299319", "MIS_030_B85_MAIN", "box_ActivityInitialized_5.Out", "box_ActivityMiscInfoModifier_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_AcquireObject_v6_91_ItemsAcquired()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_100();
    l0 = self.box_Brick_AcquireObject_v6_91;
    l1 = self.box_MultipleAND_v2_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|651350574", "651350574", "MIS_030_B85_MAIN", "box_Brick_AcquireObject_v6_91.ItemsAcquired", "box_MultipleAND_v2_100.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_PickupListener_v2_187_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PickupListener_v2_191();
    l0 = self.box_PickupListener_v2_187;
    l1 = self.box_PickupListener_v2_191;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|639633556", "639633556", "MIS_030_B85_MAIN", "box_PickupListener_v2_187.Enabled", "box_PickupListener_v2_191.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PickupListener_v2_187_PickedUp()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_192();
    l0 = self.box_PickupListener_v2_187;
    l1 = self.box_MultipleAND_v2_192;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|60026293", "60026293", "MIS_030_B85_MAIN", "box_PickupListener_v2_187.PickedUp", "box_MultipleAND_v2_192.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_IsValueNil_v3_37_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_158();
    l0 = self.box_PlayDialog_v6_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|814490680", "814490680", "MIS_030_B85_MAIN", "box_IsValueNil_v3_37.No", "box_PlayDialog_v6_158.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|536227385", "536227385", "MIS_030_B85_MAIN", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1916325878", "1916325878", "MIS_030_B85_MAIN", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_167_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_167;
    l1 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1486858833", "1486858833", "MIS_030_B85_MAIN", "box_PlayDialog_v6_167.Finished", "box_MultipleOR_146.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_167_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_167;
    l1 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|585844778", "585844778", "MIS_030_B85_MAIN", "box_PlayDialog_v6_167.FinishedInterrupted", "box_MultipleOR_146.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_10_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_19();
    l0 = self.box_MultipleAND_v2_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1323084332", "1323084332", "MIS_030_B85_MAIN", "box_Compare_Integers_10.A_eq_B", "box_MultipleAND_v2_19.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Compare_Integers_10_A_ne_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1402857237", "1402857237", "MIS_030_B85_MAIN", "box_Compare_Integers_10.A_ne_B", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_115_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_73();
    l0 = self.box_HealthListener_v6_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1134515334", "1134515334", "MIS_030_B85_MAIN", "box_OutputOrder_v2_115.Out", "box_HealthListener_v6_73.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_115_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PickupListener_v2_122();
    l0 = self.box_PickupListener_v2_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1488290382", "1488290382", "MIS_030_B85_MAIN", "box_OutputOrder_v2_115.Out", "box_PickupListener_v2_122.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_115_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_112();
    l0 = self.box_ProximityRadiusListener_v3_112;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|127751573", "127751573", "MIS_030_B85_MAIN", "box_OutputOrder_v2_115.Out", "box_ProximityRadiusListener_v3_112.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_AcquireObject_v6_84();
    l0 = self.box_Brick_AcquireObject_v6_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|2098586687", "2098586687", "MIS_030_B85_MAIN", "box_OutputOrder_v2_20.Out", "box_Brick_AcquireObject_v6_84.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_AcquireObject_v6_91();
    l0 = self.box_Brick_AcquireObject_v6_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|304540615", "304540615", "MIS_030_B85_MAIN", "box_OutputOrder_v2_20.Out", "box_Brick_AcquireObject_v6_91.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_9_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_OnceOnly_v3_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1376325553", "1376325553", "MIS_030_B85_MAIN", "box_OnceOnly_v3_9.Out", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideMenuAccessibility_v2_108();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_51;
    l1 = self.box_OverrideMenuAccessibility_v2_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1812914578", "1812914578", "MIS_030_B85_MAIN", "box_CHEAT_SetEnvironmentTimeScale_51.Out", "box_OverrideMenuAccessibility_v2_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_165_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_165;
    l1 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1441879138", "1441879138", "MIS_030_B85_MAIN", "box_PlayDialog_v6_165.Finished", "box_MultipleOR_174.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_165_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_165;
    l1 = self.box_MultipleOR_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1800368969", "1800368969", "MIS_030_B85_MAIN", "box_PlayDialog_v6_165.FinishedInterrupted", "box_MultipleOR_174.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_197_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_136();
    l0 = self.box_MultipleOR_197;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1150198213", "1150198213", "MIS_030_B85_MAIN", "box_MultipleOR_197.Out", "box_UseContextualActionModifier_v3_136.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_33_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_157();
    l0 = self.box_PlayDialog_v6_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1432113079", "1432113079", "MIS_030_B85_MAIN", "box_IsValueNil_v3_33.No", "box_PlayDialog_v6_157.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_196_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_132();
    l0 = self.box_MultipleOR_196;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1257783453", "1257783453", "MIS_030_B85_MAIN", "box_MultipleOR_196.Out", "box_UseContextualActionModifier_v3_132.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_16_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_19();
    l0 = self.box_MultipleAND_v2_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|955463644", "955463644", "MIS_030_B85_MAIN", "box_Compare_Integers_16.A_eq_B", "box_MultipleAND_v2_19.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Compare_Integers_16_A_ne_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1327603995", "1327603995", "MIS_030_B85_MAIN", "box_Compare_Integers_16.A_ne_B", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_155_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_155;
    l1 = self.box_MultipleOR_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1538223357", "1538223357", "MIS_030_B85_MAIN", "box_PlayDialog_v6_155.Finished", "box_MultipleOR_129.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_155_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_155;
    l1 = self.box_MultipleOR_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|865721665", "865721665", "MIS_030_B85_MAIN", "box_PlayDialog_v6_155.FinishedInterrupted", "box_MultipleOR_129.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PickupListener_v2_98_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PickupListener_v2_185();
    l0 = self.box_PickupListener_v2_98;
    l1 = self.box_PickupListener_v2_185;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1161782739", "1161782739", "MIS_030_B85_MAIN", "box_PickupListener_v2_98.Enabled", "box_PickupListener_v2_185.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PickupListener_v2_98_PickedUp()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_189();
    l0 = self.box_PickupListener_v2_98;
    l1 = self.box_MultipleAND_v2_189;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|349420441", "349420441", "MIS_030_B85_MAIN", "box_PickupListener_v2_98.PickedUp", "box_MultipleAND_v2_189.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_GetInventoryItemQuantity_12_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_12_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_16();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1575378191", "1575378191", "MIS_030_B85_MAIN", "box_GetInventoryItemQuantity_12.Out", "box_Compare_Integers_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PickupListener_v2_185_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PickupListener_v2_188();
    l0 = self.box_PickupListener_v2_185;
    l1 = self.box_PickupListener_v2_188;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|475792093", "475792093", "MIS_030_B85_MAIN", "box_PickupListener_v2_185.Enabled", "box_PickupListener_v2_188.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PickupListener_v2_185_PickedUp()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_189();
    l0 = self.box_PickupListener_v2_185;
    l1 = self.box_MultipleAND_v2_189;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1626044845", "1626044845", "MIS_030_B85_MAIN", "box_PickupListener_v2_185.PickedUp", "box_MultipleAND_v2_189.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_ChangeSunOrientation_v4_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_51();
    l0 = self.box_ChangeSunOrientation_v4_18;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|97220641", "97220641", "MIS_030_B85_MAIN", "box_ChangeSunOrientation_v4_18.Out", "box_CHEAT_SetEnvironmentTimeScale_51.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_124_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_124;
    l1 = self.box_MultipleOR_194;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|88905581", "88905581", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_124.Disabled", "box_MultipleOR_194.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_124_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_127();
    l0 = self.box_ProximityRadiusListener_v3_124;
    l1 = self.box_ProximityRadiusListener_v3_127;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|2095029607", "2095029607", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_124.Enabled", "box_ProximityRadiusListener_v3_127.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_124_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_123();
    l0 = self.box_ProximityRadiusListener_v3_124;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1594647178", "1594647178", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_124.SomeoneNear", "box_UseContextualActionModifier_v3_123.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_146_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_146;
    l1 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1907701340", "1907701340", "MIS_030_B85_MAIN", "box_MultipleOR_146.Out", "box_MultipleOR_198.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PickupListener_v2_110_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PickupListener_v2_101();
    l0 = self.box_PickupListener_v2_110;
    l1 = self.box_PickupListener_v2_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|87504", "87504", "MIS_030_B85_MAIN", "box_PickupListener_v2_110.Enabled", "box_PickupListener_v2_101.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PickupListener_v2_110_PickedUp()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_186();
    l0 = self.box_PickupListener_v2_110;
    l1 = self.box_MultipleAND_v2_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|773473353", "773473353", "MIS_030_B85_MAIN", "box_PickupListener_v2_110.PickedUp", "box_MultipleAND_v2_186.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_ProximityRadiusListener_v3_112_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_112;
    l1 = self.box_MultipleOR_190;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|405657216", "405657216", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_112.Disabled", "box_MultipleOR_190.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_112_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_120();
    l0 = self.box_ProximityRadiusListener_v3_112;
    l1 = self.box_ProximityRadiusListener_v3_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|124073718", "124073718", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_112.Enabled", "box_ProximityRadiusListener_v3_120.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_112_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_114();
    l0 = self.box_ProximityRadiusListener_v3_112;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|458807166", "458807166", "MIS_030_B85_MAIN", "box_ProximityRadiusListener_v3_112.SomeoneNear", "box_UseContextualActionModifier_v3_114.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetInventoryItemQuantity_11_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_11_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_10();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|218520972", "218520972", "MIS_030_B85_MAIN", "box_GetInventoryItemQuantity_11.Out", "box_Compare_Integers_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|@GotLauncherAlready");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_17_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|@StopConvo");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_25_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_188()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pickupId,
        [1] = "2109025184533983127",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|25614551");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_128_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_128_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109112277060822486",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_135()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2109112331242841568",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|68172859");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_117_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_117_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109112061117077804",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_19()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|80284613");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_38_No,
    });
    params = {
        -- ent,
        [4] = self.eCarmina,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_27()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_101()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pickupId,
        [1] = "2109025177382694805",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|99730950");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_123_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_123_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109112203199129042",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|139549559");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_35_No,
    });
    params = {
        -- ent,
        [4] = self.eCarmina,
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_97()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pickupId,
        [1] = "2108640564579666376",
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_122()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pickupId,
        [1] = "2109025095738470287",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|205868831");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_34_No,
    });
    params = {
        -- ent,
        [4] = self.eCarmina,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_157()
    local params;
    params = {
        -- Group,
        [0] = self.eCarmina,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3925095335",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_99()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_28()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_126()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2109112277060822486",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|284216981");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_151_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_151_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109125164005333330",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_152()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2109125164005333330",
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|406684873");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FastTravelModifier_v2_107_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|463975474");
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

function export:OnEnter_box_RestrictedItemModifier_v2_24()
    local params;
    params = {
        -- allowedItemFilterID,
        [1] = "9015356267264662",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|483709218");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_114_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_114_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109111680741944013",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|484052830");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_21_No,
    });
    params = {
        -- ent,
        [4] = self.eCarmina,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_153()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2109125164005333330",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_DisbandUniqueGunsForHire_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisbandUniqueGunsForHire_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|498130084");
    l0:SetConnections({
        -- RequestFail,
        [0] = self.f_box_DisbandUniqueGunsForHire_63_RequestFail,
        -- RequestSuccess,
        [1] = self.f_box_DisbandUniqueGunsForHire_63_RequestSuccess,
    });
    params = {
        -- uniqueCharacterDesc,
        [1] = "9015333852467969",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|548785880");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_23_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_23_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.MIS_030_B20.RessourcesGathered,
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|626431230");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_22_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|643301506");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_67()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015333852467969",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_26()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_140()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2109124980947032380",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_192()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_v2_108()
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

function export:OnEnter_box_MultipleAND_v2_100()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_118()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pickupId,
        [1] = "2108544586606446640",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|807402297");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_132_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_132_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109112331242841568",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_158()
    local params;
    params = {
        -- Group,
        [0] = self.eCarmina,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2390141711",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|849510850");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_113_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|850694482");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_32()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|922332361");
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
        [8] = "MIS_030_B85 STARTED",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_AcquireObject_v6_84()
    local params;
    params = {
        -- AmountRequired,
        [0] = 40,
        -- bCheckAmountInInventory,
        [1] = true,
        -- bRequiresObjective,
        [2] = true,
        -- CompletePreviousObjective,
        [3] = false,
        -- LootItemID,
        [4] = "9015329421722374",
        -- Objective,
        [6] = {
            section = "Objectives",
            item = "MIS_030_B85_OBJ_FindDuctTape",
            id = "1018964",
        },
        -- opt_eMarker,
        [7] = "2108792893845023493",
        -- ProtectItemOnSuccess,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_186()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|990338029");
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

function export:OnEnter_box_Gate_v3_30()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_161()
    local params;
    params = {
        -- Group,
        [0] = self.eCarmina,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3915077004",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_119()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2109112061117077804",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_189()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_73()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eCarmina,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1085417263");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_136_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_136_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109124980947032380",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_164()
    local params;
    params = {
        -- Group,
        [0] = self.eCarmina,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1794683735",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_127()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2109112277060822486",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_120()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2109112061117077804",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1095173719");
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

function export:OnEnter_box_ContextualActionListener_134()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2109112331242841568",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_138()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2109124980947032380",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_191()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pickupId,
        [1] = "2109124381130107519",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1283465382");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_41_Out,
    });
    params = {
        -- Hour,
        [0] = 7,
        -- Minute,
        [1] = 58,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_29()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_31()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1315915723");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_36_No,
    });
    params = {
        -- ent,
        [4] = self.eCarmina,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_125()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2109112203199129042",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1513894678");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_199_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1515201474");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "BRICK_Escort_NPC_To_Position",
            item = "BRICK_Escort_NPC_FailNPCDead",
            id = "376651",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_109()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2109111680741944013",
    };
    return params;
end;

function export:OnEnter_box_Brick_AcquireObject_v6_91()
    local params;
    params = {
        -- AmountRequired,
        [0] = 40,
        -- bCheckAmountInInventory,
        [1] = true,
        -- bRequiresObjective,
        [2] = true,
        -- CompletePreviousObjective,
        [3] = false,
        -- LootItemID,
        [4] = "9015329421732983",
        -- Objective,
        [6] = {
            section = "Objectives",
            item = "MIS_030_B85_OBJ_FindBlackPowder",
            id = "1018965",
        },
        -- opt_eMarker,
        [7] = "2108793023975402255",
        -- ProtectItemOnSuccess,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_187()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pickupId,
        [1] = "2108349865919516916",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1600889580");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_37_No,
    });
    params = {
        -- ent,
        [4] = self.eCarmina,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_200()
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

function export:OnEnter_box_PlayDialog_v6_167()
    local params;
    params = {
        -- Group,
        [0] = self.eCarmina,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2264895690",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1650618730");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_10_A_eq_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_10_A_ne_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_11,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1673326823");
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
                [0] = self.f_box_OutputOrder_v2_115_Out_0,
                [1] = self.f_box_OutputOrder_v2_115_Out_1,
                [2] = self.f_box_OutputOrder_v2_115_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1679430650");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_201()
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

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_51()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_165()
    local params;
    params = {
        -- Group,
        [0] = self.eCarmina,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2054733744",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1982128055");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_33_No,
    });
    params = {
        -- ent,
        [4] = self.eCarmina,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|1993989390");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_16_A_eq_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_16_A_ne_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_12,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_155()
    local params;
    params = {
        -- Group,
        [0] = self.eCarmina,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1903913801",
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_98()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pickupId,
        [1] = "2109025093611958157",
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|2063612597");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_12_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015341636258343",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_185()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pickupId,
        [1] = "2108543649640884578",
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_18()
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

function export:OnEnter_box_ProximityRadiusListener_v3_124()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2109112203199129042",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_110()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pickupId,
        [1] = "2108709948337700696",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_112()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2109111680741944013",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B85.domino|@MIS_030_B85_MAIN|2132055684");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_11_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015350883700177",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_67_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_67;
    self.eCarmina = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_113_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetInventoryItemQuantity_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_12 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetInventoryItemQuantity_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_11 = l0:GetDataOutValue(0);
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
