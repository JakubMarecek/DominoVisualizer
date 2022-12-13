LUACVi -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_320/mis_320_b20.domino
-- User graph: MIS_320_B20
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_NoDisable.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/JoinInProgresModifier.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/InventoryLoadoutModifier.lua");
        cboxRes:RegisterBox("Domino/System/LeashOverride.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/IgnoreSignal_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayerSpeedModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/RestrictedItemModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundShapeModifier.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/TimeOfDayListener.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/System/UnlockDoor.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_DoorManager.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_PlayerLock.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_CloseFactoryCheckpoint.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_FactoryDayEnd.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_FactoryWarnLogic.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_LookAtTwins.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_SE_Guards.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_StationWork.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_WalkToCheckpoint.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_WorkAlertLogic.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[152896393.bnk]], "CSoundResource");
        cboxRes:LoadResource([[299309992.bnk]], "CSoundResource");
        cboxRes:LoadResource([[347256345.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1973111472.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2028239840.bnk]], "CSoundResource");
        cboxRes:LoadResource([[808122783.bnk]], "CSoundResource");
        cboxRes:LoadResource([[189430163.bnk]], "CSoundResource");
        cboxRes:LoadResource([[655974275.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3607026267.bnk]], "CSoundResource");
        cboxRes:LoadResource([[146253617.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2802112585.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1982792409.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2044766056.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1623182931.bnk]], "CSoundResource");
        cboxRes:LoadResource([[797690317.bnk]], "CSoundResource");
        cboxRes:LoadResource([[102973180.bnk]], "CSoundResource");
        cboxRes:LoadResource([[433974453.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_NoDisable.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua")] = {
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
                name = "bRequiresAllPlayer",
                type = "bool",
            },
            [3] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [4] = {
                name = "bUse2d_ProximityCheck",
                type = "bool",
            },
            [5] = {
                name = "bUseDetectionModifier",
                type = "bool",
            },
            [6] = {
                name = "eMarker",
                type = "entity",
            },
            [7] = {
                name = "eRadiusTarget",
                type = "entity",
            },
            [8] = {
                name = "eTrigger",
                type = "entity",
            },
            [9] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [10] = {
                name = "fObjectiveTimer",
                type = "float",
            },
            [11] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [12] = {
                name = "opt_Objective",
                type = "oasis",
            },
        },
        dataInCount = 13,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Female",
                delayed = false,
            },
            [1] = {
                name = "Male",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "PlayerID",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ClearRestriction",
            },
            [1] = {
                name = "DisableListeners",
            },
            [2] = {
                name = "RemoveItems",
            },
            [3] = {
                name = "RestrictItems",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Cleared",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
            [2] = {
                name = "Restricted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "ItemFilterDBID",
                type = "genericdb",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/AI/NavLinkModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/Coop/JoinInProgresModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "LockSession",
            },
            [1] = {
                name = "UnlockSession",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnLockSession",
                delayed = false,
            },
            [1] = {
                name = "OnUnlockSession",
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
            [1] = {
                name = "immediateDespawn",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/InventoryLoadoutModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Backup",
            },
            [1] = {
                name = "Restore",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "BackedUp",
                delayed = false,
            },
            [1] = {
                name = "Failed",
                delayed = false,
            },
            [2] = {
                name = "Restored",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "discardPreviousBackup",
                type = "bool",
            },
            [1] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/LeashOverride.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableDefaultLeash",
            },
            [1] = {
                name = "EnableDefaultLeash",
            },
            [2] = {
                name = "RemoveCustomLeash",
            },
            [3] = {
                name = "UseCustomLeash",
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
                name = "LeashCreated",
                delayed = false,
            },
            [3] = {
                name = "LeashRemoved",
                delayed = false,
            },
            [4] = {
                name = "OnLeashBroken",
                delayed = true,
            },
            [5] = {
                name = "OnLeashFinalWarning",
                delayed = true,
            },
            [6] = {
                name = "OnLeashWarning",
                delayed = true,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "CustomLeashDistance",
                type = "float",
            },
            [1] = {
                name = "CustomLeashFinalWarningDistance",
                type = "float",
            },
            [2] = {
                name = "CustomLeashWarningDistance",
                type = "float",
            },
            [3] = {
                name = "WarningText",
                type = "oasis",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "PlayerToTeleport",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/PlayerSpeedModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ApplySpeedFactor",
            },
            [1] = {
                name = "ForceWalk",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "ApplySpeedFactorOut",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "ForceWalkOut",
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
                name = "blendTime",
                type = "float",
            },
            [1] = {
                name = "factor",
                type = "float",
            },
            [2] = {
                name = "Players",
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
    metadataTable[GetPathID("Domino/System/SoundShapeModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Resume",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Paused",
                delayed = false,
            },
            [1] = {
                name = "Resumed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "FadeTime",
                type = "float",
            },
            [1] = {
                name = "SoundShapeId",
                type = "entity",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/TimeOfDayListener.lua")] = {
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
                name = "HourChanged",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "HourOfTheDay",
                type = "int",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_DoorManager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Opened_Door",
                delayed = false,
            },
            [1] = {
                name = "Out",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Female_Outfit",
            },
            [1] = {
                name = "Male_Outfit",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Equipped",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "PlayerID",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_PlayerLock.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_CloseFactoryCheckpoint.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_FactoryDayEnd.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_FactoryWarnLogic.debug.lua")] = {
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
                name = "Out",
                delayed = false,
            },
            [1] = {
                name = "Start_Alert",
                delayed = false,
            },
            [2] = {
                name = "Stop_Alert",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Machine",
                type = "entity",
            },
            [1] = {
                name = "Player",
                type = "entity",
            },
            [2] = {
                name = "StationTriggerZone",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_LookAtTwins.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "In",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_SE_Guards.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Stop",
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_StationWork.debug.lua")] = {
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
                name = "Success",
                delayed = false,
            },
            [2] = {
                name = "WorkStarted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_WalkToCheckpoint.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Door_to_Outside_Closed",
                delayed = false,
            },
            [1] = {
                name = "Finished",
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
                name = "Xantor",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_WorkAlertLogic.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start_Alert",
            },
            [1] = {
                name = "Stop_Alert",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Alert_Stopped",
                delayed = false,
            },
            [1] = {
                name = "Player_Detected",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_320_B20";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20";
    self.gp_FriendlyPlayers = nil;
    self.g_FrienglyPlayers = nil;
    self.i_tod = 0;
    self.MetaSequenceBeatUp = 0;
    self.MetaSequenceDragBody = 0;
    self.e_LilFucker = nil;
    self.e_Xantor = nil;
    self.e_UserMachine_1 = nil;
    self.e_UserMachine_2 = nil;
    self.box_OverrideMenuAccessibility_v2_143 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
    l0 = self.box_OverrideMenuAccessibility_v2_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_v2_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|12865318");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_v2_143_Out,
    });
    self.box_Brick_Interact_With_Object_NoDisable_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_NoDisable.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_NoDisable_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_NoDisable_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|34617552");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Brick_Interact_With_Object_NoDisable_9_Started,
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_NoDisable_9_Success,
    });
    self.box_NavLinkModifier_158 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|44597532");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_158_Activated,
    });
    self.box_InventoryItemModifier_111 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|49559252");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_111_Out,
    });
    self.box_OnceOnly_v3_173 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|50740346");
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
                [0] = self.f_box_OnceOnly_v3_173_Out_0,
            },
            count = 2,
        },
    });
    self.box_RemoveEntity_v2_132 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|63621760");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_132_Out,
    });
    self.box_PlayerSpeedModifier_v3_98 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|66049320");
    l0:SetConnections({
        -- ApplySpeedFactorOut,
        [0] = self.f_box_PlayerSpeedModifier_v3_98_ApplySpeedFactorOut,
    });
    self.box_UniversalInteractionModifier_v2_15 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|90982521");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_198 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|92880098");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_160 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|102798219");
    l0:SetConnections({
    });
    self.box_MIS_320_B20_FactoryDayEnd_13 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_FactoryDayEnd.debug.lua");
    l0 = self.box_MIS_320_B20_FactoryDayEnd_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B20_FactoryDayEnd_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|109855094");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_320_B20_FactoryDayEnd_13_Out,
    });
    self.box_NavLinkModifier_49 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|111474605");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_49_Activated,
    });
    self.box_MultipleAND_v2_226 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_226;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_226");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|122074544");
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
        [0] = self.f_box_MultipleAND_v2_226_Out,
    });
    self.box_MIS_320_DoorManager_151 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_DoorManager.debug.lua");
    l0 = self.box_MIS_320_DoorManager_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_DoorManager_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|124691354");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_320_DoorManager_151_Out,
    });
    self.box_PlayDialog_v6_117 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|147873769");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_117_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_117_FinishedInterrupted,
    });
    self.box_Gate_v3_184 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|151433403");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_184_Out,
    });
    self.box_CoopActivePlayers_190 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|156415002");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_190_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_190_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_190_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_190_TwoPlayers,
    });
    self.box_MultipleOR_175 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|188009156");
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
        [0] = self.f_box_MultipleOR_175_Out,
    });
    self.box_MIS_320_B20_FactoryWarnLogic_70 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_FactoryWarnLogic.debug.lua");
    l0 = self.box_MIS_320_B20_FactoryWarnLogic_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B20_FactoryWarnLogic_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|189465087");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_320_B20_FactoryWarnLogic_70_Out,
        -- Start Alert,
        [1] = self.f_box_MIS_320_B20_FactoryWarnLogic_70_Start_Alert,
        -- Stop Alert,
        [2] = self.f_box_MIS_320_B20_FactoryWarnLogic_70_Stop_Alert,
    });
    self.box_CoopActivePlayers_1 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|210008985");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_1_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_1_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_1_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_1_TwoPlayers,
    });
    self.box_Delay_v5_207 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|214530719");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_207_TimeElapsed,
    });
    self.box_TimeOfDayListener_32 = cbox:CreateBox("Domino/System/TimeOfDayListener.lua");
    l0 = self.box_TimeOfDayListener_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TimeOfDayListener_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|246711384");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TimeOfDayListener_32_Disabled,
        -- Enabled,
        [1] = self.f_box_TimeOfDayListener_32_Enabled,
        -- HourChanged,
        [2] = self.f_box_TimeOfDayListener_32_HourChanged,
    });
    self.box_SoundModifier_v2_157 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|247153442");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_157_Started,
    });
    self.box_TeleportPawns_101 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|257783899");
    l0:SetConnections({
    });
    self.box_UniversalInteractionListener_219 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|272992260");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionListener_219_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_219_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_219_Interacted,
    });
    self.box_PlayDialog_v6_147 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|283919459");
    l0:SetConnections({
    });
    self.box_NoWeaponMode_v3_38 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|301109750");
    l0:SetConnections({
        -- OnEnter,
        [0] = self.f_box_NoWeaponMode_v3_38_OnEnter,
    });
    self.box_SoundModifier_v2_156 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|314102488");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_156_Started,
    });
    self.box_MIS_320_PlayerLock_16 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_PlayerLock.debug.lua");
    l0 = self.box_MIS_320_PlayerLock_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_PlayerLock_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|315719070");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_MIS_320_PlayerLock_16_Disabled,
        -- Enabled,
        [1] = self.f_box_MIS_320_PlayerLock_16_Enabled,
    });
    self.box_OnceOnly_v3_231 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|326776306");
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
                [0] = self.f_box_OnceOnly_v3_231_Out_0,
            },
            count = 2,
        },
    });
    self.box_MIS_320_B20_WorkAlertLogic_225 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_WorkAlertLogic.debug.lua");
    l0 = self.box_MIS_320_B20_WorkAlertLogic_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B20_WorkAlertLogic_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|328373254");
    l0:SetConnections({
        -- Player Detected,
        [1] = self.f_box_MIS_320_B20_WorkAlertLogic_225_Player_Detected,
    });
    self.box_SoundModifier_v2_87 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|356642201");
    l0:SetConnections({
    });
    self.box_CoopActivePlayers_144 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|385630649");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_144_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_144_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_144_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_144_TwoPlayers,
    });
    self.box_MultipleOR_67 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|401825876");
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
    self.box_IgnoreSignal_v2_78 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|411452410");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_78_Enabled,
    });
    self.box_PlayerSpeedModifier_v3_72 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|454360107");
    l0:SetConnections({
        -- ApplySpeedFactorOut,
        [0] = self.f_box_PlayerSpeedModifier_v3_72_ApplySpeedFactorOut,
    });
    self.box_SoundModifier_v2_86 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|466171862");
    l0:SetConnections({
    });
    self.box_Delay_v5_53 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|498994576");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_53_TimeElapsed,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_96 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|499060349");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_96_Out,
    });
    self.box_MIS_320_B20_CloseFactoryCheckpoint_14 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_CloseFactoryCheckpoint.debug.lua");
    l0 = self.box_MIS_320_B20_CloseFactoryCheckpoint_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B20_CloseFactoryCheckpoint_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|510783460");
    l0:SetConnections({
    });
    self.box_MultipleOR_138 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|513196847");
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
        [0] = self.f_box_MultipleOR_138_Out,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|515816614");
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_43 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|524801514");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_43_Out,
    });
    self.box_MultipleAND_v2_171 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|560728767");
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
        [0] = self.f_box_MultipleAND_v2_171_Out,
    });
    self.box_OnceOnly_v3_204 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|565437549");
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
                [0] = self.f_box_OnceOnly_v3_204_Out_0,
            },
            count = 2,
        },
    });
    self.box_MIS_320_B20_WalkToCheckpoint_28 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_WalkToCheckpoint.debug.lua");
    l0 = self.box_MIS_320_B20_WalkToCheckpoint_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B20_WalkToCheckpoint_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|585460179");
    l0:SetConnections({
        -- Door to Outside Closed,
        [0] = self.f_box_MIS_320_B20_WalkToCheckpoint_28_Door_to_Outside_Closed,
        -- Finished,
        [1] = self.f_box_MIS_320_B20_WalkToCheckpoint_28_Finished,
        -- Out,
        [2] = self.f_box_MIS_320_B20_WalkToCheckpoint_28_Out,
    });
    self.box_MultipleOR_239 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_239;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_239");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|593804929");
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
        [0] = self.f_box_MultipleOR_239_Out,
    });
    self.box_MultipleOR_185 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|634045456");
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
        [0] = self.f_box_MultipleOR_185_Out,
    });
    self.box_MultipleOR_128 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|635093076");
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
    self.box_CHEAT_SetEnvironmentTimeScale_46 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|649245079");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_46_Out,
    });
    self.box_EntityStatusListener_201 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|650940879");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_201_Loaded,
    });
    self.box_CoopActivePlayers_237 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_237");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|654211491");
    l0:SetConnections({
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_237_PlayerAdded,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_237_TwoPlayers,
    });
    self.box_MultipleAND_v2_130 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|665752699");
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
        [0] = self.f_box_MultipleAND_v2_130_Out,
    });
    self.box_Delay_v5_118 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|692391733");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_118_TimeElapsed,
    });
    self.box_MultipleOR_240 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_240;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_240");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|711098479");
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
        [0] = self.f_box_MultipleOR_240_Out,
    });
    self.box_SpawnAI_33 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|735901076");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_33_Out,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|737453506");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_PlayDialog_v6_124 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|740355723");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_124_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_124_FinishedInterrupted,
    });
    self.box_GunsForHireSystemModifier_168 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|759895037");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_168_Disabled,
    });
    self.box_PlayDialog_v6_115 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|780056955");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_115_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_115_FinishedInterrupted,
    });
    self.box_MultipleOR_230 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|791583737");
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
        [0] = self.f_box_MultipleOR_230_Out,
    });
    self.box_Music_Quest_v2_212 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|796722607");
    l0:SetConnections({
    });
    self.box_IgnoreSignal_v2_112 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|827585556");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_112_Enabled,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_37 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|831805709");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_37_Out,
    });
    self.box_PositionModifier_v2_194 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|836789018");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_194_StartOut,
    });
    self.box_Gate_v3_183 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|839827206");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_183_Out,
    });
    self.box_EntityStatusListener_200 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|844130629");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_200_Loaded,
    });
    self.box_MultipleOR_120 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|862679637");
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
        [0] = self.f_box_MultipleOR_120_Out,
    });
    self.box_Music_Quest_v2_216 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|881204177");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_34 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|895231154");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_34_Done,
    });
    self.box_MultipleOR_119 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|997202702");
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
        [0] = self.f_box_MultipleOR_119_Out,
    });
    self.box_MultipleOR_205 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1001178609");
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
        [0] = self.f_box_MultipleOR_205_Out,
    });
    self.box_Brick_Interact_With_Object_NoDisable_211 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_NoDisable.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_NoDisable_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_NoDisable_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1015139488");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_NoDisable_211_Success,
    });
    self.box_MultipleOR_131 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1021489149");
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
        [0] = self.f_box_MultipleOR_131_Out,
    });
    self.box_DisplayCustomUIMsg_v5_242 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_242;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_242");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1026436001");
    l0:SetConnections({
    });
    self.box_MultipleOR_122 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1032775905");
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
        [0] = self.f_box_MultipleOR_122_Out,
    });
    self.box_OnceOnly_v3_232 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_232");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1038391301");
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
                [0] = self.f_box_OnceOnly_v3_232_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_97 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1047732146");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_97_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_97_TimeElapsed,
    });
    self.box_SoundModifier_v2_154 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1053217202");
    l0:SetConnections({
    });
    self.box_MultipleOR_121 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1100165685");
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
        [0] = self.f_box_MultipleOR_121_Out,
    });
    self.box_SoundModifier_v2_56 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1107838914");
    l0:SetConnections({
    });
    self.box_ManagePlayerInventory_26 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1113677144");
    l0:SetConnections({
        -- Restricted,
        [2] = self.f_box_ManagePlayerInventory_26_Restricted,
    });
    self.box_OnceOnly_v3_74 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1127919402");
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
                [0] = self.f_box_OnceOnly_v3_74_Out_0,
            },
            count = 2,
        },
    });
    self.box_GetPlayerGender_146 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1139760851");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_146_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_146_Male,
    });
    self.box_GetPlayerGender_64 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1235363542");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_64_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_64_Male,
    });
    self.box_MultipleOR_169 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1236816954");
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
        [0] = self.f_box_MultipleOR_169_Out,
    });
    self.box_PositionModifier_v2_66 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1290463641");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_66_StartOut,
    });
    self.box_MultipleOR_123 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1308065739");
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
        [0] = self.f_box_MultipleOR_123_Out,
    });
    self.box_Gate_v3_182 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1320596783");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_182_Out,
    });
    self.box_PositionModifier_v2_83 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1320956058");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_83_StartOut,
    });
    self.box_CoopActivePlayers_63 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1338985140");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_63_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_63_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_63_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_63_TwoPlayers,
    });
    self.box_MultipleOR_47 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1351185846");
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
    self.box_IgnoreSignal_v2_45 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1353882175");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_45_Enabled,
    });
    self.box_MultipleOR_126 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1372932362");
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
        [0] = self.f_box_MultipleOR_126_Out,
    });
    self.box_SoundModifier_v2_213 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1389770482");
    l0:SetConnections({
    });
    self.box_MIS_320_GivePrisonerOutfit_31 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua");
    l0 = self.box_MIS_320_GivePrisonerOutfit_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_GivePrisonerOutfit_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1395188355");
    l0:SetConnections({
    });
    self.box_MultipleOR_170 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1396733086");
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
    self.box_Gate_v3_129 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1405056061");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_129_Out,
    });
    self.box_InventoryLoadoutModifier_209 = cbox:CreateBox("Domino/System/InventoryLoadoutModifier.lua");
    l0 = self.box_InventoryLoadoutModifier_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryLoadoutModifier_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1443286783");
    l0:SetConnections({
    });
    self.box_TeleportPawns_134 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1453034205");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_134_Out,
    });
    self.box_JoinInProgressModifier_217 = cbox:CreateBox("Domino/System/Coop/JoinInProgresModifier.lua");
    l0 = self.box_JoinInProgressModifier_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_JoinInProgressModifier_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1473338910");
    l0:SetConnections({
        -- OnLockSession,
        [0] = self.f_box_JoinInProgressModifier_217_OnLockSession,
    });
    self.box_Music_Quest_v2_214 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1476244054");
    l0:SetConnections({
    });
    self.box_Switch_114 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1486463112");
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
                [0] = self.f_box_Switch_114_Output_0,
                [1] = self.f_box_Switch_114_Output_1,
                [2] = self.f_box_Switch_114_Output_2,
                [3] = self.f_box_Switch_114_Output_3,
                [4] = self.f_box_Switch_114_Output_4,
            },
            count = 5,
        },
    });
    self.box_MIS_320_GivePrisonerOutfit_50 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua");
    l0 = self.box_MIS_320_GivePrisonerOutfit_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_GivePrisonerOutfit_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1494955703");
    l0:SetConnections({
    });
    self.box_CHEAT_SetEnvironmentTimeScale_29 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1501761103");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_29_Out,
    });
    self.box_Gate_v3_243 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_243");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1503142532");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_243_Out,
    });
    self.box_UniversalInteractionListener_220 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1506302067");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionListener_220_Disabled,
        -- Enabled,
        [1] = self.f_box_UniversalInteractionListener_220_Enabled,
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_220_Interacted,
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1513652889");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_SoundModifier_v2_58 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1513869190");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_58_Started,
    });
    self.box_MIS_320_B20_WorkAlertLogic_39 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_WorkAlertLogic.debug.lua");
    l0 = self.box_MIS_320_B20_WorkAlertLogic_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B20_WorkAlertLogic_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1535430982");
    l0:SetConnections({
        -- Alert Stopped,
        [0] = self.f_box_MIS_320_B20_WorkAlertLogic_39_Alert_Stopped,
        -- Player Detected,
        [1] = self.f_box_MIS_320_B20_WorkAlertLogic_39_Player_Detected,
    });
    self.box_PlayDialog_v6_125 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1538197813");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_125_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_125_FinishedInterrupted,
    });
    self.box_LeashOverride_100 = cbox:CreateBox("Domino/System/LeashOverride.lua");
    l0 = self.box_LeashOverride_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LeashOverride_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1541920304");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_LeashOverride_100_Disabled,
        -- Enabled,
        [1] = self.f_box_LeashOverride_100_Enabled,
        -- LeashCreated,
        [2] = self.f_box_LeashOverride_100_LeashCreated,
        -- LeashRemoved,
        [3] = self.f_box_LeashOverride_100_LeashRemoved,
        -- OnLeashBroken,
        [4] = self.f_box_LeashOverride_100_OnLeashBroken,
        -- OnLeashFinalWarning,
        [5] = self.f_box_LeashOverride_100_OnLeashFinalWarning,
        -- OnLeashWarning,
        [6] = self.f_box_LeashOverride_100_OnLeashWarning,
    });
    self.box_PlaySequence_v8_82 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1568377048");
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
        [0] = self.f_box_PlaySequence_v8_82_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_82_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_82_Started,
    });
    self.box_Delay_v5_65 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1570921940");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_65_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_65_TimeElapsed,
    });
    self.box_TeleportPawns_195 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1572570540");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_195_Out,
    });
    self.box_Delay_v5_224 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_224;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1572618602");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_224_TimeElapsed,
    });
    self.box_MultipleAND_v2_172 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1597132591");
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
        [0] = self.f_box_MultipleAND_v2_172_Out,
    });
    self.box_Delay_v5_136 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1603892170");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_136_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_136_TimeElapsed,
    });
    self.box_Delay_v5_127 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1605572226");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_127_TimeElapsed,
    });
    self.box_NavLinkModifier_51 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1613318588");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_51_Deactivated,
    });
    self.box_TimeOfDayListener_44 = cbox:CreateBox("Domino/System/TimeOfDayListener.lua");
    l0 = self.box_TimeOfDayListener_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TimeOfDayListener_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1621502337");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TimeOfDayListener_44_Disabled,
        -- Enabled,
        [1] = self.f_box_TimeOfDayListener_44_Enabled,
        -- HourChanged,
        [2] = self.f_box_TimeOfDayListener_44_HourChanged,
    });
    self.box_MIS_320_B20_FactoryWarnLogic_84 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_FactoryWarnLogic.debug.lua");
    l0 = self.box_MIS_320_B20_FactoryWarnLogic_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B20_FactoryWarnLogic_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1637425408");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_320_B20_FactoryWarnLogic_84_Out,
        -- Start Alert,
        [1] = self.f_box_MIS_320_B20_FactoryWarnLogic_84_Start_Alert,
        -- Stop Alert,
        [2] = self.f_box_MIS_320_B20_FactoryWarnLogic_84_Stop_Alert,
    });
    self.box_MultipleAND_v2_109 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1642237804");
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
        [0] = self.f_box_MultipleAND_v2_109_Out,
    });
    self.box_MIS_320_B20_SE_Guards_54 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_SE_Guards.debug.lua");
    l0 = self.box_MIS_320_B20_SE_Guards_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B20_SE_Guards_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1667009156");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_69 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1673536670");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_73 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1697542969");
    l0:SetConnections({
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_73_OnAllInside,
    });
    self.box_MultipleOR_30 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1699569220");
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
    self.box_MultipleOR_177 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1716891057");
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
        [0] = self.f_box_MultipleOR_177_Out,
    });
    self.box_IgnoreSignal_v2_77 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1729462403");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_77_Enabled,
    });
    self.box_OnceOnly_v3_150 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1756956143");
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
                [0] = self.f_box_OnceOnly_v3_150_Out_0,
            },
            count = 1,
        },
    });
    self.box_MIS_320_GivePrisonerOutfit_139 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua");
    l0 = self.box_MIS_320_GivePrisonerOutfit_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_GivePrisonerOutfit_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1767376564");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_320_GivePrisonerOutfit_139_Out,
    });
    self.box_MIS_320_B20_FactoryWarnLogic_85 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_FactoryWarnLogic.debug.lua");
    l0 = self.box_MIS_320_B20_FactoryWarnLogic_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B20_FactoryWarnLogic_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1774785318");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_320_B20_FactoryWarnLogic_85_Out,
        -- Start Alert,
        [1] = self.f_box_MIS_320_B20_FactoryWarnLogic_85_Start_Alert,
        -- Stop Alert,
        [2] = self.f_box_MIS_320_B20_FactoryWarnLogic_85_Stop_Alert,
    });
    self.box_Brick_Interact_With_Object_NoDisable_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_NoDisable.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_NoDisable_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_NoDisable_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1799427893");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Brick_Interact_With_Object_NoDisable_12_Started,
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_NoDisable_12_Success,
    });
    self.box_CoopActivePlayers_75 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1821331323");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_75_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_75_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_75_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_75_TwoPlayers,
    });
    self.box_Reach_GoTo_v3_62 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1832089645");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_Reach_GoTo_v3_62_Started,
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_62_Success,
    });
    self.box_SoundModifier_v2_59 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1833900975");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_79 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1835308185");
    l0:SetConnections({
    });
    self.box_MIS_320_B20_StationWork_68 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_StationWork.debug.lua");
    l0 = self.box_MIS_320_B20_StationWork_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B20_StationWork_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1838707686");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_320_B20_StationWork_68_Out,
        -- Success,
        [1] = self.f_box_MIS_320_B20_StationWork_68_Success,
    });
    self.box_CharacterLoadedIdListener_v2_140 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1870315611");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_140_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_140_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_140_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_140_LoadedIdReceived,
    });
    self.box_JoinInProgressModifier_218 = cbox:CreateBox("Domino/System/Coop/JoinInProgresModifier.lua");
    l0 = self.box_JoinInProgressModifier_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_JoinInProgressModifier_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1878026430");
    l0:SetConnections({
        -- OnUnlockSession,
        [1] = self.f_box_JoinInProgressModifier_218_OnUnlockSession,
    });
    self.box_Gate_v3_233 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_233");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1886158689");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_233_Out,
    });
    self.box_PositionModifier_v2_25 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1892846663");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_25_StartOut,
    });
    self.box_SoundModifier_v2_153 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_153");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1943281516");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_42 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1964384363");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_42_Started,
    });
    self.box_GetPlayerGender_18 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2026555803");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_18_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_18_Male,
    });
    self.box_PlayDialog_v6_116 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2033659503");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_116_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_116_FinishedInterrupted,
    });
    self.box_MultipleOR_88 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2040038205");
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
    self.box_MIS_320_B20_LookAtTwins_192 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_LookAtTwins.debug.lua");
    l0 = self.box_MIS_320_B20_LookAtTwins_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B20_LookAtTwins_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2041536431");
    l0:SetConnections({
    });
    self.box_MultipleOR_81 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2058568245");
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
        [0] = self.f_box_MultipleOR_81_Out,
    });
    self.box_PositionModifier_v2_161 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2092585682");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_161_StartOut,
    });
    self.box_RestrictedItemModifier_v2_145 = cbox:CreateBox("Domino/System/RestrictedItemModifier_v2.lua");
    l0 = self.box_RestrictedItemModifier_v2_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_v2_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2101435207");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_v2_145_Out,
    });
    self.box_Bind_v4_196 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2106351499");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_196_Bound,
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2128898518");
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
    self.box_InventoryLoadoutModifier_210 = cbox:CreateBox("Domino/System/InventoryLoadoutModifier.lua");
    l0 = self.box_InventoryLoadoutModifier_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryLoadoutModifier_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2138256746");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1201644483", "1201644483", "MIS_320_B20", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_94_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_79();
    l0 = self.box_SoundModifier_v2_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1793760466", "1793760466", "MIS_320_B20", "box_Simple_Node_94.Out", "box_SoundModifier_v2_79.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_149_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideMenuAccessibility_v2_143();
    l0 = self.box_OverrideMenuAccessibility_v2_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1090196287", "1090196287", "MIS_320_B20", "box_Simple_Node_149.Out", "box_OverrideMenuAccessibility_v2_143.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_108_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|511327774", "511327774", "MIS_320_B20", "box_Simple_Node_108.Out", "box_MultipleOR_169.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_MIS_320_B20_FactoryWarnLogic_70();
    l0 = self.box_MIS_320_B20_FactoryWarnLogic_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1734975812", "1734975812", "MIS_320_B20", "box_Simple_Node_108.Out", "box_MIS_320_B20_FactoryWarnLogic_70.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1440645186", "1440645186", "MIS_320_B20", "box_Simple_Node_108.Out", "box_MultipleOR_131.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_165_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1028969983", "1028969983", "MIS_320_B20", "box_Simple_Node_165.Out", "box_MultipleOR_138.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_133_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_129();
    l0 = self.box_Gate_v3_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|674587451", "674587451", "MIS_320_B20", "box_Simple_Node_133.Out", "box_Gate_v3_129.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_118();
    l0 = self.box_Delay_v5_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|811401497", "811401497", "MIS_320_B20", "box_Simple_Node_133.Out", "box_Delay_v5_118.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_OutputOrder_v2_215();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1154437632", "1154437632", "MIS_320_B20", "box_Simple_Node_133.Out", "box_OutputOrder_v2_215.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_166_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_243();
    l0 = self.box_Gate_v3_243;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1595057398", "1595057398", "MIS_320_B20", "box_Simple_Node_166.Out", "box_Gate_v3_243.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_163();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1774619656", "1774619656", "MIS_320_B20", "box_Simple_Node_166.Out", "box_OutputOrder_v2_163.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_208();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1497055090", "1497055090", "MIS_320_B20", "box_Simple_Node_166.Out", "box_OutputOrder_v2_208.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_137_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_127();
    l0 = self.box_Delay_v5_127;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1967607908", "1967607908", "MIS_320_B20", "box_Simple_Node_137.Out", "box_Delay_v5_127.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_LeashOverride_100();
    l0 = self.box_LeashOverride_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1970340893", "1970340893", "MIS_320_B20", "box_Simple_Node_137.Out", "box_LeashOverride_100.RemoveCustomLeash", clone:GetLuaBox(), l0:GetLuaBox());
    -- RemoveCustomLeash
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_187_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_173;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1512752654", "1512752654", "MIS_320_B20", "box_Simple_Node_187.Out", "box_OnceOnly_v3_173.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
    params = self:OnEnter_box_Gate_v3_182();
    l0 = self.box_Gate_v3_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|434139597", "434139597", "MIS_320_B20", "box_Simple_Node_187.Out", "box_Gate_v3_182.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_MultipleAND_v2_171();
    l0 = self.box_MultipleAND_v2_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1644137509", "1644137509", "MIS_320_B20", "box_Simple_Node_187.Out", "box_MultipleAND_v2_171.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_184();
    l0 = self.box_Gate_v3_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2089995285", "2089995285", "MIS_320_B20", "box_Simple_Node_187.Out", "box_Gate_v3_184.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_MultipleAND_v2_130();
    l0 = self.box_MultipleAND_v2_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2002432220", "2002432220", "MIS_320_B20", "box_Simple_Node_187.Out", "box_MultipleAND_v2_130.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_183();
    l0 = self.box_Gate_v3_183;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2104009038", "2104009038", "MIS_320_B20", "box_Simple_Node_187.Out", "box_Gate_v3_183.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_MultipleAND_v2_172();
    l0 = self.box_MultipleAND_v2_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1292933731", "1292933731", "MIS_320_B20", "box_Simple_Node_187.Out", "box_MultipleAND_v2_172.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_235_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_233();
    l0 = self.box_Gate_v3_233;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1183296369", "1183296369", "MIS_320_B20", "box_Simple_Node_235.Out", "box_Gate_v3_233.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    l0 = self.box_MIS_320_B20_WorkAlertLogic_225;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1282821475", "1282821475", "MIS_320_B20", "box_Simple_Node_235.Out", "box_MIS_320_B20_WorkAlertLogic_225.Stop Alert", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop Alert
    l0:Exec(1, {
    });
    params = self:OnEnter_box_OutputOrder_v2_238();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|416517572", "416517572", "MIS_320_B20", "box_Simple_Node_235.Out", "box_OutputOrder_v2_238.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_CoopActivePlayers_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1874780749", "1874780749", "MIS_320_B20", "box_Simple_Node_235.Out", "box_CoopActivePlayers_75.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
    params = self:OnEnter_box_Delay_v5_224();
    l0 = self.box_Delay_v5_224;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1109395361", "1109395361", "MIS_320_B20", "box_Simple_Node_235.Out", "box_Delay_v5_224.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_186_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_190;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|772050232", "772050232", "MIS_320_B20", "box_Simple_Node_186.Out", "box_CoopActivePlayers_190.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_Simple_Node_95_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MIS_320_B20_SE_Guards_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1770926498", "1770926498", "MIS_320_B20", "box_Simple_Node_95.Out", "box_MIS_320_B20_SE_Guards_54.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, {
    });
