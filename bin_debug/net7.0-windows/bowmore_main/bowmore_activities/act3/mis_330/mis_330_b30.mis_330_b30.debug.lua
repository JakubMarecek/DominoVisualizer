LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_330/mis_330_b30.domino
-- User graph: MIS_330_B30
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeCS_Cinema.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetEntityInPrefab_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/InventoryLoadoutModifier.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v3.lua");
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PickupState_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/IgnoreSignal_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PersistentParticlesModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/TimedSlowMotion_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/WieldInventory_v5.lua");
        cboxRes:RegisterBox("Domino/System/PlayerSpeedModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleSeatModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_DoorManager.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_GiveDriverOutfit.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_MissionLimits.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b30.MIS_330_B30_Guards_SpawnLogic.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b30.MIS_330_B30_Lieutenants_SpawnLogic.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b30.MIS_330_B30_SlowMotion.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b30.MIS_330_B30_WalkOfFame.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.globals.lua");
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b30.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2845456904.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1696710356.bnk]], "CSoundResource");
        cboxRes:LoadResource([[443784687.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1330180261.bnk]], "CSoundResource");
        cboxRes:LoadResource([[984601101.bnk]], "CSoundResource");
        cboxRes:LoadResource([[138204205.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1261574409.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3878298107.bnk]], "CSoundResource");
        cboxRes:LoadResource([[173225927.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1045252413.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4215135172.bnk]], "CSoundResource");
        cboxRes:LoadResource([[581936265.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4130614163.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4151281907.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1226271321.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3109065434.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1233041464.bnk]], "CSoundResource");
        cboxRes:LoadResource([[321017377.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3303497937.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3041051107.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3145719517.bnk]], "CSoundResource");
        cboxRes:LoadResource([[216783645.bnk]], "CSoundResource");
        cboxRes:LoadResource([[newparticles/9015334630293318.part]], "CParticlesSystemParamResource");
        cboxRes:LoadResource([[1343002270.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b30.MIS_330_B30.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeCS_Cinema.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Started",
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
                name = "CS_Cinema_Animals",
                type = "entity",
            },
            [1] = {
                name = "CS_Cinema_NPCs",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "FadeIn",
            },
            [1] = {
                name = "FadeOut",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "FadedIn",
                delayed = false,
            },
            [1] = {
                name = "FadedOut",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "HUD",
                type = "string",
            },
            [1] = {
                name = "PostFX",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua")] = {
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
                name = "KeepBlackBars",
                type = "bool",
            },
            [1] = {
                name = "KeepGFHDisabled",
                type = "bool",
            },
            [2] = {
                name = "KeepGodMode",
                type = "bool",
            },
            [3] = {
                name = "KeepHUDMode",
                type = "bool",
            },
            [4] = {
                name = "KeepWeaponHolstered",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "BasicSetup",
            },
            [1] = {
                name = "HolsterWeapon",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Holstered",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Enable_Blackbars",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Started",
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
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [2] = {
                name = "eObjectiveAreaMarker",
                type = "entity",
            },
            [3] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [4] = {
                name = "Objective",
                type = "oasis",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/IsPawnAlive_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Alive",
                delayed = false,
            },
            [1] = {
                name = "DeadOrDown",
                delayed = false,
            },
            [2] = {
                name = "NotLoaded",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Narrative/StopMetaSequence_v5.lua")] = {
        stateless = false,
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
                delayed = true,
            },
            [1] = {
                name = "Stopped",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ID",
                type = "int",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/PickupState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAsNotPickable",
            },
            [1] = {
                name = "SetAsPickable",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSetAsNotPickable",
                delayed = false,
            },
            [1] = {
                name = "OnSetAsPickable",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pickup",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Player/PersistentParticlesModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "StartParticles",
            },
            [1] = {
                name = "StopParticles",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnStartParticles",
                delayed = false,
            },
            [1] = {
                name = "OnStopParticles",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "fadeDuration",
                type = "float",
            },
            [1] = {
                name = "particleSystem",
                type = "particle",
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
    metadataTable[GetPathID("Domino/System/Player/PostFx_v3.lua")] = {
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
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "PostFxName",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Player/TimedSlowMotion_v2.lua")] = {
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
                name = "SlowMotionEnded",
                delayed = true,
            },
            [3] = {
                name = "SlowMotionStarted",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "AimSpeedMultiplier",
                type = "float",
            },
            [1] = {
                name = "AutoDisable",
                type = "bool",
            },
            [2] = {
                name = "BlendInTime",
                type = "float",
            },
            [3] = {
                name = "BlendOutTime",
                type = "float",
            },
            [4] = {
                name = "Duration",
                type = "float",
            },
            [5] = {
                name = "PreDelay",
                type = "float",
            },
            [6] = {
                name = "TimeFactor",
                type = "float",
            },
        },
        dataInCount = 7,
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
    metadataTable[GetPathID("Domino/System/SoundMixing.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Start",
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
            [0] = {
                name = "SoundMixing",
                type = "SoundMixing",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/VisibilityModifier.lua")] = {
        stateless = false,
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
            [0] = {
                name = "players",
                type = "group",
            },
            [1] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_DoorManager.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_GiveDriverOutfit.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_MissionLimits.debug.lua")] = {
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
            [0] = {
                name = "Interior_Limit",
                type = "bool",
            },
            [1] = {
                name = "Sas_Limit",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b30.MIS_330_B30_Guards_SpawnLogic.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable_Listeners",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b30.MIS_330_B30_Lieutenants_SpawnLogic.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b30.MIS_330_B30_SlowMotion.debug.lua")] = {
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
                name = "Container_Opening",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Remove_SlowMo",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b30.MIS_330_B30_WalkOfFame.debug.lua")] = {
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
                name = "Trigger_Entered",
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
    self._name = "MIS_330_B30";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30";
    self.gp_FriendlyPlayers = nil;
    self.e_playersWheels = nil;
    self.i_totalAmmo = 0;
    self.i_magEmpty = 0;
    self.player = nil;
    self.e_HWM_hurt = nil;
    self.MetaSequenceID = 0;
    self.box_MultipleAND_v2_294 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_294;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_294");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|12033863");
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
        [0] = self.f_box_MultipleAND_v2_294_Out,
    });
    self.box_Delay_v5_110 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_110");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|35128905");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_110_TimeElapsed,
    });
    self.box_VisibilityModifier_218 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|58586795");
    l0:SetConnections({
    });
    self.box_OverrideMenuAccessibility_v2_264 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility_v2.lua");
    l0 = self.box_OverrideMenuAccessibility_v2_264;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_v2_264");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|94950195");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_v2_264_Out,
    });
    self.box_PostFx_v3_182 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|97821670");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_276 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_276;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_276");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|98111744");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_297 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_297;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_297");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|99776212");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_112 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|104806254");
    l0:SetConnections({
    });
    self.box_Delay_v5_65 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|120001559");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_65_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_65_TimeElapsed,
    });
    self.box_SoundModifier_v2_121 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|133896573");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_156 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|145975311");
    l0:SetConnections({
    });
    self.box_NarrativeFade_298 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_298;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_298");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|147459800");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_298_FadedOut,
    });
    self.box_NarrativeFade_84 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|159910741");
    l0:SetConnections({
    });
    self.box_NarrativeFade_87 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|161929816");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_87_FadedOut,
    });
    self.box_Delay_v5_38 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|169634120");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_38_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_38_TimeElapsed,
    });
    self.box_Brick_Interact_With_Object_V6_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V6_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V6_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|175585606");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Brick_Interact_With_Object_V6_15_Started,
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V6_15_Success,
    });
    self.box_VisibilityModifier_169 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|185296087");
    l0:SetConnections({
    });
    self.box_MIS_330_GiveDriverOutfit_259 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_GiveDriverOutfit.debug.lua");
    l0 = self.box_MIS_330_GiveDriverOutfit_259;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_GiveDriverOutfit_259");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|188506803");
    l0:SetConnections({
    });
    self.box_MIS_330_DoorManager_261 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_DoorManager.debug.lua");
    l0 = self.box_MIS_330_DoorManager_261;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_DoorManager_261");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|215617886");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_MIS_330_DoorManager_261_Out,
    });
    self.box_MIS_330_B30_WalkOfFame_52 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b30.MIS_330_B30_WalkOfFame.debug.lua");
    l0 = self.box_MIS_330_B30_WalkOfFame_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_B30_WalkOfFame_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|229874071");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_330_B30_WalkOfFame_52_Out,
        -- Trigger Entered,
        [1] = self.f_box_MIS_330_B30_WalkOfFame_52_Trigger_Entered,
    });
    self.box_PlaySequence_v8_100 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|250874899");
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
        [0] = self.f_box_PlaySequence_v8_100_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_100_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_100_Started,
    });
    self.box_ProximityTrigger_v3_197 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|257022123");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_197_Enter,
    });
    self.box_PlaySequence_v8_102 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_102");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|257093837");
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
        -- Started,
        [4] = self.f_box_PlaySequence_v8_102_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_102_Stopped,
    });
    self.box_IgnoreSignal_v2_36 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|272115355");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_36_Enabled,
    });
    self.box_UniversalInteractionModifier_v2_113 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|287764656");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_113_Enabled,
    });
    self.box_MultipleOR_204 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|289315399");
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
        [0] = self.f_box_MultipleOR_204_Out,
    });
    self.box_Delay_v5_85 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|301699529");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_85_TimeElapsed,
    });
    self.box_MultipleOR_233 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_233");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|321790308");
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
        [0] = self.f_box_MultipleOR_233_Out,
    });
    self.box_WieldInventory_v5_32 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|351217609");
    l0:SetConnections({
        -- Drawn,
        [0] = self.f_box_WieldInventory_v5_32_Drawn,
    });
    self.box_NarrativeFade_174 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|357014338");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_278 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_278;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_278");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|363027635");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_64 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|379126882");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_64_Deactivated,
    });
    self.box_VisibilityModifier_198 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|382119955");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_288 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_288;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_288");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|393660229");
    l0:SetConnections({
    });
    self.box_MIS_330_B30_SlowMotion_20 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b30.MIS_330_B30_SlowMotion.debug.lua");
    l0 = self.box_MIS_330_B30_SlowMotion_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_B30_SlowMotion_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|410274790");
    l0:SetConnections({
        -- Container Opening,
        [0] = self.f_box_MIS_330_B30_SlowMotion_20_Container_Opening,
        -- Remove SlowMo,
        [2] = self.f_box_MIS_330_B30_SlowMotion_20_Remove_SlowMo,
    });
    self.box_VisibilityModifier_219 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|415058218");
    l0:SetConnections({
    });
    self.box_Gate_v3_228 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_228;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|421589307");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_228_Out,
    });
    self.box_SoundModifier_v2_284 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_284;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_284");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|434744920");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_119 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|447962607");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_145 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|460622903");
    l0:SetConnections({
    });
    self.box_MIS_330_B30_Lieutenants_SpawnLogic_72 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b30.MIS_330_B30_Lieutenants_SpawnLogic.debug.lua");
    l0 = self.box_MIS_330_B30_Lieutenants_SpawnLogic_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_B30_Lieutenants_SpawnLogic_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|482937833");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_330_B30_Lieutenants_SpawnLogic_72_Out,
    });
    self.box_ProximityRadiusListener_v3_244 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_244;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_244");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|483296098");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_244_SomeoneNear,
    });
    self.box_Delay_v5_256 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_256;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_256");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|504384005");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_256_TimeElapsed,
    });
    self.box_MIS_330_GiveDriverOutfit_265 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_GiveDriverOutfit.debug.lua");
    l0 = self.box_MIS_330_GiveDriverOutfit_265;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_GiveDriverOutfit_265");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|513547864");
    l0:SetConnections({
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|515816614");
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_PositionModifier_v2_132 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|537563747");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_132_StartOut,
    });
    self.box_SoundModifier_v2_120 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|554159976");
    l0:SetConnections({
    });
    self.box_GetPlayerGender_41 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|558314724");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_41_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_41_Male,
    });
    self.box_SoundModifier_v2_114 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|576111240");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_60 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|590532576");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_60_StartOut,
    });
    self.box_GunsForHireSystemModifier_258 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_258;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_258");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|608309880");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GunsForHireSystemModifier_258_Enabled,
    });
    self.box_Gate_v3_236 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|611592874");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_236_Out,
    });
    self.box_Music_Quest_v2_290 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_290;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_290");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|654491246");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_18 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|688566272");
    l0:SetConnections({
    });
    self.box_Delay_v5_175 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_175;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|694819411");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_175_TimeElapsed,
    });
    self.box_SoundModifier_v2_281 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_281;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_281");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|706591021");
    l0:SetConnections({
    });
    self.box_Brick_AcquireObject_v6_210 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_AquireObject.Brick_AcquireObject_v6.debug.lua");
    l0 = self.box_Brick_AcquireObject_v6_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_AcquireObject_v6_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|714413594");
    l0:SetConnections({
        -- ItemsAcquired,
        [0] = self.f_box_Brick_AcquireObject_v6_210_ItemsAcquired,
        -- Started,
        [2] = self.f_box_Brick_AcquireObject_v6_210_Started,
    });
    self.box_Delay_v5_127 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|715252689");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_127_TimeElapsed,
    });
    self.box_PositionModifier_v2_61 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|719965436");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_61_StartOut,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_29 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|732153313");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_29_Out,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|737453506");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_PlayDialog_v6_243 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_243;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_243");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|742091470");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_227 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_227;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|748735730");
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
        [0] = self.f_box_PlaySequence_v8_227_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_227_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_227_Started,
    });
    self.box_PlaySequence_v8_90 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|759400648");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 7,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_90_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_90_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_90_SPOut__FadeIn_,
                },
                [1] = {
                    string = "Start_Cockroach01",
                    value = self.f_box_PlaySequence_v8_90_SPOut__Start_Cockroach01_,
                },
                [2] = {
                    string = "Stop_Cockroach01",
                    value = self.f_box_PlaySequence_v8_90_SPOut__Stop_Cockroach01_,
                },
                [3] = {
                    string = "Start_Cockroach02",
                    value = self.f_box_PlaySequence_v8_90_SPOut__Start_Cockroach02_,
                },
                [4] = {
                    string = "RadioCall",
                },
                [5] = {
                    string = "Stop_Cockroach02",
                    value = self.f_box_PlaySequence_v8_90_SPOut__Stop_Cockroach02_,
                },
                [6] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_90_SPOut__FadeOut_,
                },
            },
            count = 7,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_90_Started,
    });
    self.box_UniversalInteractionListener_107 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|768447906");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_107_Interacted,
    });
    self.box_Delay_v5_144 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|775229182");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_144_TimeElapsed,
    });
    self.box_CoopActivePlayers_260 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_260;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_260");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|793828893");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_260_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_260_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_260_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_260_TwoPlayers,
    });
    self.box_ManagePlayerInventory_35 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|796899365");
    l0:SetConnections({
        -- Restricted,
        [2] = self.f_box_ManagePlayerInventory_35_Restricted,
    });
    self.box_SoundModifier_v2_273 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_273;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_273");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|822937132");
    l0:SetConnections({
    });
    self.box_Gate_v3_237 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_237");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|824085127");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_237_Out,
    });
    self.box_SoundModifier_v2_275 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_275;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_275");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|858335731");
    l0:SetConnections({
    });
    self.box_Brick_Interact_With_Object_V6_135 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V6_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V6_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|868543523");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V6_135_Success,
    });
    self.box_VisibilityModifier_255 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_255;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_255");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|870397699");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_186 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|871427122");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_129 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|871883974");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "BlendIn_Done",
                    value = self.f_box_PlaySequence_v8_129_SPOut__BlendIn_Done_,
                },
            },
            count = 1,
        },
    });
    self.box_NarrativeCS_Cinema_157 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeCS_Cinema.debug.lua");
    l0 = self.box_NarrativeCS_Cinema_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeCS_Cinema_157");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|872266453");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_245 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_245;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_245");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|885982521");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_245_Critical,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_245_Downed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_245_Revived,
    });
    self.box_NarrativeSceneSetup_81 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|891968407");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_81_Holstered,
    });
    self.box_RequestPhoneCall_v2_240 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_240;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_240");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|919238947");
    l0:SetConnections({
    });
    self.box_Gate_v3_231 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_231;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|927073142");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_231_Out,
    });
    self.box_NavLinkModifier_101 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|931627152");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_101_Deactivated,
    });
    self.box_VisibilityModifier_252 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_252;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_252");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|934013847");
    l0:SetConnections({
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|950956652");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_RemoveEntity_v2_183 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|952363749");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_183_Out,
    });
    self.box_Music_Quest_v2_289 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_289;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_289");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|957916917");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_180 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|979998068");
    l0:SetConnections({
    });
    self.box_MIS_330_GiveDriverOutfit_267 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b10.MIS_330_GiveDriverOutfit.debug.lua");
    l0 = self.box_MIS_330_GiveDriverOutfit_267;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_GiveDriverOutfit_267");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1024622374");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_79 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1031764455");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_279 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_279;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_279");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1045051535");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_117 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1081372413");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_249 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_249;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_249");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1089521446");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_224 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_224;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1094189577");
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
        -- Started,
        [4] = self.f_box_PlaySequence_v8_224_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_224_Stopped,
    });
    self.box_VisibilityModifier_257 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_257;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_257");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1096018441");
    l0:SetConnections({
    });
    self.box_NarrativeSceneCleanUp_V2_80 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1096655642");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_80_Out,
    });
    self.box_VisibilityModifier_185 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1103437585");
    l0:SetConnections({
    });
    self.box_LookAtTrigger_v2_160 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1116746706");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_160_EnterFOV,
    });
    self.box_TimedSlowMotion_v2_166 = cbox:CreateBox("Domino/System/Player/TimedSlowMotion_v2.lua");
    l0 = self.box_TimedSlowMotion_v2_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TimedSlowMotion_v2_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1121945559");
    l0:SetConnections({
        -- SlowMotionStarted,
        [3] = self.f_box_TimedSlowMotion_v2_166_SlowMotionStarted,
    });
    self.box_SoundModifier_v2_68 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1123071608");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_247 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_247;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_247");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1131151556");
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
                [0] = self.f_box_OnceOnly_v3_247_Out_0,
            },
            count = 2,
        },
    });
    self.box_MIS_330_MissionLimits_26 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_MissionLimits.debug.lua");
    l0 = self.box_MIS_330_MissionLimits_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_MissionLimits_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1137879472");
    l0:SetConnections({
    });
    self.box_LookAtTrigger_v2_213 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1150315479");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_213_EnterFOV,
    });
    self.box_MultipleOR_248 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_248");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1159323962");
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
        [0] = self.f_box_MultipleOR_248_Out,
    });
    self.box_RequestPhoneCall_v2_34 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1177287915");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_34_Completed,
        -- Out,
        [3] = self.f_box_RequestPhoneCall_v2_34_Out,
    });
    self.box_Brick_Interact_With_Object_V6_148 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V6_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V6_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1192233678");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Brick_Interact_With_Object_V6_148_Started,
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V6_148_Success,
    });
    self.box_SoundModifier_v2_280 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_280;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_280");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1214416093");
    l0:SetConnections({
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1214424786");
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
        [0] = self.f_box_MultipleOR_33_Out,
    });
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1219357393");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_44 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1235385816");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_44_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_44_Failed,
    });
    self.box_SoundModifier_v2_66 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1240713182");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_71 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1241641153");
    l0:SetConnections({
    });
    self.box_MultipleOR_238 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_238;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_238");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1245133204");
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
        [0] = self.f_box_MultipleOR_238_Out,
    });
    self.box_MultipleOR_181 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_181");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1252222227");
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
        [0] = self.f_box_MultipleOR_181_Out,
    });
    self.box_NavLinkModifier_133 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1289146980");
    l0:SetConnections({
    });
    self.box_MultipleOR_268 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_268;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_268");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1290698159");
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
        [0] = self.f_box_MultipleOR_268_Out,
    });
    self.box_PlayDialog_v6_16 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1294843626");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_16_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_16_FinishedInterrupted,
    });
    self.box_ProximityTrigger_v3_292 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_292;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_292");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1296472972");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_292_Enter,
    });
    self.box_SoundModifier_v2_118 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1305373603");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_63 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1305540892");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_63_Out,
    });
    self.box_MultipleOR_86 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1325926651");
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
        [0] = self.f_box_MultipleOR_86_Out,
    });
    self.box_VisibilityModifier_250 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_250;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_250");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1337796467");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_239 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_239;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_239");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1356771281");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_17 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1363175106");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_17_Enabled,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_207 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_207");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1365218459");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_179 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_179");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1366895470");
    l0:SetConnections({
    });
    self.box_NoWeaponMode_v3_37 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1380306146");
    l0:SetConnections({
        -- OnLeave,
        [1] = self.f_box_NoWeaponMode_v3_37_OnLeave,
    });
    self.box_VisibilityModifier_215 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1381461963");
    l0:SetConnections({
    });
    self.box_Gate_v3_295 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_295;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_295");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1386131661");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_295_Out,
    });
    self.box_Delay_v5_299 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_299;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_299");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1410277471");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_299_TimeElapsed,
    });
    self.box_InventoryLoadoutModifier_270 = cbox:CreateBox("Domino/System/InventoryLoadoutModifier.lua");
    l0 = self.box_InventoryLoadoutModifier_270;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryLoadoutModifier_270");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1413398658");
    l0:SetConnections({
        -- BackedUp,
        [0] = self.f_box_InventoryLoadoutModifier_270_BackedUp,
    });
    self.box_OnceOnly_v3_125 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_125");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1439385238");
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
                [0] = self.f_box_OnceOnly_v3_125_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_232 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_232");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1443938002");
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
        [0] = self.f_box_MultipleOR_232_Out,
    });
    self.box_Delay_v5_67 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1447577876");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_67_TimeElapsed,
    });
    self.box_Gate_v3_234 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_234;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_234");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1466667011");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_234_Out,
    });
    self.box_ManagePlayerInventory_178 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1471379103");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ManagePlayerInventory_178_Removed,
    });
    self.box_NoWeaponMode_v3_47 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1483125734");
    l0:SetConnections({
        -- OnEnter,
        [0] = self.f_box_NoWeaponMode_v3_47_OnEnter,
    });
    self.box_IgnoreSignal_v2_177 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1489109825");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_177_Enabled,
    });
    self.box_MultipleOR_159 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1498094496");
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
        [0] = self.f_box_MultipleOR_159_Out,
    });
    self.box_Brick_Secure_Area_v5_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
    l0 = self.box_Brick_Secure_Area_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Secure_Area_v5_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1506758940");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_Brick_Secure_Area_v5_8_Started,
        -- Success,
        [1] = self.f_box_Brick_Secure_Area_v5_8_Success,
    });
    self.box_EntityStatusListener_108 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_108");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1507999846");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_108_Loaded,
    });
    self.box_InventoryItemModifier_97 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_97");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1508900917");
    l0:SetConnections({
    });
    self.box_NarrativeFade_83 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1513593103");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_83_FadedIn,
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1513652889");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_SoundModifier_v2_74 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1522025703");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_217 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1526757645");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_49 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1531039250");
    l0:SetConnections({
    });
    self.box_PlayerSpeedModifier_v3_69 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1532144782");
    l0:SetConnections({
        -- ApplySpeedFactorOut,
        [0] = self.f_box_PlayerSpeedModifier_v3_69_ApplySpeedFactorOut,
    });
    self.box_VisibilityModifier_216 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1538471167");
    l0:SetConnections({
    });
    self.box_GetEntityInPrefab_v2_172 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1541139714");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_172_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_172_Out,
    });
    self.box_NavLinkModifier_99 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_99");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1574683292");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_99_Activated,
    });
    self.box_Music_Quest_v2_287 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_287;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_287");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1605934258");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_54 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1638217263");
    l0:SetConnections({
    });
    self.box_Gate_v3_230 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_230;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1664795790");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_230_Out,
    });
    self.box_EntityStatusListener_111 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1705669471");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_111_Loaded,
    });
    self.box_CoopActivePlayers_269 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_269;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_269");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1706077316");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_269_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_269_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_269_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_269_TwoPlayers,
    });
    self.box_PlaySequence_v8_128 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_128");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1718845122");
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
        [0] = self.f_box_PlaySequence_v8_128_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_128_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_128_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_128_Stopped,
    });
    self.box_Delay_v5_205 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1748924135");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_205_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_205_TimeElapsed,
    });
    self.box_StopMetaSequence_v5_82 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1750259304");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_82_Stopped,
    });
    self.box_NoWeaponMode_v3_253 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_253;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_253");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1769267864");
    l0:SetConnections({
    });
    self.box_Delay_v5_10 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1786018562");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_10_TimeElapsed,
    });
    self.box_InventoryItemModifier_21 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1787841391");
    l0:SetConnections({
    });
    self.box_GetPlayerGender_39 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1789887707");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_39_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_39_Male,
    });
    self.box_StartMetaSequence_89 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1792994971");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_89_Out,
    });
    self.box_PositionModifier_v2_45 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1797450852");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_45_StartOut,
    });
    self.box_SoundModifier_v2_272 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_272;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_272");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1808728729");
    l0:SetConnections({
    });
    self.box_ManagePlayerInventory_42 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ManagePlayerInventory.debug.lua");
    l0 = self.box_ManagePlayerInventory_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ManagePlayerInventory_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1817534325");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ManagePlayerInventory_42_Removed,
    });
    self.box_RemoveEntity_v2_241 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_241;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_241");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1825169267");
    l0:SetConnections({
    });
    self.box_Delay_v5_143 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1827826698");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_143_TimeElapsed,
    });
    self.box_VisibilityModifier_251 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_251;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_251");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1839718795");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_134 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1844996421");
    l0:SetConnections({
    });
    self.box_Delay_v5_1 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1854442135");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_1_TimeElapsed,
    });
    self.box_MIS_330_B30_Guards_SpawnLogic_139 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b30.MIS_330_B30_Guards_SpawnLogic.debug.lua");
    l0 = self.box_MIS_330_B30_Guards_SpawnLogic_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_B30_Guards_SpawnLogic_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1857047540");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_274 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_274;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_274");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1858520179");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_296 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_296;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_296");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1890302777");
    l0:SetConnections({
    });
    self.box_CoopActivePlayers_12 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1899783302");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_12_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_12_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_12_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_12_TwoPlayers,
    });
    self.box_PlaySequence_v8_203 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1900018954");
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
        [0] = self.f_box_PlaySequence_v8_203_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_203_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_203_Started,
    });
    self.box_PersistentParticlesModifier_254 = cbox:CreateBox("Domino/System/Player/PersistentParticlesModifier.lua");
    l0 = self.box_PersistentParticlesModifier_254;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PersistentParticlesModifier_254");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1919963376");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_13 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1931303399");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_13_StartOut,
    });
    self.box_PositionModifier_v2_11 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1963628198");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_11_Done,
    });
    self.box_SoundModifier_v2_76 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1981682805");
    l0:SetConnections({
    });
    self.box_MultipleOR_98 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2007658585");
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
        [0] = self.f_box_MultipleOR_98_Out,
    });
    self.box_PostFx_v3_30 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2014547628");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_30_Enabled,
    });
    self.box_SoundModifier_v2_283 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_283;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_283");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2015572976");
    l0:SetConnections({
    });
    self.box_InventoryLoadoutModifier_271 = cbox:CreateBox("Domino/System/InventoryLoadoutModifier.lua");
    l0 = self.box_InventoryLoadoutModifier_271;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryLoadoutModifier_271");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2018000175");
    l0:SetConnections({
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2026487424");
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
    self.box_OnceOnly_v3_225 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2043108859");
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
                [0] = self.f_box_OnceOnly_v3_225_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_130 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2056936570");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_130_TimeElapsed,
    });
    self.box_VisibilityModifier_214 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2066408383");
    l0:SetConnections({
    });
    self.box_GetEntityInPrefab_v2_43 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2086382935");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_43_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_43_Out,
    });
    self.box_CoopActivePlayers_95 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2103144810");
    l0:SetConnections({
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_95_PlayerAdded,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_95_TwoPlayers,
    });
    self.box_MultipleOR_211 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2104976057");
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
        [0] = self.f_box_MultipleOR_211_Out,
    });
    self.box_GetPlayerGender_262 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_262;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_262");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2109587908");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_262_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_262_Male,
    });
    self.box_Reach_GoTo_v3_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2133355968");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_Reach_GoTo_v3_14_Started,
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_14_Success,
    });
    self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2135422790");
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
        [0] = self.f_box_MultipleOR_24_Out,
    });
    self.box_SoundModifier_v2_220 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2135556617");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1201644483", "1201644483", "MIS_330_B30", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_92_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_74();
    l0 = self.box_SoundModifier_v2_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|742348193", "742348193", "MIS_330_B30", "box_Simple_Node_92.Out", "box_SoundModifier_v2_74.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_149_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_272();
    l0 = self.box_SoundModifier_v2_272;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1906091036", "1906091036", "MIS_330_B30", "box_Simple_Node_149.Out", "box_SoundModifier_v2_272.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
    params = self:OnEnter_box_SoundModifier_v2_274();
    l0 = self.box_SoundModifier_v2_274;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1961851346", "1961851346", "MIS_330_B30", "box_Simple_Node_149.Out", "box_SoundModifier_v2_274.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
    params = self:OnEnter_box_SoundModifier_v2_71();
    l0 = self.box_SoundModifier_v2_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1291952005", "1291952005", "MIS_330_B30", "box_Simple_Node_149.Out", "box_SoundModifier_v2_71.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
    params = self:OnEnter_box_SoundModifier_v2_275();
    l0 = self.box_SoundModifier_v2_275;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|248881865", "248881865", "MIS_330_B30", "box_Simple_Node_149.Out", "box_SoundModifier_v2_275.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
    params = self:OnEnter_box_SoundModifier_v2_273();
    l0 = self.box_SoundModifier_v2_273;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|815259066", "815259066", "MIS_330_B30", "box_Simple_Node_149.Out", "box_SoundModifier_v2_273.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_193_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_63();
    l0 = self.box_RemoveEntity_v2_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|606652910", "606652910", "MIS_330_B30", "box_Simple_Node_193.Out", "box_RemoveEntity_v2_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_295();
    l0 = self.box_Gate_v3_295;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1535427055", "1535427055", "MIS_330_B30", "box_Simple_Node_193.Out", "box_Gate_v3_295.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_330_MissionLimits_26();
    l0 = self.box_MIS_330_MissionLimits_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|869099743", "869099743", "MIS_330_B30", "box_Simple_Node_193.Out", "box_MIS_330_MissionLimits_26.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_RequestPhoneCall_v2_49();
    l0 = self.box_RequestPhoneCall_v2_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1363553198", "1363553198", "MIS_330_B30", "box_Simple_Node_193.Out", "box_RequestPhoneCall_v2_49.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
    params = self:OnEnter_box_RequestPhoneCall_v2_44();
    l0 = self.box_RequestPhoneCall_v2_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|635234642", "635234642", "MIS_330_B30", "box_Simple_Node_193.Out", "box_RequestPhoneCall_v2_44.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_199();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1005590538", "1005590538", "MIS_330_B30", "box_Simple_Node_193.Out", "box_OutputOrder_v2_199.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_194_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_176();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1583022072", "1583022072", "MIS_330_B30", "box_Simple_Node_194.Out", "box_OutputOrder_v2_176.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1762337618", "1762337618", "MIS_330_B30", "box_Simple_Node_194.Out", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_55_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_TimedSlowMotion_v2_166();
    l0 = self.box_TimedSlowMotion_v2_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1796311753", "1796311753", "MIS_330_B30", "box_Simple_Node_55.Out", "box_TimedSlowMotion_v2_166.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Music_Quest_v2_290();
    l0 = self.box_Music_Quest_v2_290;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|312147937", "312147937", "MIS_330_B30", "box_Simple_Node_55.Out", "box_Music_Quest_v2_290.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
    params = self:OnEnter_box_PlaySequence_v8_129();
    l0 = self.box_PlaySequence_v8_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1824748005", "1824748005", "MIS_330_B30", "box_Simple_Node_55.Out", "box_PlaySequence_v8_129.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
