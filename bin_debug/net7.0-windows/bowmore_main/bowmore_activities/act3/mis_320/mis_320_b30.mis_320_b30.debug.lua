LUAC�l -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_320/mis_320_b30.domino
-- User graph: MIS_320_B30
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/InventoryLoadoutModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PickupListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/IgnoreSignal_v2.lua");
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
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_DoorManager.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_WallGuards.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b30.MIS_320_B30_CloseFactory.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b30.MIS_320_B30_PlayerDetected.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b30.MIS_320_B30_PrisonerTip.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b30.MIS_320_B30_SpawnLogic.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b30.MIS_320_B30_StartingSetup.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3408696666.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1982792409.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1380092680.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4059142351.bnk]], "CSoundResource");
        cboxRes:LoadResource([[226713140.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1135927399.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3607026267.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b30.MIS_320_B30.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.BindMarkerOverHead.debug.lua")] = {
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
                name = "Unbound",
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
                name = "eMobileMarker",
                type = "entity",
            },
            [2] = {
                name = "eTarget",
                type = "entity",
            },
            [3] = {
                name = "XValue",
                type = "float",
            },
            [4] = {
                name = "YValue",
                type = "float",
            },
            [5] = {
                name = "ZValue",
                type = "float",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/TriggerState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAsUnusable",
            },
            [1] = {
                name = "SetAsUsable",
            },
            [2] = {
                name = "SetDisabled",
            },
            [3] = {
                name = "SetEnabled",
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
                name = "OnSetUnusable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUsable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "CheckAngle",
                type = "bool",
            },
            [1] = {
                name = "CheckLookAt",
                type = "bool",
            },
            [2] = {
                name = "Trigger",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_WallGuards.debug.lua")] = {
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
        },
        controlOutCount = 1,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b30.MIS_320_B30_CloseFactory.debug.lua")] = {
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
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Group_1",
                type = "group",
            },
            [1] = {
                name = "Reloaded",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b30.MIS_320_B30_PlayerDetected.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "LieutenantKilled",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "PlayerDetected",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b30.MIS_320_B30_PrisonerTip.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Dialog_Finished",
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
                name = "e_NPC",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b30.MIS_320_B30_SpawnLogic.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b30.MIS_320_B30_StartingSetup.debug.lua")] = {
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
    self._name = "MIS_320_B30";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30";
    self.g_FrienglyPlayers = nil;
    self.gp_FriendlyPlayers = nil;
    self.b_QG_Respawned = false;
    self.e_Survivor_QG = nil;
    self.i_eliteCountdown = 0;
    self.b_spikePickedUp = false;
    self.e_ladderLock = nil;
    self.box_SoundModifier_v2_38 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|5332513");
    l0:SetConnections({
    });
    self.box_Delay_v5_61 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|14501261");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_61_TimeElapsed,
    });
    self.box_SoundModifier_v2_95 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|23778794");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_81 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|54596362");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_15 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|54904146");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_15_Loaded,
    });
    self.box_SoundModifier_v2_122 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|106409207");
    l0:SetConnections({
    });
    self.box_OverrideMenuAccessibility_v2_106 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
    l0 = self.box_OverrideMenuAccessibility_v2_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_v2_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|125602344");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_v2_106_Out,
    });
    self.box_MIS_320_GivePrisonerOutfit_132 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua");
    l0 = self.box_MIS_320_GivePrisonerOutfit_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_GivePrisonerOutfit_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|158697558");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_93 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|216504192");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_93_Damaged,
    });
    self.box_ManagePlayerInventory_91 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|237150186");
    l0:SetConnections({
        -- Restricted,
        [2] = self.f_box_ManagePlayerInventory_91_Restricted,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|305323096");
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
    self.box_ExitZoneWarningListener_v3_27 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|351257652");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_27_FailingZoneEntered,
    });
    self.box_BindMarkerOverHead_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead.debug.lua");
    l0 = self.box_BindMarkerOverHead_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BindMarkerOverHead_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|355386701");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_BindMarkerOverHead_12_Bound,
    });
    self.box_Music_Quest_v2_49 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|372745295");
    l0:SetConnections({
    });
    self.box_CoopActivePlayers_123 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|430197012");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_123_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_123_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_123_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_123_TwoPlayers,
    });
    self.box_ProximityTrigger_v3_87 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|443469707");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_87_Enabled,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_87_Use,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|515816614");
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
    self.box_MIS_320_GivePrisonerOutfit_103 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua");
    l0 = self.box_MIS_320_GivePrisonerOutfit_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_GivePrisonerOutfit_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|525466016");
    l0:SetConnections({
    });
    self.box_InventoryLoadoutModifier_34 = cbox:CreateBox("Domino/System/InventoryLoadoutModifier.lua");
    l0 = self.box_InventoryLoadoutModifier_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryLoadoutModifier_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|529491715");
    l0:SetConnections({
    });
    self.box_GunsForHireSystemModifier_85 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|531036788");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_85_Disabled,
    });
    self.box_CharacterLoadedIdListener_v2_28 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|542801785");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_28_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_28_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_28_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_28_LoadedIdReceived,
    });
    self.box_EntityStatusListener_45 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|555342791");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_45_Loaded,
    });
    self.box_GetPlayerGender_105 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|666061983");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_105_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_105_Male,
    });
    self.box_IgnoreSignal_v2_54 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|705891265");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_54_Disabled,
    });
    self.box_Delay_v5_126 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|720794119");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_126_TimeElapsed,
    });
    self.box_OnceOnly_v3_114 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|733052594");
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
                [0] = self.f_box_OnceOnly_v3_114_Out_0,
            },
            count = 2,
        },
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|737453506");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_SoundModifier_v2_96 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|745315521");
    l0:SetConnections({
    });
    self.box_Delay_v5_44 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|800163719");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_44_TimeElapsed,
    });
    self.box_InventoryLoadoutModifier_32 = cbox:CreateBox("Domino/System/InventoryLoadoutModifier.lua");
    l0 = self.box_InventoryLoadoutModifier_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryLoadoutModifier_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|852937444");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_80 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|858087447");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_80_Enter,
    });
    self.box_MIS_320_B30_CloseFactory_40 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b30.MIS_320_B30_CloseFactory.debug.lua");
    l0 = self.box_MIS_320_B30_CloseFactory_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B30_CloseFactory_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|908643804");
    l0:SetConnections({
    });
    self.box_Brick_Interact_With_Object_V6_58 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V6_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V6_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|928864727");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V6_58_Success,
    });
    self.box_InventoryItemModifier_108 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1009354198");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_108_Out,
    });
    self.box_ManagePlayerInventory_33 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1050163230");
    l0:SetConnections({
        -- Restricted,
        [2] = self.f_box_ManagePlayerInventory_33_Restricted,
    });
    self.box_ManagePlayerInventory_90 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1081035247");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ManagePlayerInventory_90_Removed,
    });
    self.box_Delay_v5_10 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1108836066");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_10_TimeElapsed,
    });
    self.box_Music_Quest_v2_48 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1129703585");
    l0:SetConnections({
    });
    self.box_Gate_v3_23 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1133945949");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_23_Out,
    });
    self.box_MIS_320_B30_PlayerDetected_13 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b30.MIS_320_B30_PlayerDetected.debug.lua");
    l0 = self.box_MIS_320_B30_PlayerDetected_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B30_PlayerDetected_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1134194862");
    l0:SetConnections({
        -- LieutenantKilled,
        [0] = self.f_box_MIS_320_B30_PlayerDetected_13_LieutenantKilled,
        -- Out,
        [1] = self.f_box_MIS_320_B30_PlayerDetected_13_Out,
        -- PlayerDetected,
        [2] = self.f_box_MIS_320_B30_PlayerDetected_13_PlayerDetected,
    });
    self.box_PositionModifier_v2_17 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1190020046");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_17_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_17_StartOut,
    });
    self.box_SoundModifier_v2_39 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1198707674");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_39_Started,
    });
    self.box_OnceOnly_v3_62 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1219901774");
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
    self.box_Delay_v5_36 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1231376802");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_36_TimeElapsed,
    });
    self.box_GetPlayerGender_129 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1245760069");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_129_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_129_Male,
    });
    self.box_RestrictedItemModifier_v2_104 = cbox:CreateBox("Domino/System/RestrictedItemModifier_v2.lua");
    l0 = self.box_RestrictedItemModifier_v2_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_v2_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1254523330");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_v2_104_Out,
    });
    self.box_MIS_320_B30_PrisonerTip_74 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b30.MIS_320_B30_PrisonerTip.debug.lua");
    l0 = self.box_MIS_320_B30_PrisonerTip_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B30_PrisonerTip_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1258586657");
    l0:SetConnections({
        -- Dialog Finished,
        [0] = self.f_box_MIS_320_B30_PrisonerTip_74_Dialog_Finished,
    });
    self.box_SoundModifier_v2_97 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1301288122");
    l0:SetConnections({
    });
    self.box_GetPlayerGender_127 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1462104793");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_127_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_127_Male,
    });
    self.box_MIS_320_B30_SpawnLogic_20 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b30.MIS_320_B30_SpawnLogic.debug.lua");
    l0 = self.box_MIS_320_B30_SpawnLogic_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B30_SpawnLogic_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1491572301");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_320_B30_SpawnLogic_20_Out,
    });
    self.box_CoopActivePlayers_107 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1503097932");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_107_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_107_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_107_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_107_TwoPlayers,
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1513652889");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1564637496");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_NoWeaponMode_v3_29 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1575851541");
    l0:SetConnections({
        -- OnLeave,
        [1] = self.f_box_NoWeaponMode_v3_29_OnLeave,
    });
    self.box_RestrictedItemModifier_v2_25 = cbox:CreateBox("Domino/System/RestrictedItemModifier_v2.lua");
    l0 = self.box_RestrictedItemModifier_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RestrictedItemModifier_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1587313246");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RestrictedItemModifier_v2_25_Out,
    });
    self.box_SoundModifier_v2_98 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1615484468");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_121 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1629362284");
    l0:SetConnections({
    });
    self.box_MIS_320_DoorManager_115 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_DoorManager.debug.lua");
    l0 = self.box_MIS_320_DoorManager_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_DoorManager_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1642417521");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_320_DoorManager_115_Out,
    });
    self.box_ExitZoneWarningListener_v3_42 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1666676462");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_42_FailingZoneEntered,
    });
    self.box_SpawnAI_67 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1677144036");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_67_Out,
    });
    self.box_Delay_v5_99 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1793140379");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_99_TimeElapsed,
    });
    self.box_SpawnAI_14 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1814800562");
    l0:SetConnections({
    });
    self.box_PickupListener_v2_66 = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self.box_PickupListener_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupListener_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1845586599");
    l0:SetConnections({
        -- PickedUp,
        [2] = self.f_box_PickupListener_v2_66_PickedUp,
    });
    self.box_RemoveEntity_v2_65 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1912659242");
    l0:SetConnections({
    });
    self.box_Delay_v5_84 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1928922782");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_84_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_84_TimeElapsed,
    });
    self.box_RemoveEntity_v2_19 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1938697021");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_19_Out,
    });
    self.box_MIS_320_B20_WallGuards_72 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_WallGuards.debug.lua");
    l0 = self.box_MIS_320_B20_WallGuards_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B20_WallGuards_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1957528823");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_320_B20_WallGuards_72_Out,
    });
    self.box_MIS_320_B30_StartingSetup_8 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b30.MIS_320_B30_StartingSetup.debug.lua");
    l0 = self.box_MIS_320_B30_StartingSetup_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_B30_StartingSetup_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1965594472");
    l0:SetConnections({
    });
    self.box_MIS_320_GivePrisonerOutfit_110 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_GivePrisonerOutfit.debug.lua");
    l0 = self.box_MIS_320_GivePrisonerOutfit_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_320_GivePrisonerOutfit_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1991106309");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_320_GivePrisonerOutfit_110_Out,
    });
    self.box_IgnoreSignal_v2_55 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|2003732841");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_55_Disabled,
    });
    self.box_MultipleOR_128 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|2014416537");
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
    self.box_SoundModifier_v2_64 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|2051825893");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_30 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|2095232302");
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
                [0] = self.f_box_OnceOnly_v3_30_Out_0,
            },
            count = 2,
        },
    });
    self.box_NavLinkModifier_18 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|2107163244");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_18_Activated,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1201644483", "1201644483", "MIS_320_B30", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_102_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_48();
    l0 = self.box_Music_Quest_v2_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1761238081", "1761238081", "MIS_320_B30", "box_Simple_Node_102.Out", "box_Music_Quest_v2_48.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
    params = self:OnEnter_box_Delay_v5_99();
    l0 = self.box_Delay_v5_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|478700140", "478700140", "MIS_320_B30", "box_Simple_Node_102.Out", "box_Delay_v5_99.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_23();
    l0 = self.box_Gate_v3_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|849200801", "849200801", "MIS_320_B30", "box_Simple_Node_102.Out", "box_Gate_v3_23.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|2011290806", "2011290806", "MIS_320_B30", "box_Simple_Node_102.Out", "box_OutputOrder_v2_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_MIS_320_B30_CloseFactory_40();
    l0 = self.box_MIS_320_B30_CloseFactory_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1440819393", "1440819393", "MIS_320_B30", "box_Simple_Node_102.Out", "box_MIS_320_B30_CloseFactory_40.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityTrigger_v3_87();
    l0 = self.box_ProximityTrigger_v3_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|431160229", "431160229", "MIS_320_B30", "box_Simple_Node_102.Out", "box_ProximityTrigger_v3_87.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_MIS_320_B20_WallGuards_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1191975322", "1191975322", "MIS_320_B30", "box_Simple_Node_102.Out", "box_MIS_320_B20_WallGuards_72.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_88_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_67();
    l0 = self.box_SpawnAI_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|419680992", "419680992", "MIS_320_B30", "box_OutputOrder_v2_88.Out", "box_SpawnAI_67.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_88_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_28();
    l0 = self.box_CharacterLoadedIdListener_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1970410203", "1970410203", "MIS_320_B30", "box_OutputOrder_v2_88.Out", "box_CharacterLoadedIdListener_v2_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_88_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryLoadoutModifier_32();
    l0 = self.box_InventoryLoadoutModifier_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|152183612", "152183612", "MIS_320_B30", "box_OutputOrder_v2_88.Out", "box_InventoryLoadoutModifier_32.Backup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Backup
    l0:Exec(0, params);