end;

function export:f_box_Simple_Node_164_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_152();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|9835835", "9835835", "MIS_320_B20", "box_Simple_Node_164.Out", "box_OutputOrder_v2_152.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_106_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_89();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1554853633", "1554853633", "MIS_320_B20", "box_Simple_Node_106.Out", "box_OutputOrder_v2_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OverrideMenuAccessibility_v2_143_Out()
    local l0, l1;
    l0 = self.box_OverrideMenuAccessibility_v2_143;
    l1 = self.box_CoopActivePlayers_144;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|378124995", "378124995", "MIS_320_B20", "box_OverrideMenuAccessibility_v2_143.Out", "box_CoopActivePlayers_144.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_ActivityForceAndLockTracking_236_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_199();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1160041227", "1160041227", "MIS_320_B20", "box_ActivityForceAndLockTracking_236.Enabled", "box_OutputOrder_v2_199.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_NoDisable_9_Started()
    local l0, l1;
    l0 = self.box_Brick_Interact_With_Object_NoDisable_9;
    l1 = self.box_OnceOnly_v3_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2114771817", "2114771817", "MIS_320_B20", "box_Brick_Interact_With_Object_NoDisable_9.Started", "box_OnceOnly_v3_150.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Interact_With_Object_NoDisable_9_Success()
    local l0, l1;
    l0 = self.box_Brick_Interact_With_Object_NoDisable_9;
    l1 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1107385179", "1107385179", "MIS_320_B20", "box_Brick_Interact_With_Object_NoDisable_9.Success", "box_MultipleOR_88.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_NavLinkModifier_158_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_155();
    l0 = self.box_NavLinkModifier_158;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1102892287", "1102892287", "MIS_320_B20", "box_NavLinkModifier_158.Activated", "box_SetBoolean_v2_155.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_111_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_v2_145();
    l0 = self.box_InventoryItemModifier_111;
    l1 = self.box_RestrictedItemModifier_v2_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|618665345", "618665345", "MIS_320_B20", "box_InventoryItemModifier_111.Out", "box_RestrictedItemModifier_v2_145.AddItemRestriction", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddItemRestriction
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_173_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_173;
    l1 = self.box_MIS_320_B20_WorkAlertLogic_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1392745739", "1392745739", "MIS_320_B20", "box_OnceOnly_v3_173.Out", "box_MIS_320_B20_WorkAlertLogic_39.Start Alert", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start Alert
    l1:Exec(0, {
    });