end;

function export:f_box_Simple_Node_155_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_244();
    l0 = self.box_ProximityRadiusListener_v3_244;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1722398906", "1722398906", "MIS_330_B30", "box_Simple_Node_155.Out", "box_ProximityRadiusListener_v3_244.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MissionBlockLayer_142();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2056863258", "2056863258", "MIS_330_B30", "box_Simple_Node_155.Out", "box_MissionBlockLayer_142.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_282_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_237();
    l0 = self.box_Gate_v3_237;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1469471790", "1469471790", "MIS_330_B30", "box_Simple_Node_282.Out", "box_Gate_v3_237.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_231();
    l0 = self.box_Gate_v3_231;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2020049088", "2020049088", "MIS_330_B30", "box_Simple_Node_282.Out", "box_Gate_v3_231.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_234();
    l0 = self.box_Gate_v3_234;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1509980644", "1509980644", "MIS_330_B30", "box_Simple_Node_282.Out", "box_Gate_v3_234.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_228();
    l0 = self.box_Gate_v3_228;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1446015732", "1446015732", "MIS_330_B30", "box_Simple_Node_282.Out", "box_Gate_v3_228.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_230();
    l0 = self.box_Gate_v3_230;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|405665937", "405665937", "MIS_330_B30", "box_Simple_Node_282.Out", "box_Gate_v3_230.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_236();
    l0 = self.box_Gate_v3_236;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1818658717", "1818658717", "MIS_330_B30", "box_Simple_Node_282.Out", "box_Gate_v3_236.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_94_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_79();
    l0 = self.box_SoundModifier_v2_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1933433290", "1933433290", "MIS_330_B30", "box_Simple_Node_94.Out", "box_SoundModifier_v2_79.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_93_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_76();
    l0 = self.box_SoundModifier_v2_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|263391616", "263391616", "MIS_330_B30", "box_Simple_Node_93.Out", "box_SoundModifier_v2_76.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_150_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_277();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|895377318", "895377318", "MIS_330_B30", "box_Simple_Node_150.Out", "box_OutputOrder_v2_277.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_154_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MIS_330_B30_Guards_SpawnLogic_139;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1373355248", "1373355248", "MIS_330_B30", "box_Simple_Node_154.Out", "box_MIS_330_B30_Guards_SpawnLogic_139.Disable Listeners", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable Listeners
    l0:Exec(0, {
    });
    params = self:OnEnter_box_SoundModifier_v2_121();
    l0 = self.box_SoundModifier_v2_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|915089143", "915089143", "MIS_330_B30", "box_Simple_Node_154.Out", "box_SoundModifier_v2_121.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_285_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_284();
    l0 = self.box_SoundModifier_v2_284;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1940152572", "1940152572", "MIS_330_B30", "box_Simple_Node_285.Out", "box_SoundModifier_v2_284.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_151_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_283();
    l0 = self.box_SoundModifier_v2_283;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1823781559", "1823781559", "MIS_330_B30", "box_Simple_Node_151.Out", "box_SoundModifier_v2_283.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_116();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1413945508", "1413945508", "MIS_330_B30", "box_Simple_Node_151.Out", "box_OutputOrder_v2_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_286_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_68();
    l0 = self.box_SoundModifier_v2_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2010331739", "2010331739", "MIS_330_B30", "box_Simple_Node_286.Out", "box_SoundModifier_v2_68.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_294_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_295();
    l0 = self.box_MultipleAND_v2_294;
    l1 = self.box_Gate_v3_295;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|737039734", "737039734", "MIS_330_B30", "box_MultipleAND_v2_294.Out", "box_Gate_v3_295.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_184_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|595305286", "595305286", "MIS_330_B30", "box_OutputOrder_v2_184.Out", "box_MultipleOR_181.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_110_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PickupState_v2_106();
    l0 = self.box_Delay_v5_110;
    l1 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|644127966", "644127966", "MIS_330_B30", "box_Delay_v5_110.TimeElapsed", "box_PickupState_v2_106.SetAsPickable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsPickable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OverrideMenuAccessibility_v2_264_Out()
    local l0, l1;
    l0 = self.box_OverrideMenuAccessibility_v2_264;
    l1 = self.box_CoopActivePlayers_260;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2137009026", "2137009026", "MIS_330_B30", "box_OverrideMenuAccessibility_v2_264.Out", "box_CoopActivePlayers_260.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_SetBoolean_v2_190_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_190_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_105();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|519001010", "519001010", "MIS_330_B30", "box_SetBoolean_v2_190.Out", "box_TriggerState_v2_105.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_65_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_54();
    l0 = self.box_Delay_v5_65;
    l1 = self.box_RequestPhoneCall_v2_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|952699013", "952699013", "MIS_330_B30", "box_Delay_v5_65.Stopped", "box_RequestPhoneCall_v2_54.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_65_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_54();
    l0 = self.box_Delay_v5_65;
    l1 = self.box_RequestPhoneCall_v2_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|108166758", "108166758", "MIS_330_B30", "box_Delay_v5_65.TimeElapsed", "box_RequestPhoneCall_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_NarrativeFade_298_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_299();
    l0 = self.box_NarrativeFade_298;
    l1 = self.box_Delay_v5_299;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|440867193", "440867193", "MIS_330_B30", "box_NarrativeFade_298.FadedOut", "box_Delay_v5_299.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_45();
    l0 = self.box_PositionModifier_v2_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|375382866", "375382866", "MIS_330_B30", "box_OutputOrder_v2_77.Out", "box_PositionModifier_v2_45.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_94();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|761970072", "761970072", "MIS_330_B30", "box_OutputOrder_v2_77.Out", "box_Simple_Node_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_103_OnSetAsUsable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleSeatModifier_v2_195();
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1804483489", "1804483489", "MIS_330_B30", "box_VehicleModifier_v2_103.OnSetAsUsable", "box_VehicleSeatModifier_v2_195.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_61();
    l0 = self.box_PositionModifier_v2_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1954613618", "1954613618", "MIS_330_B30", "box_OutputOrder_v2_75.Out", "box_PositionModifier_v2_61.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_1();
    l0 = self.box_Delay_v5_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2082829070", "2082829070", "MIS_330_B30", "box_OutputOrder_v2_75.Out", "box_Delay_v5_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_75_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_69();
    l0 = self.box_PlayerSpeedModifier_v3_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2050870641", "2050870641", "MIS_330_B30", "box_OutputOrder_v2_75.Out", "box_PlayerSpeedModifier_v3_69.ApplySpeedFactor", clone:GetLuaBox(), l0:GetLuaBox());
    -- ApplySpeedFactor
    l0:Exec(0, params);
