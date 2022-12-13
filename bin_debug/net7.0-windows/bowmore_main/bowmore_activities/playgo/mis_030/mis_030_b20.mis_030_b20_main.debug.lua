LUAC7� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/playgo/mis_030/mis_030_b20.domino
-- User graph: MIS_030_B20_MAIN
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/ChangeSunOrientation_v4.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DisbandUniqueGunsForHire.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/FastTravelModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/RestrictedItemModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/UIListener.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_030/MIS_030_B20.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3848269288.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2374617874.bnk]], "CSoundResource");
        cboxRes:LoadResource([[842141055.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2068524891.bnk]], "CSoundResource");
        cboxRes:LoadResource([[916553338.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1281529039.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3960593174.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4128453215.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4181123795.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3753889652.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1251713430.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2270105790.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1317550056.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_030/MIS_030_B20.MIS_030_B20_MAIN.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/SetActivityFact.lua")] = {
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
                name = "Fact",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua")] = {
        stateless = false,
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
            [3] = {
                name = "Enable",
            },
        },
        controlInCount = 4,
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
            [3] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
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
    self._name = "MIS_030_B20_MAIN";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN";
    self.Carmina = nil;
    self.gPlayer = nil;
    self.eCarmina = nil;
    self.box_MultipleAND_v2_52 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|26988142");
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
        [0] = self.f_box_MultipleAND_v2_52_Out,
    });
    self.box_PlayDialog_v6_35 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|45355882");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_35_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_35_FinishedInterrupted,
    });
    self.box_PlayDialog_v6_29 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|50035602");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_29_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_29_FinishedInterrupted,
    });
    self.box_MultipleAND_v2_47 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|71096451");
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
        [0] = self.f_box_MultipleAND_v2_47_Out,
    });
    self.box_UIListener_71 = cbox:CreateBox("Domino/System/UI/UIListener.lua");
    l0 = self.box_UIListener_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIListener_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|72214078");
    l0:SetConnections({
        -- ExitPauseMenu,
        [2] = self.f_box_UIListener_71_ExitPauseMenu,
    });
    self.box_ProximityTrigger_v3_120 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|91323809");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_120_Enter,
    });
    self.box_PlayDialog_v6_42 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|102417007");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_42_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_42_FinishedInterrupted,
    });
    self.box_Delay_v5_87 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|147465159");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_87_TimeElapsed,
    });
    self.box_CharacterLoadedIdListener_v2_13 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|168260829");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_13_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_13_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_13_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_13_LoadedIdReceived,
    });
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|197775211");
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
        [0] = self.f_box_MultipleOR_43_Out,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|224121515");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_Delay_v5_89 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|244977329");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_89_TimeElapsed,
    });
    self.box_OnceOnly_v3_46 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|270291272");
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
                [0] = self.f_box_OnceOnly_v3_46_Out_0,
            },
            count = 2,
        },
    });
    self.box_Music_Quest_v2_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|306178184");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_86 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|355449462");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_8 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|356682082");
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
                [0] = self.f_box_OnceOnly_v3_8_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_66 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|375645319");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_66_Spawned,
    });
    self.box_PlayDialog_v6_76 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|405160126");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_55 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|406931672");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_55_Damaged,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_55_Enabled,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|457759576");
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
        [0] = self.f_box_MultipleOR_21_Out,
    });
    self.box_Delay_v5_92 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|464250927");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_92_TimeElapsed,
    });
    self.box_Brick_AcquireObject_v6_60 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua");
    l0 = self.box_Brick_AcquireObject_v6_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v6_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|483856270");
    l0:SetConnections({
        -- ItemsAcquired,
        [0] = self.f_box_Brick_AcquireObject_v6_60_ItemsAcquired,
    });
    self.box_ActivityAcknowledgeGate_7 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|533243240");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_7_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_7_Reloaded,
    });
    self.box_OverrideMenuAccessibility_v2_69 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
    l0 = self.box_OverrideMenuAccessibility_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|599869455");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_v2_69_Out,
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|637932462");
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
        [0] = self.f_box_MultipleOR_36_Out,
    });
    self.box_SpawnAI_67 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|678034333");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_67_Spawned,
    });
    self.box_BaseMissionBlock_v2_80 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|690133944");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_BaseMissionBlock_v2_80_Disabled,
    });
    self.box_UIListener_75 = cbox:CreateBox("Domino/System/UI/UIListener.lua");
    l0 = self.box_UIListener_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIListener_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|690332979");
    l0:SetConnections({
        -- OpenCraftingPage,
        [3] = self.f_box_UIListener_75_OpenCraftingPage,
    });
    self.box_SpawnAI_63 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|699158554");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_63_Spawned,
    });
    self.box_PlayDialog_v6_31 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|751191253");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_31_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_31_FinishedInterrupted,
    });
    self.box_SpawnAI_62 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|825665997");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_62_Spawned,
    });
    self.box_MessageListener_v3_26 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|825890887");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_26_Received,
    });
    self.box_PlayDialog_v6_25 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|834216812");
    l0:SetConnections({
    });
    self.box_MultipleOR_39 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|839672733");
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
    self.box_ProximityTrigger_v3_30 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|844666441");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_30_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_30_Enter,
    });
    self.box_PlayDialog_v6_34 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|855699990");
    l0:SetConnections({
    });
    self.box_MultipleOR_57 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|950133756");
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
        [0] = self.f_box_MultipleOR_57_Out,
    });
    self.box_HealthListener_v6_82 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|983540905");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_82_Killed,
    });
    self.box_BaseMissionBlock_v2_48 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|994993003");
    l0:SetConnections({
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1059491656");
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
        [0] = self.f_box_MultipleOR_37_Out,
    });
    self.box_Delay_v5_85 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1211777561");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_85_TimeElapsed,
    });
    self.box_EntityStatusListener_94 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1242089597");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_94_Loaded,
    });
    self.box_Delay_v5_51 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1245121611");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_51_TimeElapsed,
    });
    self.box_Delay_v5_73 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1275898595");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_73_TimeElapsed,
    });
    self.box_Brick_AcquireObject_v6_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua");
    l0 = self.box_Brick_AcquireObject_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v6_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1305576083");
    l0:SetConnections({
        -- ItemsAcquired,
        [0] = self.f_box_Brick_AcquireObject_v6_11_ItemsAcquired,
    });
    self.box_Music_Quest_v2_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1386000654");
    l0:SetConnections({
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1404774388");
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
    self.box_RestrictedItemModifier_v2_83 = cbox:CreateBox("Domino/System/RestrictedItemModifier_v2.lua");
    l0 = self.box_RestrictedItemModifier_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1446415880");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_v2_83_Out,
    });
    self.box_ProximityTrigger_v3_5 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1463219346");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_5_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_5_Enter,
    });
    self.box_MultipleOR_88 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1487935586");
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
    self.box_StateListener_v2_58 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1489817602");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StateListener_v2_58_Enabled,
        -- StateStart,
        [3] = self.f_box_StateListener_v2_58_StateStart,
    });
    self.box_SpawnAI_64 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1623606770");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_28 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1637277509");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_28_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_28_FinishedInterrupted,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1694167812");
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
    self.box_ProximityTrigger_v3_105 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1709133438");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_105_Enter,
    });
    self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1755292116");
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
        [0] = self.f_box_MultipleOR_45_Out,
    });
    self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1757547662");
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
        [0] = self.f_box_MultipleOR_38_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_19 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1782271172");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_19_Out,
    });
    self.box_MultipleOR_40 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1874918764");
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
        [0] = self.f_box_MultipleOR_40_Out,
    });
    self.box_StateListener_v2_54 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1960755527");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StateListener_v2_54_Enabled,
        -- StateStart,
        [3] = self.f_box_StateListener_v2_54_StateStart,
    });
    self.box_PlayDialog_v6_32 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|2012588644");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_32_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_32_FinishedInterrupted,
    });
    self.box_ChangeSunOrientation_v4_24 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|2044619953");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ChangeSunOrientation_v4_24_Out,
    });
    self.box_SpawnAI_65 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|2045307101");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_65_Spawned,
    });
    self.box_Delay_v5_90 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|2082854086");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_90_TimeElapsed,
    });
    self.box_EntityStatusListener_44 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|2111550585");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_44_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_44_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_44_Unloaded,
    });
    self.box_Delay_v5_91 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|2114222660");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_91_TimeElapsed,
    });
    self.box_PlayDialog_v6_27 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|2140778001");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_27_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_27_FinishedInterrupted,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|540445838", "540445838", "MIS_030_B20_MAIN", "In", "box_ActivityAcknowledgeGate_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_MultipleAND_v2_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_81();
    l0 = self.box_MultipleAND_v2_52;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1257219737", "1257219737", "MIS_030_B20_MAIN", "box_MultipleAND_v2_52.Out", "box_SetBoolean_v2_81.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_35_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_35;
    l1 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|822129650", "822129650", "MIS_030_B20_MAIN", "box_PlayDialog_v6_35.Finished", "box_MultipleOR_88.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_35_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_35;
    l1 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|845469380", "845469380", "MIS_030_B20_MAIN", "box_PlayDialog_v6_35.FinishedInterrupted", "box_MultipleOR_88.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_29_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_29;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|286560571", "286560571", "MIS_030_B20_MAIN", "box_PlayDialog_v6_29.Finished", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_29_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_29;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1030291272", "1030291272", "MIS_030_B20_MAIN", "box_PlayDialog_v6_29.FinishedInterrupted", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleAND_v2_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_89();
    l0 = self.box_MultipleAND_v2_47;
    l1 = self.box_Delay_v5_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1818867005", "1818867005", "MIS_030_B20_MAIN", "box_MultipleAND_v2_47.Out", "box_Delay_v5_89.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UIListener_71_ExitPauseMenu()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_79();
    l0 = self.box_UIListener_71;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|590110433", "590110433", "MIS_030_B20_MAIN", "box_UIListener_71.ExitPauseMenu", "box_OutputOrder_v2_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_120_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_122();
    l0 = self.box_ProximityTrigger_v3_120;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1705440919", "1705440919", "MIS_030_B20_MAIN", "box_ProximityTrigger_v3_120.Enter", "box_OutputOrder_v2_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_42_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_42;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|2061439817", "2061439817", "MIS_030_B20_MAIN", "box_PlayDialog_v6_42.Finished", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_42_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_42;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1471260823", "1471260823", "MIS_030_B20_MAIN", "box_PlayDialog_v6_42.FinishedInterrupted", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_87_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_27();
    l0 = self.box_Delay_v5_87;
    l1 = self.box_PlayDialog_v6_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1453065373", "1453065373", "MIS_030_B20_MAIN", "box_Delay_v5_87.TimeElapsed", "box_PlayDialog_v6_27.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_13_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_13_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_CharacterLoadedIdListener_v2_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|2101676387", "2101676387", "MIS_030_B20_MAIN", "box_CharacterLoadedIdListener_v2_13.LoadedIdReceived", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_85();
    l0 = self.box_MultipleOR_43;
    l1 = self.box_Delay_v5_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|298877059", "298877059", "MIS_030_B20_MAIN", "box_MultipleOR_43.Out", "box_Delay_v5_85.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_80();
    l0 = self.box_BaseMissionBlock_v2_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1503177359", "1503177359", "MIS_030_B20_MAIN", "box_OutputOrder_v2_49.Out", "box_BaseMissionBlock_v2_80.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_25();
    l0 = self.box_PlayDialog_v6_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|210681789", "210681789", "MIS_030_B20_MAIN", "box_OutputOrder_v2_49.Out", "box_PlayDialog_v6_25.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_67();
    l0 = self.box_SpawnAI_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|526149758", "526149758", "MIS_030_B20_MAIN", "box_OutputOrder_v2_49.Out", "box_SpawnAI_67.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_10();
    l0 = self.box_ActivityInitialized_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|945793481", "945793481", "MIS_030_B20_MAIN", "box_ActivityInitialized_2.Out", "box_ActivityMiscInfoModifier_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_89_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_32();
    l0 = self.box_Delay_v5_89;
    l1 = self.box_PlayDialog_v6_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1842374848", "1842374848", "MIS_030_B20_MAIN", "box_Delay_v5_89.TimeElapsed", "box_PlayDialog_v6_32.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_46_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = self.box_OnceOnly_v3_46;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|877965685", "877965685", "MIS_030_B20_MAIN", "box_OnceOnly_v3_46.Out", "box_OutputOrder_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_8_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = self.box_OnceOnly_v3_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|218829171", "218829171", "MIS_030_B20_MAIN", "box_OnceOnly_v3_8.Out", "box_OutputOrder_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_66_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_63();
    l0 = self.box_SpawnAI_66;
    l1 = self.box_SpawnAI_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|887714186", "887714186", "MIS_030_B20_MAIN", "box_SpawnAI_66.Spawned", "box_SpawnAI_63.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_55_Damaged()
    local l0, l1;
    l0 = self.box_HealthListener_v6_55;
    l1 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1347014444", "1347014444", "MIS_030_B20_MAIN", "box_HealthListener_v6_55.Damaged", "box_MultipleOR_57.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_HealthListener_v6_55_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = self.box_HealthListener_v6_55;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1600384278", "1600384278", "MIS_030_B20_MAIN", "box_HealthListener_v6_55.Enabled", "box_OutputOrder_v2_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_114_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_51();
    l0 = self.box_Delay_v5_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1837703762", "1837703762", "MIS_030_B20_MAIN", "box_OutputOrder_v2_114.Out", "box_Delay_v5_51.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_114_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_30();
    l0 = self.box_ProximityTrigger_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|16152483", "16152483", "MIS_030_B20_MAIN", "box_OutputOrder_v2_114.Out", "box_ProximityTrigger_v3_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_22();
    l0 = self.box_Music_Quest_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|870496446", "870496446", "MIS_030_B20_MAIN", "box_OutputOrder_v2_23.Out", "box_Music_Quest_v2_22.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_33();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|2140819869", "2140819869", "MIS_030_B20_MAIN", "box_OutputOrder_v2_23.Out", "box_ActivityRetry_v2_33.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideMenuAccessibility_v2_69();
    l0 = self.box_MultipleOR_21;
    l1 = self.box_OverrideMenuAccessibility_v2_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|687676307", "687676307", "MIS_030_B20_MAIN", "box_MultipleOR_21.Out", "box_OverrideMenuAccessibility_v2_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_61();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1222779566", "1222779566", "MIS_030_B20_MAIN", "box_OutputOrder_v2_3.Out", "box_GetPlayerGroup_v2_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_82();
    l0 = self.box_HealthListener_v6_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|163154940", "163154940", "MIS_030_B20_MAIN", "box_OutputOrder_v2_3.Out", "box_HealthListener_v6_82.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1019642975", "1019642975", "MIS_030_B20_MAIN", "box_OutputOrder_v2_3.Out", "box_Print_v2_4.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_15();
    l0 = self.box_Music_Quest_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|322932515", "322932515", "MIS_030_B20_MAIN", "box_OutputOrder_v2_3.Out", "box_Music_Quest_v2_15.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_92_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_31();
    l0 = self.box_Delay_v5_92;
    l1 = self.box_PlayDialog_v6_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|2092247222", "2092247222", "MIS_030_B20_MAIN", "box_Delay_v5_92.TimeElapsed", "box_PlayDialog_v6_31.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Brick_AcquireObject_v6_60_ItemsAcquired()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_52();
    l0 = self.box_Brick_AcquireObject_v6_60;
    l1 = self.box_MultipleAND_v2_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|473755697", "473755697", "MIS_030_B20_MAIN", "box_Brick_AcquireObject_v6_60.ItemsAcquired", "box_MultipleAND_v2_52.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1278465807", "1278465807", "MIS_030_B20_MAIN", "box_ActivityAcknowledgeGate_7.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|724222755", "724222755", "MIS_030_B20_MAIN", "box_ActivityAcknowledgeGate_7.Reloaded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OverrideMenuAccessibility_v2_69_Out()
    local params, l0, l1;
    params = self:OnEnter_box_FastTravelModifier_v2_68();
    l0 = self.box_OverrideMenuAccessibility_v2_69;
    l1 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|378124995", "378124995", "MIS_030_B20_MAIN", "box_OverrideMenuAccessibility_v2_69.Out", "box_FastTravelModifier_v2_68.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_87();
    l0 = self.box_MultipleOR_36;
    l1 = self.box_Delay_v5_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1047923089", "1047923089", "MIS_030_B20_MAIN", "box_MultipleOR_36.Out", "box_Delay_v5_87.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_67_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_66();
    l0 = self.box_SpawnAI_67;
    l1 = self.box_SpawnAI_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1202590701", "1202590701", "MIS_030_B20_MAIN", "box_SpawnAI_67.Spawned", "box_SpawnAI_66.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_BaseMissionBlock_v2_80_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_70();
    l0 = self.box_BaseMissionBlock_v2_80;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1185430278", "1185430278", "MIS_030_B20_MAIN", "box_BaseMissionBlock_v2_80.Disabled", "box_SetActivityFact_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UIListener_75_OpenCraftingPage()
    local params, l0, l1;
    params = self:OnEnter_box_UIListener_71();
    l0 = self.box_UIListener_75;
    l1 = self.box_UIListener_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|192396080", "192396080", "MIS_030_B20_MAIN", "box_UIListener_75.OpenCraftingPage", "box_UIListener_71.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_112_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1699716081", "1699716081", "MIS_030_B20_MAIN", "box_UseContextualActionModifier_v3_112.Disabled", "box_OutputOrder_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_63_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_62();
    l0 = self.box_SpawnAI_63;
    l1 = self.box_SpawnAI_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|917913107", "917913107", "MIS_030_B20_MAIN", "box_SpawnAI_63.Spawned", "box_SpawnAI_62.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_31_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_31;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1610200661", "1610200661", "MIS_030_B20_MAIN", "box_PlayDialog_v6_31.Finished", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_31_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_31;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1529949172", "1529949172", "MIS_030_B20_MAIN", "box_PlayDialog_v6_31.FinishedInterrupted", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_62_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_65();
    l0 = self.box_SpawnAI_62;
    l1 = self.box_SpawnAI_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1673707185", "1673707185", "MIS_030_B20_MAIN", "box_SpawnAI_62.Spawned", "box_SpawnAI_65.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_26_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_26;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|501640167", "501640167", "MIS_030_B20_MAIN", "box_MessageListener_v3_26.Received", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_47();
    l0 = self.box_MultipleOR_39;
    l1 = self.box_MultipleAND_v2_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|2139185356", "2139185356", "MIS_030_B20_MAIN", "box_MultipleOR_39.Out", "box_MultipleAND_v2_47.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_ProximityTrigger_v3_30_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_5();
    l0 = self.box_ProximityTrigger_v3_30;
    l1 = self.box_ProximityTrigger_v3_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1319925856", "1319925856", "MIS_030_B20_MAIN", "box_ProximityTrigger_v3_30.Enabled", "box_ProximityTrigger_v3_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_30_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_86();
    l0 = self.box_ProximityTrigger_v3_30;
    l1 = self.box_PlayDialog_v6_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|500146538", "500146538", "MIS_030_B20_MAIN", "box_ProximityTrigger_v3_30.Enter", "box_PlayDialog_v6_86.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetTimeOfDay_18_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_ChangeSunOrientation_v4_24();
    l0 = self.box_ChangeSunOrientation_v4_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|611201250", "611201250", "MIS_030_B20_MAIN", "box_SetTimeOfDay_18.Out", "box_ChangeSunOrientation_v4_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_77_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|844854496", "844854496", "MIS_030_B20_MAIN", "box_ActivityObjectiveMarkerModifier_v3_77.Enabled", "box_OutputOrder_v2_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_41_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_104();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|790240881", "790240881", "MIS_030_B20_MAIN", "box_AddActivityObjective_v2_41.Out", "box_ActivityObjectiveMarkerModifier_v3_104.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_57_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_56();
    l0 = self.box_MultipleOR_57;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1613288048", "1613288048", "MIS_030_B20_MAIN", "box_MultipleOR_57.Out", "box_SetContextualStrategy_56.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UIListener_75();
    l0 = self.box_UIListener_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1946490395", "1946490395", "MIS_030_B20_MAIN", "box_OutputOrder_v2_78.Out", "box_UIListener_75.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_76();
    l0 = self.box_PlayDialog_v6_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1802413522", "1802413522", "MIS_030_B20_MAIN", "box_OutputOrder_v2_78.Out", "box_PlayDialog_v6_76.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_56_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1632531138", "1632531138", "MIS_030_B20_MAIN", "box_SetContextualStrategy_56.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_82_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_HealthListener_v6_82;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|123631203", "123631203", "MIS_030_B20_MAIN", "box_HealthListener_v6_82.Killed", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityMiscInfoModifier_v2_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_14();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|856904649", "856904649", "MIS_030_B20_MAIN", "box_ActivityMiscInfoModifier_v2_10.Out", "box_ActivityForceAndLockTracking_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_91();
    l0 = self.box_MultipleOR_37;
    l1 = self.box_Delay_v5_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|2081675491", "2081675491", "MIS_030_B20_MAIN", "box_MultipleOR_37.Out", "box_Delay_v5_91.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_85_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_29();
    l0 = self.box_Delay_v5_85;
    l1 = self.box_PlayDialog_v6_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1699340621", "1699340621", "MIS_030_B20_MAIN", "box_Delay_v5_85.TimeElapsed", "box_PlayDialog_v6_29.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_94_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RadioModifier_v3_93();
    l0 = self.box_EntityStatusListener_94;
    l1 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1701153946", "1701153946", "MIS_030_B20_MAIN", "box_EntityStatusListener_94.Loaded", "box_RadioModifier_v3_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_51_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_42();
    l0 = self.box_Delay_v5_51;
    l1 = self.box_PlayDialog_v6_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|634006044", "634006044", "MIS_030_B20_MAIN", "box_Delay_v5_51.TimeElapsed", "box_PlayDialog_v6_42.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_73_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_106();
    l0 = self.box_Delay_v5_73;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|957365480", "957365480", "MIS_030_B20_MAIN", "box_Delay_v5_73.TimeElapsed", "box_ActivityEnd_106.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_AcquireObject_v6_11_ItemsAcquired()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_52();
    l0 = self.box_Brick_AcquireObject_v6_11;
    l1 = self.box_MultipleAND_v2_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|333331516", "333331516", "MIS_030_B20_MAIN", "box_Brick_AcquireObject_v6_11.ItemsAcquired", "box_MultipleAND_v2_52.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_AcquireObject_v6_60();
    l0 = self.box_Brick_AcquireObject_v6_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|715540228", "715540228", "MIS_030_B20_MAIN", "box_OutputOrder_v2_59.Out", "box_Brick_AcquireObject_v6_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_AcquireObject_v6_11();
    l0 = self.box_Brick_AcquireObject_v6_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|333238742", "333238742", "MIS_030_B20_MAIN", "box_OutputOrder_v2_59.Out", "box_Brick_AcquireObject_v6_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_AddActivityObjective_v2_84_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_120();
    l0 = self.box_ProximityTrigger_v3_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|322725932", "322725932", "MIS_030_B20_MAIN", "box_AddActivityObjective_v2_84.Out", "box_ProximityTrigger_v3_120.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisbandUniqueGunsForHire_20();
    l0 = self.box_MultipleOR_1;
    l1 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|441174553", "441174553", "MIS_030_B20_MAIN", "box_MultipleOR_1.Out", "box_DisbandUniqueGunsForHire_20.RequestDisband", l0:GetLuaBox(), l1:GetLuaBox());
    -- RequestDisband
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_48();
    l0 = self.box_BaseMissionBlock_v2_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|270049067", "270049067", "MIS_030_B20_MAIN", "box_OutputOrder_v2_53.Out", "box_BaseMissionBlock_v2_48.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_74();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1908697106", "1908697106", "MIS_030_B20_MAIN", "box_OutputOrder_v2_53.Out", "box_AddActivityObjective_v2_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RestrictedItemModifier_v2_83_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_13();
    l0 = self.box_RestrictedItemModifier_v2_83;
    l1 = self.box_CharacterLoadedIdListener_v2_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|978870743", "978870743", "MIS_030_B20_MAIN", "box_RestrictedItemModifier_v2_83.Out", "box_CharacterLoadedIdListener_v2_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_5_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_54();
    l0 = self.box_ProximityTrigger_v3_5;
    l1 = self.box_StateListener_v2_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1833210424", "1833210424", "MIS_030_B20_MAIN", "box_ProximityTrigger_v3_5.Enabled", "box_StateListener_v2_54.Investigate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Investigate
    l1:Exec(5, params);