end;

function export:f_box_SetContextualStrategy_73_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    l0 = self.box_MIS_320_B30_SpawnLogic_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|218206051", "218206051", "MIS_320_B30", "box_SetContextualStrategy_73.Out", "box_MIS_320_B30_SpawnLogic_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Delay_v5_61_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_46();
    l0 = self.box_Delay_v5_61;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|2059653365", "2059653365", "MIS_320_B30", "box_Delay_v5_61.TimeElapsed", "box_AddActivityObjective_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_15_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_75();
    l0 = self.box_EntityStatusListener_15;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|94828899", "94828899", "MIS_320_B30", "box_EntityStatusListener_15.Loaded", "box_SetEntity_v2_75.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityForceAndLockTracking_56_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|2098397965", "2098397965", "MIS_320_B30", "box_ActivityForceAndLockTracking_56.Enabled", "box_OutputOrder_v2_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_88();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|297533147", "297533147", "MIS_320_B30", "box_SetTimeOfDay_9.Out", "box_OutputOrder_v2_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OverrideMenuAccessibility_v2_106_Out()
    local l0, l1;
    l0 = self.box_OverrideMenuAccessibility_v2_106;
    l1 = self.box_CoopActivePlayers_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|378124995", "378124995", "MIS_320_B30", "box_OverrideMenuAccessibility_v2_106.Out", "box_CoopActivePlayers_107.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_42();
    l0 = self.box_ExitZoneWarningListener_v3_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|2072152132", "2072152132", "MIS_320_B30", "box_OutputOrder_v2_41.Out", "box_ExitZoneWarningListener_v3_42.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_44();
    l0 = self.box_Delay_v5_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1612603569", "1612603569", "MIS_320_B30", "box_OutputOrder_v2_41.Out", "box_Delay_v5_44.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_35();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1661211654", "1661211654", "MIS_320_B30", "box_OutputOrder_v2_22.Out", "box_AddActivityObjective_v2_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_320_B30_CloseFactory_40();
    l0 = self.box_MIS_320_B30_CloseFactory_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|2070300263", "2070300263", "MIS_320_B30", "box_OutputOrder_v2_22.Out", "box_MIS_320_B30_CloseFactory_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_320_B20_WallGuards_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1557192853", "1557192853", "MIS_320_B30", "box_OutputOrder_v2_22.Out", "box_MIS_320_B20_WallGuards_72.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|723932557", "723932557", "MIS_320_B30", "box_OutputOrder_v2_78.Out", "box_OnceOnly_v3_114.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_87();
    l0 = self.box_ProximityTrigger_v3_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1267614091", "1267614091", "MIS_320_B30", "box_OutputOrder_v2_78.Out", "box_ProximityTrigger_v3_87.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_HealthListener_v6_93_Damaged()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_126();
    l0 = self.box_HealthListener_v6_93;
    l1 = self.box_Delay_v5_126;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1465865811", "1465865811", "MIS_320_B30", "box_HealthListener_v6_93.Damaged", "box_Delay_v5_126.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_63_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_64();
    l0 = self.box_SoundModifier_v2_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1775538244", "1775538244", "MIS_320_B30", "box_OutputOrder_v2_63.Out", "box_SoundModifier_v2_64.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1646341300", "1646341300", "MIS_320_B30", "box_OutputOrder_v2_63.Out", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ManagePlayerInventory_91_Restricted()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_85();
    l0 = self.box_ManagePlayerInventory_91;
    l1 = self.box_GunsForHireSystemModifier_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1978516036", "1978516036", "MIS_320_B30", "box_ManagePlayerInventory_91.Restricted", "box_GunsForHireSystemModifier_85.DisableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableGFHSystem
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_24_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_120();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|225141676", "225141676", "MIS_320_B30", "box_UseContextualActionModifier_v3_24.Disabled", "box_SetBoolean_v2_120.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_84();
    l0 = self.box_Delay_v5_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1038089846", "1038089846", "MIS_320_B30", "box_OutputOrder_v2_16.Out", "box_Delay_v5_84.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_15();
    l0 = self.box_EntityStatusListener_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|209195193", "209195193", "MIS_320_B30", "box_OutputOrder_v2_16.Out", "box_EntityStatusListener_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_21_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_21;
    l1 = self.box_OnceOnly_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1730014771", "1730014771", "MIS_320_B30", "box_MultipleOR_21.Out", "box_OnceOnly_v3_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_112_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|640775293", "640775293", "MIS_320_B30", "box_UseContextualActionModifier_v3_112.Disabled", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ExitZoneWarningListener_v3_27_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_ExitZoneWarningListener_v3_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1333524270", "1333524270", "MIS_320_B30", "box_ExitZoneWarningListener_v3_27.FailingZoneEntered", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BindMarkerOverHead_12_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_10();
    l0 = self.box_BindMarkerOverHead_12;
    l1 = self.box_Delay_v5_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|84487193", "84487193", "MIS_320_B30", "box_BindMarkerOverHead_12.Bound", "box_Delay_v5_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_120_Out()
    self:OnExit_box_SetBoolean_v2_120_Out();