end;

function export:f_box_NarrativeFade_87_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_85();
    l0 = self.box_NarrativeFade_87;
    l1 = self.box_Delay_v5_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|313245109", "313245109", "MIS_330_B30", "box_NarrativeFade_87.FadedOut", "box_Delay_v5_85.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_38_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = self.box_Delay_v5_38;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|298116959", "298116959", "MIS_330_B30", "box_Delay_v5_38.Started", "box_OutputOrder_v2_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_38_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = self.box_Delay_v5_38;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1117507972", "1117507972", "MIS_330_B30", "box_Delay_v5_38.TimeElapsed", "box_OutputOrder_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V6_15_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = self.box_Brick_Interact_With_Object_V6_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|344323944", "344323944", "MIS_330_B30", "box_Brick_Interact_With_Object_V6_15.Started", "box_OutputOrder_v2_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V6_15_Success()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryLoadoutModifier_270();
    l0 = self.box_Brick_Interact_With_Object_V6_15;
    l1 = self.box_InventoryLoadoutModifier_270;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1309468851", "1309468851", "MIS_330_B30", "box_Brick_Interact_With_Object_V6_15.Success", "box_InventoryLoadoutModifier_270.Backup", l0:GetLuaBox(), l1:GetLuaBox());
    -- Backup
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableBreaker_62_DamageableChanged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_46();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|734549767", "734549767", "MIS_330_B30", "box_StaticBreakableBreaker_62.DamageableChanged", "box_StaticBreakableBreaker_46.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_173_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|435892766", "435892766", "MIS_330_B30", "box_Compare_Boolean_173.A_is_False", "box_MultipleOR_2.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_173_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_298();
    l0 = self.box_NarrativeFade_298;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2081689095", "2081689095", "MIS_330_B30", "box_Compare_Boolean_173.A_is_True", "box_NarrativeFade_298.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_MIS_330_DoorManager_261_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryLoadoutModifier_271();
    l0 = self.box_MIS_330_DoorManager_261;
    l1 = self.box_InventoryLoadoutModifier_271;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|248300177", "248300177", "MIS_330_B30", "box_MIS_330_DoorManager_261.Out", "box_InventoryLoadoutModifier_271.Backup", l0:GetLuaBox(), l1:GetLuaBox());
    -- Backup
    l1:Exec(0, params);
end;

function export:f_box_MIS_330_B30_WalkOfFame_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_25();
    l0 = self.box_MIS_330_B30_WalkOfFame_52;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|175894077", "175894077", "MIS_330_B30", "box_MIS_330_B30_WalkOfFame_52.Out", "box_ActivityObjectiveMarkerModifier_v3_25.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_330_B30_WalkOfFame_52_Trigger_Entered()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_155();
    l0 = self.box_MIS_330_B30_WalkOfFame_52;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|365946702", "365946702", "MIS_330_B30", "box_MIS_330_B30_WalkOfFame_52.Trigger Entered", "box_Simple_Node_155.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_100_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_100;
    l1 = self.box_MultipleOR_159;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|959450851", "959450851", "MIS_330_B30", "box_PlaySequence_v8_100.Finished", "box_MultipleOR_159.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_100_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_100;
    l1 = self.box_MultipleOR_159;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2123339224", "2123339224", "MIS_330_B30", "box_PlaySequence_v8_100.Skipped", "box_MultipleOR_159.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_100_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_228();
    l0 = self.box_PlaySequence_v8_100;
    l1 = self.box_Gate_v3_228;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1084694987", "1084694987", "MIS_330_B30", "box_PlaySequence_v8_100.Started", "box_Gate_v3_228.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_197_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_183();
    l0 = self.box_ProximityTrigger_v3_197;
    l1 = self.box_RemoveEntity_v2_183;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1702964415", "1702964415", "MIS_330_B30", "box_ProximityTrigger_v3_197.Enter", "box_RemoveEntity_v2_183.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_102_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_230();
    l0 = self.box_PlaySequence_v8_102;
    l1 = self.box_Gate_v3_230;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|634978950", "634978950", "MIS_330_B30", "box_PlaySequence_v8_102.Started", "box_Gate_v3_230.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_102_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_187();
    l0 = self.box_PlaySequence_v8_102;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|627512158", "627512158", "MIS_330_B30", "box_PlaySequence_v8_102.Stopped", "box_OutputOrder_v2_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_188_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IgnoreSignal_v2_36();
    l0 = self.box_IgnoreSignal_v2_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|200140408", "200140408", "MIS_330_B30", "box_OutputOrder_v2_188.Out", "box_IgnoreSignal_v2_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_188_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v3_196();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|219287814", "219287814", "MIS_330_B30", "box_OutputOrder_v2_188.Out", "box_IsPawnAlive_v3_196.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_188_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_66();
    l0 = self.box_SoundModifier_v2_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|856314381", "856314381", "MIS_330_B30", "box_OutputOrder_v2_188.Out", "box_SoundModifier_v2_66.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_188_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideMenuAccessibility_v2_264();
    l0 = self.box_OverrideMenuAccessibility_v2_264;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|612987615", "612987615", "MIS_330_B30", "box_OutputOrder_v2_188.Out", "box_OverrideMenuAccessibility_v2_264.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_188_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_287();
    l0 = self.box_Music_Quest_v2_287;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1011919680", "1011919680", "MIS_330_B30", "box_OutputOrder_v2_188.Out", "box_Music_Quest_v2_287.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_36_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_64();
    l0 = self.box_IgnoreSignal_v2_36;
    l1 = self.box_NavLinkModifier_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1682569982", "1682569982", "MIS_330_B30", "box_IgnoreSignal_v2_36.Enabled", "box_NavLinkModifier_64.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_162_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_125;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1881707719", "1881707719", "MIS_330_B30", "box_OutputOrder_v2_162.Out", "box_OnceOnly_v3_125.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_162_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_160();
    l0 = self.box_LookAtTrigger_v2_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|439411547", "439411547", "MIS_330_B30", "box_OutputOrder_v2_162.Out", "box_LookAtTrigger_v2_160.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_113_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionListener_107();
    l0 = self.box_UniversalInteractionModifier_v2_113;
    l1 = self.box_UniversalInteractionListener_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1775298572", "1775298572", "MIS_330_B30", "box_UniversalInteractionModifier_v2_113.Enabled", "box_UniversalInteractionListener_107.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_204_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_235();
    l0 = self.box_MultipleOR_204;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1574101819", "1574101819", "MIS_330_B30", "box_MultipleOR_204.Out", "box_OutputOrder_v2_235.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_85_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_165();
    l0 = self.box_Delay_v5_85;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1941934696", "1941934696", "MIS_330_B30", "box_Delay_v5_85.TimeElapsed", "box_OutputOrder_v2_165.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_233_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_231();
    l0 = self.box_MultipleOR_233;
    l1 = self.box_Gate_v3_231;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1758657587", "1758657587", "MIS_330_B30", "box_MultipleOR_233.Out", "box_Gate_v3_231.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_WieldInventory_v5_32_Drawn()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_30();
    l0 = self.box_WieldInventory_v5_32;
    l1 = self.box_PostFx_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1781683985", "1781683985", "MIS_330_B30", "box_WieldInventory_v5_32.Drawn", "box_PostFx_v3_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_64_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_101();
    l0 = self.box_NavLinkModifier_64;
    l1 = self.box_NavLinkModifier_101;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|728875807", "728875807", "MIS_330_B30", "box_NavLinkModifier_64.Deactivated", "box_NavLinkModifier_101.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_MIS_330_B30_SlowMotion_20_Container_Opening()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_149();
    l0 = self.box_MIS_330_B30_SlowMotion_20;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1523421934", "1523421934", "MIS_330_B30", "box_MIS_330_B30_SlowMotion_20.Container Opening", "box_Simple_Node_149.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_330_B30_SlowMotion_20_Remove_SlowMo()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_55();
    l0 = self.box_MIS_330_B30_SlowMotion_20;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1990116692", "1990116692", "MIS_330_B30", "box_MIS_330_B30_SlowMotion_20.Remove SlowMo", "box_Simple_Node_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_228_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_100();
    l0 = self.box_Gate_v3_228;
    l1 = self.box_PlaySequence_v8_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1919110275", "1919110275", "MIS_330_B30", "box_Gate_v3_228.Out", "box_PlaySequence_v8_100.Skip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Skip
    l1:Exec(3, params);
end;

function export:f_box_IsEntityLoaded_v3_222_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_220();
    l0 = self.box_SoundModifier_v2_220;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|81269795", "81269795", "MIS_330_B30", "box_IsEntityLoaded_v3_222.True", "box_SoundModifier_v2_220.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_104_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_131();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|260072600", "260072600", "MIS_330_B30", "box_MissionBlockLayer_104.Disabled", "box_OutputOrder_v2_131.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_330_B30_Lieutenants_SpawnLogic_72_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_167();
    l0 = self.box_MIS_330_B30_Lieutenants_SpawnLogic_72;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|232356559", "232356559", "MIS_330_B30", "box_MIS_330_B30_Lieutenants_SpawnLogic_72.Out", "box_SetBoolean_v2_167.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_244_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_243();
    l0 = self.box_ProximityRadiusListener_v3_244;
    l1 = self.box_PlayDialog_v6_243;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1289229116", "1289229116", "MIS_330_B30", "box_ProximityRadiusListener_v3_244.SomeoneNear", "box_PlayDialog_v6_243.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_256_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_255();
    l0 = self.box_Delay_v5_256;
    l1 = self.box_VisibilityModifier_255;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|305501655", "305501655", "MIS_330_B30", "box_Delay_v5_256.TimeElapsed", "box_VisibilityModifier_255.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_187_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_128();
    l0 = self.box_PlaySequence_v8_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|325476085", "325476085", "MIS_330_B30", "box_OutputOrder_v2_187.Out", "box_PlaySequence_v8_128.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_187_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_230();
    l0 = self.box_Gate_v3_230;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1421923788", "1421923788", "MIS_330_B30", "box_OutputOrder_v2_187.Out", "box_Gate_v3_230.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|287507776", "287507776", "MIS_330_B30", "box_MultipleOR_2.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PositionModifier_v2_132_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_133();
    l0 = self.box_PositionModifier_v2_132;
    l1 = self.box_NavLinkModifier_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|747803773", "747803773", "MIS_330_B30", "box_PositionModifier_v2_132.StartOut", "box_NavLinkModifier_133.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_41_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_GiveDriverOutfit_265();
    l0 = self.box_GetPlayerGender_41;
    l1 = self.box_MIS_330_GiveDriverOutfit_265;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|720213939", "720213939", "MIS_330_B30", "box_GetPlayerGender_41.Female", "box_MIS_330_GiveDriverOutfit_265.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_41_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_GiveDriverOutfit_265();
    l0 = self.box_GetPlayerGender_41;
    l1 = self.box_MIS_330_GiveDriverOutfit_265;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|239009683", "239009683", "MIS_330_B30", "box_GetPlayerGender_41.Male", "box_MIS_330_GiveDriverOutfit_265.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_208_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_207();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_207;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1761489530", "1761489530", "MIS_330_B30", "box_OutputOrder_v2_208.Out", "box_CHEAT_SetEnvironmentTimeScale_207.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_208_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_206();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1410117639", "1410117639", "MIS_330_B30", "box_OutputOrder_v2_208.Out", "box_SetTimeOfDay_206.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_60_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_99();
    l0 = self.box_PositionModifier_v2_60;
    l1 = self.box_NavLinkModifier_99;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|996749281", "996749281", "MIS_330_B30", "box_PositionModifier_v2_60.StartOut", "box_NavLinkModifier_99.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_209();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|56199094", "56199094", "MIS_330_B30", "box_OutputOrder_v2_56.Out", "box_OutputOrder_v2_209.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_239();
    l0 = self.box_SoundModifier_v2_239;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1711399427", "1711399427", "MIS_330_B30", "box_OutputOrder_v2_56.Out", "box_SoundModifier_v2_239.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_GunsForHireSystemModifier_258_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_222();
    l0 = self.box_GunsForHireSystemModifier_258;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1847089978", "1847089978", "MIS_330_B30", "box_GunsForHireSystemModifier_258.Enabled", "box_IsEntityLoaded_v3_222.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_236_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_224();
    l0 = self.box_Gate_v3_236;
    l1 = self.box_PlaySequence_v8_224;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1796712961", "1796712961", "MIS_330_B30", "box_Gate_v3_236.Out", "box_PlaySequence_v8_224.Skip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Skip
    l1:Exec(3, params);