end;

function export:f_box_ProximityTrigger_v3_5_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_5;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1891687046", "1891687046", "MIS_030_B20_MAIN", "box_ProximityTrigger_v3_5.Enter", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_AddActivityObjective_v2_74_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_77();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|291716176", "291716176", "MIS_030_B20_MAIN", "box_AddActivityObjective_v2_74.Out", "box_ActivityObjectiveMarkerModifier_v3_77.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_88_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_47();
    l0 = self.box_MultipleOR_88;
    l1 = self.box_MultipleAND_v2_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1543980150", "1543980150", "MIS_030_B20_MAIN", "box_MultipleOR_88.Out", "box_MultipleAND_v2_47.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_StateListener_v2_58_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_55();
    l0 = self.box_StateListener_v2_58;
    l1 = self.box_HealthListener_v6_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1335117197", "1335117197", "MIS_030_B20_MAIN", "box_StateListener_v2_58.Enabled", "box_HealthListener_v6_55.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StateListener_v2_58_StateStart()
    local l0, l1;
    l0 = self.box_StateListener_v2_58;
    l1 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|65870377", "65870377", "MIS_030_B20_MAIN", "box_StateListener_v2_58.StateStart", "box_MultipleOR_57.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_FastTravelModifier_v2_68_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_18();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1134837379", "1134837379", "MIS_030_B20_MAIN", "box_FastTravelModifier_v2_68.Disabled", "box_SetTimeOfDay_18.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityForceAndLockTracking_14_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_RestrictedItemModifier_v2_83();
    l0 = self.box_RestrictedItemModifier_v2_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1337165454", "1337165454", "MIS_030_B20_MAIN", "box_ActivityForceAndLockTracking_14.Enabled", "box_RestrictedItemModifier_v2_83.AddItemRestriction", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddItemRestriction
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_122_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_41();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|174138981", "174138981", "MIS_030_B20_MAIN", "box_OutputOrder_v2_122.Out", "box_AddActivityObjective_v2_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_122_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_35();
    l0 = self.box_PlayDialog_v6_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|968174752", "968174752", "MIS_030_B20_MAIN", "box_OutputOrder_v2_122.Out", "box_PlayDialog_v6_35.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_122_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_50();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1804993197", "1804993197", "MIS_030_B20_MAIN", "box_OutputOrder_v2_122.Out", "box_UseContextualActionModifier_v3_50.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_28_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_28;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|380591943", "380591943", "MIS_030_B20_MAIN", "box_PlayDialog_v6_28.Finished", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_28_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_28;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|880522364", "880522364", "MIS_030_B20_MAIN", "box_PlayDialog_v6_28.FinishedInterrupted", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_81_Out()
    self:OnExit_box_SetBoolean_v2_81_Out();