end;

function export:f_box_CoopActivePlayers_123_OnePlayer()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_123_OnePlayer();
    l0 = self.box_CoopActivePlayers_123;
    l1 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|268509348", "268509348", "MIS_320_B30", "box_CoopActivePlayers_123.OnePlayer", "box_MultipleOR_128.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_123_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_130();
    l0 = self.box_CoopActivePlayers_123;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1352958484", "1352958484", "MIS_320_B30", "box_CoopActivePlayers_123.PlayerAdded", "box_Simple_Node_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_123_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_123_TwoPlayers();
    params = self:OnEnter_box_OutputOrder_v2_133();
    l0 = self.box_CoopActivePlayers_123;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1622265452", "1622265452", "MIS_320_B30", "box_CoopActivePlayers_123.TwoPlayers", "box_OutputOrder_v2_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_46_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_51();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|611683289", "611683289", "MIS_320_B30", "box_AddActivityObjective_v2_46.Out", "box_ActivityObjectiveMarkerModifier_v3_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_87_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PickupListener_v2_66();
    l0 = self.box_ProximityTrigger_v3_87;
    l1 = self.box_PickupListener_v2_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|177230503", "177230503", "MIS_320_B30", "box_ProximityTrigger_v3_87.Enabled", "box_PickupListener_v2_66.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_87_Use()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_131();
    l0 = self.box_ProximityTrigger_v3_87;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|744852953", "744852953", "MIS_320_B30", "box_ProximityTrigger_v3_87.Use", "box_TriggerState_v2_131.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|287507776", "287507776", "MIS_320_B30", "box_MultipleOR_2.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_AddActivityObjective_v2_35_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|272009936", "272009936", "MIS_320_B30", "box_AddActivityObjective_v2_35.Out", "box_OutputOrder_v2_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_85_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_71();
    l0 = self.box_GunsForHireSystemModifier_85;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1739708933", "1739708933", "MIS_320_B30", "box_GunsForHireSystemModifier_85.Disabled", "box_SetBoolean_v2_71.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_28_LoadedIdReceived()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_76();
    l0 = self.box_CharacterLoadedIdListener_v2_28;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1816334752", "1816334752", "MIS_320_B30", "box_CharacterLoadedIdListener_v2_28.LoadedIdReceived", "box_SetContextualStrategy_76.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_45_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_EntityStatusListener_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|962259037", "962259037", "MIS_320_B30", "box_EntityStatusListener_45.Loaded", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_60_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_69();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|882656040", "882656040", "MIS_320_B30", "box_EndActivityObjective_v2_60.Out", "box_SetBoolean_v2_69.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_69_Out()
    self:OnExit_box_SetBoolean_v2_69_Out();
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_58();
    l0 = self.box_Brick_Interact_With_Object_V6_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|248548937", "248548937", "MIS_320_B30", "box_OutputOrder_v2_52.Out", "box_Brick_Interact_With_Object_V6_58.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_70();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1523163405", "1523163405", "MIS_320_B30", "box_OutputOrder_v2_52.Out", "box_Compare_Boolean_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGender_105_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_110();
    l0 = self.box_GetPlayerGender_105;
    l1 = self.box_MIS_320_GivePrisonerOutfit_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1717350963", "1717350963", "MIS_320_B30", "box_GetPlayerGender_105.Female", "box_MIS_320_GivePrisonerOutfit_110.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_105_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_110();
    l0 = self.box_GetPlayerGender_105;
    l1 = self.box_MIS_320_GivePrisonerOutfit_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|92725100", "92725100", "MIS_320_B30", "box_GetPlayerGender_105.Male", "box_MIS_320_GivePrisonerOutfit_110.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_320_B30_StartingSetup_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|806509283", "806509283", "MIS_320_B30", "box_OutputOrder_v2_11.Out", "box_MIS_320_B30_StartingSetup_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_45();
    l0 = self.box_EntityStatusListener_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|302637495", "302637495", "MIS_320_B30", "box_OutputOrder_v2_11.Out", "box_EntityStatusListener_45.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_320_B30_PlayerDetected_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1391990145", "1391990145", "MIS_320_B30", "box_OutputOrder_v2_11.Out", "box_MIS_320_B30_PlayerDetected_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_133_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1523179506", "1523179506", "MIS_320_B30", "box_OutputOrder_v2_133.Out", "box_MultipleOR_128.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_133_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGender_127();
    l0 = self.box_GetPlayerGender_127;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1242141511", "1242141511", "MIS_320_B30", "box_OutputOrder_v2_133.Out", "box_GetPlayerGender_127.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_54_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_55();
    l0 = self.box_IgnoreSignal_v2_54;
    l1 = self.box_IgnoreSignal_v2_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|38473730", "38473730", "MIS_320_B30", "box_IgnoreSignal_v2_54.Disabled", "box_IgnoreSignal_v2_55.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_126_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_125();
    l0 = self.box_Delay_v5_126;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1878099028", "1878099028", "MIS_320_B30", "box_Delay_v5_126.TimeElapsed", "box_SetContextualStrategy_125.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_114_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_B30_PrisonerTip_74();
    l0 = self.box_OnceOnly_v3_114;
    l1 = self.box_MIS_320_B30_PrisonerTip_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|129764018", "129764018", "MIS_320_B30", "box_OnceOnly_v3_114.Out", "box_MIS_320_B30_PrisonerTip_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|575761846", "575761846", "MIS_320_B30", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_9();
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1162853356", "1162853356", "MIS_320_B30", "box_ActivityAcknowledgeGate_4.Reloaded", "box_SetTimeOfDay_9.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_76_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_123;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|675839051", "675839051", "MIS_320_B30", "box_SetContextualStrategy_76.Out", "box_CoopActivePlayers_123.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_Delay_v5_44_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_27();
    l0 = self.box_Delay_v5_44;
    l1 = self.box_ExitZoneWarningListener_v3_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|64624893", "64624893", "MIS_320_B30", "box_Delay_v5_44.TimeElapsed", "box_ExitZoneWarningListener_v3_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_80_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_81();
    l0 = self.box_ProximityTrigger_v3_80;
    l1 = self.box_PlayDialog_v6_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|212386519", "212386519", "MIS_320_B30", "box_ProximityTrigger_v3_80.Enter", "box_PlayDialog_v6_81.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Brick_Interact_With_Object_V6_58_Success()
    local l0, l1;
    l0 = self.box_Brick_Interact_With_Object_V6_58;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1718715799", "1718715799", "MIS_320_B30", "box_Brick_Interact_With_Object_V6_58.Success", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_94_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_97();
    l0 = self.box_SoundModifier_v2_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1520349684", "1520349684", "MIS_320_B30", "box_OutputOrder_v2_94.Out", "box_SoundModifier_v2_97.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_96();
    l0 = self.box_SoundModifier_v2_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|396268038", "396268038", "MIS_320_B30", "box_OutputOrder_v2_94.Out", "box_SoundModifier_v2_96.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_95();
    l0 = self.box_SoundModifier_v2_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1467396150", "1467396150", "MIS_320_B30", "box_OutputOrder_v2_94.Out", "box_SoundModifier_v2_95.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_98();
    l0 = self.box_SoundModifier_v2_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1233955213", "1233955213", "MIS_320_B30", "box_OutputOrder_v2_94.Out", "box_SoundModifier_v2_98.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_122();
    l0 = self.box_SoundModifier_v2_122;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|2090087170", "2090087170", "MIS_320_B30", "box_OutputOrder_v2_94.Out", "box_SoundModifier_v2_122.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_121();
    l0 = self.box_SoundModifier_v2_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|153383120", "153383120", "MIS_320_B30", "box_OutputOrder_v2_94.Out", "box_SoundModifier_v2_121.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_InventoryItemModifier_108_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_v2_104();
    l0 = self.box_InventoryItemModifier_108;
    l1 = self.box_RestrictedItemModifier_v2_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|2075058500", "2075058500", "MIS_320_B30", "box_InventoryItemModifier_108.Out", "box_RestrictedItemModifier_v2_104.AddItemRestriction", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddItemRestriction
    l1:Exec(0, params);