end;

function export:f_box_MissionBlockLayer_242_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_48();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1627378974", "1627378974", "MIS_330_B30", "box_MissionBlockLayer_242.Disabled", "box_MissionBlockLayer_48.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_175_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_174();
    l0 = self.box_Delay_v5_175;
    l1 = self.box_NarrativeFade_174;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|498994576", "498994576", "MIS_330_B30", "box_Delay_v5_175.TimeElapsed", "box_NarrativeFade_174.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_Brick_AcquireObject_v6_210_ItemsAcquired()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_96();
    l0 = self.box_Brick_AcquireObject_v6_210;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1787181221", "1787181221", "MIS_330_B30", "box_Brick_AcquireObject_v6_210.ItemsAcquired", "box_OutputOrder_v2_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_AcquireObject_v6_210_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_38();
    l0 = self.box_Brick_AcquireObject_v6_210;
    l1 = self.box_Delay_v5_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1549161109", "1549161109", "MIS_330_B30", "box_Brick_AcquireObject_v6_210.Started", "box_Delay_v5_38.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_127_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_23();
    l0 = self.box_Delay_v5_127;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1493114822", "1493114822", "MIS_330_B30", "box_Delay_v5_127.TimeElapsed", "box_MissionBlockLayer_23.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_266_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_268;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|753459980", "753459980", "MIS_330_B30", "box_OutputOrder_v2_266.Out", "box_MultipleOR_268.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_266_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGender_41();
    l0 = self.box_GetPlayerGender_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|424055396", "424055396", "MIS_330_B30", "box_OutputOrder_v2_266.Out", "box_GetPlayerGender_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_167_Out()
    self:OnExit_box_SetBoolean_v2_167_Out();
end;

function export:f_box_PositionModifier_v2_61_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_60();
    l0 = self.box_PositionModifier_v2_61;
    l1 = self.box_PositionModifier_v2_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1086883485", "1086883485", "MIS_330_B30", "box_PositionModifier_v2_61.StartOut", "box_PositionModifier_v2_60.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_188();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|881748598", "881748598", "MIS_330_B30", "box_CHEAT_SetEnvironmentTimeScale_29.Out", "box_OutputOrder_v2_188.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|575761846", "575761846", "MIS_330_B30", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_221();
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1094056417", "1094056417", "MIS_330_B30", "box_ActivityAcknowledgeGate_4.Reloaded", "box_OutputOrder_v2_221.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_227_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_227;
    l1 = self.box_MultipleOR_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1169324349", "1169324349", "MIS_330_B30", "box_PlaySequence_v8_227.Finished", "box_MultipleOR_204.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_227_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_227;
    l1 = self.box_MultipleOR_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1139703710", "1139703710", "MIS_330_B30", "box_PlaySequence_v8_227.Skipped", "box_MultipleOR_204.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_227_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_234();
    l0 = self.box_PlaySequence_v8_227;
    l1 = self.box_Gate_v3_234;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|833315975", "833315975", "MIS_330_B30", "box_PlaySequence_v8_227.Started", "box_Gate_v3_234.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_SoundMixing_124_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_134();
    l0 = self.box_SoundModifier_v2_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1495302934", "1495302934", "MIS_330_B30", "box_SoundMixing_124.Out", "box_SoundModifier_v2_134.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_90_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_90;
    l1 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1577276717", "1577276717", "MIS_330_B30", "box_PlaySequence_v8_90.Finished", "box_MultipleOR_86.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_90_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_158();
    l0 = self.box_PlaySequence_v8_90;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2115733099", "2115733099", "MIS_330_B30", "box_PlaySequence_v8_90.Skipped", "box_OutputOrder_v2_158.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_90_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_84();
    l0 = self.box_PlaySequence_v8_90;
    l1 = self.box_NarrativeFade_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1091595788", "1091595788", "MIS_330_B30", "box_PlaySequence_v8_90.SPOut", "box_NarrativeFade_84.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_90_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_84();
    l0 = self.box_PlaySequence_v8_90;
    l1 = self.box_NarrativeFade_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|201748365", "201748365", "MIS_330_B30", "box_PlaySequence_v8_90.SPOut", "box_NarrativeFade_84.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_90_SPOut__Start_Cockroach01_()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_100();
    l0 = self.box_PlaySequence_v8_90;
    l1 = self.box_PlaySequence_v8_100;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1896404270", "1896404270", "MIS_330_B30", "box_PlaySequence_v8_90.SPOut", "box_PlaySequence_v8_100.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_90_SPOut__Start_Cockroach02_()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_227();
    l0 = self.box_PlaySequence_v8_90;
    l1 = self.box_PlaySequence_v8_227;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|488024882", "488024882", "MIS_330_B30", "box_PlaySequence_v8_90.SPOut", "box_PlaySequence_v8_227.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_90_SPOut__Stop_Cockroach01_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_90;
    l1 = self.box_MultipleOR_181;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|284173780", "284173780", "MIS_330_B30", "box_PlaySequence_v8_90.SPOut", "box_MultipleOR_181.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_90_SPOut__Stop_Cockroach02_()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_90;
    l1 = self.box_MultipleOR_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1268501664", "1268501664", "MIS_330_B30", "box_PlaySequence_v8_90.SPOut", "box_MultipleOR_211.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_90_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_146();
    l0 = self.box_PlaySequence_v8_90;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1880506310", "1880506310", "MIS_330_B30", "box_PlaySequence_v8_90.Started", "box_OutputOrder_v2_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_107_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_110();
    l0 = self.box_UniversalInteractionListener_107;
    l1 = self.box_Delay_v5_110;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|164110603", "164110603", "MIS_330_B30", "box_UniversalInteractionListener_107.Interacted", "box_Delay_v5_110.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_144_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_138();
    l0 = self.box_Delay_v5_144;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1988352916", "1988352916", "MIS_330_B30", "box_Delay_v5_144.TimeElapsed", "box_MissionBlockLayer_138.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_260_PlayerAdded()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_260_PlayerAdded();
    params = self:OnEnter_box_OutputOrder_v2_263();
    l0 = self.box_CoopActivePlayers_260;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|760175726", "760175726", "MIS_330_B30", "box_CoopActivePlayers_260.PlayerAdded", "box_OutputOrder_v2_263.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_260_PlayerRemoved()
    self:OnExit_box_CoopActivePlayers_260_PlayerRemoved();
end;

function export:f_box_OutputOrder_v2_131_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_132();
    l0 = self.box_PositionModifier_v2_132;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1271161929", "1271161929", "MIS_330_B30", "box_OutputOrder_v2_131.Out", "box_PositionModifier_v2_132.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_131_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_93();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1975544777", "1975544777", "MIS_330_B30", "box_OutputOrder_v2_131.Out", "box_Simple_Node_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_AcquireObject_v6_210();
    l0 = self.box_Brick_AcquireObject_v6_210;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1279136352", "1279136352", "MIS_330_B30", "box_OutputOrder_v2_58.Out", "box_Brick_AcquireObject_v6_210.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_330_B30_Lieutenants_SpawnLogic_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1248946098", "1248946098", "MIS_330_B30", "box_OutputOrder_v2_58.Out", "box_MIS_330_B30_Lieutenants_SpawnLogic_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_58_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_288();
    l0 = self.box_Music_Quest_v2_288;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1104534975", "1104534975", "MIS_330_B30", "box_OutputOrder_v2_58.Out", "box_Music_Quest_v2_288.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ManagePlayerInventory_35_Restricted()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_31();
    l0 = self.box_ManagePlayerInventory_35;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|795118136", "795118136", "MIS_330_B30", "box_ManagePlayerInventory_35.Restricted", "box_SetTimeOfDay_31.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_96_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_65();
    l0 = self.box_Delay_v5_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2073807842", "2073807842", "MIS_330_B30", "box_OutputOrder_v2_96.Out", "box_Delay_v5_65.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_96_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_135();
    l0 = self.box_Brick_Interact_With_Object_V6_135;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2052871269", "2052871269", "MIS_330_B30", "box_OutputOrder_v2_96.Out", "box_Brick_Interact_With_Object_V6_135.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_96_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1425338792", "1425338792", "MIS_330_B30", "box_OutputOrder_v2_96.Out", "box_CoopActivePlayers_95.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_96_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_292();
    l0 = self.box_ProximityTrigger_v3_292;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2038142019", "2038142019", "MIS_330_B30", "box_OutputOrder_v2_96.Out", "box_ProximityTrigger_v3_292.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_237_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_203();
    l0 = self.box_Gate_v3_237;
    l1 = self.box_PlaySequence_v8_203;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|896332583", "896332583", "MIS_330_B30", "box_Gate_v3_237.Out", "box_PlaySequence_v8_203.Skip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Skip
    l1:Exec(3, params);
end;

function export:f_box_Brick_Interact_With_Object_V6_135_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = self.box_Brick_Interact_With_Object_V6_135;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1787327980", "1787327980", "MIS_330_B30", "box_Brick_Interact_With_Object_V6_135.Success", "box_OutputOrder_v2_75.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_129_SPOut__BlendIn_Done_()
    local params, l0, l1;
    params = self:OnEnter_box_TimedSlowMotion_v2_166();
    l0 = self.box_PlaySequence_v8_129;
    l1 = self.box_TimedSlowMotion_v2_166;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1548647293", "1548647293", "MIS_330_B30", "box_PlaySequence_v8_129.SPOut", "box_TimedSlowMotion_v2_166.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_116_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_120();
    l0 = self.box_SoundModifier_v2_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|415730240", "415730240", "MIS_330_B30", "box_OutputOrder_v2_116.Out", "box_SoundModifier_v2_120.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_116_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_118();
    l0 = self.box_SoundModifier_v2_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2062567954", "2062567954", "MIS_330_B30", "box_OutputOrder_v2_116.Out", "box_SoundModifier_v2_118.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_116_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_119();
    l0 = self.box_SoundModifier_v2_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|352662208", "352662208", "MIS_330_B30", "box_OutputOrder_v2_116.Out", "box_SoundModifier_v2_119.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_116_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_114();
    l0 = self.box_SoundModifier_v2_114;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1973454399", "1973454399", "MIS_330_B30", "box_OutputOrder_v2_116.Out", "box_SoundModifier_v2_114.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_116_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_117();
    l0 = self.box_SoundModifier_v2_117;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1479890245", "1479890245", "MIS_330_B30", "box_OutputOrder_v2_116.Out", "box_SoundModifier_v2_117.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_23_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1097115183", "1097115183", "MIS_330_B30", "box_MissionBlockLayer_23.Activated", "box_Delay_v5_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_VehicleSeatModifier_v2_195_Unlocked()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_104();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|467284410", "467284410", "MIS_330_B30", "box_VehicleSeatModifier_v2_195.Unlocked", "box_MissionBlockLayer_104.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_245_Critical()
    local l0, l1;
    l0 = self.box_HealthListener_v6_245;
    l1 = self.box_MultipleOR_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1526696524", "1526696524", "MIS_330_B30", "box_HealthListener_v6_245.Critical", "box_MultipleOR_248.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_245_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_245;
    l1 = self.box_MultipleOR_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2013804820", "2013804820", "MIS_330_B30", "box_HealthListener_v6_245.Downed", "box_MultipleOR_248.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_245_Revived()
    local l0, l1;
    l0 = self.box_HealthListener_v6_245;
    l1 = self.box_MultipleOR_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|91282636", "91282636", "MIS_330_B30", "box_HealthListener_v6_245.Revived", "box_MultipleOR_248.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_NarrativeSceneSetup_81_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_87();
    l0 = self.box_NarrativeSceneSetup_81;
    l1 = self.box_NarrativeFade_87;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2060892276", "2060892276", "MIS_330_B30", "box_NarrativeSceneSetup_81.Holstered", "box_NarrativeFade_87.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_136_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1332182752", "1332182752", "MIS_330_B30", "box_OutputOrder_v2_136.Out", "box_MultipleOR_86.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_231_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_128();
    l0 = self.box_Gate_v3_231;
    l1 = self.box_PlaySequence_v8_128;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1034276055", "1034276055", "MIS_330_B30", "box_Gate_v3_231.Out", "box_PlaySequence_v8_128.Skip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Skip
    l1:Exec(3, params);
end;

function export:f_box_NavLinkModifier_101_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_168();
    l0 = self.box_NavLinkModifier_101;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2052493560", "2052493560", "MIS_330_B30", "box_NavLinkModifier_101.Deactivated", "box_Compare_Boolean_168.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_80();
    l0 = self.box_Delay_v5_28;
    l1 = self.box_NarrativeSceneCleanUp_V2_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1070730911", "1070730911", "MIS_330_B30", "box_Delay_v5_28.TimeElapsed", "box_NarrativeSceneCleanUp_V2_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_183_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_145();
    l0 = self.box_RemoveEntity_v2_183;
    l1 = self.box_RemoveEntity_v2_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|297582284", "297582284", "MIS_330_B30", "box_RemoveEntity_v2_183.Out", "box_RemoveEntity_v2_145.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_209_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1107342979", "1107342979", "MIS_330_B30", "box_OutputOrder_v2_209.Out", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_209_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeCS_Cinema_157();
    l0 = self.box_NarrativeCS_Cinema_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1842550294", "1842550294", "MIS_330_B30", "box_OutputOrder_v2_209.Out", "box_NarrativeCS_Cinema_157.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_191_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_224();
    l0 = self.box_PlaySequence_v8_224;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1043109330", "1043109330", "MIS_330_B30", "box_OutputOrder_v2_191.Out", "box_PlaySequence_v8_224.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_191_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_213();
    l0 = self.box_LookAtTrigger_v2_213;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|378537059", "378537059", "MIS_330_B30", "box_OutputOrder_v2_191.Out", "box_LookAtTrigger_v2_213.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_11();
    l0 = self.box_PositionModifier_v2_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|734397330", "734397330", "MIS_330_B30", "box_OutputOrder_v2_78.Out", "box_PositionModifier_v2_11.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_93();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|197845844", "197845844", "MIS_330_B30", "box_OutputOrder_v2_78.Out", "box_Simple_Node_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_224_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_236();
    l0 = self.box_PlaySequence_v8_224;
    l1 = self.box_Gate_v3_236;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|408146646", "408146646", "MIS_330_B30", "box_PlaySequence_v8_224.Started", "box_Gate_v3_236.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_224_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_226();
    l0 = self.box_PlaySequence_v8_224;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|91015742", "91015742", "MIS_330_B30", "box_PlaySequence_v8_224.Stopped", "box_OutputOrder_v2_226.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneCleanUp_V2_80_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_253();
    l0 = self.box_NarrativeSceneCleanUp_V2_80;
    l1 = self.box_NoWeaponMode_v3_253;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1135501540", "1135501540", "MIS_330_B30", "box_NarrativeSceneCleanUp_V2_80.Out", "box_NoWeaponMode_v3_253.On", l0:GetLuaBox(), l1:GetLuaBox());
    -- On
    l1:Exec(1, params);
end;