end;

function export:f_box_RemoveEntity_v2_132_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_167();
    l0 = self.box_RemoveEntity_v2_132;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|994118853", "994118853", "MIS_320_B20", "box_RemoveEntity_v2_132.Out", "box_MissionBlockLayer_167.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerSpeedModifier_v3_98_ApplySpeedFactorOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = self.box_PlayerSpeedModifier_v3_98;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1650018273", "1650018273", "MIS_320_B20", "box_PlayerSpeedModifier_v3_98.ApplySpeedFactorOut", "box_OutputOrder_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_320_B20_FactoryDayEnd_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_25();
    l0 = self.box_MIS_320_B20_FactoryDayEnd_13;
    l1 = self.box_PositionModifier_v2_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|35700849", "35700849", "MIS_320_B20", "box_MIS_320_B20_FactoryDayEnd_13.Out", "box_PositionModifier_v2_25.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_49_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_21();
    l0 = self.box_NavLinkModifier_49;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1694929645", "1694929645", "MIS_320_B20", "box_NavLinkModifier_49.Activated", "box_SetBoolean_v2_21.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_226_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_226;
    l1 = self.box_OnceOnly_v3_231;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1797308633", "1797308633", "MIS_320_B20", "box_MultipleAND_v2_226.Out", "box_OnceOnly_v3_231.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MIS_320_DoorManager_151_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGender_146();
    l0 = self.box_MIS_320_DoorManager_151;
    l1 = self.box_GetPlayerGender_146;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|100354234", "100354234", "MIS_320_B20", "box_MIS_320_DoorManager_151.Out", "box_GetPlayerGender_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_110_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_320_PlayerLock_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2092902145", "2092902145", "MIS_320_B20", "box_OutputOrder_v2_110.Out", "box_MIS_320_PlayerLock_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_110_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_109();
    l0 = self.box_MultipleAND_v2_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2113838718", "2113838718", "MIS_320_B20", "box_OutputOrder_v2_110.Out", "box_MultipleAND_v2_109.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_PlayDialog_v6_117_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_117;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1674322135", "1674322135", "MIS_320_B20", "box_PlayDialog_v6_117.Finished", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_117_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_117;
    l1 = self.box_MultipleOR_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|852258858", "852258858", "MIS_320_B20", "box_PlayDialog_v6_117.FinishedInterrupted", "box_MultipleOR_121.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_184_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_172();
    l0 = self.box_Gate_v3_184;
    l1 = self.box_MultipleAND_v2_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|334808371", "334808371", "MIS_320_B20", "box_Gate_v3_184.Out", "box_MultipleAND_v2_172.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_CoopActivePlayers_190_OnePlayer()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_190;
    l1 = self.box_MultipleOR_230;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1749383419", "1749383419", "MIS_320_B20", "box_CoopActivePlayers_190.OnePlayer", "box_MultipleOR_230.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_190_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_227();
    l0 = self.box_CoopActivePlayers_190;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|537762792", "537762792", "MIS_320_B20", "box_CoopActivePlayers_190.PlayerAdded", "box_Simple_Node_227.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_190_PlayerRemoved()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_190;
    l1 = self.box_MultipleOR_230;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1014547695", "1014547695", "MIS_320_B20", "box_CoopActivePlayers_190.PlayerRemoved", "box_MultipleOR_230.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CoopActivePlayers_190_TwoPlayers()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_221();
    l0 = self.box_CoopActivePlayers_190;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|116906237", "116906237", "MIS_320_B20", "box_CoopActivePlayers_190.TwoPlayers", "box_OutputOrder_v2_221.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_175_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_175;
    l1 = self.box_MIS_320_B20_WorkAlertLogic_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1688748707", "1688748707", "MIS_320_B20", "box_MultipleOR_175.Out", "box_MIS_320_B20_WorkAlertLogic_39.Stop Alert", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop Alert
    l1:Exec(1, {
    });
end;

function export:f_box_MIS_320_B20_FactoryWarnLogic_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_179();
    l0 = self.box_MIS_320_B20_FactoryWarnLogic_70;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1530792530", "1530792530", "MIS_320_B20", "box_MIS_320_B20_FactoryWarnLogic_70.Out", "box_Print_v2_179.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_320_B20_FactoryWarnLogic_70_Start_Alert()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_174();
    l0 = self.box_MIS_320_B20_FactoryWarnLogic_70;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|793154027", "793154027", "MIS_320_B20", "box_MIS_320_B20_FactoryWarnLogic_70.Start Alert", "box_OutputOrder_v2_174.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_320_B20_FactoryWarnLogic_70_Stop_Alert()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_130();
    l0 = self.box_MIS_320_B20_FactoryWarnLogic_70;
    l1 = self.box_MultipleAND_v2_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2090801745", "2090801745", "MIS_320_B20", "box_MIS_320_B20_FactoryWarnLogic_70.Stop Alert", "box_MultipleAND_v2_130.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_CoopActivePlayers_1_OnePlayer()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_1_OnePlayer();
    l0 = self.box_CoopActivePlayers_1;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1195222659", "1195222659", "MIS_320_B20", "box_CoopActivePlayers_1.OnePlayer", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_1_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_20();
    l0 = self.box_CoopActivePlayers_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|973156108", "973156108", "MIS_320_B20", "box_CoopActivePlayers_1.PlayerAdded", "box_Simple_Node_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_1_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_1_TwoPlayers();
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = self.box_CoopActivePlayers_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1420106995", "1420106995", "MIS_320_B20", "box_CoopActivePlayers_1.TwoPlayers", "box_OutputOrder_v2_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_207_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_206();
    l0 = self.box_Delay_v5_207;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|992607263", "992607263", "MIS_320_B20", "box_Delay_v5_207.TimeElapsed", "box_ActivityRetry_v2_206.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_228_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_228_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_229();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|814962243", "814962243", "MIS_320_B20", "box_GetLocalPlayer_v2_228.Out", "box_SetEntity_v2_229.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_102_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_102_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_101();
    l0 = self.box_TeleportPawns_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1762797566", "1762797566", "MIS_320_B20", "box_GetLocalPlayer_v2_102.Out", "box_TeleportPawns_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_21_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_21_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_42();
    l0 = self.box_SoundModifier_v2_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|917478897", "917478897", "MIS_320_B20", "box_SetBoolean_v2_21.Out", "box_SoundModifier_v2_42.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_TimeOfDayListener_32_Enabled()
    local l0, l1;
    l0 = self.box_TimeOfDayListener_32;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1879401798", "1879401798", "MIS_320_B20", "box_TimeOfDayListener_32.Enabled", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TimeOfDayListener_32_HourChanged()
    local l0, l1;
    self:OnExit_box_TimeOfDayListener_32_HourChanged();
    l0 = self.box_TimeOfDayListener_32;
    l1 = self.box_MultipleOR_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1228802061", "1228802061", "MIS_320_B20", "box_TimeOfDayListener_32.HourChanged", "box_MultipleOR_30.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SoundModifier_v2_157_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_156();
    l0 = self.box_SoundModifier_v2_157;
    l1 = self.box_SoundModifier_v2_156;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1092911351", "1092911351", "MIS_320_B20", "box_SoundModifier_v2_157.Started", "box_SoundModifier_v2_156.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_176_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_183();
    l0 = self.box_Gate_v3_183;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1097622489", "1097622489", "MIS_320_B20", "box_OutputOrder_v2_176.Out", "box_Gate_v3_183.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_176_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1807782631", "1807782631", "MIS_320_B20", "box_OutputOrder_v2_176.Out", "box_MultipleOR_177.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_176_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_185;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|297325551", "297325551", "MIS_320_B20", "box_OutputOrder_v2_176.Out", "box_MultipleOR_185.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UniversalInteractionListener_219_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_222();
    l0 = self.box_UniversalInteractionListener_219;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|15600600", "15600600", "MIS_320_B20", "box_UniversalInteractionListener_219.Interacted", "box_SetEntity_v2_222.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_174_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_182();
    l0 = self.box_Gate_v3_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1024695803", "1024695803", "MIS_320_B20", "box_OutputOrder_v2_174.Out", "box_Gate_v3_182.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_174_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|76767674", "76767674", "MIS_320_B20", "box_OutputOrder_v2_174.Out", "box_MultipleOR_177.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_174_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_183();
    l0 = self.box_Gate_v3_183;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1798743305", "1798743305", "MIS_320_B20", "box_OutputOrder_v2_174.Out", "box_Gate_v3_183.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_174_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_184();
    l0 = self.box_Gate_v3_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1358482582", "1358482582", "MIS_320_B20", "box_OutputOrder_v2_174.Out", "box_Gate_v3_184.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_NoWeaponMode_v3_38_OnEnter()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_46();
    l0 = self.box_NoWeaponMode_v3_38;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|676497023", "676497023", "MIS_320_B20", "box_NoWeaponMode_v3_38.OnEnter", "box_CHEAT_SetEnvironmentTimeScale_46.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_89_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_86();
    l0 = self.box_SoundModifier_v2_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1759472050", "1759472050", "MIS_320_B20", "box_OutputOrder_v2_89.Out", "box_SoundModifier_v2_86.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_89_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_87();
    l0 = self.box_SoundModifier_v2_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|462375747", "462375747", "MIS_320_B20", "box_OutputOrder_v2_89.Out", "box_SoundModifier_v2_87.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_156_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_160();
    l0 = self.box_SoundModifier_v2_156;
    l1 = self.box_SoundModifier_v2_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|665432043", "665432043", "MIS_320_B20", "box_SoundModifier_v2_156.Started", "box_SoundModifier_v2_160.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MIS_320_PlayerLock_16_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_135();
    l0 = self.box_MIS_320_PlayerLock_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|159430396", "159430396", "MIS_320_B20", "box_MIS_320_PlayerLock_16.Disabled", "box_OutputOrder_v2_135.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_320_PlayerLock_16_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_136();
    l0 = self.box_MIS_320_PlayerLock_16;
    l1 = self.box_Delay_v5_136;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1512521143", "1512521143", "MIS_320_B20", "box_MIS_320_PlayerLock_16.Enabled", "box_Delay_v5_136.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_231_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_233();
    l0 = self.box_OnceOnly_v3_231;
    l1 = self.box_Gate_v3_233;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|7626157", "7626157", "MIS_320_B20", "box_OnceOnly_v3_231.Out", "box_Gate_v3_233.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MIS_320_B20_WorkAlertLogic_225_Player_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_166();
    l0 = self.box_MIS_320_B20_WorkAlertLogic_225;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|100006921", "100006921", "MIS_320_B20", "box_MIS_320_B20_WorkAlertLogic_225.Player Detected", "box_Simple_Node_166.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_144_PlayerAdded()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_144_PlayerAdded();
    l0 = self.box_CoopActivePlayers_144;
    l1 = self.box_MIS_320_DoorManager_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1296961019", "1296961019", "MIS_320_B20", "box_CoopActivePlayers_144.PlayerAdded", "box_MIS_320_DoorManager_151.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, {
    });