end;

function export:f_box_ManagePlayerInventory_33_Restricted()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_60();
    l0 = self.box_ManagePlayerInventory_33;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|154302515", "154302515", "MIS_320_B30", "box_ManagePlayerInventory_33.Restricted", "box_EndActivityObjective_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ManagePlayerInventory_90_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_ManagePlayerInventory_91();
    l0 = self.box_ManagePlayerInventory_90;
    l1 = self.box_ManagePlayerInventory_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1607256479", "1607256479", "MIS_320_B30", "box_ManagePlayerInventory_90.Removed", "box_ManagePlayerInventory_91.RestrictItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- RestrictItems
    l1:Exec(3, params);
end;

function export:f_box_Delay_v5_10_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_31();
    l0 = self.box_Delay_v5_10;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|829558885", "829558885", "MIS_320_B30", "box_Delay_v5_10.TimeElapsed", "box_ActivityObjectiveMarkerModifier_v3_31.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_1_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityForceAndLockTracking_56();
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1979078470", "1979078470", "MIS_320_B30", "box_GetPlayerGroup_v2_1.Out", "box_ActivityForceAndLockTracking_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = self.box_Gate_v3_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1647588122", "1647588122", "MIS_320_B30", "box_Gate_v3_23.Out", "box_OutputOrder_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_320_B30_PlayerDetected_13_LieutenantKilled()
    local l0, l1;
    l0 = self.box_MIS_320_B30_PlayerDetected_13;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1357657468", "1357657468", "MIS_320_B30", "box_MIS_320_B30_PlayerDetected_13.LieutenantKilled", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MIS_320_B30_PlayerDetected_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_93();
    l0 = self.box_MIS_320_B30_PlayerDetected_13;
    l1 = self.box_HealthListener_v6_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1916636183", "1916636183", "MIS_320_B30", "box_MIS_320_B30_PlayerDetected_13.Out", "box_HealthListener_v6_93.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MIS_320_B30_PlayerDetected_13_PlayerDetected()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_102();
    l0 = self.box_MIS_320_B30_PlayerDetected_13;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|434202911", "434202911", "MIS_320_B30", "box_MIS_320_B30_PlayerDetected_13.PlayerDetected", "box_Simple_Node_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_17_Done()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_18();
    l0 = self.box_PositionModifier_v2_17;
    l1 = self.box_NavLinkModifier_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|336554953", "336554953", "MIS_320_B30", "box_PositionModifier_v2_17.Done", "box_NavLinkModifier_18.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_17_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_29();
    l0 = self.box_PositionModifier_v2_17;
    l1 = self.box_NoWeaponMode_v3_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|642547278", "642547278", "MIS_320_B30", "box_PositionModifier_v2_17.StartOut", "box_NoWeaponMode_v3_29.Off", l0:GetLuaBox(), l1:GetLuaBox());
    -- Off
    l1:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_39_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_SoundModifier_v2_39;
    l1 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|765251846", "765251846", "MIS_320_B30", "box_SoundModifier_v2_39.Started", "box_Delay_v5_36.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_62_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_23();
    l0 = self.box_OnceOnly_v3_62;
    l1 = self.box_Gate_v3_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1364336603", "1364336603", "MIS_320_B30", "box_OnceOnly_v3_62.Out", "box_Gate_v3_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_36_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_38();
    l0 = self.box_Delay_v5_36;
    l1 = self.box_SoundModifier_v2_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1563610552", "1563610552", "MIS_320_B30", "box_Delay_v5_36.TimeElapsed", "box_SoundModifier_v2_38.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_129_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_103();
    l0 = self.box_GetPlayerGender_129;
    l1 = self.box_MIS_320_GivePrisonerOutfit_103;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|219423063", "219423063", "MIS_320_B30", "box_GetPlayerGender_129.Female", "box_MIS_320_GivePrisonerOutfit_103.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_129_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_103();
    l0 = self.box_GetPlayerGender_129;
    l1 = self.box_MIS_320_GivePrisonerOutfit_103;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|433969263", "433969263", "MIS_320_B30", "box_GetPlayerGender_129.Male", "box_MIS_320_GivePrisonerOutfit_103.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_RestrictedItemModifier_v2_104_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryLoadoutModifier_34();
    l0 = self.box_RestrictedItemModifier_v2_104;
    l1 = self.box_InventoryLoadoutModifier_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1591701175", "1591701175", "MIS_320_B30", "box_RestrictedItemModifier_v2_104.Out", "box_InventoryLoadoutModifier_34.Backup", l0:GetLuaBox(), l1:GetLuaBox());
    -- Backup
    l1:Exec(0, params);