function export:f_box_LookAtTrigger_v2_160_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_184();
    l0 = self.box_LookAtTrigger_v2_160;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|231924277", "231924277", "MIS_330_B30", "box_LookAtTrigger_v2_160.EnterFOV", "box_OutputOrder_v2_184.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TimedSlowMotion_v2_166_SlowMotionStarted()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Secure_Area_v5_8();
    l0 = self.box_TimedSlowMotion_v2_166;
    l1 = self.box_Brick_Secure_Area_v5_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2048063830", "2048063830", "MIS_330_B30", "box_TimedSlowMotion_v2_166.SlowMotionStarted", "box_Brick_Secure_Area_v5_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_247_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_55();
    l0 = self.box_OnceOnly_v3_247;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2021143879", "2021143879", "MIS_330_B30", "box_OnceOnly_v3_247.Out", "box_Simple_Node_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_246_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_330_B30_SlowMotion_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|899954356", "899954356", "MIS_330_B30", "box_OutputOrder_v2_246.Out", "box_MIS_330_B30_SlowMotion_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_246_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_245();
    l0 = self.box_HealthListener_v6_245;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1117547757", "1117547757", "MIS_330_B30", "box_OutputOrder_v2_246.Out", "box_HealthListener_v6_245.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_235_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_191();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|259722004", "259722004", "MIS_330_B30", "box_OutputOrder_v2_235.Out", "box_OutputOrder_v2_191.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_235_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_234();
    l0 = self.box_Gate_v3_234;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|193826192", "193826192", "MIS_330_B30", "box_OutputOrder_v2_235.Out", "box_Gate_v3_234.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_LookAtTrigger_v2_213_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_212();
    l0 = self.box_LookAtTrigger_v2_213;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|992249561", "992249561", "MIS_330_B30", "box_LookAtTrigger_v2_213.EnterFOV", "box_OutputOrder_v2_212.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_248_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_248;
    l1 = self.box_OnceOnly_v3_247;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2034254741", "2034254741", "MIS_330_B30", "box_MultipleOR_248.Out", "box_OnceOnly_v3_247.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionBlockLayer_138_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_143();
    l0 = self.box_Delay_v5_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|951716575", "951716575", "MIS_330_B30", "box_MissionBlockLayer_138.Activated", "box_Delay_v5_143.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_RequestPhoneCall_v2_34_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_294();
    l0 = self.box_RequestPhoneCall_v2_34;
    l1 = self.box_MultipleAND_v2_294;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|21073189", "21073189", "MIS_330_B30", "box_RequestPhoneCall_v2_34.Completed", "box_MultipleAND_v2_294.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_RequestPhoneCall_v2_34_Out()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_34;
    l1 = self.box_CoopActivePlayers_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1036924520", "1036924520", "MIS_330_B30", "box_RequestPhoneCall_v2_34.Out", "box_CoopActivePlayers_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Brick_Interact_With_Object_V6_148_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = self.box_Brick_Interact_With_Object_V6_148;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1527475310", "1527475310", "MIS_330_B30", "box_Brick_Interact_With_Object_V6_148.Started", "box_OutputOrder_v2_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V6_148_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_115();
    l0 = self.box_Brick_Interact_With_Object_V6_148;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1131659003", "1131659003", "MIS_330_B30", "box_Brick_Interact_With_Object_V6_148.Success", "box_OutputOrder_v2_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_18();
    l0 = self.box_MultipleOR_33;
    l1 = self.box_RequestPhoneCall_v2_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|845522555", "845522555", "MIS_330_B30", "box_MultipleOR_33.Out", "box_RequestPhoneCall_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_70();
    l0 = self.box_Delay_v5_19;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|495845151", "495845151", "MIS_330_B30", "box_Delay_v5_19.TimeElapsed", "box_MissionBlockLayer_70.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_44_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_44;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|298159814", "298159814", "MIS_330_B30", "box_RequestPhoneCall_v2_44.Completed", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_44_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_44;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|482434883", "482434883", "MIS_330_B30", "box_RequestPhoneCall_v2_44.Failed", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_238_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_237();
    l0 = self.box_MultipleOR_238;
    l1 = self.box_Gate_v3_237;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|350187611", "350187611", "MIS_330_B30", "box_MultipleOR_238.Out", "box_Gate_v3_237.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_181_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_162();
    l0 = self.box_MultipleOR_181;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1795303352", "1795303352", "MIS_330_B30", "box_MultipleOR_181.Out", "box_OutputOrder_v2_162.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_263_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGender_262();
    l0 = self.box_GetPlayerGender_262;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|211966123", "211966123", "MIS_330_B30", "box_OutputOrder_v2_263.Out", "box_GetPlayerGender_262.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_263_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_330_DoorManager_261;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1313907555", "1313907555", "MIS_330_B30", "box_OutputOrder_v2_263.Out", "box_MIS_330_DoorManager_261.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, {
    });
end;

function export:f_box_MultipleOR_268_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGender_39();
    l0 = self.box_MultipleOR_268;
    l1 = self.box_GetPlayerGender_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1186210830", "1186210830", "MIS_330_B30", "box_MultipleOR_268.Out", "box_GetPlayerGender_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_16_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_16;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1984952714", "1984952714", "MIS_330_B30", "box_PlayDialog_v6_16.Finished", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_16_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_16;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|570243547", "570243547", "MIS_330_B30", "box_PlayDialog_v6_16.FinishedInterrupted", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v3_292_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_240();
    l0 = self.box_ProximityTrigger_v3_292;
    l1 = self.box_RequestPhoneCall_v2_240;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1068622810", "1068622810", "MIS_330_B30", "box_ProximityTrigger_v3_292.Enter", "box_RequestPhoneCall_v2_240.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_241();
    l0 = self.box_RemoveEntity_v2_63;
    l1 = self.box_RemoveEntity_v2_241;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|636338159", "636338159", "MIS_330_B30", "box_RemoveEntity_v2_63.Out", "box_RemoveEntity_v2_241.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_168_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1325970198", "1325970198", "MIS_330_B30", "box_Compare_Boolean_168.A_is_False", "box_OutputOrder_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_168_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_194();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|357536889", "357536889", "MIS_330_B30", "box_Compare_Boolean_168.A_is_True", "box_Simple_Node_194.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_199_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_201();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1815938136", "1815938136", "MIS_330_B30", "box_OutputOrder_v2_199.Out", "box_MissionBlockLayer_201.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_199_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_200();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|378184193", "378184193", "MIS_330_B30", "box_OutputOrder_v2_199.Out", "box_MissionBlockLayer_200.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_199_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_141();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2096655283", "2096655283", "MIS_330_B30", "box_OutputOrder_v2_199.Out", "box_MissionBlockLayer_141.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_199_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_202();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1871576916", "1871576916", "MIS_330_B30", "box_OutputOrder_v2_199.Out", "box_MissionBlockLayer_202.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_199_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_126();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1414600819", "1414600819", "MIS_330_B30", "box_OutputOrder_v2_199.Out", "box_MissionBlockLayer_126.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_86_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_147();
    l0 = self.box_MultipleOR_86;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|124319307", "124319307", "MIS_330_B30", "box_MultipleOR_86.Out", "box_OutputOrder_v2_147.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_17_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_9();
    l0 = self.box_PhoneCallExclusivityModifier_17;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1965251347", "1965251347", "MIS_330_B30", "box_PhoneCallExclusivityModifier_17.Enabled", "box_GetPlayerGroup_v2_9.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NoWeaponMode_v3_37_OnLeave()
    local params, l0, l1;
    params = self:OnEnter_box_WieldInventory_v5_32();
    l0 = self.box_NoWeaponMode_v3_37;
    l1 = self.box_WieldInventory_v5_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|586414384", "586414384", "MIS_330_B30", "box_NoWeaponMode_v3_37.OnLeave", "box_WieldInventory_v5_32.LuaDraw", l0:GetLuaBox(), l1:GetLuaBox());
    -- LuaDraw
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_65();
    l0 = self.box_Delay_v5_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|426081952", "426081952", "MIS_330_B30", "box_OutputOrder_v2_59.Out", "box_Delay_v5_65.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_242();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1311864476", "1311864476", "MIS_330_B30", "box_OutputOrder_v2_59.Out", "box_MissionBlockLayer_242.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_295_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_44();
    l0 = self.box_Gate_v3_295;
    l1 = self.box_RequestPhoneCall_v2_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|249931438", "249931438", "MIS_330_B30", "box_Gate_v3_295.Out", "box_RequestPhoneCall_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_299_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_299;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1316868976", "1316868976", "MIS_330_B30", "box_Delay_v5_299.TimeElapsed", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_InventoryLoadoutModifier_270_BackedUp()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_122();
    l0 = self.box_InventoryLoadoutModifier_270;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1834098743", "1834098743", "MIS_330_B30", "box_InventoryLoadoutModifier_270.BackedUp", "box_OutputOrder_v2_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_147_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v5_82();
    l0 = self.box_StopMetaSequence_v5_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1501275026", "1501275026", "MIS_330_B30", "box_OutputOrder_v2_147.Out", "box_StopMetaSequence_v5_82.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_147_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_218();
    l0 = self.box_VisibilityModifier_218;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|934940073", "934940073", "MIS_330_B30", "box_OutputOrder_v2_147.Out", "box_VisibilityModifier_218.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_147_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_186();
    l0 = self.box_VisibilityModifier_186;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|497971611", "497971611", "MIS_330_B30", "box_OutputOrder_v2_147.Out", "box_VisibilityModifier_186.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_147_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_185();
    l0 = self.box_VisibilityModifier_185;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2062535310", "2062535310", "MIS_330_B30", "box_OutputOrder_v2_147.Out", "box_VisibilityModifier_185.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_147_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_198();
    l0 = self.box_VisibilityModifier_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|558682192", "558682192", "MIS_330_B30", "box_OutputOrder_v2_147.Out", "box_VisibilityModifier_198.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_147_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_219();
    l0 = self.box_VisibilityModifier_219;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|140904302", "140904302", "MIS_330_B30", "box_OutputOrder_v2_147.Out", "box_VisibilityModifier_219.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_147_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_217();
    l0 = self.box_VisibilityModifier_217;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|187919988", "187919988", "MIS_330_B30", "box_OutputOrder_v2_147.Out", "box_VisibilityModifier_217.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_147_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_250();
    l0 = self.box_VisibilityModifier_250;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1064688087", "1064688087", "MIS_330_B30", "box_OutputOrder_v2_147.Out", "box_VisibilityModifier_250.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_147_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_257();
    l0 = self.box_VisibilityModifier_257;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1732424505", "1732424505", "MIS_330_B30", "box_OutputOrder_v2_147.Out", "box_VisibilityModifier_257.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_147_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_297();
    l0 = self.box_VisibilityModifier_297;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1026989231", "1026989231", "MIS_330_B30", "box_OutputOrder_v2_147.Out", "box_VisibilityModifier_297.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_125_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_102();
    l0 = self.box_OnceOnly_v3_125;
    l1 = self.box_PlaySequence_v8_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1958001838", "1958001838", "MIS_330_B30", "box_OnceOnly_v3_125.Out", "box_PlaySequence_v8_102.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_MultipleOR_232_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_232;
    l1 = self.box_MultipleOR_233;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|553674591", "553674591", "MIS_330_B30", "box_MultipleOR_232.Out", "box_MultipleOR_233.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_67_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_67;
    l1 = self.box_MIS_330_B30_Guards_SpawnLogic_139;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1623772947", "1623772947", "MIS_330_B30", "box_Delay_v5_67.TimeElapsed", "box_MIS_330_B30_Guards_SpawnLogic_139.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_109_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_113();
    l0 = self.box_UniversalInteractionModifier_v2_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1782221392", "1782221392", "MIS_330_B30", "box_OutputOrder_v2_109.Out", "box_UniversalInteractionModifier_v2_113.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_109_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_108();
    l0 = self.box_EntityStatusListener_108;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1706763166", "1706763166", "MIS_330_B30", "box_OutputOrder_v2_109.Out", "box_EntityStatusListener_108.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_234_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_227();
    l0 = self.box_Gate_v3_234;
    l1 = self.box_PlaySequence_v8_227;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1091279371", "1091279371", "MIS_330_B30", "box_Gate_v3_234.Out", "box_PlaySequence_v8_227.Skip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Skip
    l1:Exec(3, params);
end;

function export:f_box_ManagePlayerInventory_178_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_175();
    l0 = self.box_ManagePlayerInventory_178;
    l1 = self.box_Delay_v5_175;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|368635577", "368635577", "MIS_330_B30", "box_ManagePlayerInventory_178.Removed", "box_Delay_v5_175.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_NoWeaponMode_v3_47_OnEnter()
    local params, l0, l1;
    params = self:OnEnter_box_GetEntityInPrefab_v2_43();
    l0 = self.box_NoWeaponMode_v3_47;
    l1 = self.box_GetEntityInPrefab_v2_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|529066524", "529066524", "MIS_330_B30", "box_NoWeaponMode_v3_47.OnEnter", "box_GetEntityInPrefab_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_177_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ManagePlayerInventory_178();
    l0 = self.box_IgnoreSignal_v2_177;
    l1 = self.box_ManagePlayerInventory_178;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1923537073", "1923537073", "MIS_330_B30", "box_IgnoreSignal_v2_177.Enabled", "box_ManagePlayerInventory_178.RemoveItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- RemoveItems
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_189_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_225;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2144645542", "2144645542", "MIS_330_B30", "box_OutputOrder_v2_189.Out", "box_OnceOnly_v3_225.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_189_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_213();
    l0 = self.box_LookAtTrigger_v2_213;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|33890519", "33890519", "MIS_330_B30", "box_OutputOrder_v2_189.Out", "box_LookAtTrigger_v2_213.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_159_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_229();
    l0 = self.box_MultipleOR_159;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|659096922", "659096922", "MIS_330_B30", "box_MultipleOR_159.Out", "box_OutputOrder_v2_229.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Secure_Area_v5_8_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_246();
    l0 = self.box_Brick_Secure_Area_v5_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|989665696", "989665696", "MIS_330_B30", "box_Brick_Secure_Area_v5_8.Started", "box_OutputOrder_v2_246.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Secure_Area_v5_8_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_Brick_Secure_Area_v5_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1205697411", "1205697411", "MIS_330_B30", "box_Brick_Secure_Area_v5_8.Success", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_108_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PickupState_v2_106();
    l0 = self.box_EntityStatusListener_108;
    l1 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|885441796", "885441796", "MIS_330_B30", "box_EntityStatusListener_108.Loaded", "box_PickupState_v2_106.SetAsNotPickable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsNotPickable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_83_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_NarrativeFade_83;
    l1 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1824841929", "1824841929", "MIS_330_B30", "box_NarrativeFade_83.FadedIn", "box_Delay_v5_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityInitialized_5_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_5;
    l1 = self.box_PhoneCallExclusivityModifier_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1784902413", "1784902413", "MIS_330_B30", "box_ActivityInitialized_5.Out", "box_PhoneCallExclusivityModifier_17.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_PlayerSpeedModifier_v3_69_ApplySpeedFactorOut()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_92();
    l0 = self.box_PlayerSpeedModifier_v3_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1484090231", "1484090231", "MIS_330_B30", "box_PlayerSpeedModifier_v3_69.ApplySpeedFactorOut", "box_Simple_Node_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_172_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_170();
    l0 = self.box_GetEntityInPrefab_v2_172;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2132012869", "2132012869", "MIS_330_B30", "box_GetEntityInPrefab_v2_172.Out", "box_StaticBreakableBreaker_170.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_48_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_109();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1365643044", "1365643044", "MIS_330_B30", "box_MissionBlockLayer_48.Activated", "box_OutputOrder_v2_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_25_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_22();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1575448111", "1575448111", "MIS_330_B30", "box_ActivityObjectiveMarkerModifier_v3_25.Disabled", "box_ActivityObjectiveMarkerModifier_v3_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_123_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_129();
    l0 = self.box_PlaySequence_v8_129;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|559111320", "559111320", "MIS_330_B30", "box_OutputOrder_v2_123.Out", "box_PlaySequence_v8_129.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_123_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_124();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|285967537", "285967537", "MIS_330_B30", "box_OutputOrder_v2_123.Out", "box_SoundMixing_124.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_123_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_285();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2090980371", "2090980371", "MIS_330_B30", "box_OutputOrder_v2_123.Out", "box_Simple_Node_285.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_123_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_289();
    l0 = self.box_Music_Quest_v2_289;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|211700294", "211700294", "MIS_330_B30", "box_OutputOrder_v2_123.Out", "box_Music_Quest_v2_289.Start_Reset_MIS_Attacked", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_Reset_MIS_Attacked
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_123_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_293();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|910931334", "910931334", "MIS_330_B30", "box_OutputOrder_v2_123.Out", "box_RadioModifier_v3_293.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_99_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_190();
    l0 = self.box_NavLinkModifier_99;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|996615216", "996615216", "MIS_330_B30", "box_NavLinkModifier_99.Activated", "box_SetBoolean_v2_190.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_291_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NoWeaponMode_v3_47();
    l0 = self.box_NoWeaponMode_v3_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1248059103", "1248059103", "MIS_330_B30", "box_OutputOrder_v2_291.Out", "box_NoWeaponMode_v3_47.On", clone:GetLuaBox(), l0:GetLuaBox());
    -- On
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_291_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_34();
    l0 = self.box_RequestPhoneCall_v2_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1526011015", "1526011015", "MIS_330_B30", "box_OutputOrder_v2_291.Out", "box_RequestPhoneCall_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_164_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_169();
    l0 = self.box_VisibilityModifier_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|963369712", "963369712", "MIS_330_B30", "box_OutputOrder_v2_164.Out", "box_VisibilityModifier_169.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_164_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_163();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1199711784", "1199711784", "MIS_330_B30", "box_OutputOrder_v2_164.Out", "box_MissionBlockLayer_163.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_164_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_179();
    l0 = self.box_VisibilityModifier_179;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2102304959", "2102304959", "MIS_330_B30", "box_OutputOrder_v2_164.Out", "box_VisibilityModifier_179.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_164_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_180();
    l0 = self.box_VisibilityModifier_180;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|740388849", "740388849", "MIS_330_B30", "box_OutputOrder_v2_164.Out", "box_VisibilityModifier_180.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_164_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_214();
    l0 = self.box_VisibilityModifier_214;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|516616012", "516616012", "MIS_330_B30", "box_OutputOrder_v2_164.Out", "box_VisibilityModifier_214.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_164_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_215();
    l0 = self.box_VisibilityModifier_215;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1008737511", "1008737511", "MIS_330_B30", "box_OutputOrder_v2_164.Out", "box_VisibilityModifier_215.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_164_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_216();
    l0 = self.box_VisibilityModifier_216;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2139963307", "2139963307", "MIS_330_B30", "box_OutputOrder_v2_164.Out", "box_VisibilityModifier_216.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_164_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_296();
    l0 = self.box_VisibilityModifier_296;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1780477372", "1780477372", "MIS_330_B30", "box_OutputOrder_v2_164.Out", "box_VisibilityModifier_296.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_164_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_249();
    l0 = self.box_VisibilityModifier_249;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1136537132", "1136537132", "MIS_330_B30", "box_OutputOrder_v2_164.Out", "box_VisibilityModifier_249.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_164_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_251();
    l0 = self.box_VisibilityModifier_251;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1993853668", "1993853668", "MIS_330_B30", "box_OutputOrder_v2_164.Out", "box_VisibilityModifier_251.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_164_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_252();
    l0 = self.box_VisibilityModifier_252;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1284355179", "1284355179", "MIS_330_B30", "box_OutputOrder_v2_164.Out", "box_VisibilityModifier_252.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_164_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_256();
    l0 = self.box_Delay_v5_256;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1509199373", "1509199373", "MIS_330_B30", "box_OutputOrder_v2_164.Out", "box_Delay_v5_256.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_229_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_161();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|66488743", "66488743", "MIS_330_B30", "box_OutputOrder_v2_229.Out", "box_OutputOrder_v2_161.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_229_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_228();
    l0 = self.box_Gate_v3_228;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|475196238", "475196238", "MIS_330_B30", "box_OutputOrder_v2_229.Out", "box_Gate_v3_228.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_122_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_14();
    l0 = self.box_Reach_GoTo_v3_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|262100430", "262100430", "MIS_330_B30", "box_OutputOrder_v2_122.Out", "box_Reach_GoTo_v3_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_122_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_154();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|289601259", "289601259", "MIS_330_B30", "box_OutputOrder_v2_122.Out", "box_Simple_Node_154.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_83();
    l0 = self.box_NarrativeFade_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|96917549", "96917549", "MIS_330_B30", "box_OutputOrder_v2_57.Out", "box_NarrativeFade_83.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_57_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_182();
    l0 = self.box_PostFx_v3_182;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1057239240", "1057239240", "MIS_330_B30", "box_OutputOrder_v2_57.Out", "box_PostFx_v3_182.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_230_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_102();
    l0 = self.box_Gate_v3_230;
    l1 = self.box_PlaySequence_v8_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1312098383", "1312098383", "MIS_330_B30", "box_Gate_v3_230.Out", "box_PlaySequence_v8_102.Skip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Skip
    l1:Exec(3, params);