end;

function export:f_box_CoopActivePlayers_144_PlayerRemoved()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_144_PlayerRemoved();
    params = self:OnEnter_box_Simple_Node_113();
    l0 = self.box_CoopActivePlayers_144;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|779591335", "779591335", "MIS_320_B20", "box_CoopActivePlayers_144.PlayerRemoved", "box_Simple_Node_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_67_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_69();
    l0 = self.box_MultipleOR_67;
    l1 = self.box_UniversalInteractionModifier_v2_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|820258221", "820258221", "MIS_320_B20", "box_MultipleOR_67.Out", "box_UniversalInteractionModifier_v2_69.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_163_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_234();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2085643822", "2085643822", "MIS_320_B20", "box_OutputOrder_v2_163.Out", "box_Compare_Boolean_234.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_163_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UnlockDoor_162();
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|816110954", "816110954", "MIS_320_B20", "box_OutputOrder_v2_163.Out", "box_UnlockDoor_162.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_78_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_98();
    l0 = self.box_IgnoreSignal_v2_78;
    l1 = self.box_PlayerSpeedModifier_v3_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1040338172", "1040338172", "MIS_320_B20", "box_IgnoreSignal_v2_78.Enabled", "box_PlayerSpeedModifier_v3_98.ApplySpeedFactor", l0:GetLuaBox(), l1:GetLuaBox());
    -- ApplySpeedFactor
    l1:Exec(0, params);
end;

function export:f_box_PlayerSpeedModifier_v3_72_ApplySpeedFactorOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_PlayerSpeedModifier_v3_72;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|681004596", "681004596", "MIS_320_B20", "box_PlayerSpeedModifier_v3_72.ApplySpeedFactorOut", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_22_Out()
    self:OnExit_box_SetBoolean_v2_22_Out();
end;

function export:f_box_Delay_v5_53_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_56();
    l0 = self.box_Delay_v5_53;
    l1 = self.box_SoundModifier_v2_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1183075605", "1183075605", "MIS_320_B20", "box_Delay_v5_53.TimeElapsed", "box_SoundModifier_v2_56.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_96_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TimeOfDayListener_32();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_96;
    l1 = self.box_TimeOfDayListener_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1943107335", "1943107335", "MIS_320_B20", "box_CHEAT_SetEnvironmentTimeScale_96.Out", "box_TimeOfDayListener_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_36_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_36();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|916790220", "916790220", "MIS_320_B20", "box_UseContextualActionModifier_v3_36.Enabled", "box_UseContextualActionModifier_v3_36.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_36_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_23();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1971129007", "1971129007", "MIS_320_B20", "box_UseContextualActionModifier_v3_36.UseCalled", "box_SetBoolean_v2_23.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IgnoreSignal_v2_77();
    l0 = self.box_IgnoreSignal_v2_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|926333984", "926333984", "MIS_320_B20", "box_OutputOrder_v2_8.Out", "box_IgnoreSignal_v2_77.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_83();
    l0 = self.box_PositionModifier_v2_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|194671536", "194671536", "MIS_320_B20", "box_OutputOrder_v2_8.Out", "box_PositionModifier_v2_83.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_37();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1678841033", "1678841033", "MIS_320_B20", "box_OutputOrder_v2_8.Out", "box_CHEAT_SetEnvironmentTimeScale_37.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_8_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_212();
    l0 = self.box_Music_Quest_v2_212;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1885763000", "1885763000", "MIS_320_B20", "box_OutputOrder_v2_8.Out", "box_Music_Quest_v2_212.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_149();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1927142226", "1927142226", "MIS_320_B20", "box_OutputOrder_v2_8.Out", "box_Simple_Node_149.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_138_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_138;
    l1 = self.box_OnceOnly_v3_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|861582081", "861582081", "MIS_320_B20", "box_MultipleOR_138.Out", "box_OnceOnly_v3_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|287507776", "287507776", "MIS_320_B20", "box_MultipleOR_2.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TimeOfDayListener_44();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_43;
    l1 = self.box_TimeOfDayListener_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|906833732", "906833732", "MIS_320_B20", "box_CHEAT_SetEnvironmentTimeScale_43.Out", "box_TimeOfDayListener_44.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_171_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_171;
    l1 = self.box_MultipleOR_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|750190534", "750190534", "MIS_320_B20", "box_MultipleAND_v2_171.Out", "box_MultipleOR_175.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_204_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_204;
    l1 = self.box_JoinInProgressModifier_217;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|274160855", "274160855", "MIS_320_B20", "box_OnceOnly_v3_204.Out", "box_JoinInProgressModifier_217.LockSession", l0:GetLuaBox(), l1:GetLuaBox());
    -- LockSession
    l1:Exec(0, {
    });
end;

function export:f_box_SetTimeOfDay_104_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|617473035", "617473035", "MIS_320_B20", "box_SetTimeOfDay_104.Out", "box_MultipleOR_2.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MIS_320_B20_WalkToCheckpoint_28_Door_to_Outside_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_106();
    l0 = self.box_MIS_320_B20_WalkToCheckpoint_28;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1206928612", "1206928612", "MIS_320_B20", "box_MIS_320_B20_WalkToCheckpoint_28.Door to Outside Closed", "box_Simple_Node_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_320_B20_WalkToCheckpoint_28_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_72();
    l0 = self.box_MIS_320_B20_WalkToCheckpoint_28;
    l1 = self.box_PlayerSpeedModifier_v3_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|88422445", "88422445", "MIS_320_B20", "box_MIS_320_B20_WalkToCheckpoint_28.Finished", "box_PlayerSpeedModifier_v3_72.ApplySpeedFactor", l0:GetLuaBox(), l1:GetLuaBox());
    -- ApplySpeedFactor
    l1:Exec(0, params);
end;

function export:f_box_MIS_320_B20_WalkToCheckpoint_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LeashOverride_100();
    l0 = self.box_MIS_320_B20_WalkToCheckpoint_28;
    l1 = self.box_LeashOverride_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1979888226", "1979888226", "MIS_320_B20", "box_MIS_320_B20_WalkToCheckpoint_28.Out", "box_LeashOverride_100.UseCustomLeash", l0:GetLuaBox(), l1:GetLuaBox());
    -- UseCustomLeash
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_239_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_188();
    l0 = self.box_MultipleOR_239;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2039063795", "2039063795", "MIS_320_B20", "box_MultipleOR_239.Out", "box_ActivityObjectiveMarkerModifier_v3_188.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_185_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_182();
    l0 = self.box_MultipleOR_185;
    l1 = self.box_Gate_v3_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|227485611", "227485611", "MIS_320_B20", "box_MultipleOR_185.Out", "box_Gate_v3_182.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_128_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_128;
    l1 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1798246693", "1798246693", "MIS_320_B20", "box_MultipleOR_128.Out", "box_MultipleOR_122.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_SetBoolean_v2_23_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_23_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_147();
    l0 = self.box_PlayDialog_v6_147;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|61880924", "61880924", "MIS_320_B20", "box_SetBoolean_v2_23.Out", "box_PlayDialog_v6_147.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ManagePlayerInventory_26();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_46;
    l1 = self.box_ManagePlayerInventory_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|398159064", "398159064", "MIS_320_B20", "box_CHEAT_SetEnvironmentTimeScale_46.Out", "box_ManagePlayerInventory_26.RestrictItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- RestrictItems
    l1:Exec(3, params);
end;