end;

function export:f_box_MIS_320_B30_PrisonerTip_74_Dialog_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = self.box_MIS_320_B30_PrisonerTip_74;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1111071543", "1111071543", "MIS_320_B30", "box_MIS_320_B30_PrisonerTip_74.Dialog Finished", "box_OutputOrder_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_73();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1363382624", "1363382624", "MIS_320_B30", "box_OutputOrder_v2_59.Out", "box_SetContextualStrategy_73.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideMenuAccessibility_v2_106();
    l0 = self.box_OverrideMenuAccessibility_v2_106;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1090196287", "1090196287", "MIS_320_B30", "box_OutputOrder_v2_59.Out", "box_OverrideMenuAccessibility_v2_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_59_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IgnoreSignal_v2_54();
    l0 = self.box_IgnoreSignal_v2_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|624486930", "624486930", "MIS_320_B30", "box_OutputOrder_v2_59.Out", "box_IgnoreSignal_v2_54.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_59_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_42();
    l0 = self.box_ExitZoneWarningListener_v3_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|980517703", "980517703", "MIS_320_B30", "box_OutputOrder_v2_59.Out", "box_ExitZoneWarningListener_v3_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_17();
    l0 = self.box_PositionModifier_v2_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1195097880", "1195097880", "MIS_320_B30", "box_OutputOrder_v2_37.Out", "box_PositionModifier_v2_17.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_39();
    l0 = self.box_SoundModifier_v2_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|353431613", "353431613", "MIS_320_B30", "box_OutputOrder_v2_37.Out", "box_SoundModifier_v2_39.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_37_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_79();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1465139933", "1465139933", "MIS_320_B30", "box_OutputOrder_v2_37.Out", "box_SoundShapeModifier_79.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGender_127_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_132();
    l0 = self.box_GetPlayerGender_127;
    l1 = self.box_MIS_320_GivePrisonerOutfit_132;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1090293953", "1090293953", "MIS_320_B30", "box_GetPlayerGender_127.Female", "box_MIS_320_GivePrisonerOutfit_132.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_127_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_320_GivePrisonerOutfit_132();
    l0 = self.box_GetPlayerGender_127;
    l1 = self.box_MIS_320_GivePrisonerOutfit_132;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|215274922", "215274922", "MIS_320_B30", "box_GetPlayerGender_127.Male", "box_MIS_320_GivePrisonerOutfit_132.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_MIS_320_B30_SpawnLogic_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_MIS_320_B30_SpawnLogic_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|801262551", "801262551", "MIS_320_B30", "box_MIS_320_B30_SpawnLogic_20.Out", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_107_PlayerAdded()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_107_PlayerAdded();
    l0 = self.box_CoopActivePlayers_107;
    l1 = self.box_MIS_320_DoorManager_115;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1756664686", "1756664686", "MIS_320_B30", "box_CoopActivePlayers_107.PlayerAdded", "box_MIS_320_DoorManager_115.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, {
    });