end;

function export:f_box_MultipleOR_9_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_9;
    l1 = self.box_OnceOnly_v3_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|392835901", "392835901", "MIS_030_B20_MAIN", "box_MultipleOR_9.Out", "box_OnceOnly_v3_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_79_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_72();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|321832542", "321832542", "MIS_030_B20_MAIN", "box_OutputOrder_v2_79.Out", "box_UseContextualActionModifier_v3_72.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_79_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_73();
    l0 = self.box_Delay_v5_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1452441365", "1452441365", "MIS_030_B20_MAIN", "box_OutputOrder_v2_79.Out", "box_Delay_v5_73.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_105_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_105;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|522159948", "522159948", "MIS_030_B20_MAIN", "box_ProximityTrigger_v3_105.Enter", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_45_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_45;
    l1 = self.box_OnceOnly_v3_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1624541383", "1624541383", "MIS_030_B20_MAIN", "box_MultipleOR_45.Out", "box_OnceOnly_v3_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_92();
    l0 = self.box_MultipleOR_38;
    l1 = self.box_Delay_v5_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1986773367", "1986773367", "MIS_030_B20_MAIN", "box_MultipleOR_38.Out", "box_Delay_v5_92.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_44();
    l0 = self.box_EntityStatusListener_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1645714586", "1645714586", "MIS_030_B20_MAIN", "box_OutputOrder_v2_12.Out", "box_EntityStatusListener_44.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_84();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|72447787", "72447787", "MIS_030_B20_MAIN", "box_OutputOrder_v2_12.Out", "box_AddActivityObjective_v2_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_114();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1620258350", "1620258350", "MIS_030_B20_MAIN", "box_OutputOrder_v2_12.Out", "box_OutputOrder_v2_114.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_19_Out()
    local l0, l1;
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_19;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1853998071", "1853998071", "MIS_030_B20_MAIN", "box_CHEAT_SetEnvironmentTimeScale_19.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_DisbandUniqueGunsForHire_20_RequestFail()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1774568278", "1774568278", "MIS_030_B20_MAIN", "box_DisbandUniqueGunsForHire_20.RequestFail", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_DisbandUniqueGunsForHire_20_RequestSuccess()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1942436050", "1942436050", "MIS_030_B20_MAIN", "box_DisbandUniqueGunsForHire_20.RequestSuccess", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetActivityFact_70_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_94();
    l0 = self.box_EntityStatusListener_94;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1176524054", "1176524054", "MIS_030_B20_MAIN", "box_SetActivityFact_70.Out", "box_EntityStatusListener_94.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_90();
    l0 = self.box_MultipleOR_40;
    l1 = self.box_Delay_v5_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|56498597", "56498597", "MIS_030_B20_MAIN", "box_MultipleOR_40.Out", "box_Delay_v5_90.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GetPlayerGroup_v2_61_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_61_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_112();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1947688868", "1947688868", "MIS_030_B20_MAIN", "box_GetPlayerGroup_v2_61.Out", "box_UseContextualActionModifier_v3_112.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_54_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_58();
    l0 = self.box_StateListener_v2_54;
    l1 = self.box_StateListener_v2_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|967328396", "967328396", "MIS_030_B20_MAIN", "box_StateListener_v2_54.Enabled", "box_StateListener_v2_58.Alert", l0:GetLuaBox(), l1:GetLuaBox());
    -- Alert
    l1:Exec(0, params);
