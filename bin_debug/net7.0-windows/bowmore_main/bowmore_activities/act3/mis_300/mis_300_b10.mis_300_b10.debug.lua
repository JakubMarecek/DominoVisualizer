LUACv -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_300/mis_300_b10.domino
-- User graph: MIS_300_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/System/UnlockDoor.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.FailReasonAndObjEnd.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.HostageSetupHealthBeforeObjB10.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.HostagesLiberationB10.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.LOOK_IN_TANK.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.MakeGatesUndestructable.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.Particles.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.RadioCall.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.SetGlobalBoolsB10.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2611405624.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1010884879.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1046779607.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1901908958.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2917624363.bnk]], "CSoundResource");
        cboxRes:LoadResource([[36674735.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3977670810.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_300_B10 = nil;
    Globals.MIS_300_B10 = {
        bBreakersDone = false,
        bTankDone = false,
        bHostageAllDead = false,
        gPlayerGroup = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.MIS_300_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua")] = {
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
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "b_CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "b_EntityIsProximityTrigger",
                type = "bool",
            },
            [2] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [3] = {
                name = "e_EntityToInteractWith",
                type = "entity",
            },
            [4] = {
                name = "e_ObjectiveMarker",
                type = "entity",
            },
            [5] = {
                name = "InteractionHUD",
                type = "oasis",
            },
            [6] = {
                name = "o_ObjectiveText",
                type = "oasis",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "eInteractor",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua")] = {
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
                name = "FailingZoneEntered",
                delayed = true,
            },
            [1] = {
                name = "WarningZoneEntered",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bShowUI",
                type = "bool",
            },
            [1] = {
                name = "CoopFailRequiresAllPlayer",
                type = "bool",
            },
            [2] = {
                name = "FailingZoneTrigger",
                type = "entity",
            },
            [3] = {
                name = "WarningZoneTrigger",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "CurrentWarnedPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua")] = {
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
                name = "Detected",
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
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "group",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveTimerListener.lua")] = {
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
                name = "OnTime",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "Time",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/LookAtTrigger_v2.lua")] = {
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
                name = "EnterFOV",
                delayed = true,
            },
            [3] = {
                name = "LeaveFOV",
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
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "LookingPawn",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Player/PhoneCallExclusivityModifier.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Player/RequestPhoneCall_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Canceled",
                delayed = true,
            },
            [1] = {
                name = "Completed",
                delayed = true,
            },
            [2] = {
                name = "Failed",
                delayed = true,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
            [4] = {
                name = "Pending",
                delayed = true,
            },
            [5] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "CustomRingInSound",
                type = "Sound",
            },
            [1] = {
                name = "CustomRingOutSound",
                type = "Sound",
            },
            [2] = {
                name = "Delay",
                type = "float",
            },
            [3] = {
                name = "NoDeadair",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/UI/DisplayCustomUIMsg_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "MessageId",
                type = "oasis",
            },
            [1] = {
                name = "MessageType",
                type = "int",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.FailReasonAndObjEnd.debug.lua")] = {
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
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.HostageSetupHealthBeforeObjB10.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "TooMuchDead",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "eIsHostage1",
                type = "entity",
            },
            [1] = {
                name = "eIsHostage2",
                type = "entity",
            },
            [2] = {
                name = "eIsHostage3",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.HostagesLiberationB10.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = false,
            },
            [1] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "eHost1",
                type = "entity",
            },
            [1] = {
                name = "eHost2",
                type = "entity",
            },
            [2] = {
                name = "eHost3",
                type = "entity",
            },
            [3] = {
                name = "eHostMarker1",
                type = "entity",
            },
            [4] = {
                name = "eHostMarker2",
                type = "entity",
            },
            [5] = {
                name = "eHostMarker3",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.LOOK_IN_TANK.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Bypass",
            },
            [1] = {
                name = "In",
            },
            [2] = {
                name = "PlayerHaveKey",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
            [1] = {
                name = "SuccessWithKey",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "eLookTrigger",
                type = "entity",
            },
            [1] = {
                name = "eObjMarker",
                type = "entity",
            },
            [2] = {
                name = "oObjective",
                type = "oasis",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.MakeGatesUndestructable.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.Particles.debug.lua")] = {
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
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.RadioCall.debug.lua")] = {
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
            [1] = {
                name = "Started",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.SetGlobalBoolsB10.debug.lua")] = {
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
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_300_B10";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10";
    self.ePlayer = nil;
    self.gPlayerGroup = nil;
    self.LiberatedWithKey = false;
    self.box_Brick_Interact_With_Object_V6_126 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V6_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V6_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|63147396");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_Brick_Interact_With_Object_V6_126_Disabled,
        -- Started,
        [1] = self.f_box_Brick_Interact_With_Object_V6_126_Started,
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V6_126_Success,
    });
    self.box_Brick_AcquireObject_v6_99 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua");
    l0 = self.box_Brick_AcquireObject_v6_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v6_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|162873194");
    l0:SetConnections({
        -- ItemsAcquired,
        [0] = self.f_box_Brick_AcquireObject_v6_99_ItemsAcquired,
    });
    self.box_OnceOnly_v3_105 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|217664270");
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
                [0] = self.f_box_OnceOnly_v3_105_Out_0,
            },
            count = 2,
        },
    });
    self.box_LookAtTrigger_v2_50 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|237762250");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_50_EnterFOV,
    });
    self.box_OnceOnly_v3_57 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|245797628");
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
                [0] = self.f_box_OnceOnly_v3_57_Out_0,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_72 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|433548886");
    l0:SetConnections({
    });
    self.box_HostageSetupHealthBeforeObjB10_27 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.HostageSetupHealthBeforeObjB10.debug.lua");
    l0 = self.box_HostageSetupHealthBeforeObjB10_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HostageSetupHealthBeforeObjB10_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|459316198");
    l0:SetConnections({
        -- TooMuchDead,
        [0] = self.f_box_HostageSetupHealthBeforeObjB10_27_TooMuchDead,
    });
    self.box_RequestPhoneCall_v2_81 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|516772696");
    l0:SetConnections({
    });
    self.box_DisplayCustomUIMsg_v5_53 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|516896393");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_53_OnDisplay,
    });
    self.box_Delay_v5_90 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|526353679");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_90_TimeElapsed,
    });
    self.box_MultipleOR_83 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|591253712");
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
    self.box_Delay_v5_79 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|592603364");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_79_TimeElapsed,
    });
    self.box_Delay_v5_76 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|607896433");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_76_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_155 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|650007944");
    l0:SetConnections({
    });
    self.box_Delay_v5_73 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|754612097");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_73_TimeElapsed,
    });
    self.box_MultipleOR_128 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|767323060");
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
        [0] = self.f_box_MultipleOR_128_Out,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|796750856");
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
        [0] = self.f_box_MultipleOR_10_Out,
    });
    self.box_SoundModifier_v2_82 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|845761854");
    l0:SetConnections({
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|891275751");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_Delay_v5_60 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|969092446");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_60_TimeElapsed,
    });
    self.box_RadioCall_22 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.RadioCall.debug.lua");
    l0 = self.box_RadioCall_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioCall_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|994663505");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioCall_22_Out,
    });
    self.box_PhoneCallExclusivityModifier_2 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1026963318");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_2_Enabled,
    });
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1043235232");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_MultipleOR_95 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1057285940");
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
        [0] = self.f_box_MultipleOR_95_Out,
    });
    self.box_Music_Quest_v2_119 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1067293990");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_42 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1095708655");
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
                [0] = self.f_box_OnceOnly_v3_42_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_65 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1099548525");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_65_Loaded,
    });
    self.box_Music_Quest_v2_120 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1215673067");
    l0:SetConnections({
    });
    self.box_PlayerFullyDetected_98 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1260239531");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_98_Detected,
    });
    self.box_FailReasonAndObjEnd_23 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.FailReasonAndObjEnd.debug.lua");
    l0 = self.box_FailReasonAndObjEnd_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FailReasonAndObjEnd_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1285234346");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FailReasonAndObjEnd_23_Out,
    });
    self.box_ActivityObjectiveTimerListener_29 = cbox:CreateBox("Domino/System/Activity/ActivityObjectiveTimerListener.lua");
    l0 = self.box_ActivityObjectiveTimerListener_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveTimerListener_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1347789395");
    l0:SetConnections({
        -- OnTime,
        [2] = self.f_box_ActivityObjectiveTimerListener_29_OnTime,
    });
    self.box_MultipleOR_125 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1407303447");
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
        [0] = self.f_box_MultipleOR_125_Out,
    });
    self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1423416233");
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
    self.box_MultipleOR_156 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1442488847");
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
        [0] = self.f_box_MultipleOR_156_Out,
    });
    self.box_Particles_77 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.Particles.debug.lua");
    l0 = self.box_Particles_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Particles_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1528826126");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Particles_77_Out,
    });
    self.box_Gate_v3_153 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1531390688");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_153_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_153_Out,
    });
    self.box_HostagesLiberationB10_71 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.HostagesLiberationB10.debug.lua");
    l0 = self.box_HostagesLiberationB10_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HostagesLiberationB10_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1551701764");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_HostagesLiberationB10_71_Fail,
        -- Success,
        [1] = self.f_box_HostagesLiberationB10_71_Success,
    });
    self.box_Gate_v3_68 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1560264994");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_68_Out,
    });
    self.box_ExitZoneWarningListener_v3_51 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1575535709");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_51_FailingZoneEntered,
    });
    self.box_MakeGatesUndestructable_89 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.MakeGatesUndestructable.debug.lua");
    l0 = self.box_MakeGatesUndestructable_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MakeGatesUndestructable_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1589490100");
    l0:SetConnections({
    });
    self.box_MultipleOR_104 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1614647034");
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
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1650329525");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_InventoryItemModifier_115 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1661879404");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_115_Out,
    });
    self.box_MultipleOR_107 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1670611485");
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
        [0] = self.f_box_MultipleOR_107_Out,
    });
    self.box_OnceOnly_v3_158 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1672982979");
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
                [0] = self.f_box_OnceOnly_v3_158_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1710395447");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_MultipleOR_84 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1717959845");
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
        [0] = self.f_box_MultipleOR_84_Out,
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1749540987");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_Delay_v5_154 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1768249398");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_154_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_154_TimeElapsed,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1775872513");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_Music_Quest_v2_122 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1793893497");
    l0:SetConnections({
    });
    self.box_MultipleOR_85 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1830811284");
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
        [0] = self.f_box_MultipleOR_85_Out,
    });
    self.box_OnceOnly_v3_32 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1852000429");
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
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1853543483");
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
        [0] = self.f_box_MultipleOR_19_Out,
    });
    self.box_SoundModifier_v2_78 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1880143755");
    l0:SetConnections({
    });
    self.box_SetGlobalBoolsB10_16 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.SetGlobalBoolsB10.debug.lua");
    l0 = self.box_SetGlobalBoolsB10_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGlobalBoolsB10_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1897249395");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGlobalBoolsB10_16_Out,
    });
    self.box_Music_Quest_v2_117 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1933283460");
    l0:SetConnections({
    });
    self.box_LOOK_IN_TANK_5 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.LOOK_IN_TANK.debug.lua");
    l0 = self.box_LOOK_IN_TANK_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LOOK_IN_TANK_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1939757997");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LOOK_IN_TANK_5_Out,
        -- SuccessWithKey,
        [1] = self.f_box_LOOK_IN_TANK_5_SuccessWithKey,
    });
    self.box_OnceOnly_v3_86 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1943169141");
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
    self.box_Delay_v5_62 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2001140185");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_62_TimeElapsed,
    });
    self.box_OnceOnly_v3_103 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2023296134");
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
                [0] = self.f_box_OnceOnly_v3_103_Out_0,
            },
            count = 2,
        },
    });
    self.box_FailReasonAndObjEnd_70 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.FailReasonAndObjEnd.debug.lua");
    l0 = self.box_FailReasonAndObjEnd_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FailReasonAndObjEnd_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2031253328");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FailReasonAndObjEnd_70_Out,
    });
    self.box_Brick_Interact_With_Object_V6_21 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V6_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V6_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2070778649");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Brick_Interact_With_Object_V6_21_Started,
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V6_21_Success,
    });
    self.box_MultipleOR_102 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2121224292");
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
        [0] = self.f_box_MultipleOR_102_Out,
    });
    self.box_ActivityInitialized_7 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2135439196");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_7_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|260622464", "260622464", "MIS_300_B10", "In", "box_OutputOrder_v2_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Simple_Node_113_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1568971311", "1568971311", "MIS_300_B10", "box_Simple_Node_113.Out", "box_OnceOnly_v3_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_69_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_68();
    l0 = self.box_Gate_v3_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1305495745", "1305495745", "MIS_300_B10", "box_Simple_Node_69.Out", "box_Gate_v3_68.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_64_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_118();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1330779857", "1330779857", "MIS_300_B10", "box_Simple_Node_64.Out", "box_OutputOrder_v2_118.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_88_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_73();
    l0 = self.box_Delay_v5_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|556877026", "556877026", "MIS_300_B10", "box_Simple_Node_88.Out", "box_Delay_v5_73.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_Delay_v5_79();
    l0 = self.box_Delay_v5_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|271358627", "271358627", "MIS_300_B10", "box_Simple_Node_88.Out", "box_Delay_v5_79.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_96_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LOOK_IN_TANK_5();
    l0 = self.box_LOOK_IN_TANK_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|864249020", "864249020", "MIS_300_B10", "box_Simple_Node_96.Out", "box_LOOK_IN_TANK_5.PlayerHaveKey", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayerHaveKey
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_101_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1532558798", "1532558798", "MIS_300_B10", "box_Simple_Node_101.Out", "box_OnceOnly_v3_158.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_100_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_87();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1941993272", "1941993272", "MIS_300_B10", "box_Simple_Node_100.Out", "box_OutputOrder_v2_87.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_110_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_156;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|836061056", "836061056", "MIS_300_B10", "box_Simple_Node_110.Out", "box_MultipleOR_156.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1010409749", "1010409749", "MIS_300_B10", "box_Simple_Node_110.Out", "box_MultipleOR_83.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|453855565", "453855565", "MIS_300_B10", "box_Simple_Node_110.Out", "box_MultipleOR_85.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|886476087", "886476087", "MIS_300_B10", "box_Simple_Node_110.Out", "box_MultipleOR_107.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1366587954", "1366587954", "MIS_300_B10", "box_Simple_Node_110.Out", "box_MultipleOR_84.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|409882676", "409882676", "MIS_300_B10", "box_Simple_Node_110.Out", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_109_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|130100954", "130100954", "MIS_300_B10", "box_Simple_Node_109.Out", "box_MultipleOR_104.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|961552087", "961552087", "MIS_300_B10", "box_Simple_Node_8.Out", "box_MultipleOR_84.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|112150943", "112150943", "MIS_300_B10", "box_Simple_Node_8.Out", "box_MultipleOR_83.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1945563059", "1945563059", "MIS_300_B10", "box_Simple_Node_8.Out", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
    l0 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|212631284", "212631284", "MIS_300_B10", "box_Simple_Node_8.Out", "box_MultipleOR_85.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_156;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|899232291", "899232291", "MIS_300_B10", "box_Simple_Node_8.Out", "box_MultipleOR_156.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_94_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_33();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|237339169", "237339169", "MIS_300_B10", "box_Compare_Boolean_94.A_is_False", "box_EndActivityObjective_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_94_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1252103391", "1252103391", "MIS_300_B10", "box_Compare_Boolean_94.A_is_True", "box_MultipleOR_95.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_AddActivityObjective_v2_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_80();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|517044393", "517044393", "MIS_300_B10", "box_AddActivityObjective_v2_31.Out", "box_OutputOrder_v2_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V6_126_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_21();
    l0 = self.box_Brick_Interact_With_Object_V6_126;
    l1 = self.box_Brick_Interact_With_Object_V6_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1936417054", "1936417054", "MIS_300_B10", "box_Brick_Interact_With_Object_V6_126.Disabled", "box_Brick_Interact_With_Object_V6_21.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Brick_Interact_With_Object_V6_126_Started()
    local l0, l1;
    l0 = self.box_Brick_Interact_With_Object_V6_126;
    l1 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1460319845", "1460319845", "MIS_300_B10", "box_Brick_Interact_With_Object_V6_126.Started", "box_MultipleOR_128.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Interact_With_Object_V6_126_Success()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityForceAndLockTracking_93();
    l0 = self.box_Brick_Interact_With_Object_V6_126;
    l1 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|105582216", "105582216", "MIS_300_B10", "box_Brick_Interact_With_Object_V6_126.Success", "box_ActivityForceAndLockTracking_93.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_AcquireObject_v6_99_ItemsAcquired()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = self.box_Brick_AcquireObject_v6_99;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|373753377", "373753377", "MIS_300_B10", "box_Brick_AcquireObject_v6_99.ItemsAcquired", "box_OutputOrder_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityForceAndLockTracking_91_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_53();
    l0 = self.box_DisplayCustomUIMsg_v5_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1457458911", "1457458911", "MIS_300_B10", "box_ActivityForceAndLockTracking_91.Enabled", "box_DisplayCustomUIMsg_v5_53.Display", clone:GetLuaBox(), l0:GetLuaBox());
    -- Display
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_SetGlobalBoolsB10_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|960385906", "960385906", "MIS_300_B10", "box_OutputOrder_v2_46.Out", "box_SetGlobalBoolsB10_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_AcquireObject_v6_99();
    l0 = self.box_Brick_AcquireObject_v6_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|136923038", "136923038", "MIS_300_B10", "box_OutputOrder_v2_46.Out", "box_Brick_AcquireObject_v6_99.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_EndActivityObjective_v2_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|15671673", "15671673", "MIS_300_B10", "box_EndActivityObjective_v2_45.Out", "box_MultipleOR_102.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_105_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_35();
    l0 = self.box_OnceOnly_v3_105;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|131178595", "131178595", "MIS_300_B10", "box_OnceOnly_v3_105.Out", "box_Compare_Boolean_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|896588443", "896588443", "MIS_300_B10", "box_OutputOrder_v2_1.Out", "box_ActivityAcknowledgeGate_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MakeGatesUndestructable_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1139280523", "1139280523", "MIS_300_B10", "box_OutputOrder_v2_1.Out", "box_MakeGatesUndestructable_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_12();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|8509491", "8509491", "MIS_300_B10", "box_OutputOrder_v2_1.Out", "box_Print_v2_12.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LookAtTrigger_v2_50_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = self.box_LookAtTrigger_v2_50;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|505657867", "505657867", "MIS_300_B10", "box_LookAtTrigger_v2_50.EnterFOV", "box_OutputOrder_v2_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_57_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_53();
    l0 = self.box_OnceOnly_v3_57;
    l1 = self.box_DisplayCustomUIMsg_v5_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|111702324", "111702324", "MIS_300_B10", "box_OnceOnly_v3_57.Out", "box_DisplayCustomUIMsg_v5_53.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_160();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|391993765", "391993765", "MIS_300_B10", "box_OutputOrder_v2_75.Out", "box_UnlockDoor_160.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_40();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1142084094", "1142084094", "MIS_300_B10", "box_OutputOrder_v2_75.Out", "box_ParticleSystem_v3_40.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UnlockDoor_127_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_129();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1333500199", "1333500199", "MIS_300_B10", "box_UnlockDoor_127.Unlocked", "box_SetBoolean_v2_129.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_6_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_14();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1224526641", "1224526641", "MIS_300_B10", "box_GetLocalPlayer_v2_6.Out", "box_GetPlayerGroup_v2_14.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|957832781", "957832781", "MIS_300_B10", "box_OutputOrder_v2_52.Out", "box_Simple_Node_100.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1138181715", "1138181715", "MIS_300_B10", "box_OutputOrder_v2_52.Out", "box_OnceOnly_v3_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_52_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_37();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1550414932", "1550414932", "MIS_300_B10", "box_OutputOrder_v2_52.Out", "box_SetBoolean_v2_37.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_69();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|808399819", "808399819", "MIS_300_B10", "box_OutputOrder_v2_20.Out", "box_Simple_Node_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_38();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1445426386", "1445426386", "MIS_300_B10", "box_OutputOrder_v2_20.Out", "box_StaticBreakableBreaker_38.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1502171592", "1502171592", "MIS_300_B10", "box_OutputOrder_v2_20.Out", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HostageSetupHealthBeforeObjB10_27_TooMuchDead()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_HostageSetupHealthBeforeObjB10_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1505939661", "1505939661", "MIS_300_B10", "box_HostageSetupHealthBeforeObjB10_27.TooMuchDead", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DisplayCustomUIMsg_v5_53_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_DisplayCustomUIMsg_v5_53;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1835064475", "1835064475", "MIS_300_B10", "box_DisplayCustomUIMsg_v5_53.OnDisplay", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_90_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_126();
    l0 = self.box_Delay_v5_90;
    l1 = self.box_Brick_Interact_With_Object_V6_126;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|792934400", "792934400", "MIS_300_B10", "box_Delay_v5_90.TimeElapsed", "box_Brick_Interact_With_Object_V6_126.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_15_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_17();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|431897683", "431897683", "MIS_300_B10", "box_ActivityObjectiveMarkerModifier_v3_15.Disabled", "box_ActivityObjectiveMarkerModifier_v3_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_124_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_60();
    l0 = self.box_Delay_v5_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1318138096", "1318138096", "MIS_300_B10", "box_OutputOrder_v2_124.Out", "box_Delay_v5_60.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_124_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|717594260", "717594260", "MIS_300_B10", "box_OutputOrder_v2_124.Out", "box_MultipleOR_125.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_83_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_82();
    l0 = self.box_MultipleOR_83;
    l1 = self.box_SoundModifier_v2_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|921103330", "921103330", "MIS_300_B10", "box_MultipleOR_83.Out", "box_SoundModifier_v2_82.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_79_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_78();
    l0 = self.box_Delay_v5_79;
    l1 = self.box_SoundModifier_v2_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|49274056", "49274056", "MIS_300_B10", "box_Delay_v5_79.TimeElapsed", "box_SoundModifier_v2_78.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_76_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_44();
    l0 = self.box_Delay_v5_76;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|355243690", "355243690", "MIS_300_B10", "box_Delay_v5_76.TimeElapsed", "box_ParticleSystem_v3_44.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_49_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1149709553", "1149709553", "MIS_300_B10", "box_EndActivityObjective_v2_49.Out", "box_Delay_v5_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2089767522", "2089767522", "MIS_300_B10", "box_OutputOrder_v2_26.Out", "box_MultipleOR_107.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_8();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1788695051", "1788695051", "MIS_300_B10", "box_OutputOrder_v2_26.Out", "box_Simple_Node_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_96();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|151685721", "151685721", "MIS_300_B10", "box_OutputOrder_v2_54.Out", "box_Simple_Node_96.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_92();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|214844424", "214844424", "MIS_300_B10", "box_OutputOrder_v2_54.Out", "box_ActivityForceAndLockTracking_92.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_73_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_72();
    l0 = self.box_Delay_v5_73;
    l1 = self.box_SoundModifier_v2_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1090318231", "1090318231", "MIS_300_B10", "box_Delay_v5_73.TimeElapsed", "box_SoundModifier_v2_72.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_128_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_120();
    l0 = self.box_MultipleOR_128;
    l1 = self.box_Music_Quest_v2_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|176443977", "176443977", "MIS_300_B10", "box_MultipleOR_128.Out", "box_Music_Quest_v2_120.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_MultipleOR_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1552669394", "1552669394", "MIS_300_B10", "box_MultipleOR_10.Out", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_61();
    l0 = self.box_Delay_v5_18;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1667583923", "1667583923", "MIS_300_B10", "box_Delay_v5_18.TimeElapsed", "box_ActivityRetry_v2_61.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_118_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_119();
    l0 = self.box_Music_Quest_v2_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|324855772", "324855772", "MIS_300_B10", "box_OutputOrder_v2_118.Out", "box_Music_Quest_v2_119.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_118_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1028733543", "1028733543", "MIS_300_B10", "box_OutputOrder_v2_118.Out", "box_ActivityRetry_v2_9.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_62();
    l0 = self.box_Delay_v5_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|743981241", "743981241", "MIS_300_B10", "box_OutputOrder_v2_59.Out", "box_Delay_v5_62.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_50();
    l0 = self.box_LookAtTrigger_v2_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2018616599", "2018616599", "MIS_300_B10", "box_OutputOrder_v2_59.Out", "box_LookAtTrigger_v2_50.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_60_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_67();
    l0 = self.box_Delay_v5_60;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|193700135", "193700135", "MIS_300_B10", "box_Delay_v5_60.TimeElapsed", "box_ActivityRetry_v2_67.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RadioCall_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_66();
    l0 = self.box_RadioCall_22;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|315335668", "315335668", "MIS_300_B10", "box_RadioCall_22.Out", "box_OutputOrder_v2_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_2_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_6();
    l0 = self.box_PhoneCallExclusivityModifier_2;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|813038408", "813038408", "MIS_300_B10", "box_PhoneCallExclusivityModifier_2.Enabled", "box_GetLocalPlayer_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_30;
    l1 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1183880401", "1183880401", "MIS_300_B10", "box_Delay_v5_30.TimeElapsed", "box_MultipleOR_104.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityMiscInfoModifier_v2_74_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|121380804", "121380804", "MIS_300_B10", "box_ActivityMiscInfoModifier_v2_74.Out", "box_PhoneCallExclusivityModifier_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_126();
    l0 = self.box_Brick_Interact_With_Object_V6_126;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2132611806", "2132611806", "MIS_300_B10", "box_OutputOrder_v2_11.Out", "box_Brick_Interact_With_Object_V6_126.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_RadioCall_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1477095464", "1477095464", "MIS_300_B10", "box_OutputOrder_v2_11.Out", "box_RadioCall_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HostageSetupHealthBeforeObjB10_27();
    l0 = self.box_HostageSetupHealthBeforeObjB10_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1941365421", "1941365421", "MIS_300_B10", "box_OutputOrder_v2_11.Out", "box_HostageSetupHealthBeforeObjB10_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_98();
    l0 = self.box_PlayerFullyDetected_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1117888265", "1117888265", "MIS_300_B10", "box_OutputOrder_v2_11.Out", "box_PlayerFullyDetected_98.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_117();
    l0 = self.box_Music_Quest_v2_117;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|342766311", "342766311", "MIS_300_B10", "box_OutputOrder_v2_11.Out", "box_Music_Quest_v2_117.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_95_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_115();
    l0 = self.box_MultipleOR_95;
    l1 = self.box_InventoryItemModifier_115;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1580380695", "1580380695", "MIS_300_B10", "box_MultipleOR_95.Out", "box_InventoryItemModifier_115.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_42_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_LOOK_IN_TANK_5();
    l0 = self.box_OnceOnly_v3_42;
    l1 = self.box_LOOK_IN_TANK_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1795946020", "1795946020", "MIS_300_B10", "box_OnceOnly_v3_42.Out", "box_LOOK_IN_TANK_5.Bypass", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bypass
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_65_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_47();
    l0 = self.box_EntityStatusListener_65;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|349922614", "349922614", "MIS_300_B10", "box_EntityStatusListener_65.Loaded", "box_VehicleModifier_v2_47.SetEngineDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEngineDisabled
    l1:Exec(12, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_129_Out()
    self:OnExit_box_SetBoolean_v2_129_Out();
end;

function export:f_box_ActivityForceAndLockTracking_93_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_141();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|316361813", "316361813", "MIS_300_B10", "box_ActivityForceAndLockTracking_93.Enabled", "box_OutputOrder_v2_141.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_38_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|940164534", "940164534", "MIS_300_B10", "box_StaticBreakableBreaker_38.Destroyed", "box_Delay_v5_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetPlayerGroup_v2_14_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|218601913", "218601913", "MIS_300_B10", "box_GetPlayerGroup_v2_14.Out", "box_OutputOrder_v2_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayerFullyDetected_98_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_97();
    l0 = self.box_PlayerFullyDetected_98;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|387907967", "387907967", "MIS_300_B10", "box_PlayerFullyDetected_98.Detected", "box_SetContextualStrategy_97.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_58_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_58_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_45();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|477170405", "477170405", "MIS_300_B10", "box_SetBoolean_v2_58.Out", "box_EndActivityObjective_v2_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_33_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1512015180", "1512015180", "MIS_300_B10", "box_EndActivityObjective_v2_33.Out", "box_MultipleOR_95.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_FailReasonAndObjEnd_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_123();
    l0 = self.box_FailReasonAndObjEnd_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1342166349", "1342166349", "MIS_300_B10", "box_FailReasonAndObjEnd_23.Out", "box_OutputOrder_v2_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_37_Out()
    self:OnExit_box_SetBoolean_v2_37_Out();
end;

function export:f_box_ParticleSystem_v3_39_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_76();
    l0 = self.box_Delay_v5_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|219339172", "219339172", "MIS_300_B10", "box_ParticleSystem_v3_39.Stopped", "box_Delay_v5_76.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ActivityObjectiveTimerListener_29_OnTime()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_ActivityObjectiveTimerListener_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|267694101", "267694101", "MIS_300_B10", "box_ActivityObjectiveTimerListener_29.OnTime", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_66_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LOOK_IN_TANK_5();
    l0 = self.box_LOOK_IN_TANK_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2124889164", "2124889164", "MIS_300_B10", "box_OutputOrder_v2_66.Out", "box_LOOK_IN_TANK_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_66_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_51();
    l0 = self.box_ExitZoneWarningListener_v3_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|578612982", "578612982", "MIS_300_B10", "box_OutputOrder_v2_66.Out", "box_ExitZoneWarningListener_v3_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_87_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_31();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2142545031", "2142545031", "MIS_300_B10", "box_OutputOrder_v2_87.Out", "box_AddActivityObjective_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_87_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_154();
    l0 = self.box_Delay_v5_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|25028412", "25028412", "MIS_300_B10", "box_OutputOrder_v2_87.Out", "box_Delay_v5_154.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_15();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1794552998", "1794552998", "MIS_300_B10", "box_OutputOrder_v2_43.Out", "box_ActivityObjectiveMarkerModifier_v3_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_155();
    l0 = self.box_RequestPhoneCall_v2_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1890751313", "1890751313", "MIS_300_B10", "box_OutputOrder_v2_43.Out", "box_RequestPhoneCall_v2_155.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_125_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_122();
    l0 = self.box_MultipleOR_125;
    l1 = self.box_Music_Quest_v2_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1526681430", "1526681430", "MIS_300_B10", "box_MultipleOR_125.Out", "box_Music_Quest_v2_122.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_56_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_56;
    l1 = self.box_OnceOnly_v3_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1369932491", "1369932491", "MIS_300_B10", "box_MultipleOR_56.Out", "box_OnceOnly_v3_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_123_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1143673117", "1143673117", "MIS_300_B10", "box_OutputOrder_v2_123.Out", "box_MultipleOR_125.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_123_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1464136489", "1464136489", "MIS_300_B10", "box_OutputOrder_v2_123.Out", "box_Delay_v5_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_156_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_156;
    l1 = self.box_OnceOnly_v3_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|753862861", "753862861", "MIS_300_B10", "box_MultipleOR_156.Out", "box_OnceOnly_v3_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_35_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_94();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1742821822", "1742821822", "MIS_300_B10", "box_Compare_Boolean_35.A_is_False", "box_Compare_Boolean_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_35_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_49();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1337552022", "1337552022", "MIS_300_B10", "box_Compare_Boolean_35.A_is_True", "box_EndActivityObjective_v2_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Particles_77_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_74();
    l0 = self.box_Particles_77;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2025428512", "2025428512", "MIS_300_B10", "box_Particles_77.Out", "box_ActivityMiscInfoModifier_v2_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_153_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_155();
    l0 = self.box_Gate_v3_153;
    l1 = self.box_RequestPhoneCall_v2_155;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1248632709", "1248632709", "MIS_300_B10", "box_Gate_v3_153.Closed", "box_RequestPhoneCall_v2_155.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_153_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = self.box_Gate_v3_153;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|537812223", "537812223", "MIS_300_B10", "box_Gate_v3_153.Out", "box_OutputOrder_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HostagesLiberationB10_71_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_68();
    l0 = self.box_HostagesLiberationB10_71;
    l1 = self.box_Gate_v3_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|643705722", "643705722", "MIS_300_B10", "box_HostagesLiberationB10_71.Fail", "box_Gate_v3_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_HostagesLiberationB10_71_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_106();
    l0 = self.box_HostagesLiberationB10_71;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1062156446", "1062156446", "MIS_300_B10", "box_HostagesLiberationB10_71.Success", "box_OutputOrder_v2_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_68_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_68;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2043021740", "2043021740", "MIS_300_B10", "box_Gate_v3_68.Out", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ExitZoneWarningListener_v3_51_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = self.box_ExitZoneWarningListener_v3_51;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1103999338", "1103999338", "MIS_300_B10", "box_ExitZoneWarningListener_v3_51.FailingZoneEntered", "box_Simple_Node_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_24_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_HostagesLiberationB10_71();
    l0 = self.box_HostagesLiberationB10_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1303617255", "1303617255", "MIS_300_B10", "box_Compare_Boolean_24.A_is_False", "box_HostagesLiberationB10_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Boolean_24_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|118977960", "118977960", "MIS_300_B10", "box_Compare_Boolean_24.A_is_True", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_104_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_104;
    l1 = self.box_OnceOnly_v3_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2365010", "2365010", "MIS_300_B10", "box_MultipleOR_104.Out", "box_OnceOnly_v3_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_90();
    l0 = self.box_Delay_v5_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|719839601", "719839601", "MIS_300_B10", "box_OutputOrder_v2_36.Out", "box_Delay_v5_90.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_50();
    l0 = self.box_LookAtTrigger_v2_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1090654436", "1090654436", "MIS_300_B10", "box_OutputOrder_v2_36.Out", "box_LookAtTrigger_v2_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_36_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1570839912", "1570839912", "MIS_300_B10", "box_OutputOrder_v2_36.Out", "box_Delay_v5_28.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1325884971", "1325884971", "MIS_300_B10", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2131593699", "2131593699", "MIS_300_B10", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_InventoryItemModifier_115_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = self.box_InventoryItemModifier_115;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1574747062", "1574747062", "MIS_300_B10", "box_InventoryItemModifier_115.Out", "box_ActivityEnd_4.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_107_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveTimerListener_29();
    l0 = self.box_MultipleOR_107;
    l1 = self.box_ActivityObjectiveTimerListener_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1420118691", "1420118691", "MIS_300_B10", "box_MultipleOR_107.Out", "box_ActivityObjectiveTimerListener_29.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_158_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_158;
    l1 = self.box_MultipleOR_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1712907732", "1712907732", "MIS_300_B10", "box_OnceOnly_v3_158.Out", "box_MultipleOR_102.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_24();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1327513054", "1327513054", "MIS_300_B10", "box_OutputOrder_v2_41.Out", "box_Compare_Boolean_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_39();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1934978545", "1934978545", "MIS_300_B10", "box_OutputOrder_v2_41.Out", "box_ParticleSystem_v3_39.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_80_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveTimerListener_29();
    l0 = self.box_ActivityObjectiveTimerListener_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1345178944", "1345178944", "MIS_300_B10", "box_OutputOrder_v2_80.Out", "box_ActivityObjectiveTimerListener_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_80_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_81();
    l0 = self.box_RequestPhoneCall_v2_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1939261438", "1939261438", "MIS_300_B10", "box_OutputOrder_v2_80.Out", "box_RequestPhoneCall_v2_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_80_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_88();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1991476820", "1991476820", "MIS_300_B10", "box_OutputOrder_v2_80.Out", "box_Simple_Node_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_34;
    l1 = self.box_FailReasonAndObjEnd_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|686630675", "686630675", "MIS_300_B10", "box_Delay_v5_34.TimeElapsed", "box_FailReasonAndObjEnd_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_84_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_79();
    l0 = self.box_MultipleOR_84;
    l1 = self.box_Delay_v5_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1639667767", "1639667767", "MIS_300_B10", "box_MultipleOR_84.Out", "box_Delay_v5_79.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_28;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2114863145", "2114863145", "MIS_300_B10", "box_Delay_v5_28.TimeElapsed", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_154_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_153();
    l0 = self.box_Delay_v5_154;
    l1 = self.box_Gate_v3_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|616125805", "616125805", "MIS_300_B10", "box_Delay_v5_154.Stopped", "box_Gate_v3_153.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_154_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_153();
    l0 = self.box_Delay_v5_154;
    l1 = self.box_Gate_v3_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|53974317", "53974317", "MIS_300_B10", "box_Delay_v5_154.TimeElapsed", "box_Gate_v3_153.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_25_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_25;
    l1 = self.box_FailReasonAndObjEnd_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1516117526", "1516117526", "MIS_300_B10", "box_MultipleOR_25.Out", "box_FailReasonAndObjEnd_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_106_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_110();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1426207078", "1426207078", "MIS_300_B10", "box_OutputOrder_v2_106.Out", "box_Simple_Node_110.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_106_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_109();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|892048443", "892048443", "MIS_300_B10", "box_OutputOrder_v2_106.Out", "box_Simple_Node_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_85_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_73();
    l0 = self.box_MultipleOR_85;
    l1 = self.box_Delay_v5_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1790046182", "1790046182", "MIS_300_B10", "box_MultipleOR_85.Out", "box_Delay_v5_73.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_OnceOnly_v3_32_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityForceAndLockTracking_91();
    l0 = self.box_OnceOnly_v3_32;
    l1 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1553438676", "1553438676", "MIS_300_B10", "box_OnceOnly_v3_32.Out", "box_ActivityForceAndLockTracking_91.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_17();
    l0 = self.box_MultipleOR_19;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1566949975", "1566949975", "MIS_300_B10", "box_MultipleOR_19.Out", "box_ActivityObjectiveMarkerModifier_v3_17.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetGlobalBoolsB10_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_SetGlobalBoolsB10_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|494837440", "494837440", "MIS_300_B10", "box_SetGlobalBoolsB10_16.Out", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LOOK_IN_TANK_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = self.box_LOOK_IN_TANK_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|208714561", "208714561", "MIS_300_B10", "box_LOOK_IN_TANK_5.Out", "box_OutputOrder_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LOOK_IN_TANK_5_SuccessWithKey()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_101();
    l0 = self.box_LOOK_IN_TANK_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2102871046", "2102871046", "MIS_300_B10", "box_LOOK_IN_TANK_5.SuccessWithKey", "box_Simple_Node_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_141_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_113();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|969686297", "969686297", "MIS_300_B10", "box_OutputOrder_v2_141.Out", "box_Simple_Node_113.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_141_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_127();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|44720435", "44720435", "MIS_300_B10", "box_OutputOrder_v2_141.Out", "box_UnlockDoor_127.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_141_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_101();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|316529471", "316529471", "MIS_300_B10", "box_OutputOrder_v2_141.Out", "box_Simple_Node_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_86_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_154();
    l0 = self.box_OnceOnly_v3_86;
    l1 = self.box_Delay_v5_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1539468701", "1539468701", "MIS_300_B10", "box_OnceOnly_v3_86.Out", "box_Delay_v5_154.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_UnlockDoor_160_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_58();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1837069856", "1837069856", "MIS_300_B10", "box_UnlockDoor_160.Unlocked", "box_SetBoolean_v2_58.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_62_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_62;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|100318505", "100318505", "MIS_300_B10", "box_Delay_v5_62.TimeElapsed", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_103_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = self.box_OnceOnly_v3_103;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|215573782", "215573782", "MIS_300_B10", "box_OnceOnly_v3_103.Out", "box_OutputOrder_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_FailReasonAndObjEnd_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_124();
    l0 = self.box_FailReasonAndObjEnd_70;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1320572080", "1320572080", "MIS_300_B10", "box_FailReasonAndObjEnd_70.Out", "box_OutputOrder_v2_124.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityInitialized_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1700473793", "1700473793", "MIS_300_B10", "box_OutputOrder_v2_13.Out", "box_ActivityInitialized_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_65();
    l0 = self.box_EntityStatusListener_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2104130033", "2104130033", "MIS_300_B10", "box_OutputOrder_v2_13.Out", "box_EntityStatusListener_65.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_Interact_With_Object_V6_21_Started()
    local l0, l1;
    l0 = self.box_Brick_Interact_With_Object_V6_21;
    l1 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1537850988", "1537850988", "MIS_300_B10", "box_Brick_Interact_With_Object_V6_21.Started", "box_MultipleOR_128.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Interact_With_Object_V6_21_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = self.box_Brick_Interact_With_Object_V6_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|798286128", "798286128", "MIS_300_B10", "box_Brick_Interact_With_Object_V6_21.Success", "box_OutputOrder_v2_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_102_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_102;
    l1 = self.box_OnceOnly_v3_103;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1838427537", "1838427537", "MIS_300_B10", "box_MultipleOR_102.Out", "box_OnceOnly_v3_103.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityInitialized_7_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_7;
    l1 = self.box_Particles_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|430602263", "430602263", "MIS_300_B10", "box_ActivityInitialized_7.Out", "box_Particles_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:OnEnter_box_Simple_Node_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|@Bypass");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_113_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|@CloseBrickGate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_69_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|@ExitMissionFail");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_64_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|@Last_5_seconds_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_88_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|@PlayerHaveKey");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_96_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|@SkipToHostages");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_101_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|@StartTimer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_100_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|@StopTimer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_110_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|@Success");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_109_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|@TooMuchDead");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_8_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|11922942");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_94_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_94_A_is_True,
    });
    params = {
        -- A,
        [0] = self.LiberatedWithKey,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|21543463");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_31_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_300_B10_OBJ_Brakers",
            id = "1019124",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 90,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|37163641");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2109691187815265482",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B10_OBJ_Brakers",
            id = "1019124",
        },
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V6_126()
    local params;
    DrawTextToScreen("Comment: Breakers", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Interact_With_Object_V6')-- Comment: Breakers");
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2108311202529551395",
        -- e_ObjectiveMarker,
        [4] = "2108393866762653622",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_USE",
            id = "533274",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objectives",
            item = "MIS_300_B10_OBJ_Brakers",
            id = "1019124",
        },
    };
    return params;