end;

function export:f_box_CoopActivePlayers_107_PlayerRemoved()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_107_PlayerRemoved();
    params = self:OnEnter_box_Simple_Node_109();
    l0 = self.box_CoopActivePlayers_107;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|376934090", "376934090", "MIS_320_B30", "box_CoopActivePlayers_107.PlayerRemoved", "box_Simple_Node_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_1();
    l0 = self.box_ActivityInitialized_5;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|836844749", "836844749", "MIS_320_B30", "box_ActivityInitialized_5.Out", "box_GetPlayerGroup_v2_1.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_26_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_26;
    l1 = self.box_OnceOnly_v3_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|583242585", "583242585", "MIS_320_B30", "box_MultipleOR_26.Out", "box_OnceOnly_v3_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NoWeaponMode_v3_29_OnLeave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_NoWeaponMode_v3_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1286664778", "1286664778", "MIS_320_B30", "box_NoWeaponMode_v3_29.OnLeave", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RestrictedItemModifier_v2_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ManagePlayerInventory_33();
    l0 = self.box_RestrictedItemModifier_v2_25;
    l1 = self.box_ManagePlayerInventory_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|826447521", "826447521", "MIS_320_B30", "box_RestrictedItemModifier_v2_25.Out", "box_ManagePlayerInventory_33.RestrictItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- RestrictItems
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_65();
    l0 = self.box_RemoveEntity_v2_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1404851847", "1404851847", "MIS_320_B30", "box_OutputOrder_v2_43.Out", "box_RemoveEntity_v2_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_113();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1596444725", "1596444725", "MIS_320_B30", "box_OutputOrder_v2_43.Out", "box_UseContextualActionModifier_v3_113.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_320_DoorManager_115_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGender_105();
    l0 = self.box_MIS_320_DoorManager_115;
    l1 = self.box_GetPlayerGender_105;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|447661226", "447661226", "MIS_320_B30", "box_MIS_320_DoorManager_115.Out", "box_GetPlayerGender_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_TriggerState_v2_131_OnSetUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|720044059", "720044059", "MIS_320_B30", "box_TriggerState_v2_131.OnSetUnusable", "box_OutputOrder_v2_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_42_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_47();
    l0 = self.box_ExitZoneWarningListener_v3_42;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1004064322", "1004064322", "MIS_320_B30", "box_ExitZoneWarningListener_v3_42.FailingZoneEntered", "box_ActivityRetry_v2_47.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_67_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ManagePlayerInventory_90();
    l0 = self.box_SpawnAI_67;
    l1 = self.box_ManagePlayerInventory_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|198970974", "198970974", "MIS_320_B30", "box_SpawnAI_67.Out", "box_ManagePlayerInventory_90.RemoveItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- RemoveItems
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|969869904", "969869904", "MIS_320_B30", "box_OutputOrder_v2_3.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
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
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|2055222636", "2055222636", "MIS_320_B30", "box_OutputOrder_v2_3.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_99_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_94();
    l0 = self.box_Delay_v5_99;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1078205111", "1078205111", "MIS_320_B30", "box_Delay_v5_99.TimeElapsed", "box_OutputOrder_v2_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_75_Out()
    self:OnExit_box_SetEntity_v2_75_Out();
end;