end;

function export:f_box_EntityStatusListener_111_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_112();
    l0 = self.box_EntityStatusListener_111;
    l1 = self.box_UniversalInteractionModifier_v2_112;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|32502445", "32502445", "MIS_330_B30", "box_EntityStatusListener_111.Loaded", "box_UniversalInteractionModifier_v2_112.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_CoopActivePlayers_269_OnePlayer()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_269_OnePlayer();
    l0 = self.box_CoopActivePlayers_269;
    l1 = self.box_MultipleOR_268;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|172722232", "172722232", "MIS_330_B30", "box_CoopActivePlayers_269.OnePlayer", "box_MultipleOR_268.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_269_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_50();
    l0 = self.box_CoopActivePlayers_269;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2143146658", "2143146658", "MIS_330_B30", "box_CoopActivePlayers_269.PlayerAdded", "box_Simple_Node_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_269_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_269_TwoPlayers();
    params = self:OnEnter_box_OutputOrder_v2_266();
    l0 = self.box_CoopActivePlayers_269;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|461516574", "461516574", "MIS_330_B30", "box_CoopActivePlayers_269.TwoPlayers", "box_OutputOrder_v2_266.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_9_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_29();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|411380198", "411380198", "MIS_330_B30", "box_GetPlayerGroup_v2_9.Out", "box_CHEAT_SetEnvironmentTimeScale_29.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_128_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_128;
    l1 = self.box_MultipleOR_232;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|905294357", "905294357", "MIS_330_B30", "box_PlaySequence_v8_128.Finished", "box_MultipleOR_232.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_128_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_128;
    l1 = self.box_MultipleOR_233;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1684344761", "1684344761", "MIS_330_B30", "box_PlaySequence_v8_128.Skipped", "box_MultipleOR_233.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_128_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_231();
    l0 = self.box_PlaySequence_v8_128;
    l1 = self.box_Gate_v3_231;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2106420805", "2106420805", "MIS_330_B30", "box_PlaySequence_v8_128.Started", "box_Gate_v3_231.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_128_Stopped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_128;
    l1 = self.box_MultipleOR_232;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1189696559", "1189696559", "MIS_330_B30", "box_PlaySequence_v8_128.Stopped", "box_MultipleOR_232.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_103();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|902357513", "902357513", "MIS_330_B30", "box_OutputOrder_v2_40.Out", "box_VehicleModifier_v2_103.SetAsUsable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUsable
    l0:Exec(7, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_130();
    l0 = self.box_Delay_v5_130;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|820559614", "820559614", "MIS_330_B30", "box_OutputOrder_v2_40.Out", "box_Delay_v5_130.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_40_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_330_B30_SlowMotion_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|155505541", "155505541", "MIS_330_B30", "box_OutputOrder_v2_40.Out", "box_MIS_330_B30_SlowMotion_20.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
end;

function export:f_box_Delay_v5_205_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_208();
    l0 = self.box_Delay_v5_205;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|634257765", "634257765", "MIS_330_B30", "box_Delay_v5_205.Started", "box_OutputOrder_v2_208.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_205_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_205;
    l1 = self.box_StartMetaSequence_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|791001611", "791001611", "MIS_330_B30", "box_Delay_v5_205.TimeElapsed", "box_StartMetaSequence_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_StopMetaSequence_v5_82_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_StopMetaSequence_v5_82;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1964962569", "1964962569", "MIS_330_B30", "box_StopMetaSequence_v5_82.Stopped", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|969869904", "969869904", "MIS_330_B30", "box_OutputOrder_v2_3.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
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
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2055222636", "2055222636", "MIS_330_B30", "box_OutputOrder_v2_3.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_115_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_151();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1259601836", "1259601836", "MIS_330_B30", "box_OutputOrder_v2_115.Out", "box_Simple_Node_151.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_115_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneSetup_81();
    l0 = self.box_NarrativeSceneSetup_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1177803937", "1177803937", "MIS_330_B30", "box_OutputOrder_v2_115.Out", "box_NarrativeSceneSetup_81.HolsterWeapon", clone:GetLuaBox(), l0:GetLuaBox());
    -- HolsterWeapon
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_115_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_193();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1151634556", "1151634556", "MIS_330_B30", "box_OutputOrder_v2_115.Out", "box_Simple_Node_193.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_115_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_286();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|79224993", "79224993", "MIS_330_B30", "box_OutputOrder_v2_115.Out", "box_Simple_Node_286.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_10_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_123();
    l0 = self.box_Delay_v5_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|668004709", "668004709", "MIS_330_B30", "box_Delay_v5_10.TimeElapsed", "box_OutputOrder_v2_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGender_39_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_GiveDriverOutfit_267();
    l0 = self.box_GetPlayerGender_39;
    l1 = self.box_MIS_330_GiveDriverOutfit_267;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1578740476", "1578740476", "MIS_330_B30", "box_GetPlayerGender_39.Female", "box_MIS_330_GiveDriverOutfit_267.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_39_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_GiveDriverOutfit_267();
    l0 = self.box_GetPlayerGender_39;
    l1 = self.box_MIS_330_GiveDriverOutfit_267;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|97941444", "97941444", "MIS_330_B30", "box_GetPlayerGender_39.Male", "box_MIS_330_GiveDriverOutfit_267.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_226_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_203();
    l0 = self.box_PlaySequence_v8_203;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|481017373", "481017373", "MIS_330_B30", "box_OutputOrder_v2_226.Out", "box_PlaySequence_v8_203.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_226_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_236();
    l0 = self.box_Gate_v3_236;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1113293585", "1113293585", "MIS_330_B30", "box_OutputOrder_v2_226.Out", "box_Gate_v3_236.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_StartMetaSequence_89_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_89_Out();
    params = self:OnEnter_box_PlaySequence_v8_90();
    l0 = self.box_StartMetaSequence_89;
    l1 = self.box_PlaySequence_v8_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1775801689", "1775801689", "MIS_330_B30", "box_StartMetaSequence_89.Out", "box_PlaySequence_v8_90.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_142_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_144();
    l0 = self.box_Delay_v5_144;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1010174744", "1010174744", "MIS_330_B30", "box_MissionBlockLayer_142.Activated", "box_Delay_v5_144.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PositionModifier_v2_45_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_13();
    l0 = self.box_PositionModifier_v2_45;
    l1 = self.box_PositionModifier_v2_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2034250727", "2034250727", "MIS_330_B30", "box_PositionModifier_v2_45.StartOut", "box_PositionModifier_v2_13.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_221_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ManagePlayerInventory_35();
    l0 = self.box_ManagePlayerInventory_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|848316925", "848316925", "MIS_330_B30", "box_OutputOrder_v2_221.Out", "box_ManagePlayerInventory_35.RestrictItems", clone:GetLuaBox(), l0:GetLuaBox());
    -- RestrictItems
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_221_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_258();
    l0 = self.box_GunsForHireSystemModifier_258;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2121015520", "2121015520", "MIS_330_B30", "box_OutputOrder_v2_221.Out", "box_GunsForHireSystemModifier_258.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_221_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_269;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|909239789", "909239789", "MIS_330_B30", "box_OutputOrder_v2_221.Out", "box_CoopActivePlayers_269.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_221_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_150();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|448263062", "448263062", "MIS_330_B30", "box_OutputOrder_v2_221.Out", "box_Simple_Node_150.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ManagePlayerInventory_42_Removed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_291();
    l0 = self.box_ManagePlayerInventory_42;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1220031597", "1220031597", "MIS_330_B30", "box_ManagePlayerInventory_42.Removed", "box_OutputOrder_v2_291.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_143_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_140();
    l0 = self.box_Delay_v5_143;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|667738860", "667738860", "MIS_330_B30", "box_Delay_v5_143.TimeElapsed", "box_MissionBlockLayer_140.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_173();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1166495941", "1166495941", "MIS_330_B30", "box_SetTimeOfDay_31.Out", "box_Compare_Boolean_173.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_1_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_37();
    l0 = self.box_Delay_v5_1;
    l1 = self.box_NoWeaponMode_v3_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1762055955", "1762055955", "MIS_330_B30", "box_Delay_v5_1.TimeElapsed", "box_NoWeaponMode_v3_37.Off", l0:GetLuaBox(), l1:GetLuaBox());
    -- Off
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_161_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_102();
    l0 = self.box_PlaySequence_v8_102;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1330097573", "1330097573", "MIS_330_B30", "box_OutputOrder_v2_161.Out", "box_PlaySequence_v8_102.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_161_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LookAtTrigger_v2_160();
    l0 = self.box_LookAtTrigger_v2_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1737133321", "1737133321", "MIS_330_B30", "box_OutputOrder_v2_161.Out", "box_LookAtTrigger_v2_160.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_CoopActivePlayers_12_PlayerAdded()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_12_PlayerAdded();
    params = self:OnEnter_box_InventoryItemModifier_21();
    l0 = self.box_CoopActivePlayers_12;
    l1 = self.box_InventoryItemModifier_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1130787779", "1130787779", "MIS_330_B30", "box_CoopActivePlayers_12.PlayerAdded", "box_InventoryItemModifier_21.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_CoopActivePlayers_12_PlayerRemoved()
    self:OnExit_box_CoopActivePlayers_12_PlayerRemoved();
end;

function export:f_box_PlaySequence_v8_203_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_203;
    l1 = self.box_MultipleOR_238;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1477017487", "1477017487", "MIS_330_B30", "box_PlaySequence_v8_203.Finished", "box_MultipleOR_238.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_203_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_203;
    l1 = self.box_MultipleOR_238;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1493596669", "1493596669", "MIS_330_B30", "box_PlaySequence_v8_203.Skipped", "box_MultipleOR_238.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_203_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_237();
    l0 = self.box_PlaySequence_v8_203;
    l1 = self.box_Gate_v3_237;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|305866938", "305866938", "MIS_330_B30", "box_PlaySequence_v8_203.Started", "box_Gate_v3_237.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_PositionModifier_v2_13_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_294();
    l0 = self.box_PositionModifier_v2_13;
    l1 = self.box_MultipleAND_v2_294;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|875970286", "875970286", "MIS_330_B30", "box_PositionModifier_v2_13.StartOut", "box_MultipleAND_v2_294.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_IsPawnAlive_v3_196_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_197();
    l0 = self.box_ProximityTrigger_v3_197;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1225399312", "1225399312", "MIS_330_B30", "box_IsPawnAlive_v3_196.Alive", "box_ProximityTrigger_v3_197.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_11_Done()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_67();
    l0 = self.box_PositionModifier_v2_11;
    l1 = self.box_Delay_v5_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|383430085", "383430085", "MIS_330_B30", "box_PositionModifier_v2_11.Done", "box_Delay_v5_67.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_158_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_156();
    l0 = self.box_Music_Quest_v2_156;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2035399008", "2035399008", "MIS_330_B30", "box_OutputOrder_v2_158.Out", "box_Music_Quest_v2_156.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_158_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_136();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2137632327", "2137632327", "MIS_330_B30", "box_OutputOrder_v2_158.Out", "box_OutputOrder_v2_136.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_158_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_282();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2013557635", "2013557635", "MIS_330_B30", "box_OutputOrder_v2_158.Out", "box_Simple_Node_282.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_165_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_205();
    l0 = self.box_Delay_v5_205;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1559126382", "1559126382", "MIS_330_B30", "box_OutputOrder_v2_165.Out", "box_Delay_v5_205.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_165_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_164();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|729736926", "729736926", "MIS_330_B30", "box_OutputOrder_v2_165.Out", "box_OutputOrder_v2_164.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_98_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_97();
    l0 = self.box_MultipleOR_98;
    l1 = self.box_InventoryItemModifier_97;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1476169400", "1476169400", "MIS_330_B30", "box_MultipleOR_98.Out", "box_InventoryItemModifier_97.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_PostFx_v3_30_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_10();
    l0 = self.box_PostFx_v3_30;
    l1 = self.box_Delay_v5_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1774761165", "1774761165", "MIS_330_B30", "box_PostFx_v3_30.Enabled", "box_Delay_v5_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_277_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_280();
    l0 = self.box_SoundModifier_v2_280;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|648113872", "648113872", "MIS_330_B30", "box_OutputOrder_v2_277.Out", "box_SoundModifier_v2_280.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_277_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_279();
    l0 = self.box_SoundModifier_v2_279;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|659249331", "659249331", "MIS_330_B30", "box_OutputOrder_v2_277.Out", "box_SoundModifier_v2_279.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_277_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_281();
    l0 = self.box_SoundModifier_v2_281;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|623605858", "623605858", "MIS_330_B30", "box_OutputOrder_v2_277.Out", "box_SoundModifier_v2_281.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_277_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_276();
    l0 = self.box_SoundModifier_v2_276;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1022443097", "1022443097", "MIS_330_B30", "box_OutputOrder_v2_277.Out", "box_SoundModifier_v2_276.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_277_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_278();
    l0 = self.box_SoundModifier_v2_278;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|414405930", "414405930", "MIS_330_B30", "box_OutputOrder_v2_277.Out", "box_SoundModifier_v2_278.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_49();
    l0 = self.box_MultipleOR_53;
    l1 = self.box_RequestPhoneCall_v2_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|895092043", "895092043", "MIS_330_B30", "box_MultipleOR_53.Out", "box_RequestPhoneCall_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_176_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_172();
    l0 = self.box_GetEntityInPrefab_v2_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|300112226", "300112226", "MIS_330_B30", "box_OutputOrder_v2_176.Out", "box_GetEntityInPrefab_v2_172.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_176_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IgnoreSignal_v2_177();
    l0 = self.box_IgnoreSignal_v2_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1364827607", "1364827607", "MIS_330_B30", "box_OutputOrder_v2_176.Out", "box_IgnoreSignal_v2_177.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_140_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_127();
    l0 = self.box_Delay_v5_127;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1851058088", "1851058088", "MIS_330_B30", "box_MissionBlockLayer_140.Activated", "box_Delay_v5_127.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_225_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_224();
    l0 = self.box_OnceOnly_v3_225;
    l1 = self.box_PlaySequence_v8_224;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|729785440", "729785440", "MIS_330_B30", "box_OnceOnly_v3_225.Out", "box_PlaySequence_v8_224.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_Delay_v5_130_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = self.box_Delay_v5_130;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|293658634", "293658634", "MIS_330_B30", "box_Delay_v5_130.TimeElapsed", "box_ActivityEnd_7.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_212_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|891280194", "891280194", "MIS_330_B30", "box_OutputOrder_v2_212.Out", "box_MultipleOR_211.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_146_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_156();
    l0 = self.box_Music_Quest_v2_156;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1439987906", "1439987906", "MIS_330_B30", "box_OutputOrder_v2_146.Out", "box_Music_Quest_v2_156.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_146_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeCS_Cinema_157();
    l0 = self.box_NarrativeCS_Cinema_157;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1589107329", "1589107329", "MIS_330_B30", "box_OutputOrder_v2_146.Out", "box_NarrativeCS_Cinema_157.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_146_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PersistentParticlesModifier_254();
    l0 = self.box_PersistentParticlesModifier_254;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|878331712", "878331712", "MIS_330_B30", "box_OutputOrder_v2_146.Out", "box_PersistentParticlesModifier_254.StopParticles", clone:GetLuaBox(), l0:GetLuaBox());
    -- StopParticles
    l0:Exec(1, params);
end;

function export:f_box_GetEntityInPrefab_v2_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableBreaker_62();
    l0 = self.box_GetEntityInPrefab_v2_43;
    l1 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|516679237", "516679237", "MIS_330_B30", "box_GetEntityInPrefab_v2_43.Out", "box_StaticBreakableBreaker_62.SetDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDamageable
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_95_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_95;
    l1 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|691177046", "691177046", "MIS_330_B30", "box_CoopActivePlayers_95.PlayerAdded", "box_MultipleOR_98.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CoopActivePlayers_95_TwoPlayers()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_95;
    l1 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|279330975", "279330975", "MIS_330_B30", "box_CoopActivePlayers_95.TwoPlayers", "box_MultipleOR_98.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StaticBreakableBreaker_170_DamageableChanged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_171();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|975325160", "975325160", "MIS_330_B30", "box_StaticBreakableBreaker_170.DamageableChanged", "box_StaticBreakableBreaker_171.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_211_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_189();
    l0 = self.box_MultipleOR_211;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1092018675", "1092018675", "MIS_330_B30", "box_MultipleOR_211.Out", "box_OutputOrder_v2_189.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGender_262_Female()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_GiveDriverOutfit_259();
    l0 = self.box_GetPlayerGender_262;
    l1 = self.box_MIS_330_GiveDriverOutfit_259;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1650239873", "1650239873", "MIS_330_B30", "box_GetPlayerGender_262.Female", "box_MIS_330_GiveDriverOutfit_259.Female Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Female Outfit
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGender_262_Male()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_GiveDriverOutfit_259();
    l0 = self.box_GetPlayerGender_262;
    l1 = self.box_MIS_330_GiveDriverOutfit_259;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1394256512", "1394256512", "MIS_330_B30", "box_GetPlayerGender_262.Male", "box_MIS_330_GiveDriverOutfit_259.Male Outfit", l0:GetLuaBox(), l1:GetLuaBox());
    -- Male Outfit
    l1:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v3_14_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ManagePlayerInventory_42();
    l0 = self.box_Reach_GoTo_v3_14;
    l1 = self.box_ManagePlayerInventory_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|557873221", "557873221", "MIS_330_B30", "box_Reach_GoTo_v3_14.Started", "box_ManagePlayerInventory_42.RemoveItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- RemoveItems
    l1:Exec(2, params);
end;

function export:f_box_Reach_GoTo_v3_14_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = self.box_Reach_GoTo_v3_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|930101843", "930101843", "MIS_330_B30", "box_Reach_GoTo_v3_14.Success", "box_OutputOrder_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = self.box_MultipleOR_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|18779441", "18779441", "MIS_330_B30", "box_MultipleOR_24.Out", "box_OutputOrder_v2_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_148();
    l0 = self.box_Brick_Interact_With_Object_V6_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1984607707", "1984607707", "MIS_330_B30", "box_OutputOrder_v2_51.Out", "box_Brick_Interact_With_Object_V6_148.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MIS_330_B30_WalkOfFame_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1218272529", "1218272529", "MIS_330_B30", "box_OutputOrder_v2_51.Out", "box_MIS_330_B30_WalkOfFame_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_330_MissionLimits_26();
    l0 = self.box_MIS_330_MissionLimits_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1788233651", "1788233651", "MIS_330_B30", "box_OutputOrder_v2_27.Out", "box_MIS_330_MissionLimits_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_15();
    l0 = self.box_Brick_Interact_With_Object_V6_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|281968989", "281968989", "MIS_330_B30", "box_OutputOrder_v2_27.Out", "box_Brick_Interact_With_Object_V6_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_16();
    l0 = self.box_PlayDialog_v6_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|221651815", "221651815", "MIS_330_B30", "box_OutputOrder_v2_27.Out", "box_PlayDialog_v6_16.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_111();
    l0 = self.box_EntityStatusListener_111;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|505181000", "505181000", "MIS_330_B30", "box_OutputOrder_v2_27.Out", "box_EntityStatusListener_111.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|@Container_Door_Open_sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_92_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|@Container_Door_Open_sound_02");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_149_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_193");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|@n_cancelFireworks");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_193_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|@n_checkpointBypass");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_194_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|@n_RemoveSlowMo");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_55_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|@n_walkFireworks");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_155_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_282()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_282");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|@SkipCin");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_282_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|@Sliding_Door_Container_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_94_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|@Sliding_Door_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_93_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|@Start_Idle_Crowd_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_150_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|@Stash_Weapons_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_154_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_285()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_285");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|@Stop_Distant_Crowd");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_285_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|@Stop_Idle_Crowd");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_151_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_286()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_286");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|@Stop_Party_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_286_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_294()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|12049112");
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
                [0] = self.f_box_OutputOrder_v2_184_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_110()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_218()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109497179423912502",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|77081529");
    l0:SetConnections({
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2108486442998044426",
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_v2_264()
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

function export:OnEnter_box_PostFx_v3_182()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_276()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516303959496566",
        -- SoundId,
        [1] = "3303497937",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_297()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109706171613985877",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_112()
    local params;
    params = {
        -- usableEntity,
        [4] = "2108501853739163461",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|107735421");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "27160318045155909",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|118378389");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_190_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_65()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 25,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|122909961");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_121()
    local params;
    params = {
        -- Pawns,
        [0] = "2109013889424309776",
        -- SoundId,
        [1] = "138204205",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_156()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 31,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2845456904",
        -- StopEvent,
        [7] = "4215135172",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_298()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|149046548");
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

function export:OnEnter_box_VehicleModifier_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|158439345");
    l0:SetConnections({
        -- OnSetAsUsable,
        [7] = self.f_box_VehicleModifier_v2_103_OnSetAsUsable,
    });
    params = {
        -- targets,
        [0] = "2107825891229830190",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|158501862");
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
                [0] = self.f_box_OutputOrder_v2_75_Out_0,
                [1] = self.f_box_OutputOrder_v2_75_Out_1,
                [2] = self.f_box_OutputOrder_v2_75_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_84()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_87()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_38()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2.5,
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V6_15()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = true,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = true,
        -- e_EntityToInteractWith,
        [3] = "2109207711703930647",
        -- e_ObjectiveMarker,
        [4] = "2108447437654857418",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_USE",
            id = "533274",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objectives",
            item = "MIS_330_B30_OBJ_Give",
            id = "1021557",
        },
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_169()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108793349658913982",
    };
    return params;
end;

function export:OnEnter_box_MIS_330_GiveDriverOutfit_259()
    local params, l0;
    l0 = self.box_CoopActivePlayers_260;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|200305086");
    l0:SetConnections({
        -- DamageableChanged,
        [0] = self.f_box_StaticBreakableBreaker_62_DamageableChanged,
    });
    l0 = self.box_GetEntityInPrefab_v2_43;
    params = {
        -- entity,
        [0] = l0:GetDataOutValue(0),
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|207772508");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_173_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_173_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.mis_330_b30.b_shootoutCheckpoint,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_100()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109701107153386143",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_m330_dinnertwins/cin_m330_dinnertwins_cockroach01_intro.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_197()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "2109371051929514427",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109373612482926543",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_102()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109701107153386143",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_m330_dinnertwins/cin_m330_dinnertwins_cockroach01_loop.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|266531599");
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
                [0] = self.f_box_OutputOrder_v2_188_Out_0,
                [1] = self.f_box_OutputOrder_v2_188_Out_1,
                [2] = self.f_box_OutputOrder_v2_188_Out_2,
                [3] = self.f_box_OutputOrder_v2_188_Out_3,
                [4] = self.f_box_OutputOrder_v2_188_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_36()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "jump",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|272867717");
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
                [0] = self.f_box_OutputOrder_v2_162_Out_0,
                [1] = self.f_box_OutputOrder_v2_162_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_113()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_OPEN",
            id = "533268",
        },
        -- usableEntity,
        [4] = "2108501853739163461",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_126");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|293175439");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "36167517299904169",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_85()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_293()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_293");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|327388509");
    l0:SetConnections({
    });
    params = {
        -- Enable,
        [0] = false,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2109609153948314843",
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_32()
    local params;
    params = {
        -- itemFilterId,
        [1] = "9015221917595682",
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_174()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_278()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516308441110392",
        -- SoundId,
        [1] = "3303497937",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_64()
    local params;
    params = {
        -- Entity,
        [0] = "2108695971692023306",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_198()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108793349658913982",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_288()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 4,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2845456904",
        -- StopEvent,
        [7] = "4215135172",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_219()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109482408668573526",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_228()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_222");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|427499146");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_222_True,
    });
    params = {
        -- entityId,
        [0] = "2109669347092873075",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_284()
    local params;
    params = {
        -- Pawns,
        [0] = "2108540743705451256",
        -- SoundId,
        [1] = "3041051107",
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
        [0] = "2108516295122098034",
        -- SoundId,
        [1] = "173225927",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_145()
    local params;
    params = {
        -- Group,
        [0] = "2109371051929514427",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_163");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|462821978");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "117232292986838808",
        -- missionLayerId,
        [1] = "27160310924960917",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|472746094");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_104_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "117232292986838808",
        -- missionLayerId,
        [1] = "27160311708806471",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_244()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gp_FriendlyPlayers,
        -- id2,
        [3] = "2109606124922641586",
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_256()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|512747839");
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
                [0] = self.f_box_OutputOrder_v2_187_Out_0,
                [1] = self.f_box_OutputOrder_v2_187_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_330_GiveDriverOutfit_265()
    local params, l0;
    l0 = self.box_CoopActivePlayers_269;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_132()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108446801532033964",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108419634305709029",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_120()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516290246219632",
        -- SoundId,
        [1] = "173225927",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_41()
    local params, l0;
    l0 = self.box_CoopActivePlayers_269;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_208");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|571805565");
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

function export:OnEnter_box_SoundModifier_v2_114()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516303959496566",
        -- SoundId,
        [1] = "173225927",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_60()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108502598704178061",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108489879271775708",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|594842739");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_258()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_236()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_242()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_242");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|653736930");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_242_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "117232292986838808",
        -- missionLayerId,
        [1] = "27160321805019416",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_290()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 6,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2845456904",
        -- StopEvent,
        [7] = "4215135172",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|661869778");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|682932115");
    l0:SetConnections({
    });
    l0 = self.box_GetEntityInPrefab_v2_43;
    params = {
        -- entity,
        [0] = l0:GetDataOutValue(0),
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_18()
    local params;
    params = {
        -- Delay,
        [2] = 1,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "4130614163",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_175()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_281()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516295122098034",
        -- SoundId,
        [1] = "3303497937",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_AcquireObject_v6_210()
    local params;
    params = {
        -- AmountRequired,
        [0] = 1,
        -- bCheckAmountInInventory,
        [1] = true,
        -- bRequiresObjective,
        [2] = true,
        -- CompletePreviousObjective,
        [3] = true,
        -- LootItemID,
        [4] = "9015213187729801",
        -- Objective,
        [6] = {
            section = "Objectives",
            item = "MIS_330_B30_OBJ_PickUp",
            id = "1002140",
        },
        -- opt_eMarker,
        [7] = "2107852971722160814",
        -- ProtectItemOnSuccess,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_127()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_266()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_266");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|716254148");
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
                [0] = self.f_box_OutputOrder_v2_266_Out_0,
                [1] = self.f_box_OutputOrder_v2_266_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_167()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|719010091");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_167_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_61()
    local params;
    params = {
        -- blendTime,
        [1] = 3.5,
        -- endTarget,
        [4] = "2108502584277869445",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108489879269678554",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|723826903");
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
        [8] = "MIS_330_B30 script is running.",
        -- useTimeTag,
        [9] = true,
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

function export:OnEnter_box_PlayDialog_v6_243()
    local params;
    params = {
        -- Group,
        [0] = "2109606124922641586",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3878298107",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_227()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109701110286531233",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_m330_dinnertwins/cin_m330_dinnertwins_cockroach02_intro.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|751061502");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SoundMixing_124_Out,
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/MIS_330_Slomo",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_90()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2108352183406702824",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_m330_dinnertwins/cin_m330_dinnertwins.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_107()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2108501853739163461",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_144()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|793861615");
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
                [0] = self.f_box_OutputOrder_v2_131_Out_0,
                [1] = self.f_box_OutputOrder_v2_131_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|794720606");
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
                [0] = self.f_box_OutputOrder_v2_58_Out_0,
                [1] = self.f_box_OutputOrder_v2_58_Out_1,
                [2] = self.f_box_OutputOrder_v2_58_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_35()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015342283729325",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|810558260");
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
                [0] = self.f_box_OutputOrder_v2_96_Out_0,
                [1] = self.f_box_OutputOrder_v2_96_Out_1,
                [2] = self.f_box_OutputOrder_v2_96_Out_2,
                [3] = self.f_box_OutputOrder_v2_96_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_273()
    local params;
    params = {
        -- Pawns,
        [0] = "2109981494582715144",
        -- SoundId,
        [1] = "581936265",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_237()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|844080143");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2108419496577338311",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_330_B30_OBJ_GetInside",
            id = "1000684",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_275()
    local params;
    params = {
        -- Pawns,
        [0] = "2109981481458737898",
        -- SoundId,
        [1] = "581936265",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V6_135()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = true,
        -- b_EntityIsProximityTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = true,
        -- e_EntityToInteractWith,
        [3] = "2108486442998044426",
        -- e_ObjectiveMarker,
        [4] = "2108419496577338311",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_OPEN",
            id = "533268",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objectives",
            item = "MIS_330_B30_OBJ_Return",
            id = "1019139",
        },
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_255()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109482129961266947",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_186()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108489879269678554",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_129()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109028473302462908",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/mis_330/mis_330_fov_shootout.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_NarrativeCS_Cinema_157()
    local params;
    params = {
        -- CS_Cinema_Animals,
        [0] = "2109125708874796549",
        -- CS_Cinema_NPCs,
        [1] = "2109125710573489671",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|883240128");
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
                [0] = self.f_box_OutputOrder_v2_116_Out_0,
                [1] = self.f_box_OutputOrder_v2_116_Out_1,
                [2] = self.f_box_OutputOrder_v2_116_Out_2,
                [3] = self.f_box_OutputOrder_v2_116_Out_3,
                [4] = self.f_box_OutputOrder_v2_116_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|883463630");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_23_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "27160318045155909",
    };
    return params;
end;

function export:OnEnter_box_VehicleSeatModifier_v2_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleSeatModifier_v2_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|884368367");
    l0:SetConnections({
        -- Unlocked,
        [1] = self.f_box_VehicleSeatModifier_v2_195_Unlocked,
    });
    params = {
        -- IsAI,
        [0] = true,
        -- IsPlayer,
        [1] = true,
        -- SeatIndex,
        [2] = 0,
        -- SeatType,
        [3] = 2,
        -- vehicleEntity,
        [4] = "2107825891229830190",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_245()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_81()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|913026715");
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
                [0] = self.f_box_OutputOrder_v2_136_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_240()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1330180261",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_231()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_101()
    local params;
    params = {
        -- Entity,
        [0] = "2108695974183439886",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_252()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2107770051825241012",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_206()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|945894309");
    l0:SetConnections({
    });
    params = {
        -- Hour,
        [0] = 21,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_28()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_183()
    local params;
    params = {
        -- Group,
        [0] = "2109371051929514429",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_289()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 5,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2845456904",
        -- StopEvent,
        [7] = "4215135172",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|971425005");
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
                [0] = self.f_box_OutputOrder_v2_209_Out_0,
                [1] = self.f_box_OutputOrder_v2_209_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_180()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109221670077134980",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|982737308");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "27160313059206630",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1006838561");
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

function export:OnEnter_box_MIS_330_GiveDriverOutfit_267()
    local params, l0;
    l0 = self.box_CoopActivePlayers_269;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_79()
    local params;
    params = {
        -- Pawns,
        [0] = "2108543791320274875",
        -- SoundId,
        [1] = "1696710356",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_279()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516298404140916",
        -- SoundId,
        [1] = "3303497937",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_117()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516308441110392",
        -- SoundId,
        [1] = "173225927",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1085769221");
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

function export:OnEnter_box_VisibilityModifier_249()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109482129961266947",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_224()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109701110286531233",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_m330_dinnertwins/cin_m330_dinnertwins_cockroach02_loop.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_257()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109482129961266947",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_80()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGFHDisabled,
        [1] = false,
        -- KeepGodMode,
        [2] = false,
        -- KeepHUDMode,
        [3] = false,
        -- KeepWeaponHolstered,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_185()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109221670077134980",
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_160()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2109701305980173040",
    };
    return params;
end;

function export:OnEnter_box_TimedSlowMotion_v2_166()
    local params;
    params = {
        -- AimSpeedMultiplier,
        [0] = 0.4,
        -- AutoDisable,
        [1] = true,
        -- BlendInTime,
        [2] = 1,
        -- BlendOutTime,
        [3] = 1,
        -- Duration,
        [4] = 15,
        -- PreDelay,
        [5] = 0,
        -- TimeFactor,
        [6] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_68()
    local params;
    params = {
        -- Pawns,
        [0] = "2108542091433892624",
        -- SoundId,
        [1] = "3109065434",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MIS_330_MissionLimits_26()
    local params;
    params = {
        -- Interior Limit,
        [0] = false,
        -- Sas Limit,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_246()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_246");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1139258141");
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
                [0] = self.f_box_OutputOrder_v2_246_Out_0,
                [1] = self.f_box_OutputOrder_v2_246_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_235");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1149737540");
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
                [0] = self.f_box_OutputOrder_v2_235_Out_0,
                [1] = self.f_box_OutputOrder_v2_235_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_213()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2109702520740788908",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1169367468");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_138_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "27160313074554971",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_34()
    local params;
    params = {
        -- Delay,
        [2] = 1,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1045252413",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V6_148()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2108486437962782470",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_OPEN",
            id = "533268",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_280()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516290246219632",
        -- SoundId,
        [1] = "3303497937",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_19()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_44()
    local params;
    params = {
        -- Delay,
        [2] = 2,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1226271321",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_66()
    local params;
    params = {
        -- Pawns,
        [0] = "2108542091433892624",
        -- SoundId,
        [1] = "216783645",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_71()
    local params;
    params = {
        -- Pawns,
        [0] = "2108542085784165134",
        -- SoundId,
        [1] = "321017377",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_263()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_263");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1257483121");
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

function export:OnEnter_box_NavLinkModifier_133()
    local params;
    params = {
        -- Entity,
        [0] = "2108640920384572150",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_16()
    local params;
    DrawTextToScreen("Comment: Announcer: go to dinner", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Announcer: go to dinner");
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1343002270",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_292()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.gp_FriendlyPlayers,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2107769983258856103",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_118()
    local params;
    params = {
        -- Pawns,
        [0] = "2108516298404140916",
        -- SoundId,
        [1] = "173225927",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_63()
    local params;
    params = {
        -- Group,
        [0] = "#47E95EB8",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1321541096");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_168_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_168_A_is_True,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.mis_330_b30.b_shootoutCheckpoint,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_199()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1321542244");
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
                [0] = self.f_box_OutputOrder_v2_199_Out_0,
                [1] = self.f_box_OutputOrder_v2_199_Out_1,
                [2] = self.f_box_OutputOrder_v2_199_Out_2,
                [3] = self.f_box_OutputOrder_v2_199_Out_3,
                [4] = self.f_box_OutputOrder_v2_199_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_250()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109482129961266947",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_239()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "4151281907",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_200()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1362798649");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "36167512313974719",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_207()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_179()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108489879269678554",
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_37()
    local params;
    params = {
        -- pawns,
        [0] = self.gp_FriendlyPlayers,
        -- useAnims,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_215()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109497179423912502",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1383881634");
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

function export:OnEnter_box_Gate_v3_295()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_299()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_InventoryLoadoutModifier_270()
    local params;
    params = {
        -- discardPreviousBackup,
        [0] = true,
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1433490880");
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
                [0] = self.f_box_OutputOrder_v2_147_Out_0,
                [1] = self.f_box_OutputOrder_v2_147_Out_1,
                [2] = self.f_box_OutputOrder_v2_147_Out_2,
                [3] = self.f_box_OutputOrder_v2_147_Out_3,
                [4] = self.f_box_OutputOrder_v2_147_Out_4,
                [5] = self.f_box_OutputOrder_v2_147_Out_5,
                [6] = self.f_box_OutputOrder_v2_147_Out_6,
                [7] = self.f_box_OutputOrder_v2_147_Out_7,
                [8] = self.f_box_OutputOrder_v2_147_Out_8,
                [9] = self.f_box_OutputOrder_v2_147_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_67()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_109");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1455593745");
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
                [0] = self.f_box_OutputOrder_v2_109_Out_0,
                [1] = self.f_box_OutputOrder_v2_109_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_234()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_178()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015347813550415",
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_47()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_177()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "jump",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1493605222");
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
                [0] = self.f_box_OutputOrder_v2_189_Out_0,
                [1] = self.f_box_OutputOrder_v2_189_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Secure_Area_v5_8()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bRequiresObjective,
        [1] = true,
        -- gEnemyGroup,
        [3] = "#6C58DC48",
        -- Objective,
        [4] = {
            section = "Objectives",
            item = "MIS_330_B30_OBJ_Kill",
            id = "1000685",
        },
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_108()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107770191648658947",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_97()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015213187729801",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_83()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_74()
    local params;
    params = {
        -- Pawns,
        [0] = "2108542091433892624",
        -- SoundId,
        [1] = "321017377",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_217()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109497177230291508",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_49()
    local params;
    params = {
        -- Delay,
        [2] = 1,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "984601101",
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_69()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0.3,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_216()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109497177230291508",
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_172()
    local params;
    params = {
        -- ObjectName,
        [0] = "ChainLockLadder",
        -- PrefabEntity,
        [1] = "2108447271210204188",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1542932725");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_48_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "117232292986838808",
        -- missionLayerId,
        [1] = "27160309158024618",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1549619622");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_25_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2108447439672317646",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_330_B30_OBJ_GetInside",
            id = "1000684",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1564149628");
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
                [0] = self.f_box_OutputOrder_v2_123_Out_0,
                [1] = self.f_box_OutputOrder_v2_123_Out_1,
                [2] = self.f_box_OutputOrder_v2_123_Out_2,
                [3] = self.f_box_OutputOrder_v2_123_Out_3,
                [4] = self.f_box_OutputOrder_v2_123_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_99()
    local params;
    params = {
        -- Entity,
        [0] = "2108695971692023306",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_291()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_291");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1601911703");
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
                [0] = self.f_box_OutputOrder_v2_291_Out_0,
                [1] = self.f_box_OutputOrder_v2_291_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_164");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1603541864");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 12,
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
                [0] = self.f_box_OutputOrder_v2_164_Out_0,
                [1] = self.f_box_OutputOrder_v2_164_Out_1,
                [2] = self.f_box_OutputOrder_v2_164_Out_2,
                [3] = self.f_box_OutputOrder_v2_164_Out_3,
                [4] = self.f_box_OutputOrder_v2_164_Out_4,
                [5] = self.f_box_OutputOrder_v2_164_Out_5,
                [6] = self.f_box_OutputOrder_v2_164_Out_6,
                [7] = self.f_box_OutputOrder_v2_164_Out_7,
                [8] = self.f_box_OutputOrder_v2_164_Out_8,
                [9] = self.f_box_OutputOrder_v2_164_Out_9,
                [10] = self.f_box_OutputOrder_v2_164_Out_10,
                [11] = self.f_box_OutputOrder_v2_164_Out_11,
            },
            count = 12,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_287()
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
        [6] = "2845456904",
        -- StopEvent,
        [7] = "4215135172",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1630716216");
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
                [0] = self.f_box_OutputOrder_v2_229_Out_0,
                [1] = self.f_box_OutputOrder_v2_229_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_54()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1233041464",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1639056149");
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
                [0] = self.f_box_OutputOrder_v2_122_Out_0,
                [1] = self.f_box_OutputOrder_v2_122_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1661145022");
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
                [0] = self.f_box_OutputOrder_v2_57_Out_0,
                [1] = self.f_box_OutputOrder_v2_57_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_230()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_111()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108501853739163461",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1714628831");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_128()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109701107153386143",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_m330_dinnertwins/cin_m330_dinnertwins_cockroach01.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1724017675");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
                [1] = self.f_box_OutputOrder_v2_40_Out_1,
                [2] = self.f_box_OutputOrder_v2_40_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_205()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_82()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1752910849");
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

function export:OnEnter_box_NoWeaponMode_v3_253()
    local params;
    params = {
        -- pawns,
        [0] = self.gp_FriendlyPlayers,
        -- useAnims,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1774149836");
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
                [0] = self.f_box_OutputOrder_v2_115_Out_0,
                [1] = self.f_box_OutputOrder_v2_115_Out_1,
                [2] = self.f_box_OutputOrder_v2_115_Out_2,
                [3] = self.f_box_OutputOrder_v2_115_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_10()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_21()
    local params, l0;
    l0 = self.box_CoopActivePlayers_12;
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

function export:OnEnter_box_MissionBlockLayer_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1789633763");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "36167517299904169",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_39()
    local params, l0;
    l0 = self.box_CoopActivePlayers_269;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_226");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1789910102");
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
                [0] = self.f_box_OutputOrder_v2_226_Out_0,
                [1] = self.f_box_OutputOrder_v2_226_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1793627446");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_142_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "27160313059206630",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_45()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108447495385257724",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108447482403886841",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1806116607");
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
                [0] = self.f_box_OutputOrder_v2_221_Out_0,
                [1] = self.f_box_OutputOrder_v2_221_Out_1,
                [2] = self.f_box_OutputOrder_v2_221_Out_2,
                [3] = self.f_box_OutputOrder_v2_221_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_272()
    local params;
    params = {
        -- Pawns,
        [0] = "2109981498739270412",
        -- SoundId,
        [1] = "581936265",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ManagePlayerInventory_42()
    local params;
    params = {
        -- ItemFilterDBID,
        [0] = "9015342283729325",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_241()
    local params;
    params = {
        -- Group,
        [0] = "#37C2AA36",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_143()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1836525028");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "27160313074554971",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_251()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2107770053798661047",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_134()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "443784687",
        -- SoundType,
        [2] = 20,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1849177927");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_31_Out,
    });
    params = {
        -- Hour,
        [0] = 3,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_1()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2.5,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_274()
    local params;
    params = {
        -- Pawns,
        [0] = "2109981492080812806",
        -- SoundId,
        [1] = "581936265",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1868741218");
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
                [0] = self.f_box_OutputOrder_v2_161_Out_0,
                [1] = self.f_box_OutputOrder_v2_161_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_171");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1888387078");
    l0:SetConnections({
    });
    l0 = self.box_GetEntityInPrefab_v2_172;
    params = {
        -- entity,
        [0] = l0:GetDataOutValue(0),
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_296()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109706171613985877",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_203()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2109701110286531233",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_m330_dinnertwins/cin_m330_dinnertwins_cockroach02.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PersistentParticlesModifier_254()
    local params;
    params = {
        -- fadeDuration,
        [0] = 0,
        -- particleSystem,
        [1] = "newparticles/9015334630293318.part",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_13()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108446787063782310",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108419634305709029",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1948354252");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_196_Alive,
    });
    params = {
        -- Pawn,
        [0] = "2109371051929514429",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_11()
    local params;
    params = {
        -- blendTime,
        [1] = 3,
        -- endTarget,
        [4] = "2108446801532033964",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108419634305709029",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_158");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|1967614862");
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
                [0] = self.f_box_OutputOrder_v2_158_Out_0,
                [1] = self.f_box_OutputOrder_v2_158_Out_1,
                [2] = self.f_box_OutputOrder_v2_158_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_76()
    local params;
    params = {
        -- Pawns,
        [0] = "2108542094130830098",
        -- SoundId,
        [1] = "1696710356",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_165");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2006622393");
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
                [0] = self.f_box_OutputOrder_v2_165_Out_0,
                [1] = self.f_box_OutputOrder_v2_165_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_30()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "slow_motion",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_277()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_277");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2014887381");
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
                [0] = self.f_box_OutputOrder_v2_277_Out_0,
                [1] = self.f_box_OutputOrder_v2_277_Out_1,
                [2] = self.f_box_OutputOrder_v2_277_Out_2,
                [3] = self.f_box_OutputOrder_v2_277_Out_3,
                [4] = self.f_box_OutputOrder_v2_277_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_283()
    local params;
    params = {
        -- Pawns,
        [0] = "2108540743705451256",
        -- SoundId,
        [1] = "1261574409",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_InventoryLoadoutModifier_271()
    local params, l0;
    l0 = self.box_CoopActivePlayers_260;
    params = {
        -- discardPreviousBackup,
        [0] = false,
        -- players,
        [1] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2028439836");
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
                [0] = self.f_box_OutputOrder_v2_176_Out_0,
                [1] = self.f_box_OutputOrder_v2_176_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2029546093");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_140_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160307844516255",
        -- missionLayerId,
        [1] = "36167512313974719",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_130()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2058101965");
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
                [0] = self.f_box_OutputOrder_v2_212_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_214()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109482408668573526",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2076985503");
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
                [0] = self.f_box_OutputOrder_v2_146_Out_0,
                [1] = self.f_box_OutputOrder_v2_146_Out_1,
                [2] = self.f_box_OutputOrder_v2_146_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PickupState_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupState_v2_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2079567872");
    l0:SetConnections({
    });
    params = {
        -- Pickup,
        [0] = "2107770191648658947",
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_43()
    local params;
    params = {
        -- ObjectName,
        [0] = "ChainLockLadder",
        -- PrefabEntity,
        [1] = "2108447271210204188",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2104284464");
    l0:SetConnections({
        -- DamageableChanged,
        [0] = self.f_box_StaticBreakableBreaker_170_DamageableChanged,
    });
    l0 = self.box_GetEntityInPrefab_v2_172;
    params = {
        -- entity,
        [0] = l0:GetDataOutValue(0),
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_262()
    local params, l0;
    l0 = self.box_CoopActivePlayers_260;
    params = {
        -- PlayerID,
        [0] = l0:GetDataOutValue(2),
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_14()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
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
        [6] = "2108447439672317646",
        -- eTrigger,
        [8] = "2108447554187302729",
        -- fDistanceFromTarget,
        [9] = 5,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "Objectives",
            item = "MIS_330_B30_OBJ_GetInside",
            id = "1000684",
        },
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_220()
    local params;
    params = {
        -- Pawns,
        [0] = "2109669347092873075",
        -- SoundId,
        [1] = "3145719517",
        -- SoundType,
        [2] = 30,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2139486502");
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

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b30.domino|@MIS_330_B30|2139605542");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
                [2] = self.f_box_OutputOrder_v2_27_Out_2,
                [3] = self.f_box_OutputOrder_v2_27_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_190_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_330_b10.b_Derby_VIPEntrance_Opened = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_167_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    PersistentGlobals.mis_330_b30.b_shootoutCheckpoint = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_260_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_260;
    l1 = self.box_MIS_330_GiveDriverOutfit_259;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
    l1 = self.box_InventoryLoadoutModifier_271;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_GetPlayerGender_262;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_260_PlayerRemoved()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_260;
    l1 = self.box_MIS_330_GiveDriverOutfit_259;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
    l1 = self.box_InventoryLoadoutModifier_271;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
    l1 = self.box_GetPlayerGender_262;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_269_OnePlayer()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_269;
    l1 = self.box_MIS_330_GiveDriverOutfit_267;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_GetPlayerGender_39;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_269_TwoPlayers()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_269;
    l1 = self.box_MIS_330_GiveDriverOutfit_267;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_GetPlayerGender_39;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(0);
    l1 = self.box_MIS_330_GiveDriverOutfit_265;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(1);
    l1 = self.box_GetPlayerGender_41;
    l1:GetLuaBox().PlayerID = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPlayerGroup_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gp_FriendlyPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_89_Out()
    local l0;
    l0 = self.box_StartMetaSequence_89;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_12_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_12;
    l1 = self.box_InventoryItemModifier_21;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_12_PlayerRemoved()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_12;
    l1 = self.box_InventoryItemModifier_21;
    l1:GetLuaBox().players = l0:GetDataOutValue(2);
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