end;

function export:OnEnter_box_Brick_AcquireObject_v6_99()
    local params;
    params = {
        -- AmountRequired,
        [0] = 1,
        -- bCheckAmountInInventory,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- CompletePreviousObjective,
        [3] = false,
        -- LootItemID,
        [4] = "9015351551582387",
        -- ProtectItemOnSuccess,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|169443809");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_91_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|189857978");
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

function export:OnEnter_box_EndActivityObjective_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|189899999");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_45_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_300_B10_OBJ_Brakers",
            id = "1019124",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|225309958");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
                [2] = self.f_box_OutputOrder_v2_1_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_50()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2108501727943600480",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|257731520");
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

function export:OnEnter_box_UnlockDoor_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|294588400");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_127_Unlocked,
    });
    params = {
        -- door,
        [0] = "2108393239047313466",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|304326455");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_6_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|311602657");
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
                [0] = self.f_box_OutputOrder_v2_52_Out_0,
                [1] = self.f_box_OutputOrder_v2_52_Out_1,
                [2] = self.f_box_OutputOrder_v2_52_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|340592372");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "MIS_300_GEN_MSG_FailRescue",
            id = "1023946",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|381698085");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
                [2] = self.f_box_OutputOrder_v2_20_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|413267854");
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
        [8] = "MIS_300_B10_Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_72()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "36674735",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_HostageSetupHealthBeforeObjB10_27()
    local params;
    params = {
        -- eIsHostage1,
        [0] = "2108321487610980308",
        -- eIsHostage2,
        [1] = "2109097596443170236",
        -- eIsHostage3,
        [2] = "2109097602363430365",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|507243361");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2108504170328788457",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_81()
    local params;
    DrawTextToScreen("Comment: You re on the clock", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: You re on the clock");
    params = {
        -- Delay,
        [2] = 1,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1010884879",
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_53()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Objectives",
            item = "MIS_300_B10_OBJ_Follow",
            id = "1021765",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|531733959");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_15_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2108393866762653622",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B10_OBJ_Brakers",
            id = "1019124",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|547610168");
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
                [0] = self.f_box_OutputOrder_v2_124_Out_0,
                [1] = self.f_box_OutputOrder_v2_124_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_79()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 80,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_76()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|649114219");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_49_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_300_B10_OBJ_Brakers",
            id = "1019124",
        },
        -- Success,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_155()
    local params;
    DrawTextToScreen("Comment: Runnin out of time", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Runnin out of time");
    params = {
        -- Delay,
        [2] = 5,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3977670810",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|685626997");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|728263969");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|736994057");
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
                [0] = self.f_box_OutputOrder_v2_54_Out_0,
                [1] = self.f_box_OutputOrder_v2_54_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_73()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 85,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_82()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1901908958",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|931283563");
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
                [0] = self.f_box_OutputOrder_v2_118_Out_0,
                [1] = self.f_box_OutputOrder_v2_118_Out_1,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|936178600");
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

function export:OnEnter_box_Delay_v5_60()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|975048683");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_30()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1051370059");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_74_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1054646900");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
                [2] = self.f_box_OutputOrder_v2_11_Out_2,
                [3] = self.f_box_OutputOrder_v2_11_Out_3,
                [4] = self.f_box_OutputOrder_v2_11_Out_4,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_119()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 1,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1046779607",
        -- StopEvent,
        [7] = "2611405624",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = true,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_65()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108504170328788457",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1100851709");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1200974315");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_129_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1210728899");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_93_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_120()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 2,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1046779607",
        -- StopEvent,
        [7] = "2611405624",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = true,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1232645626");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_38_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2108417514848388452",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1258008019");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_98()
    local params;
    params = {
        -- group,
        [0] = "#55F3F274",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1260634445");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_58_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1277553651");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_33_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_300_B10_OBJ_Brakers",
            id = "1019124",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1318534531");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_37_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1335853931");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_39_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109190565183640460",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveTimerListener_29()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_300_B10_OBJ_Brakers",
            id = "1019124",
        },
        -- Time,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1348240143");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109263728913440906",
        -- Group,
        [1] = "#55F3F274",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1354361236");
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
                [0] = self.f_box_OutputOrder_v2_66_Out_0,
                [1] = self.f_box_OutputOrder_v2_66_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1372017103");
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
                [0] = self.f_box_OutputOrder_v2_87_Out_0,
                [1] = self.f_box_OutputOrder_v2_87_Out_1,
            },
            count = 2,
        },
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1375396961");
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
                [0] = self.f_box_OutputOrder_v2_43_Out_0,
                [1] = self.f_box_OutputOrder_v2_43_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1428131614");
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
                [0] = self.f_box_OutputOrder_v2_123_Out_0,
                [1] = self.f_box_OutputOrder_v2_123_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1511019434");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_35_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_35_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.MIS_300_B10.bHostageAllDead,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_153()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_HostagesLiberationB10_71()
    local params;
    params = {
        -- eHost1,
        [0] = "2108321487610980308",
        -- eHost2,
        [1] = "2109097596443170236",
        -- eHost3,
        [2] = "2109097602363430365",
        -- eHostMarker1,
        [3] = "2109097096261932441",
        -- eHostMarker2,
        [4] = "2109097628449904189",
        -- eHostMarker3,
        [5] = "2109097630398158401",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_68()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_51()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2109800734307403023",
        -- WarningZoneTrigger,
        [3] = "2109800706820031758",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1605888421");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_24_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_24_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.MIS_300_B10.bHostageAllDead,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1618779009");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
                [2] = self.f_box_OutputOrder_v2_36_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1636843686");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109190755508573072",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_115()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015351551582387",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1678884945");
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
                [0] = self.f_box_OutputOrder_v2_41_Out_0,
                [1] = self.f_box_OutputOrder_v2_41_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1688688609");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "MIS_300_GEN_MSG_FailRescue",
            id = "1023946",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1696550835");
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
                [0] = self.f_box_OutputOrder_v2_80_Out_0,
                [1] = self.f_box_OutputOrder_v2_80_Out_1,
                [2] = self.f_box_OutputOrder_v2_80_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_28()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_154()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 70,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1777578969");
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
                [0] = self.f_box_OutputOrder_v2_106_Out_0,
                [1] = self.f_box_OutputOrder_v2_106_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_122()
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
        [6] = "1046779607",
        -- StopEvent,
        [7] = "2611405624",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = true,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_78()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2917624363",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_117()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 1,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1046779607",
        -- StopEvent,
        [7] = "2611405624",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = true,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_LOOK_IN_TANK_5()
    local params;
    params = {
        -- eLookTrigger,
        [0] = "2108488817412418266",
        -- eObjMarker,
        [1] = "2108320658040563436",
        -- oObjective,
        [2] = {
            section = "Objectives",
            item = "MIS_300_B10_OBJ_GoTo",
            id = "1016465",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1939998772");
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
                [0] = self.f_box_OutputOrder_v2_141_Out_0,
                [1] = self.f_box_OutputOrder_v2_141_Out_1,
                [2] = self.f_box_OutputOrder_v2_141_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|1978989810");
    l0:SetConnections({
        -- Unlocked,
        [0] = self.f_box_UnlockDoor_160_Unlocked,
    });
    params = {
        -- door,
        [0] = "2108393239047313466",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_62()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2051845684");
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

function export:OnEnter_box_Brick_Interact_With_Object_V6_21()
    local params;
    DrawTextToScreen("Comment: Breakers", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Interact_With_Object_V6')-- Comment: Breakers");
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2108311202529551395",
        -- e_ObjectiveMarker,
        [4] = "2108393866762653622",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_USE",
            id = "533274",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objectives",
            item = "MIS_300_B10_OBJ_Brakers",
            id = "1019124",
        },
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@MIS_300_B10|2093066555");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108431178515094086",
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.ePlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_129_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_300_B10.bBreakersDone = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    Globals.MIS_300_B10.gPlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_58_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_300_B10.bBreakersDone = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_37_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_300_B10.bTankDone = l0:GetDataOutValue(0);
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