function export:f_box_PickupListener_v2_66_PickedUp()
    local params, l0, l1;
    params = self:OnEnter_box_RestrictedItemModifier_v2_25();
    l0 = self.box_PickupListener_v2_66;
    l1 = self.box_RestrictedItemModifier_v2_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1281486718", "1281486718", "MIS_320_B30", "box_PickupListener_v2_66.PickedUp", "box_RestrictedItemModifier_v2_25.ClearRestrictions", l0:GetLuaBox(), l1:GetLuaBox());
    -- ClearRestrictions
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_49();
    l0 = self.box_Music_Quest_v2_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|133448675", "133448675", "MIS_320_B30", "box_OutputOrder_v2_50.Out", "box_Music_Quest_v2_49.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_86();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|57834379", "57834379", "MIS_320_B30", "box_OutputOrder_v2_50.Out", "box_ActivityRetry_v2_86.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_70_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_61();
    l0 = self.box_Delay_v5_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1584192844", "1584192844", "MIS_320_B30", "box_Compare_Boolean_70.A_is_False", "box_Delay_v5_61.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_84_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_80();
    l0 = self.box_Delay_v5_84;
    l1 = self.box_ProximityTrigger_v3_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1567906519", "1567906519", "MIS_320_B30", "box_Delay_v5_84.Started", "box_ProximityTrigger_v3_80.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_84_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = self.box_Delay_v5_84;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|2019564314", "2019564314", "MIS_320_B30", "box_Delay_v5_84.TimeElapsed", "box_OutputOrder_v2_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_14();
    l0 = self.box_RemoveEntity_v2_19;
    l1 = self.box_SpawnAI_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1194017323", "1194017323", "MIS_320_B30", "box_RemoveEntity_v2_19.Out", "box_SpawnAI_14.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_113_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_112();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|828319954", "828319954", "MIS_320_B30", "box_UseContextualActionModifier_v3_113.Enabled", "box_UseContextualActionModifier_v3_112.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_320_B20_WallGuards_72_Out()
    local params, l0, l1;
    params = self:OnEnter_box_BindMarkerOverHead_12();
    l0 = self.box_MIS_320_B20_WallGuards_72;
    l1 = self.box_BindMarkerOverHead_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|2051621906", "2051621906", "MIS_320_B30", "box_MIS_320_B20_WallGuards_72.Out", "box_BindMarkerOverHead_12.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_MIS_320_GivePrisonerOutfit_110_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_108();
    l0 = self.box_MIS_320_GivePrisonerOutfit_110;
    l1 = self.box_InventoryItemModifier_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|433571433", "433571433", "MIS_320_B30", "box_MIS_320_GivePrisonerOutfit_110.Out", "box_InventoryItemModifier_108.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_IgnoreSignal_v2_55_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_19();
    l0 = self.box_IgnoreSignal_v2_55;
    l1 = self.box_RemoveEntity_v2_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|749393770", "749393770", "MIS_320_B30", "box_IgnoreSignal_v2_55.Disabled", "box_RemoveEntity_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_128_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGender_129();
    l0 = self.box_MultipleOR_128;
    l1 = self.box_GetPlayerGender_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1099509895", "1099509895", "MIS_320_B30", "box_MultipleOR_128.Out", "box_GetPlayerGender_129.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_30_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = self.box_OnceOnly_v3_30;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1184448306", "1184448306", "MIS_320_B30", "box_OnceOnly_v3_30.Out", "box_ActivityEnd_7.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_18_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_53();
    l0 = self.box_NavLinkModifier_18;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1912248862", "1912248862", "MIS_320_B30", "box_NavLinkModifier_18.Activated", "box_UseContextualActionModifier_v3_53.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_53_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_24();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|941562985", "941562985", "MIS_320_B30", "box_UseContextualActionModifier_v3_53.Disabled", "box_UseContextualActionModifier_v3_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_71_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_71_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|997211382", "997211382", "MIS_320_B30", "box_SetBoolean_v2_71.Out", "box_MultipleOR_2.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|@n_playerDetected");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_102_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|524955");
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
                [0] = self.f_box_OutputOrder_v2_88_Out_0,
                [1] = self.f_box_OutputOrder_v2_88_Out_1,
                [2] = self.f_box_OutputOrder_v2_88_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_38()
    local params;
    params = {
        -- Pawns,
        [0] = "2108336010025775721",
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

function export:OnEnter_box_SetContextualStrategy_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|13241417");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_73_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2107549481189786948",
        -- Group,
        [1] = "#041D291D",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_61()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_95()
    local params;
    params = {
        -- Pawns,
        [0] = "2109177327838576508",
        -- SoundId,
        [1] = "1135927399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_81()
    local params;
    params = {
        -- Group,
        [0] = "2107370066476544113",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4059142351",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_15()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107549581767099957",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|79896016");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_56_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_122()
    local params;
    params = {
        -- Pawns,
        [0] = "2109304797424258610",
        -- SoundId,
        [1] = "1135927399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|115979028");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_9_Out,
    });
    params = {
        -- Hour,
        [0] = 3,
        -- Minute,
        [1] = 30,
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_v2_106()
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

function export:OnEnter_box_MIS_320_GivePrisonerOutfit_132()
    local params, l0;
    l0 = self.box_CoopActivePlayers_123;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|167995251");
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

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|202259126");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
                [2] = self.f_box_OutputOrder_v2_22_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|213305291");
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

function export:OnEnter_box_HealthListener_v6_93()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "#46EEBD2A",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|234482388");
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
                [0] = self.f_box_OutputOrder_v2_63_Out_0,
                [1] = self.f_box_OutputOrder_v2_63_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_91()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015354238657134",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|250597912");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_24_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109494932059219138",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|267561918");
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

function export:OnEnter_box_SetContextualStrategy_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|272207508");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109401540197376624",
        -- Group,
        [1] = "#ADB4FC1B",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|347741204");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_112_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2107950278373281650",
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_27()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2108791157789087289",
        -- WarningZoneTrigger,
        [3] = "2108791124813469240",
    };
    return params;
end;