function export:f_box_EntityStatusListener_201_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_203();
    l0 = self.box_EntityStatusListener_201;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1314406027", "1314406027", "MIS_320_B20", "box_EntityStatusListener_201.Loaded", "box_SetEntity_v2_203.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_237_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_237;
    l1 = self.box_MultipleOR_239;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1631325581", "1631325581", "MIS_320_B20", "box_CoopActivePlayers_237.PlayerAdded", "box_MultipleOR_239.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CoopActivePlayers_237_TwoPlayers()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_237;
    l1 = self.box_MultipleOR_239;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1012960966", "1012960966", "MIS_320_B20", "box_CoopActivePlayers_237.TwoPlayers", "box_MultipleOR_239.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleAND_v2_130_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_130;
    l1 = self.box_MultipleOR_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1729065012", "1729065012", "MIS_320_B20", "box_MultipleAND_v2_130.Out", "box_MultipleOR_175.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_118_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_129();
    l0 = self.box_Delay_v5_118;
    l1 = self.box_Gate_v3_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1826783368", "1826783368", "MIS_320_B20", "box_Delay_v5_118.TimeElapsed", "box_Gate_v3_129.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_159_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|92171737", "92171737", "MIS_320_B20", "box_OutputOrder_v2_159.Out", "box_MultipleOR_131.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_159_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|525200369", "525200369", "MIS_320_B20", "box_OutputOrder_v2_159.Out", "box_MultipleOR_169.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_240_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_69();
    l0 = self.box_MultipleOR_240;
    l1 = self.box_UniversalInteractionModifier_v2_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|293423874", "293423874", "MIS_320_B20", "box_MultipleOR_240.Out", "box_UniversalInteractionModifier_v2_69.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_142();
    l0 = self.box_SpawnAI_33;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1716858643", "1716858643", "MIS_320_B20", "box_SpawnAI_33.Out", "box_OutputOrder_v2_142.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|575761846", "575761846", "MIS_320_B20", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_33();
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_SpawnAI_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|405314920", "405314920", "MIS_320_B20", "box_ActivityAcknowledgeGate_4.Reloaded", "box_SpawnAI_33.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_124_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_124;
    l1 = self.box_MultipleOR_126;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|497681757", "497681757", "MIS_320_B20", "box_PlayDialog_v6_124.Finished", "box_MultipleOR_126.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_124_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_124;
    l1 = self.box_MultipleOR_126;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|127491832", "127491832", "MIS_320_B20", "box_PlayDialog_v6_124.FinishedInterrupted", "box_MultipleOR_126.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_71_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_71_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_195();
    l0 = self.box_TeleportPawns_195;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1004119109", "1004119109", "MIS_320_B20", "box_SetBoolean_v2_71.Out", "box_TeleportPawns_195.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GunsForHireSystemModifier_168_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_66();
    l0 = self.box_GunsForHireSystemModifier_168;
    l1 = self.box_PositionModifier_v2_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1761982059", "1761982059", "MIS_320_B20", "box_GunsForHireSystemModifier_168.Disabled", "box_PositionModifier_v2_66.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_115_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_115;
    l1 = self.box_MultipleOR_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1767730630", "1767730630", "MIS_320_B20", "box_PlayDialog_v6_115.Finished", "box_MultipleOR_119.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_115_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_115;
    l1 = self.box_MultipleOR_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1836469035", "1836469035", "MIS_320_B20", "box_PlayDialog_v6_115.FinishedInterrupted", "box_MultipleOR_119.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_208_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_216();
    l0 = self.box_Music_Quest_v2_216;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1200815590", "1200815590", "MIS_320_B20", "box_OutputOrder_v2_208.Out", "box_Music_Quest_v2_216.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_208_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_207();
    l0 = self.box_Delay_v5_207;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|868059623", "868059623", "MIS_320_B20", "box_OutputOrder_v2_208.Out", "box_Delay_v5_207.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_155_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_155_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_157();
    l0 = self.box_SoundModifier_v2_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1752362000", "1752362000", "MIS_320_B20", "box_SetBoolean_v2_155.Out", "box_SoundModifier_v2_157.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_230_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_230;
    l1 = self.box_OnceOnly_v3_232;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|258991296", "258991296", "MIS_320_B20", "box_MultipleOR_230.Out", "box_OnceOnly_v3_232.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_59();
    l0 = self.box_SoundModifier_v2_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1374310978", "1374310978", "MIS_320_B20", "box_OutputOrder_v2_76.Out", "box_SoundModifier_v2_59.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_34();
    l0 = self.box_PositionModifier_v2_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|440019139", "440019139", "MIS_320_B20", "box_OutputOrder_v2_76.Out", "box_PositionModifier_v2_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_112_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryLoadoutModifier_210();
    l0 = self.box_IgnoreSignal_v2_112;
    l1 = self.box_InventoryLoadoutModifier_210;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1036601844", "1036601844", "MIS_320_B20", "box_IgnoreSignal_v2_112.Enabled", "box_InventoryLoadoutModifier_210.Backup", l0:GetLuaBox(), l1:GetLuaBox());
    -- Backup
    l1:Exec(0, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TimeOfDayListener_44();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_37;
    l1 = self.box_TimeOfDayListener_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1375423781", "1375423781", "MIS_320_B20", "box_CHEAT_SetEnvironmentTimeScale_37.Out", "box_TimeOfDayListener_44.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_194_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_193();
    l0 = self.box_PositionModifier_v2_194;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1459509952", "1459509952", "MIS_320_B20", "box_PositionModifier_v2_194.StartOut", "box_SetBoolean_v2_193.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_183_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_171();
    l0 = self.box_Gate_v3_183;
    l1 = self.box_MultipleAND_v2_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1025318680", "1025318680", "MIS_320_B20", "box_Gate_v3_183.Out", "box_MultipleAND_v2_171.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_EntityStatusListener_200_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_202();
    l0 = self.box_EntityStatusListener_200;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1614242569", "1614242569", "MIS_320_B20", "box_EntityStatusListener_200.Loaded", "box_SetEntity_v2_202.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_120_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_120;
    l1 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1932117418", "1932117418", "MIS_320_B20", "box_MultipleOR_120.Out", "box_MultipleOR_122.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_320_PlayerLock_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|602035399", "602035399", "MIS_320_B20", "box_OutputOrder_v2_52.Out", "box_MIS_320_PlayerLock_16.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_58();
    l0 = self.box_SoundModifier_v2_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|799256007", "799256007", "MIS_320_B20", "box_OutputOrder_v2_52.Out", "box_SoundModifier_v2_58.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_52_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_57();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|209245126", "209245126", "MIS_320_B20", "box_OutputOrder_v2_52.Out", "box_SoundShapeModifier_57.Pause", clone:GetLuaBox(), l0:GetLuaBox());
    -- Pause
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_35();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1691674700", "1691674700", "MIS_320_B20", "box_OutputOrder_v2_52.Out", "box_SetTimeOfDay_35.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_99();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1634346044", "1634346044", "MIS_320_B20", "box_OutputOrder_v2_52.Out", "box_SoundShapeModifier_99.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_214();
    l0 = self.box_Music_Quest_v2_214;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1196369108", "1196369108", "MIS_320_B20", "box_OutputOrder_v2_52.Out", "box_Music_Quest_v2_214.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_82();
    l0 = self.box_PlaySequence_v8_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1603688872", "1603688872", "MIS_320_B20", "box_OutputOrder_v2_10.Out", "box_PlaySequence_v8_82.PlayFromStart", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayFromStart
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_96();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1464700125", "1464700125", "MIS_320_B20", "box_OutputOrder_v2_10.Out", "box_CHEAT_SetEnvironmentTimeScale_96.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_34_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = self.box_PositionModifier_v2_34;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1235594179", "1235594179", "MIS_320_B20", "box_PositionModifier_v2_34.Done", "box_OutputOrder_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_215_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_320_B20_LookAtTwins_192;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1322272987", "1322272987", "MIS_320_B20", "box_OutputOrder_v2_215.Out", "box_MIS_320_B20_LookAtTwins_192.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_215_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_213();
    l0 = self.box_SoundModifier_v2_213;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|528559743", "528559743", "MIS_320_B20", "box_OutputOrder_v2_215.Out", "box_SoundModifier_v2_213.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_241_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_94();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1391577833", "1391577833", "MIS_320_B20", "box_OutputOrder_v2_241.Out", "box_Simple_Node_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_241_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_108();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1649037427", "1649037427", "MIS_320_B20", "box_OutputOrder_v2_241.Out", "box_Simple_Node_108.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_119_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_119;
    l1 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1451931942", "1451931942", "MIS_320_B20", "box_MultipleOR_119.Out", "box_MultipleOR_122.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_205_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_205;
    l1 = self.box_OnceOnly_v3_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|929066725", "929066725", "MIS_320_B20", "box_MultipleOR_205.Out", "box_OnceOnly_v3_204.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Interact_With_Object_NoDisable_211_Success()
    local l0, l1;
    l0 = self.box_Brick_Interact_With_Object_NoDisable_211;
    l1 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|694697198", "694697198", "MIS_320_B20", "box_Brick_Interact_With_Object_NoDisable_211.Success", "box_MultipleOR_88.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_131_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_B20_FactoryWarnLogic_84();
    l0 = self.box_MultipleOR_131;
    l1 = self.box_MIS_320_B20_FactoryWarnLogic_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|892811538", "892811538", "MIS_320_B20", "box_MultipleOR_131.Out", "box_MIS_320_B20_FactoryWarnLogic_84.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_122_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_118();
    l0 = self.box_MultipleOR_122;
    l1 = self.box_Delay_v5_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|491618553", "491618553", "MIS_320_B20", "box_MultipleOR_122.Out", "box_Delay_v5_118.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_232_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_228();
    l0 = self.box_OnceOnly_v3_232;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1636818631", "1636818631", "MIS_320_B20", "box_OnceOnly_v3_232.Out", "box_GetLocalPlayer_v2_228.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_97_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_241();
    l0 = self.box_Delay_v5_97;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|528588721", "528588721", "MIS_320_B20", "box_Delay_v5_97.Started", "box_OutputOrder_v2_241.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_97_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_Delay_v5_97;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|463699764", "463699764", "MIS_320_B20", "box_Delay_v5_97.TimeElapsed", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_121_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_121;
    l1 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1229541749", "1229541749", "MIS_320_B20", "box_MultipleOR_121.Out", "box_MultipleOR_122.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ManagePlayerInventory_26_Restricted()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_104();
    l0 = self.box_ManagePlayerInventory_26;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|931155217", "931155217", "MIS_320_B20", "box_ManagePlayerInventory_26.Restricted", "box_SetTimeOfDay_104.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_74_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = self.box_OnceOnly_v3_74;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2141627659", "2141627659", "MIS_320_B20", "box_OnceOnly_v3_74.Out", "box_OutputOrder_v2_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGender_146_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_139();
    l0 = self.box_GetPlayerGender_146;
    l1 = self.box_MIS_320_GivePrisonerOutfit_139;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2059952684", "2059952684", "MIS_320_B20", "box_GetPlayerGender_146.Female", "box_MIS_320_GivePrisonerOutfit_139.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_146_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_139();
    l0 = self.box_GetPlayerGender_146;
    l1 = self.box_MIS_320_GivePrisonerOutfit_139;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2061532115", "2061532115", "MIS_320_B20", "box_GetPlayerGender_146.Male", "box_MIS_320_GivePrisonerOutfit_139.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_141_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_148();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|169197655", "169197655", "MIS_320_B20", "box_SetContextualStrategy_141.Out", "box_MissionBlockLayer_148.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_48_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_43();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|529025958", "529025958", "MIS_320_B20", "box_Compare_Integers_48.A_ge_B", "box_CHEAT_SetEnvironmentTimeScale_43.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_167_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_198();
    l0 = self.box_NavLinkModifier_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2082938553", "2082938553", "MIS_320_B20", "box_MissionBlockLayer_167.Disabled", "box_NavLinkModifier_198.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_40_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_36();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2092460432", "2092460432", "MIS_320_B20", "box_UseContextualActionModifier_v3_40.Disabled", "box_UseContextualActionModifier_v3_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_11_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_29();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1085561506", "1085561506", "MIS_320_B20", "box_Compare_Integers_11.A_ge_B", "box_CHEAT_SetEnvironmentTimeScale_29.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_SetEntity_v2_222_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_222_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_226();
    l0 = self.box_MultipleAND_v2_226;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2089209257", "2089209257", "MIS_320_B20", "box_SetEntity_v2_222.Out", "box_MultipleAND_v2_226.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_GetPlayerGender_64_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_31();
    l0 = self.box_GetPlayerGender_64;
    l1 = self.box_MIS_320_GivePrisonerOutfit_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1186820114", "1186820114", "MIS_320_B20", "box_GetPlayerGender_64.Female", "box_MIS_320_GivePrisonerOutfit_31.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_64_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_31();
    l0 = self.box_GetPlayerGender_64;
    l1 = self.box_MIS_320_GivePrisonerOutfit_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1002311242", "1002311242", "MIS_320_B20", "box_GetPlayerGender_64.Male", "box_MIS_320_GivePrisonerOutfit_31.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_169_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_B20_FactoryWarnLogic_85();
    l0 = self.box_MultipleOR_169;
    l1 = self.box_MIS_320_B20_FactoryWarnLogic_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1800943863", "1800943863", "MIS_320_B20", "box_MultipleOR_169.Out", "box_MIS_320_B20_FactoryWarnLogic_85.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_66_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_71();
    l0 = self.box_PositionModifier_v2_66;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2061312052", "2061312052", "MIS_320_B20", "box_PositionModifier_v2_66.StartOut", "box_SetBoolean_v2_71.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_123_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_114();
    l0 = self.box_MultipleOR_123;
    l1 = self.box_Switch_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|242848387", "242848387", "MIS_320_B20", "box_MultipleOR_123.Out", "box_Switch_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_182_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_130();
    l0 = self.box_Gate_v3_182;
    l1 = self.box_MultipleAND_v2_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1474450616", "1474450616", "MIS_320_B20", "box_Gate_v3_182.Out", "box_MultipleAND_v2_130.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_PositionModifier_v2_83_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_40();
    l0 = self.box_PositionModifier_v2_83;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|644426349", "644426349", "MIS_320_B20", "box_PositionModifier_v2_83.StartOut", "box_UseContextualActionModifier_v3_40.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_63_OnePlayer()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_63;
    l1 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|359643485", "359643485", "MIS_320_B20", "box_CoopActivePlayers_63.OnePlayer", "box_MultipleOR_67.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_63_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_63;
    l1 = self.box_MultipleOR_240;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1508925280", "1508925280", "MIS_320_B20", "box_CoopActivePlayers_63.PlayerAdded", "box_MultipleOR_240.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CoopActivePlayers_63_PlayerRemoved()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_63;
    l1 = self.box_MultipleOR_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|842365976", "842365976", "MIS_320_B20", "box_CoopActivePlayers_63.PlayerRemoved", "box_MultipleOR_67.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CoopActivePlayers_63_TwoPlayers()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_63;
    l1 = self.box_MultipleOR_240;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1130254516", "1130254516", "MIS_320_B20", "box_CoopActivePlayers_63.TwoPlayers", "box_MultipleOR_240.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_234_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_161();
    l0 = self.box_PositionModifier_v2_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|884972138", "884972138", "MIS_320_B20", "box_Compare_Boolean_234.A_is_False", "box_PositionModifier_v2_161.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_48();
    l0 = self.box_MultipleOR_47;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|250211277", "250211277", "MIS_320_B20", "box_MultipleOR_47.Out", "box_Compare_Integers_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_45_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_112();
    l0 = self.box_IgnoreSignal_v2_45;
    l1 = self.box_IgnoreSignal_v2_112;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|398283873", "398283873", "MIS_320_B20", "box_IgnoreSignal_v2_45.Enabled", "box_IgnoreSignal_v2_112.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_126_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_126;
    l1 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1058317541", "1058317541", "MIS_320_B20", "box_MultipleOR_126.Out", "box_MultipleOR_122.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OutputOrder_v2_238_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_237;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1804880231", "1804880231", "MIS_320_B20", "box_OutputOrder_v2_238.Out", "box_CoopActivePlayers_237.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_238_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_188();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|120998714", "120998714", "MIS_320_B20", "box_OutputOrder_v2_238.Out", "box_ActivityObjectiveMarkerModifier_v3_188.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_170_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_B20_FactoryWarnLogic_70();
    l0 = self.box_MultipleOR_170;
    l1 = self.box_MIS_320_B20_FactoryWarnLogic_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1094537801", "1094537801", "MIS_320_B20", "box_MultipleOR_170.Out", "box_MIS_320_B20_FactoryWarnLogic_70.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_129_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_129;
    l1 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|248542142", "248542142", "MIS_320_B20", "box_Gate_v3_129.Out", "box_MultipleOR_123.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_TeleportPawns_134_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_165();
    l0 = self.box_TeleportPawns_134;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1094778270", "1094778270", "MIS_320_B20", "box_TeleportPawns_134.Out", "box_Simple_Node_165.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_193_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_193_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryLoadoutModifier_209();
    l0 = self.box_InventoryLoadoutModifier_209;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|627355885", "627355885", "MIS_320_B20", "box_SetBoolean_v2_193.Out", "box_InventoryLoadoutModifier_209.Backup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Backup
    l0:Exec(0, params);
end;

function export:f_box_JoinInProgressModifier_217_OnLockSession()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = self.box_JoinInProgressModifier_217;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|744852241", "744852241", "MIS_320_B20", "box_JoinInProgressModifier_217.OnLockSession", "box_OutputOrder_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_191_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_NoDisable_12();
    l0 = self.box_Brick_Interact_With_Object_NoDisable_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|188639498", "188639498", "MIS_320_B20", "box_OutputOrder_v2_191.Out", "box_Brick_Interact_With_Object_NoDisable_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_191_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_320_B20_LookAtTwins_192;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|528941078", "528941078", "MIS_320_B20", "box_OutputOrder_v2_191.Out", "box_MIS_320_B20_LookAtTwins_192.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_Switch_114_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_115();
    l0 = self.box_Switch_114;
    l1 = self.box_PlayDialog_v6_115;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|858272150", "858272150", "MIS_320_B20", "box_Switch_114.Output", "box_PlayDialog_v6_115.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_114_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_125();
    l0 = self.box_Switch_114;
    l1 = self.box_PlayDialog_v6_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2053054718", "2053054718", "MIS_320_B20", "box_Switch_114.Output", "box_PlayDialog_v6_125.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_114_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_117();
    l0 = self.box_Switch_114;
    l1 = self.box_PlayDialog_v6_117;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|905287836", "905287836", "MIS_320_B20", "box_Switch_114.Output", "box_PlayDialog_v6_117.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_114_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_116();
    l0 = self.box_Switch_114;
    l1 = self.box_PlayDialog_v6_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|57892499", "57892499", "MIS_320_B20", "box_Switch_114.Output", "box_PlayDialog_v6_116.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_114_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_124();
    l0 = self.box_Switch_114;
    l1 = self.box_PlayDialog_v6_124;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1655874119", "1655874119", "MIS_320_B20", "box_Switch_114.Output", "box_PlayDialog_v6_124.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_178_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_184();
    l0 = self.box_Gate_v3_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1390990975", "1390990975", "MIS_320_B20", "box_OutputOrder_v2_178.Out", "box_Gate_v3_184.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_178_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2033369432", "2033369432", "MIS_320_B20", "box_OutputOrder_v2_178.Out", "box_MultipleOR_177.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_178_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_185;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1865617923", "1865617923", "MIS_320_B20", "box_OutputOrder_v2_178.Out", "box_MultipleOR_185.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_320_B20_StationWork_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1415525526", "1415525526", "MIS_320_B20", "box_OutputOrder_v2_17.Out", "box_MIS_320_B20_StationWork_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_320_B20_CloseFactoryCheckpoint_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1829281010", "1829281010", "MIS_320_B20", "box_OutputOrder_v2_17.Out", "box_MIS_320_B20_CloseFactoryCheckpoint_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_320_B20_SE_Guards_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1366719422", "1366719422", "MIS_320_B20", "box_OutputOrder_v2_17.Out", "box_MIS_320_B20_SE_Guards_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_GetPlayerGroup_v2_41_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_41_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_236();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|733962370", "733962370", "MIS_320_B20", "box_GetPlayerGroup_v2_41.Out", "box_ActivityForceAndLockTracking_236.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TimeOfDayListener_32();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_29;
    l1 = self.box_TimeOfDayListener_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1001151288", "1001151288", "MIS_320_B20", "box_CHEAT_SetEnvironmentTimeScale_29.Out", "box_TimeOfDayListener_32.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_SetEntity_v2_229_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_229_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_235();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2066091635", "2066091635", "MIS_320_B20", "box_SetEntity_v2_229.Out", "box_Simple_Node_235.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_243_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_24();
    l0 = self.box_Gate_v3_243;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|107485284", "107485284", "MIS_320_B20", "box_Gate_v3_243.Out", "box_EndActivityObjective_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_220_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_223();
    l0 = self.box_UniversalInteractionListener_220;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1699483794", "1699483794", "MIS_320_B20", "box_UniversalInteractionListener_220.Interacted", "box_SetEntity_v2_223.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_41();
    l0 = self.box_ActivityInitialized_5;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1634760398", "1634760398", "MIS_320_B20", "box_ActivityInitialized_5.Out", "box_GetPlayerGroup_v2_41.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_58_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_22();
    l0 = self.box_SoundModifier_v2_58;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|918388425", "918388425", "MIS_320_B20", "box_SoundModifier_v2_58.Started", "box_SetBoolean_v2_22.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_135_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_136();
    l0 = self.box_Delay_v5_136;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|282989977", "282989977", "MIS_320_B20", "box_OutputOrder_v2_135.Out", "box_Delay_v5_136.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_135_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_51();
    l0 = self.box_NavLinkModifier_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1533535268", "1533535268", "MIS_320_B20", "box_OutputOrder_v2_135.Out", "box_NavLinkModifier_51.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
end;

function export:f_box_MIS_320_B20_WorkAlertLogic_39_Alert_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_187();
    l0 = self.box_MIS_320_B20_WorkAlertLogic_39;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|582980478", "582980478", "MIS_320_B20", "box_MIS_320_B20_WorkAlertLogic_39.Alert Stopped", "box_Simple_Node_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_320_B20_WorkAlertLogic_39_Player_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_166();
    l0 = self.box_MIS_320_B20_WorkAlertLogic_39;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|139941847", "139941847", "MIS_320_B20", "box_MIS_320_B20_WorkAlertLogic_39.Player Detected", "box_Simple_Node_166.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_125_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_125;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1933735223", "1933735223", "MIS_320_B20", "box_PlayDialog_v6_125.Finished", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_125_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_125;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1875108941", "1875108941", "MIS_320_B20", "box_PlayDialog_v6_125.FinishedInterrupted", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_LeashOverride_100_OnLeashBroken()
    local params, l0, l1;
    self:OnExit_box_LeashOverride_100_OnLeashBroken();
    params = self:OnEnter_box_GetLocalPlayer_v2_102();
    l0 = self.box_LeashOverride_100;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1508218155", "1508218155", "MIS_320_B20", "box_LeashOverride_100.OnLeashBroken", "box_GetLocalPlayer_v2_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LeashOverride_100_OnLeashFinalWarning()
    self:OnExit_box_LeashOverride_100_OnLeashFinalWarning();
end;

function export:f_box_LeashOverride_100_OnLeashWarning()
    self:OnExit_box_LeashOverride_100_OnLeashWarning();
end;

function export:f_box_PlaySequence_v8_82_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_82;
    l1 = self.box_MultipleOR_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1626391331", "1626391331", "MIS_320_B20", "box_PlaySequence_v8_82.Finished", "box_MultipleOR_81.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_82_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_82;
    l1 = self.box_MultipleOR_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1529640855", "1529640855", "MIS_320_B20", "box_PlaySequence_v8_82.Skipped", "box_MultipleOR_81.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_82_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_133();
    l0 = self.box_PlaySequence_v8_82;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1582384189", "1582384189", "MIS_320_B20", "box_PlaySequence_v8_82.Started", "box_Simple_Node_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_65_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_197();
    l0 = self.box_Delay_v5_65;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|967390019", "967390019", "MIS_320_B20", "box_Delay_v5_65.Started", "box_OutputOrder_v2_197.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_65_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_186();
    l0 = self.box_Delay_v5_65;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|498768874", "498768874", "MIS_320_B20", "box_Delay_v5_65.TimeElapsed", "box_Simple_Node_186.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_195_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_196();
    l0 = self.box_TeleportPawns_195;
    l1 = self.box_Bind_v4_196;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|798716918", "798716918", "MIS_320_B20", "box_TeleportPawns_195.Out", "box_Bind_v4_196.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_224_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_224;
    l1 = self.box_MIS_320_B20_WorkAlertLogic_225;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1443143364", "1443143364", "MIS_320_B20", "box_Delay_v5_224.TimeElapsed", "box_MIS_320_B20_WorkAlertLogic_225.Start Alert", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start Alert
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_152_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_153();
    l0 = self.box_SoundModifier_v2_153;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1833856028", "1833856028", "MIS_320_B20", "box_OutputOrder_v2_152.Out", "box_SoundModifier_v2_153.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_152_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_154();
    l0 = self.box_SoundModifier_v2_154;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|620306702", "620306702", "MIS_320_B20", "box_OutputOrder_v2_152.Out", "box_SoundModifier_v2_154.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_172_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_172;
    l1 = self.box_MultipleOR_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|46791775", "46791775", "MIS_320_B20", "box_MultipleAND_v2_172.Out", "box_MultipleOR_175.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_136_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = self.box_Delay_v5_136;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1397721311", "1397721311", "MIS_320_B20", "box_Delay_v5_136.Started", "box_Simple_Node_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_136_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_134();
    l0 = self.box_Delay_v5_136;
    l1 = self.box_TeleportPawns_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1954195030", "1954195030", "MIS_320_B20", "box_Delay_v5_136.TimeElapsed", "box_TeleportPawns_134.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_127_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_127;
    l1 = self.box_MultipleOR_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|995794473", "995794473", "MIS_320_B20", "box_Delay_v5_127.TimeElapsed", "box_MultipleOR_123.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NavLinkModifier_51_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_132();
    l0 = self.box_NavLinkModifier_51;
    l1 = self.box_RemoveEntity_v2_132;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|853592632", "853592632", "MIS_320_B20", "box_NavLinkModifier_51.Deactivated", "box_RemoveEntity_v2_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_TimeOfDayListener_44_Enabled()
    local l0, l1;
    l0 = self.box_TimeOfDayListener_44;
    l1 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1612827393", "1612827393", "MIS_320_B20", "box_TimeOfDayListener_44.Enabled", "box_MultipleOR_47.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TimeOfDayListener_44_HourChanged()
    local l0, l1;
    self:OnExit_box_TimeOfDayListener_44_HourChanged();
    l0 = self.box_TimeOfDayListener_44;
    l1 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|749140046", "749140046", "MIS_320_B20", "box_TimeOfDayListener_44.HourChanged", "box_MultipleOR_47.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EndActivityObjective_v2_24_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_62();
    l0 = self.box_Reach_GoTo_v3_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|928152643", "928152643", "MIS_320_B20", "box_EndActivityObjective_v2_24.Out", "box_Reach_GoTo_v3_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MIS_320_B20_FactoryWarnLogic_84_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_180();
    l0 = self.box_MIS_320_B20_FactoryWarnLogic_84;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1460723765", "1460723765", "MIS_320_B20", "box_MIS_320_B20_FactoryWarnLogic_84.Out", "box_Print_v2_180.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_320_B20_FactoryWarnLogic_84_Start_Alert()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_176();
    l0 = self.box_MIS_320_B20_FactoryWarnLogic_84;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1211397822", "1211397822", "MIS_320_B20", "box_MIS_320_B20_FactoryWarnLogic_84.Start Alert", "box_OutputOrder_v2_176.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_320_B20_FactoryWarnLogic_84_Stop_Alert()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_171();
    l0 = self.box_MIS_320_B20_FactoryWarnLogic_84;
    l1 = self.box_MultipleAND_v2_171;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|904598578", "904598578", "MIS_320_B20", "box_MIS_320_B20_FactoryWarnLogic_84.Stop Alert", "box_MultipleAND_v2_171.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1718825919", "1718825919", "MIS_320_B20", "box_OutputOrder_v2_55.Out", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_55_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGender_64();
    l0 = self.box_GetPlayerGender_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|352189118", "352189118", "MIS_320_B20", "box_OutputOrder_v2_55.Out", "box_GetPlayerGender_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_109_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_109;
    l1 = self.box_MultipleOR_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1702880812", "1702880812", "MIS_320_B20", "box_MultipleAND_v2_109.Out", "box_MultipleOR_138.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_142_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NoWeaponMode_v3_38();
    l0 = self.box_NoWeaponMode_v3_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2074004275", "2074004275", "MIS_320_B20", "box_OutputOrder_v2_142.Out", "box_NoWeaponMode_v3_38.On", clone:GetLuaBox(), l0:GetLuaBox());
    -- On
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_142_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_140();
    l0 = self.box_CharacterLoadedIdListener_v2_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|239946499", "239946499", "MIS_320_B20", "box_OutputOrder_v2_142.Out", "box_CharacterLoadedIdListener_v2_140.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_142_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|331545335", "331545335", "MIS_320_B20", "box_OutputOrder_v2_142.Out", "box_CoopActivePlayers_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_221_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_219();
    l0 = self.box_UniversalInteractionListener_219;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1259949267", "1259949267", "MIS_320_B20", "box_OutputOrder_v2_221.Out", "box_UniversalInteractionListener_219.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_221_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_220();
    l0 = self.box_UniversalInteractionListener_220;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|172372949", "172372949", "MIS_320_B20", "box_OutputOrder_v2_221.Out", "box_UniversalInteractionListener_220.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_221_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_224();
    l0 = self.box_Delay_v5_224;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1542019826", "1542019826", "MIS_320_B20", "box_OutputOrder_v2_221.Out", "box_Delay_v5_224.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_197_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_237;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1914250872", "1914250872", "MIS_320_B20", "box_OutputOrder_v2_197.Out", "box_CoopActivePlayers_237.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_197_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_137();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2069165593", "2069165593", "MIS_320_B20", "box_OutputOrder_v2_197.Out", "box_Simple_Node_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_73_OnAllInside()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_109();
    l0 = self.box_ProximityTrigger_v3_73;
    l1 = self.box_MultipleAND_v2_109;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|744852953", "744852953", "MIS_320_B20", "box_ProximityTrigger_v3_73.OnAllInside", "box_MultipleAND_v2_109.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleOR_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_11();
    l0 = self.box_MultipleOR_30;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1570729633", "1570729633", "MIS_320_B20", "box_MultipleOR_30.Out", "box_Compare_Integers_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_177_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_177;
    l1 = self.box_OnceOnly_v3_173;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2047618855", "2047618855", "MIS_320_B20", "box_MultipleOR_177.Out", "box_OnceOnly_v3_173.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IgnoreSignal_v2_77_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_78();
    l0 = self.box_IgnoreSignal_v2_77;
    l1 = self.box_IgnoreSignal_v2_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1560541406", "1560541406", "MIS_320_B20", "box_IgnoreSignal_v2_77.Enabled", "box_IgnoreSignal_v2_78.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|969869904", "969869904", "MIS_320_B20", "box_OutputOrder_v2_3.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2055222636", "2055222636", "MIS_320_B20", "box_OutputOrder_v2_3.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_61();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|162168754", "162168754", "MIS_320_B20", "box_OutputOrder_v2_3.Out", "box_SoundShapeModifier_61.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_164();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|785439410", "785439410", "MIS_320_B20", "box_OutputOrder_v2_3.Out", "box_Simple_Node_164.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_150_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_OnceOnly_v3_150;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1900731785", "1900731785", "MIS_320_B20", "box_OnceOnly_v3_150.Out", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_320_GivePrisonerOutfit_139_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_111();
    l0 = self.box_MIS_320_GivePrisonerOutfit_139;
    l1 = self.box_InventoryItemModifier_111;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|483183806", "483183806", "MIS_320_B20", "box_MIS_320_GivePrisonerOutfit_139.Out", "box_InventoryItemModifier_111.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_MIS_320_B20_FactoryWarnLogic_85_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_181();
    l0 = self.box_MIS_320_B20_FactoryWarnLogic_85;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1828967330", "1828967330", "MIS_320_B20", "box_MIS_320_B20_FactoryWarnLogic_85.Out", "box_Print_v2_181.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_320_B20_FactoryWarnLogic_85_Start_Alert()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_178();
    l0 = self.box_MIS_320_B20_FactoryWarnLogic_85;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1411795846", "1411795846", "MIS_320_B20", "box_MIS_320_B20_FactoryWarnLogic_85.Start Alert", "box_OutputOrder_v2_178.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_320_B20_FactoryWarnLogic_85_Stop_Alert()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_172();
    l0 = self.box_MIS_320_B20_FactoryWarnLogic_85;
    l1 = self.box_MultipleAND_v2_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|313626384", "313626384", "MIS_320_B20", "box_MIS_320_B20_FactoryWarnLogic_85.Stop Alert", "box_MultipleAND_v2_172.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Brick_Interact_With_Object_NoDisable_12_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Interact_With_Object_NoDisable_9();
    l0 = self.box_Brick_Interact_With_Object_NoDisable_12;
    l1 = self.box_Brick_Interact_With_Object_NoDisable_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|59657800", "59657800", "MIS_320_B20", "box_Brick_Interact_With_Object_NoDisable_12.Started", "box_Brick_Interact_With_Object_NoDisable_9.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Brick_Interact_With_Object_NoDisable_12_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_97();
    l0 = self.box_Brick_Interact_With_Object_NoDisable_12;
    l1 = self.box_Delay_v5_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|160611992", "160611992", "MIS_320_B20", "box_Brick_Interact_With_Object_NoDisable_12.Success", "box_Delay_v5_97.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_CoopActivePlayers_75_OnePlayer()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_75;
    l1 = self.box_MultipleOR_170;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1815889123", "1815889123", "MIS_320_B20", "box_CoopActivePlayers_75.OnePlayer", "box_MultipleOR_170.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_75_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_189();
    l0 = self.box_CoopActivePlayers_75;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1807048137", "1807048137", "MIS_320_B20", "box_CoopActivePlayers_75.PlayerAdded", "box_Simple_Node_189.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_75_PlayerRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_159();
    l0 = self.box_CoopActivePlayers_75;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1594834513", "1594834513", "MIS_320_B20", "box_CoopActivePlayers_75.PlayerRemoved", "box_OutputOrder_v2_159.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_75_TwoPlayers()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_90();
    l0 = self.box_CoopActivePlayers_75;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|325254439", "325254439", "MIS_320_B20", "box_CoopActivePlayers_75.TwoPlayers", "box_OutputOrder_v2_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_62_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_80();
    l0 = self.box_Reach_GoTo_v3_62;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|723262163", "723262163", "MIS_320_B20", "box_Reach_GoTo_v3_62.Started", "box_OutputOrder_v2_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Reach_GoTo_v3_62_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_110();
    l0 = self.box_Reach_GoTo_v3_62;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1498076223", "1498076223", "MIS_320_B20", "box_Reach_GoTo_v3_62.Success", "box_OutputOrder_v2_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_320_B20_StationWork_68_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_65();
    l0 = self.box_MIS_320_B20_StationWork_68;
    l1 = self.box_Delay_v5_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1508485711", "1508485711", "MIS_320_B20", "box_MIS_320_B20_StationWork_68.Out", "box_Delay_v5_65.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MIS_320_B20_StationWork_68_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Interact_With_Object_NoDisable_211();
    l0 = self.box_MIS_320_B20_StationWork_68;
    l1 = self.box_Brick_Interact_With_Object_NoDisable_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|842044199", "842044199", "MIS_320_B20", "box_MIS_320_B20_StationWork_68.Success", "box_Brick_Interact_With_Object_NoDisable_211.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetTimeOfDay_35_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    l0 = self.box_JoinInProgressModifier_218;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|777231297", "777231297", "MIS_320_B20", "box_SetTimeOfDay_35.Out", "box_JoinInProgressModifier_218.UnlockSession", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnlockSession
    l0:Exec(1, {
    });
end;

function export:f_box_SetEntity_v2_202_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_202_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_205;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|43378927", "43378927", "MIS_320_B20", "box_SetEntity_v2_202.Out", "box_MultipleOR_205.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CharacterLoadedIdListener_v2_140_LoadedIdReceived()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_141();
    l0 = self.box_CharacterLoadedIdListener_v2_140;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|854512524", "854512524", "MIS_320_B20", "box_CharacterLoadedIdListener_v2_140.LoadedIdReceived", "box_SetContextualStrategy_141.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_JoinInProgressModifier_218_OnUnlockSession()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = self.box_JoinInProgressModifier_218;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2018450611", "2018450611", "MIS_320_B20", "box_JoinInProgressModifier_218.OnUnlockSession", "box_ActivityEnd_7.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_233_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_235();
    l0 = self.box_Gate_v3_233;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|972348659", "972348659", "MIS_320_B20", "box_Gate_v3_233.Out", "box_Simple_Node_235.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_25_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_49();
    l0 = self.box_PositionModifier_v2_25;
    l1 = self.box_NavLinkModifier_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1970425553", "1970425553", "MIS_320_B20", "box_PositionModifier_v2_25.StartOut", "box_NavLinkModifier_49.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_242();
    l0 = self.box_DisplayCustomUIMsg_v5_242;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|837465582", "837465582", "MIS_320_B20", "box_OutputOrder_v2_27.Out", "box_DisplayCustomUIMsg_v5_242.Hide", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hide
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_243();
    l0 = self.box_Gate_v3_243;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1100403405", "1100403405", "MIS_320_B20", "box_OutputOrder_v2_27.Out", "box_Gate_v3_243.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_15();
    l0 = self.box_UniversalInteractionModifier_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1484154352", "1484154352", "MIS_320_B20", "box_OutputOrder_v2_27.Out", "box_UniversalInteractionModifier_v2_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|223006670", "223006670", "MIS_320_B20", "box_OutputOrder_v2_60.Out", "box_CoopActivePlayers_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_320_B20_WalkToCheckpoint_28();
    l0 = self.box_MIS_320_B20_WalkToCheckpoint_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|520776035", "520776035", "MIS_320_B20", "box_OutputOrder_v2_60.Out", "box_MIS_320_B20_WalkToCheckpoint_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_42_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_53();
    l0 = self.box_SoundModifier_v2_42;
    l1 = self.box_Delay_v5_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|7366617", "7366617", "MIS_320_B20", "box_SoundModifier_v2_42.Started", "box_Delay_v5_53.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MissionBlockLayer_148_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_168();
    l0 = self.box_GunsForHireSystemModifier_168;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|561012687", "561012687", "MIS_320_B20", "box_MissionBlockLayer_148.Activated", "box_GunsForHireSystemModifier_168.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_199_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_200();
    l0 = self.box_EntityStatusListener_200;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1402385331", "1402385331", "MIS_320_B20", "box_OutputOrder_v2_199.Out", "box_EntityStatusListener_200.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_199_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_201();
    l0 = self.box_EntityStatusListener_201;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1887041099", "1887041099", "MIS_320_B20", "box_OutputOrder_v2_199.Out", "box_EntityStatusListener_201.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPlayerGender_18_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_50();
    l0 = self.box_GetPlayerGender_18;
    l1 = self.box_MIS_320_GivePrisonerOutfit_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|320863778", "320863778", "MIS_320_B20", "box_GetPlayerGender_18.Female", "box_MIS_320_GivePrisonerOutfit_50.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_18_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_50();
    l0 = self.box_GetPlayerGender_18;
    l1 = self.box_MIS_320_GivePrisonerOutfit_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|319914824", "319914824", "MIS_320_B20", "box_GetPlayerGender_18.Male", "box_MIS_320_GivePrisonerOutfit_50.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_116_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_116;
    l1 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1891693964", "1891693964", "MIS_320_B20", "box_PlayDialog_v6_116.Finished", "box_MultipleOR_128.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_116_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_116;
    l1 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|268840209", "268840209", "MIS_320_B20", "box_PlayDialog_v6_116.FinishedInterrupted", "box_MultipleOR_128.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_88_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Interact_With_Object_NoDisable_9();
    l0 = self.box_MultipleOR_88;
    l1 = self.box_Brick_Interact_With_Object_NoDisable_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1786907769", "1786907769", "MIS_320_B20", "box_MultipleOR_88.Out", "box_Brick_Interact_With_Object_NoDisable_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_81_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_191();
    l0 = self.box_MultipleOR_81;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|85181113", "85181113", "MIS_320_B20", "box_MultipleOR_81.Out", "box_OutputOrder_v2_191.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_203_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_203_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_205;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1632483780", "1632483780", "MIS_320_B20", "box_SetEntity_v2_203.Out", "box_MultipleOR_205.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_223_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_223_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_226();
    l0 = self.box_MultipleAND_v2_226;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1908860323", "1908860323", "MIS_320_B20", "box_SetEntity_v2_223.Out", "box_MultipleAND_v2_226.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_PositionModifier_v2_161_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_158();
    l0 = self.box_PositionModifier_v2_161;
    l1 = self.box_NavLinkModifier_158;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2118208457", "2118208457", "MIS_320_B20", "box_PositionModifier_v2_161.StartOut", "box_NavLinkModifier_158.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_90_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_170;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1488193188", "1488193188", "MIS_320_B20", "box_OutputOrder_v2_90.Out", "box_MultipleOR_170.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_90_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_320_B20_FactoryWarnLogic_84();
    l0 = self.box_MIS_320_B20_FactoryWarnLogic_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|956391408", "956391408", "MIS_320_B20", "box_OutputOrder_v2_90.Out", "box_MIS_320_B20_FactoryWarnLogic_84.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_80_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_73();
    l0 = self.box_ProximityTrigger_v3_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1267614091", "1267614091", "MIS_320_B20", "box_OutputOrder_v2_80.Out", "box_ProximityTrigger_v3_73.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_80_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_320_B20_FactoryDayEnd_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|176718680", "176718680", "MIS_320_B20", "box_OutputOrder_v2_80.Out", "box_MIS_320_B20_FactoryDayEnd_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_RestrictedItemModifier_v2_145_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_45();
    l0 = self.box_RestrictedItemModifier_v2_145;
    l1 = self.box_IgnoreSignal_v2_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|930535462", "930535462", "MIS_320_B20", "box_RestrictedItemModifier_v2_145.Out", "box_IgnoreSignal_v2_45.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Bind_v4_196_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_194();
    l0 = self.box_Bind_v4_196;
    l1 = self.box_PositionModifier_v2_194;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|28357103", "28357103", "MIS_320_B20", "box_Bind_v4_196.Bound", "box_PositionModifier_v2_194.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGender_18();
    l0 = self.box_MultipleOR_19;
    l1 = self.box_GetPlayerGender_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1797472281", "1797472281", "MIS_320_B20", "box_MultipleOR_19.Out", "box_GetPlayerGender_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|@EndOfDay_Buzzer_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_94_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|@n_coopHandling");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_149_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|@n_disableFactoryWarning");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_108_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|@n_exitFailsafe");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_165_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|@n_pausePrisonerWhispers");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_133_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|@n_playerDetected");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_166_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|@n_prisonerWhispers");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_137_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|@n_resetAlerts");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_187_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_235");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|@n_StationChosen");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_235_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|@n_stationWork");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_186_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|@n_stopSE");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_95_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|@Start_Screams_Sounds");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_164_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|@Stop_Courtyard_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_106_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_v2_143()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = true,
        -- AvatarCustomizationMenuEnabled,
        [2] = false,
        -- ChallengeMenuEnabled,
        [3] = true,
        -- HomebaseMenuEnabled,
        [4] = true,
        -- LootMenuEnabled,
        [5] = true,
        -- OnlineMenuEnabled,
        [6] = true,
        -- PerksMenuEnabled,
        [7] = true,
        -- SquadMenuEnabled,
        [8] = true,
        -- WorldmapMenuEnabled,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|24463881");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_236_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_NoDisable_9()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2107287910354015636",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_USE",
            id = "533274",
        },
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_158()
    local params;
    params = {
        -- Entity,
        [0] = "2109193424270810790",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_111()
    local params, l0;
    DrawTextToScreen("Comment: Remove Items on JIP", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'InventoryItemModifier')-- Comment: Remove Items on JIP");
    l0 = self.box_CoopActivePlayers_144;
    params = {
        -- itemFilterID,
        [1] = "9015342283729325",
        -- players,
        [2] = l0:GetDataOutValue(2),
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_132()
    local params;
    DrawTextToScreen("Comment: Remove Animated Guard", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RemoveEntity_v2')-- Comment: Remove Animated Guard");
    params = {
        -- Group,
        [0] = "2109180796198826299",
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_98()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0.4,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|71306949");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2109800289002354017",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_320_B20_b_OBJ_Assemble",
            id = "960690",
        },
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_15()
    local params;
    params = {
        -- usableEntity,
        [4] = "2107287910354015636",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_198()
    local params;
    params = {
        -- Entity,
        [0] = "2109899760914680364",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_160()
    local params;
    params = {
        -- Pawns,
        [0] = "2109304277223607815",
        -- SoundId,
        [1] = "152896393",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_49()
    local params;
    params = {
        -- Entity,
        [0] = "2108251072496676429",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_226()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|141729578");
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
                [0] = self.f_box_OutputOrder_v2_110_Out_0,
                [1] = self.f_box_OutputOrder_v2_110_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_117()
    local params;
    params = {
        -- Group,
        [0] = "2107328861801811816",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "299309992",
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

function export:OnEnter_box_MIS_320_B20_FactoryWarnLogic_70()
    local params;
    params = {
        -- Machine,
        [0] = "2107287910354015636",
        -- Player,
        [1] = self.e_UserMachine_1,
        -- StationTriggerZone,
        [2] = "2108516072765267824",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_207()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_228()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|229925789");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_228_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|235382518");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_102_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|237956307");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_21_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TimeOfDayListener_32()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_157()
    local params;
    params = {
        -- Pawns,
        [0] = "2108292464742762786",
        -- SoundId,
        [1] = "1623182931",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_101()
    local params, l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l1 = self.box_LeashOverride_100;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = l0:GetDataOutValue(0),
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = l1:GetDataOutValue(0),
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|264039428");
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
                [0] = self.f_box_OutputOrder_v2_176_Out_0,
                [1] = self.f_box_OutputOrder_v2_176_Out_1,
                [2] = self.f_box_OutputOrder_v2_176_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_219()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2107287910354015636",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|283079393");
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
                [0] = self.f_box_OutputOrder_v2_174_Out_0,
                [1] = self.f_box_OutputOrder_v2_174_Out_1,
                [2] = self.f_box_OutputOrder_v2_174_Out_2,
                [3] = self.f_box_OutputOrder_v2_174_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_147()
    local params;
    params = {
        -- Group,
        [0] = self.e_Xantor,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "655974275",
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_38()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|305646293");
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
                [0] = self.f_box_OutputOrder_v2_89_Out_0,
                [1] = self.f_box_OutputOrder_v2_89_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_156()
    local params;
    params = {
        -- Pawns,
        [0] = "2108292536563931295",
        -- SoundId,
        [1] = "2028239840",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_87()
    local params;
    params = {
        -- Pawns,
        [0] = "2109162976069056774",
        -- SoundId,
        [1] = "1973111472",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|404798079");
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
                [0] = self.f_box_OutputOrder_v2_163_Out_0,
                [1] = self.f_box_OutputOrder_v2_163_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_78()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "sprint",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|439949594");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2108334481019515491",
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_72()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 1,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_86()
    local params;
    params = {
        -- Pawns,
        [0] = "2109162969179911729",
        -- SoundId,
        [1] = "1973111472",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|497684835");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_53()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_96()
    local params;
    params = {
        -- timeScale,
        [0] = 3,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|506090303");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_36_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_36_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2107935233144794826",
        -- Entity,
        [2] = self.e_Xantor,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|508278375");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
                [2] = self.f_box_OutputOrder_v2_8_Out_2,
                [3] = self.f_box_OutputOrder_v2_8_Out_3,
                [4] = self.f_box_OutputOrder_v2_8_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_43()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|530492228");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_206()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|540372346");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Warnings",
            item = "MIS_330_FAIL_B30_CoverFail",
            id = "1021555",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_171()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|574977012");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_104_Out,
    });
    params = {
        -- Hour,
        [0] = 18,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_MIS_320_B20_WalkToCheckpoint_28()
    local params;
    params = {
        -- Xantor,
        [0] = self.e_Xantor,
    };
    return params;
end;

function export:OnEnter_box_UnlockDoor_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UnlockDoor.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlockDoor_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|638630755");
    l0:SetConnections({
    });
    params = {
        -- door,
        [0] = "2101450307973164813",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|642235590");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_46()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_201()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107920174611962753",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|661869778");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_130()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_118()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 11,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|698599528");
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
                [0] = self.f_box_OutputOrder_v2_159_Out_0,
                [1] = self.f_box_OutputOrder_v2_159_Out_1,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|723826903");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "MIS_320_B20 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_33()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109952049618646939",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_124()
    local params;
    params = {
        -- Group,
        [0] = "2107328864203050885",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "102973180",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|756269776");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_71_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_168()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|765030742");
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
        [8] = "PLAYER ADDED TO STATION WORK",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_115()
    local params;
    params = {
        -- Group,
        [0] = "2107328861801811816",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "146253617",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|781659553");
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
                [0] = self.f_box_OutputOrder_v2_208_Out_0,
                [1] = self.f_box_OutputOrder_v2_208_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|788542450");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_155_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|795742580");
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

function export:OnEnter_box_Music_Quest_v2_212()
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
        [6] = "433974453",
        -- StopEvent,
        [7] = "2802112585",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = false,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_112()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "sprint",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_37()
    local params;
    params = {
        -- timeScale,
        [0] = 7,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_194()
    local params;
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2107076763747095810",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2107080565074168781",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_183()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_200()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109952049627035555",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_216()
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
        [6] = "433974453",
        -- StopEvent,
        [7] = "2802112585",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = true,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|887263611");
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
                [0] = self.f_box_OutputOrder_v2_52_Out_0,
                [1] = self.f_box_OutputOrder_v2_52_Out_1,
                [2] = self.f_box_OutputOrder_v2_52_Out_2,
                [3] = self.f_box_OutputOrder_v2_52_Out_3,
                [4] = self.f_box_OutputOrder_v2_52_Out_4,
                [5] = self.f_box_OutputOrder_v2_52_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|888513580");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_34()
    local params;
    params = {
        -- blendTime,
        [1] = 6,
        -- endTarget,
        [4] = "2108250912997780999",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108250896444960246",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|903116950");
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
                [0] = self.f_box_OutputOrder_v2_215_Out_0,
                [1] = self.f_box_OutputOrder_v2_215_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|941963174");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2109079875330544180",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_241()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_241");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|972421796");
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
                [0] = self.f_box_OutputOrder_v2_241_Out_0,
                [1] = self.f_box_OutputOrder_v2_241_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_NoDisable_211()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2107287910354015636",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_USE",
            id = "533274",
        },
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_242()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Warnings",
            item = "MIS_320_B20_WARN_Work",
            id = "1021778",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_97()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_154()
    local params;
    params = {
        -- Pawns,
        [0] = "2109494755684523273",
        -- SoundId,
        [1] = "347256345",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_56()
    local params;
    params = {
        -- Pawns,
        [0] = "2108336004543820391",
        -- SoundId,
        [1] = "1982792409",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_26()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015354238657134",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_146()
    local params, l0;
    l0 = self.box_CoopActivePlayers_144;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1141994064");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1147749568");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_141_Out,
    });
    l0 = self.box_CharacterLoadedIdListener_v2_140;
    params = {
        -- ContextualStrategy,
        [0] = "2109210351011650997",
        -- Group,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1163253154");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_48_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.i_tod,
        -- B,
        [1] = 20,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1169493360");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_167_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160290525703125",
        -- missionLayerId,
        [1] = "27160321267951395",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1170961376");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_40_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2107921838834204139",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1177239215");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_11_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.i_tod,
        -- B,
        [1] = 23,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1192348453");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_222_Out,
    });
    l0 = self.box_UniversalInteractionListener_219;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_64()
    local params, l0;
    l0 = self.box_CoopActivePlayers_1;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_66()
    local params;
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2107919728096853461",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101562729056711374",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_182()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_83()
    local params;
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2108250912997780999",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108250896444960246",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_234()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_234");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1349156692");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_234_A_is_False,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.mis_320_b10.b_Prison_CheckpointDoor_Opened,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_45()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "jump",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1369152046");
    l0:SetConnections({
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1385724194");
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
                [0] = self.f_box_OutputOrder_v2_238_Out_0,
                [1] = self.f_box_OutputOrder_v2_238_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_213()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "808122783",
        -- SoundType,
        [2] = 17,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MIS_320_GivePrisonerOutfit_31()
    local params, l0;
    l0 = self.box_CoopActivePlayers_1;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_129()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_InventoryLoadoutModifier_209()
    local params;
    params = {
        -- discardPreviousBackup,
        [0] = false,
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_134()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109554194594685737",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#041D291D",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1471323929");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_193_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_214()
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
        [6] = "433974453",
        -- StopEvent,
        [7] = "2802112585",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = true,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1479839707");
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
                [0] = self.f_box_OutputOrder_v2_191_Out_0,
                [1] = self.f_box_OutputOrder_v2_191_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Switch_114()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1489751360");
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
                [0] = self.f_box_OutputOrder_v2_178_Out_0,
                [1] = self.f_box_OutputOrder_v2_178_Out_1,
                [2] = self.f_box_OutputOrder_v2_178_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1491196371");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1491310183");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_41_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_320_GivePrisonerOutfit_50()
    local params, l0;
    l0 = self.box_CoopActivePlayers_1;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_29()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1502483597");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_229_Out,
    });
    params = {
        -- Entity,
        [0] = self._sld_LocalPlayer_box_GetLocalPlayer_v2_228,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_243()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_220()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2109121388980742468",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_58()
    local params;
    params = {
        -- Pawns,
        [0] = "2108336004543820391",
        -- SoundId,
        [1] = "1982792409",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1522183346");
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
                [0] = self.f_box_OutputOrder_v2_135_Out_0,
                [1] = self.f_box_OutputOrder_v2_135_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_125()
    local params;
    params = {
        -- Group,
        [0] = "2107328864203050885",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "797690317",
    };
    return params;
end;

function export:OnEnter_box_LeashOverride_100()
    local params;
    params = {
        -- CustomLeashDistance,
        [0] = 8,
        -- CustomLeashWarningDistance,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1558197159");
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
        [8] = "ONE PLAYER STATION WORK",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1564748822");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2108334481019515491",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_82()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2108684445100816921",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/se_m320_Mickey_Lou_BulletFarm/se_m320_mickey_lou_bulletfarm.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_65()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_195()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2109899611169648392",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_224()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1589219988");
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
                [0] = self.f_box_OutputOrder_v2_152_Out_0,
                [1] = self.f_box_OutputOrder_v2_152_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_172()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_136()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_127()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 9,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_51()
    local params;
    params = {
        -- Entity,
        [0] = "2108251072496676429",
    };
    return params;
end;

function export:OnEnter_box_TimeOfDayListener_44()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1630328827");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_24_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_320_B20_b_OBJ_Assemble",
            id = "960690",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_MIS_320_B20_FactoryWarnLogic_84()
    local params;
    params = {
        -- Machine,
        [0] = "2109121388980742468",
        -- Player,
        [1] = self.e_UserMachine_2,
        -- StationTriggerZone,
        [2] = "2109758499050233157",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1639369483");
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

function export:OnEnter_box_MultipleAND_v2_109()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1654848238");
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
                [0] = self.f_box_OutputOrder_v2_142_Out_0,
                [1] = self.f_box_OutputOrder_v2_142_Out_1,
                [2] = self.f_box_OutputOrder_v2_142_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_69()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_USE",
            id = "533274",
        },
        -- usableEntity,
        [4] = "2109121388980742468",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1679105304");
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
                [0] = self.f_box_OutputOrder_v2_221_Out_0,
                [1] = self.f_box_OutputOrder_v2_221_Out_1,
                [2] = self.f_box_OutputOrder_v2_221_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_197()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1686310496");
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
                [0] = self.f_box_OutputOrder_v2_197_Out_0,
                [1] = self.f_box_OutputOrder_v2_197_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_73()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "#041D291D",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108527105221346143",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_77()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "jump",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1752910849");
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

function export:OnEnter_box_MIS_320_GivePrisonerOutfit_139()
    local params, l0;
    l0 = self.box_CoopActivePlayers_144;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_MIS_320_B20_FactoryWarnLogic_85()
    local params;
    params = {
        -- Machine,
        [0] = "2109121388980742468",
        -- StationTriggerZone,
        [2] = "2109758499050233157",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1776955890");
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
        [8] = "TWO PLAYER STATION WORK",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_NoDisable_12()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2107287910354015636",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_USE",
            id = "533274",
        },
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_62()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresAllPlayer,
        [2] = true,
        -- bRequiresObjective,
        [3] = true,
        -- bUse2d_ProximityCheck,
        [4] = true,
        -- bUseDetectionModifier,
        [5] = false,
        -- eMarker,
        [6] = "2107936893283885250",
        -- eTrigger,
        [8] = "2107548129053131898",
        -- fDistanceFromTarget,
        [9] = 5,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "Objectives",
            item = "MIS_320_B30_OBJ_Exit",
            id = "960705",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_59()
    local params;
    params = {
        -- Pawns,
        [0] = "2108336004543820391",
        -- SoundId,
        [1] = "3607026267",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_79()
    local params;
    params = {
        -- Pawns,
        [0] = "2108540178967574164",
        -- SoundId,
        [1] = "189430163",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1855958970");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_35_Out,
    });
    params = {
        -- Hour,
        [0] = 3,
        -- Minute,
        [1] = 30,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1864037391");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_202_Out,
    });
    params = {
        -- Entity,
        [0] = "2109952049627035555",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_140()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870438634",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_233()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_25()
    local params;
    params = {
        -- blendTime,
        [1] = 6,
        -- endTarget,
        [4] = "2108250916118343179",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108250896444960246",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1932006293");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
                [2] = self.f_box_OutputOrder_v2_27_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1934645290");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_153()
    local params;
    params = {
        -- Pawns,
        [0] = "2109494464981537054",
        -- SoundId,
        [1] = "347256345",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1951334280");
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
                [0] = self.f_box_OutputOrder_v2_60_Out_0,
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_42()
    local params;
    params = {
        -- Pawns,
        [0] = "2108336004543820391",
        -- SoundId,
        [1] = "3607026267",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|1986414097");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_148_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160290525703125",
        -- missionLayerId,
        [1] = "27160321267951395",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2008813122");
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
                [0] = self.f_box_OutputOrder_v2_199_Out_0,
                [1] = self.f_box_OutputOrder_v2_199_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_18()
    local params, l0;
    l0 = self.box_CoopActivePlayers_1;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_116()
    local params;
    params = {
        -- Group,
        [0] = "2107328861801811816",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2044766056",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2062982264");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_203_Out,
    });
    params = {
        -- Entity,
        [0] = "2107920174611962753",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2073883232");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_223_Out,
    });
    l0 = self.box_UniversalInteractionListener_220;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_161()
    local params;
    params = {
        -- blendTime,
        [1] = 2,
        -- endTarget,
        [4] = "2109193463019888345",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2109193416708480677",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2094620979");
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
                [0] = self.f_box_OutputOrder_v2_90_Out_0,
                [1] = self.f_box_OutputOrder_v2_90_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20|2095129413");
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
                [0] = self.f_box_OutputOrder_v2_80_Out_0,
                [1] = self.f_box_OutputOrder_v2_80_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_v2_145()
    local params, l0;
    l0 = self.box_CoopActivePlayers_144;
    params = {
        -- allowedItemFilterID,
        [1] = "9015342283729325",
        -- players,
        [2] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_196()
    local params;
    params = {
        -- EntityA,
        [1] = "2107080565074168781",
        -- EntityB,
        [2] = "2109219152657927316",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_InventoryLoadoutModifier_210()
    local params, l0;
    l0 = self.box_CoopActivePlayers_144;
    params = {
        -- discardPreviousBackup,
        [0] = false,
        -- players,
        [1] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnExit_box_CoopActivePlayers_1_OnePlayer()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_1;
    l1 = self.box_MIS_320_GivePrisonerOutfit_50;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_GetPlayerGender_18;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_1_TwoPlayers()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_1;
    l1 = self.box_MIS_320_GivePrisonerOutfit_50;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_GetPlayerGender_18;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_GetPlayerGender_64;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(1);
    l1 = self.box_MIS_320_GivePrisonerOutfit_31;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetLocalPlayer_v2_228_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self._sld_LocalPlayer_box_GetLocalPlayer_v2_228 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_102_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l1 = self.box_TeleportPawns_101;
    l1:GetLuaBox().Destination = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_320_b10.b_Prison_InsideCourtyardGate_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_TimeOfDayListener_32_HourChanged()
    local l0;
    l0 = self.box_TimeOfDayListener_32;
    self.i_tod = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_144_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_144;
    l1 = self.box_RestrictedItemModifier_v2_145;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_InventoryLoadoutModifier_210;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_InventoryItemModifier_111;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_MIS_320_GivePrisonerOutfit_139;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
    l1 = self.box_GetPlayerGender_146;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_144_PlayerRemoved()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_144;
    l1 = self.box_RestrictedItemModifier_v2_145;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_InventoryLoadoutModifier_210;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_InventoryItemModifier_111;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_MIS_320_GivePrisonerOutfit_139;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
    l1 = self.box_GetPlayerGender_146;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetBoolean_v2_22_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_320_b10.b_Prison_InsideCourtyardGate_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_320_b10.b_Prison_InsideCourtyardGate_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_71_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_320_b10.b_Prison_CheckpointDoor_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_155_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_320_b10.b_Prison_CheckpointDoor_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_222_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_UserMachine_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_193_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_320_b10.b_Prison_EntranceDoor_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_41_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gp_FriendlyPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_229_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_UserMachine_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_LeashOverride_100_OnLeashBroken()
    local l0, l1;
    l0 = self.box_LeashOverride_100;
    l1 = self.box_TeleportPawns_101;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_LeashOverride_100_OnLeashFinalWarning()
    local l0, l1;
    l0 = self.box_LeashOverride_100;
    l1 = self.box_TeleportPawns_101;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_LeashOverride_100_OnLeashWarning()
    local l0, l1;
    l0 = self.box_LeashOverride_100;
    l1 = self.box_TeleportPawns_101;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_TimeOfDayListener_44_HourChanged()
    local l0;
    l0 = self.box_TimeOfDayListener_44;
    self.i_tod = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_202_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Xantor = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_203_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Xantor = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_223_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_UserMachine_2 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