end;

function export:f_box_StateListener_v2_54_StateStart()
    local l0, l1;
    l0 = self.box_StateListener_v2_54;
    l1 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1369289793", "1369289793", "MIS_030_B20_MAIN", "box_StateListener_v2_54.StateStart", "box_MultipleOR_57.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_32_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_32;
    l1 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|497963045", "497963045", "MIS_030_B20_MAIN", "box_PlayDialog_v6_32.Finished", "box_MultipleOR_40.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_32_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_32;
    l1 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|100572288", "100572288", "MIS_030_B20_MAIN", "box_PlayDialog_v6_32.FinishedInterrupted", "box_MultipleOR_40.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ChangeSunOrientation_v4_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_19();
    l0 = self.box_ChangeSunOrientation_v4_24;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1906359070", "1906359070", "MIS_030_B20_MAIN", "box_ChangeSunOrientation_v4_24.Out", "box_CHEAT_SetEnvironmentTimeScale_19.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_65_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_64();
    l0 = self.box_SpawnAI_65;
    l1 = self.box_SpawnAI_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1442554726", "1442554726", "MIS_030_B20_MAIN", "box_SpawnAI_65.Spawned", "box_SpawnAI_64.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_90_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_34();
    l0 = self.box_Delay_v5_90;
    l1 = self.box_PlayDialog_v6_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1157293730", "1157293730", "MIS_030_B20_MAIN", "box_Delay_v5_90.TimeElapsed", "box_PlayDialog_v6_34.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_44_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_26();
    l0 = self.box_EntityStatusListener_44;
    l1 = self.box_MessageListener_v3_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1641737176", "1641737176", "MIS_030_B20_MAIN", "box_EntityStatusListener_44.Enabled", "box_MessageListener_v3_26.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_44_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_105();
    l0 = self.box_EntityStatusListener_44;
    l1 = self.box_ProximityTrigger_v3_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1233864837", "1233864837", "MIS_030_B20_MAIN", "box_EntityStatusListener_44.Loaded", "box_ProximityTrigger_v3_105.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_44_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_105();
    l0 = self.box_EntityStatusListener_44;
    l1 = self.box_ProximityTrigger_v3_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1334975195", "1334975195", "MIS_030_B20_MAIN", "box_EntityStatusListener_44.Unloaded", "box_ProximityTrigger_v3_105.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_91_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_28();
    l0 = self.box_Delay_v5_91;
    l1 = self.box_PlayDialog_v6_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1102771123", "1102771123", "MIS_030_B20_MAIN", "box_Delay_v5_91.TimeElapsed", "box_PlayDialog_v6_28.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_27_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_27;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1830019584", "1830019584", "MIS_030_B20_MAIN", "box_PlayDialog_v6_27.Finished", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_27_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_27;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1648341382", "1648341382", "MIS_030_B20_MAIN", "box_PlayDialog_v6_27.FinishedInterrupted", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_MultipleAND_v2_52()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_35()
    local params;
    params = {
        -- Group,
        [0] = self.Carmina,
        -- RelevancyTime,
        [1] = 100,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2068524891",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_29()
    local params;
    params = {
        -- Group,
        [0] = self.Carmina,
        -- RelevancyTime,
        [1] = 100,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3753889652",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_47()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_UIListener_71()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_120()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109222257705402210",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_42()
    local params;
    params = {
        -- Group,
        [0] = self.Carmina,
        -- RelevancyTime,
        [1] = 100,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "842141055",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_87()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015333852467969",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|210443103");
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

function export:OnEnter_box_Delay_v5_89()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_22()
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

function export:OnEnter_box_ActivityRetry_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|326515872");
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

function export:OnEnter_box_PlayDialog_v6_86()
    local params;
    params = {
        -- Group,
        [0] = self.Carmina,
        -- RelevancyTime,
        [1] = 100,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "916553338",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|364636793");
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

function export:OnEnter_box_SpawnAI_66()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108627258764701058",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_76()
    local params;
    params = {
        -- Group,
        [0] = self.Carmina,
        -- RelevancyTime,
        [1] = 100,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3960593174",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_55()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "#BD035122",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|450147339");
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
                [0] = self.f_box_OutputOrder_v2_114_Out_0,
                [1] = self.f_box_OutputOrder_v2_114_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|451340409");
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

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|462972448");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
                [3] = self.f_box_OutputOrder_v2_3_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_92()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Brick_AcquireObject_v6_60()
    local params;
    params = {
        -- AmountRequired,
        [0] = 40,
        -- bCheckAmountInInventory,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- CompletePreviousObjective,
        [3] = false,
        -- LootItemID,
        [4] = "9015329421722374",
        -- ProtectItemOnSuccess,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_v2_69()
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

function export:OnEnter_box_SpawnAI_67()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109692404589168643",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_80()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160323680656774",
    };
    return params;
end;

function export:OnEnter_box_UIListener_75()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|693761007");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_112_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109221031221676800",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_63()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108693844955502961",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_31()
    local params;
    params = {
        -- Group,
        [0] = self.Carmina,
        -- RelevancyTime,
        [1] = 100,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2374617874",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_62()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108513845556290018",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_26()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "playgodone",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_25()
    local params;
    params = {
        -- Group,
        [0] = self.Carmina,
        -- RelevancyTime,
        [1] = 100,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3848269288",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_30()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109481870952520190",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|849898943");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_18_Out,
    });
    params = {
        -- Hour,
        [0] = 14,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_34()
    local params;
    params = {
        -- Group,
        [0] = self.Carmina,
        -- RelevancyTime,
        [1] = 100,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1251713430",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|897070027");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_77_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2108582975502295332",
        -- ObjectiveId,
        [2] = {
            section = "MIS_030",
            item = "MIS_030_B30_OBJ_OpenWorkbench",
            id = "1029731",
        },
    };
    return params;
end;

function export:OnEnter_box_Print_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|898423636");
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
        [8] = "MIS_030_B20 STARTED",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|936208624");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_41_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_030_B85_OBJ_FindWorkbench",
            id = "1021485",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|961787984");
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
                [0] = self.f_box_OutputOrder_v2_78_Out_0,
                [1] = self.f_box_OutputOrder_v2_78_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|962615104");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_56_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109952307501206777",
        -- Group,
        [1] = "#BD035122",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_82()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.Carmina,
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_48()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160323680656774",
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1036315761");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_10_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1134530504");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2109180400208203136",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_85()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_94()
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

function export:OnEnter_box_Delay_v5_51()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_73()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_Brick_AcquireObject_v6_11()
    local params;
    params = {
        -- AmountRequired,
        [0] = 40,
        -- bCheckAmountInInventory,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- CompletePreviousObjective,
        [3] = false,
        -- LootItemID,
        [4] = "9015329421732983",
        -- ProtectItemOnSuccess,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1312961067");
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

function export:OnEnter_box_AddActivityObjective_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1362427178");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_84_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_030_B85_OBJ_ReachHope",
            id = "1018966",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_15()
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1397192760");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2109222048040530328",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_030_B85_OBJ_FindWorkbench",
            id = "1021485",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1438300626");
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

function export:OnEnter_box_RestrictedItemModifier_v2_83()
    local params;
    params = {
        -- allowedItemFilterID,
        [1] = "9015356267264662",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109276575355645848",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1484020567");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_74_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "MIS_030",
            item = "MIS_030_B30_OBJ_OpenWorkbench",
            id = "1029731",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_58()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#BD035122",
    };
    return params;
end;

function export:OnEnter_box_FastTravelModifier_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/FastTravelModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FastTravelModifier_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1526937615");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_FastTravelModifier_v2_68_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1621865843");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_14_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_64()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109705351744985337",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1629525079");
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
                [0] = self.f_box_OutputOrder_v2_122_Out_0,
                [1] = self.f_box_OutputOrder_v2_122_Out_1,
                [2] = self.f_box_OutputOrder_v2_122_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_28()
    local params;
    params = {
        -- Group,
        [0] = self.Carmina,
        -- RelevancyTime,
        [1] = 100,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "4181123795",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1640802571");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_81_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1698788261");
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
                [0] = self.f_box_OutputOrder_v2_79_Out_0,
                [1] = self.f_box_OutputOrder_v2_79_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_105()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108530804236759253",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1745829937");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1762065845");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
                [2] = self.f_box_OutputOrder_v2_12_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_19()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_DisbandUniqueGunsForHire_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DisbandUniqueGunsForHire.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisbandUniqueGunsForHire_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1798537674");
    l0:SetConnections({
        -- RequestFail,
        [0] = self.f_box_DisbandUniqueGunsForHire_20_RequestFail,
        -- RequestSuccess,
        [1] = self.f_box_DisbandUniqueGunsForHire_20_RequestSuccess,
    });
    params = {
        -- uniqueCharacterDesc,
        [1] = "9015333852467969",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1840969918");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_70_Out,
    });
    params = {
        -- Fact,
        [0] = "mis_030_b20_skipmine",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1924804285");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_61_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_54()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#BD035122",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_030\\MIS_030_B20.domino|@MIS_030_B20_MAIN|1996952727");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2109689265293104600",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_32()
    local params;
    params = {
        -- Group,
        [0] = self.Carmina,
        -- RelevancyTime,
        [1] = 100,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "4128453215",
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_24()
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

function export:OnEnter_box_SpawnAI_65()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109870907561365180",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_90()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_44()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108530804236759253",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_91()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_27()
    local params;
    params = {
        -- Group,
        [0] = self.Carmina,
        -- RelevancyTime,
        [1] = 100,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1317550056",
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_13_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_13;
    self.Carmina = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_81_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.MIS_030_B20.RessourcesGathered = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_61_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
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