function export:OnEnter_box_BindMarkerOverHead_12()
    local params;
    params = {
        -- BoneName,
        [0] = "Head",
        -- eMobileMarker,
        [1] = "2107950672874835899",
        -- eTarget,
        [2] = "2107549581767099957",
        -- XValue,
        [3] = 0.45,
        -- YValue,
        [4] = 0,
        -- ZValue,
        [5] = 0,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_49()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 3,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "226713140",
        -- StopEvent,
        [7] = "3408696666",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|396278018");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_120_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|440205568");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_46_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_320_B30_e_OBJ_Bring",
            id = "1006453",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_87()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109749143869139814",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|524036863");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_35_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_320_B30_OBJ_Search",
            id = "1018032",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_MIS_320_GivePrisonerOutfit_103()
    local params, l0;
    l0 = self.box_CoopActivePlayers_123;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_InventoryLoadoutModifier_34()
    local params, l0;
    l0 = self.box_CoopActivePlayers_107;
    params = {
        -- discardPreviousBackup,
        [0] = false,
        -- players,
        [1] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_85()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_28()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870438634",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_45()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107549581767099957",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|581581157");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|619683750");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_60_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_320_B30_e_OBJ_Bring",
            id = "1006453",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|631328813");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_69_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|660647368");
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
                [0] = self.f_box_OutputOrder_v2_52_Out_0,
                [1] = self.f_box_OutputOrder_v2_52_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|661869778");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_105()
    local params, l0;
    l0 = self.box_CoopActivePlayers_107;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|671612976");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
                [2] = self.f_box_OutputOrder_v2_11_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|679595572");
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
                [0] = self.f_box_OutputOrder_v2_133_Out_0,
                [1] = self.f_box_OutputOrder_v2_133_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_54()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "jump",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_126()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|723826903");
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
        [8] = "MIS_320_B30 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_96()
    local params;
    params = {
        -- Pawns,
        [0] = "2109177329117839230",
        -- SoundId,
        [1] = "1135927399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|766078456");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_76_Out,
    });
    l0 = self.box_CharacterLoadedIdListener_v2_28;
    params = {
        -- ContextualStrategy,
        [0] = "2109210351011650997",
        -- Group,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_44()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_InventoryLoadoutModifier_32()
    local params;
    params = {
        -- discardPreviousBackup,
        [0] = false,
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_80()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.g_FrienglyPlayers,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2107936878958239912",
    };
    return params;
end;

function export:OnEnter_box_MIS_320_B30_CloseFactory_40()
    local params;
    params = {
        -- Group 1,
        [0] = self.g_FrienglyPlayers,
        -- Reloaded,
        [1] = self.b_QG_Respawned,
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V6_58()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = true,
        -- b_EntityIsProximityTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = true,
        -- e_EntityToInteractWith,
        [3] = "2109749143869139814",
        -- e_ObjectiveMarker,
        [4] = "2107951459046800421",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_TAKE_AMMO",
            id = "533247",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objectives",
            item = "MIS_320_B30_d_OBJ_Find",
            id = "1006452",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|942368478");
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
                [0] = self.f_box_OutputOrder_v2_94_Out_0,
                [1] = self.f_box_OutputOrder_v2_94_Out_1,
                [2] = self.f_box_OutputOrder_v2_94_Out_2,
                [3] = self.f_box_OutputOrder_v2_94_Out_3,
                [4] = self.f_box_OutputOrder_v2_94_Out_4,
                [5] = self.f_box_OutputOrder_v2_94_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_108()
    local params, l0;
    DrawTextToScreen("Comment: Remove Items on JIP", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'InventoryItemModifier')-- Comment: Remove Items on JIP");
    l0 = self.box_CoopActivePlayers_107;
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

function export:OnEnter_box_ManagePlayerInventory_33()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015353564726229",
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_90()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015342283729325",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_10()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 80,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1127187201");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_1_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_48()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 3,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "226713140",
        -- StopEvent,
        [7] = "3408696666",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_23()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_17()
    local params;
    params = {
        -- blendTime,
        [1] = 6,
        -- endTarget,
        [4] = "2108250910909017599",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108250903306841592",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_39()
    local params;
    params = {
        -- Pawns,
        [0] = "2108336010025775721",
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

function export:OnEnter_box_Delay_v5_36()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_129()
    local params, l0;
    l0 = self.box_CoopActivePlayers_123;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_v2_104()
    local params, l0;
    l0 = self.box_CoopActivePlayers_107;
    params = {
        -- allowedItemFilterID,
        [1] = "9015342283729325",
        -- players,
        [2] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_MIS_320_B30_PrisonerTip_74()
    local params;
    params = {
        -- e_NPC,
        [0] = self.e_Survivor_QG,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1277014506");
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

function export:OnEnter_box_Simple_Node_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1277507028");
    l0:SetConnections({
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1299218179");
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
                [0] = self.f_box_OutputOrder_v2_59_Out_0,
                [1] = self.f_box_OutputOrder_v2_59_Out_1,
                [2] = self.f_box_OutputOrder_v2_59_Out_2,
                [3] = self.f_box_OutputOrder_v2_59_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1300511250");
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
                [0] = self.f_box_OutputOrder_v2_37_Out_0,
                [1] = self.f_box_OutputOrder_v2_37_Out_1,
                [2] = self.f_box_OutputOrder_v2_37_Out_2,
            },
            count = 4,
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
        [0] = "2109177331217088384",
        -- SoundId,
        [1] = "1135927399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_127()
    local params, l0;
    l0 = self.box_CoopActivePlayers_123;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_29()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_RestrictedItemModifier_v2_25()
    local params;
    params = {
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1601166136");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_98()
    local params;
    params = {
        -- Pawns,
        [0] = "2109177314928508794",
        -- SoundId,
        [1] = "1135927399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1628183169");
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

function export:OnEnter_box_SoundModifier_v2_121()
    local params;
    params = {
        -- Pawns,
        [0] = "2109304803036237364",
        -- SoundId,
        [1] = "1135927399",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1650256857");
    l0:SetConnections({
        -- OnSetUnusable,
        [2] = self.f_box_TriggerState_v2_131_OnSetUnusable,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2109749143869139814",
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_42()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2109094295322511294",
        -- WarningZoneTrigger,
        [3] = "2109094268487354285",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_67()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107950242281295694",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1752910849");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_99()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1796813881");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2107950672874835899",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_320_B30_OBJ_Search",
            id = "1018032",
        },
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1803826453");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_75_Out,
    });
    params = {
        -- Entity,
        [0] = "2107549581767099957",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_14()
    local params;
    DrawTextToScreen("Comment: SPAWN TARGET", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: SPAWN TARGET");
    params = {
        -- EntitySpawner,
        [0] = "2107370066470252649",
    };
    return params;
end;

function export:OnEnter_box_PickupListener_v2_66()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pickupId,
        [1] = "2109495436631886986",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1861776285");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1909485622");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_70_A_is_False,
    });
    params = {
        -- A,
        [0] = self.b_spikePickedUp,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_65()
    local params;
    params = {
        -- Group,
        [0] = "2109748979374821706",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_84()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_19()
    local params;
    params = {
        -- Group,
        [0] = "#143C9196",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|1954144766");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_113_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109219342848648842",
    };
    return params;
end;

function export:OnEnter_box_MIS_320_GivePrisonerOutfit_110()
    local params, l0;
    l0 = self.box_CoopActivePlayers_107;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_55()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "sprint",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|2010921624");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_64()
    local params;
    params = {
        -- Pawns,
        [0] = "2110173384137512622",
        -- SoundId,
        [1] = "1380092680",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_18()
    local params;
    params = {
        -- Entity,
        [0] = "2108251069258673737",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|2112783215");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_53_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108517410083462328",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|2122839874");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_71_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b30.domino|@MIS_320_B30|2140505672");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2109495455510449293",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_320_B30_e_OBJ_Bring",
            id = "1006453",
        },
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_120_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_320_b10.b_Prison_OutsideCourtyardGate_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_123_OnePlayer()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_123;
    l1 = self.box_GetPlayerGender_129;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_MIS_320_GivePrisonerOutfit_103;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_123_TwoPlayers()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_123;
    l1 = self.box_GetPlayerGender_129;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_MIS_320_GivePrisonerOutfit_103;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_GetPlayerGender_127;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(1);
    l1 = self.box_MIS_320_GivePrisonerOutfit_132;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetBoolean_v2_69_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_spikePickedUp = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.g_FrienglyPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_107_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_107;
    l1 = self.box_MIS_320_GivePrisonerOutfit_110;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
    l1 = self.box_GetPlayerGender_105;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
    l1 = self.box_InventoryItemModifier_108;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_RestrictedItemModifier_v2_104;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_InventoryLoadoutModifier_34;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_107_PlayerRemoved()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_107;
    l1 = self.box_MIS_320_GivePrisonerOutfit_110;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
    l1 = self.box_GetPlayerGender_105;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
    l1 = self.box_InventoryItemModifier_108;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_RestrictedItemModifier_v2_104;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_InventoryLoadoutModifier_34;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
end;

function export:OnExit_box_SetEntity_v2_75_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.e_Survivor_QG = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_71_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_QG_Respawned = l0:GetDataOutValue(0);
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
