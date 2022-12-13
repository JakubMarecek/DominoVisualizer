LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni04/uni04_020_debrief.domino
-- User graph: UNI04_020_DEBRIEF
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Heal_Target.Brick_Revive_Target_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/GetContextualAction.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/CreateVector3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ExtinguishAllFires.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetHealthState.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MetaBreakableModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PlayerExtinguishFire_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayerSpeedModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlaySimpleAnimation_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetOasis.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TaggingModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2650774855.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3044447121.bnk]], "CSoundResource");
        cboxRes:LoadResource([[animations\animals\dlc_mars_arachnid_worker\dlc_mars_arachnid_worker_fulb_combat_idle_intimidatebark.mab]], "CAnimationResource");
        cboxRes:LoadResource([[2762287898.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1894408153.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.UNI04_020_DEBRIEF = nil;
    Globals.UNI04_020_DEBRIEF = {
        SkipToReward = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_020_DEBRIEF.UNI04_020_DEBRIEF.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua")] = {
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
                name = "KeepGodMode",
                type = "bool",
            },
            [2] = {
                name = "KeepHUDMode",
                type = "bool",
            },
            [3] = {
                name = "KeepWeaponHolstered",
                type = "bool",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Heal_Target.Brick_Revive_Target_v2.debug.lua")] = {
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
                name = "Fail",
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
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bIsCharacterPersistent",
                type = "bool",
            },
            [2] = {
                name = "bMultipleTargets",
                type = "bool",
            },
            [3] = {
                name = "bObjectiveProgress",
                type = "bool",
            },
            [4] = {
                name = "e_Target",
                type = "entity",
            },
            [5] = {
                name = "o_TargetName",
                type = "oasis",
            },
            [6] = {
                name = "opt_MobileMarker",
                type = "entity",
            },
            [7] = {
                name = "opt_Objective",
                type = "oasis",
            },
        },
        dataInCount = 8,
        dataOut = {
            [0] = {
                name = "e_RevivedTarget",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua")] = {
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
                name = "b_SkipObjectiveFlow",
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
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Aborted",
                delayed = true,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "Finished",
                delayed = true,
            },
            [3] = {
                name = "Paused",
                delayed = true,
            },
            [4] = {
                name = "Resumed",
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
                name = "eNPC",
                type = "entity",
            },
            [1] = {
                name = "Interrupt_STP_on_Talk",
                type = "bool",
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.UIMode.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CinematicMode",
            },
            [1] = {
                name = "NormalMode",
            },
            [2] = {
                name = "OutpostMode",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "OnCinematicMode",
                delayed = false,
            },
            [1] = {
                name = "OnNormalMode",
                delayed = false,
            },
            [2] = {
                name = "OnOutpostMode",
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
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")] = {
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
                name = "pawnId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "contextualActionId",
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
    metadataTable[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")] = {
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
                name = "FromGroup",
                type = "group",
            },
            [1] = {
                name = "ToGroup",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CreateVector3.lua")] = {
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
                name = "x",
                type = "float",
            },
            [1] = {
                name = "y",
                type = "float",
            },
            [2] = {
                name = "z",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "vector3",
                type = "list",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/ExtinguishAllFires.lua")] = {
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
    metadataTable[GetPathID("Domino/System/GetHealthState.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Critical",
                delayed = false,
            },
            [1] = {
                name = "Dead",
                delayed = false,
            },
            [2] = {
                name = "Down",
                delayed = false,
            },
            [3] = {
                name = "Healthy",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Health",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/HealthModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Damage",
            },
            [1] = {
                name = "Heal",
            },
            [2] = {
                name = "RemoveCritical",
            },
            [3] = {
                name = "Set",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Damaged",
                delayed = false,
            },
            [1] = {
                name = "Healed",
                delayed = false,
            },
            [2] = {
                name = "OnRemoveCritical",
                delayed = false,
            },
            [3] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "damageWithStim",
                type = "int",
            },
            [1] = {
                name = "origin",
                type = "entity",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "value",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/MetaBreakableModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDamageable",
            },
            [1] = {
                name = "SetDisabled",
            },
            [2] = {
                name = "SetEnabled",
            },
            [3] = {
                name = "SetUnDamageable",
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
                name = "OnSetDamageable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUnDamageable",
                delayed = false,
            },
        },
        controlOutCount = 4,
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
    metadataTable[GetPathID("Domino/System/PawnInvincibleState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetInvincible",
            },
            [1] = {
                name = "UnsetInvincible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSet",
                delayed = false,
            },
            [1] = {
                name = "OnUnSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/Player/PlayerExtinguishFire_v2.lua")] = {
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
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/PlaySimpleAnimation_v2.lua")] = {
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
                name = "AnimFinished",
                delayed = true,
            },
            [1] = {
                name = "Played",
                delayed = false,
            },
            [2] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "animation",
                type = "simpleAnimation",
            },
            [1] = {
                name = "animPlayMode",
                type = "int",
            },
            [2] = {
                name = "blendDuration",
                type = "float",
            },
            [3] = {
                name = "loopAnim",
                type = "bool",
            },
            [4] = {
                name = "speedScale",
                type = "float",
            },
            [5] = {
                name = "target",
                type = "entity",
            },
        },
        dataInCount = 6,
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
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 8,
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v2.lua")] = {
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
                name = "OnEmpty",
                delayed = true,
            },
            [5] = {
                name = "OnOccupied",
                delayed = true,
            },
            [6] = {
                name = "Use",
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
                name = "colliderFilterId",
                type = "group",
            },
            [2] = {
                name = "listenToGroupSizeChange",
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
    metadataTable[GetPathID("Domino/System/StartCelebration.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Ended",
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
                name = "Preset",
                type = "genericdb",
            },
            [1] = {
                name = "TextId",
                type = "oasis",
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
    metadataTable[GetPathID("Domino/System/TaggingModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "TagEntity",
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
                name = "Tagged",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "Pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
            [5] = {
                name = "usageType",
                type = "string",
            },
        },
        dataInCount = 6,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI04_020_DEBRIEF";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF";
    self.gPlayerGroup = nil;
    self.eLarry = nil;
    self.var_FailReason = {
        section = "",
        item = "",
        id = "",
    };
    self.var_LarryInCage = true;
    self.var_PlayersNotInCage = false;
    self.var_LarryHealthy = true;
    self.var_PlayerInTeleport_1st = nil;
    self.var_PlayerInTeleport_2nd = nil;
    self.var_Host = nil;
    self.var_Client = nil;
    self.var_CurrentEntity = nil;
    self.box_NavLinkModifier_117 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|38202262");
    l0:SetConnections({
    });
    self.box_BaseMissionBlock_v2_11 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|56716211");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_BaseMissionBlock_v2_11_Activated,
    });
    self.box_EntityStatusListener_157 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|58288252");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_157_Loaded,
    });
    self.box_PostFx_v3_26 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|68986313");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_26_Disabled,
    });
    self.box_OnceOnly_v3_95 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|73504792");
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
                [0] = self.f_box_OnceOnly_v3_95_Out_0,
            },
            count = 2,
        },
    });
    self.box_ActivityInitialized_44 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|76288241");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_44_Out,
    });
    self.box_Gate_v3_197 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|138663539");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_197_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_197_Out,
    });
    self.box_BaseMissionBlock_v2_5 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|141531053");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_BaseMissionBlock_v2_5_Disabled,
    });
    self.box_Delay_v5_233 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_233");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|144322677");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_233_TimeElapsed,
    });
    self.box_HealthListener_v6_57 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|150098914");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_57_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_57_Enabled,
    });
    self.box_EntityStatusListener_110 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|155701575");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_110_Loaded,
    });
    self.box_ProximityTrigger_v2_30 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|194127091");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_30_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_30_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_30_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_30_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_30_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_30_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_30_Use,
    });
    self.box_MultipleOR_73 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|198269542");
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
        [0] = self.f_box_MultipleOR_73_Out,
    });
    self.box_PostFx_v3_119 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|228203723");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_119_Disabled,
    });
    self.box_UniversalInteractionModifier_v2_156 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|235884435");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_156_Enabled,
    });
    self.box_TeleportPawns_109 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|267007906");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_109_Out,
    });
    self.box_PostFx_v3_134 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|346747155");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_134_Enabled,
    });
    self.box_CharacterLoadedIdListener_46 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|350627122");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_46_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_46_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_46_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_46_LoadedIdReceived,
    });
    self.box_MetaBreakableModifier_v2_45 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|352754882");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_116 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|361026421");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_179 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|375126223");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_179_Loaded,
    });
    self.box_BaseMissionBlock_v2_219 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|402338795");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_BaseMissionBlock_v2_219_Activated,
    });
    self.box_MultipleOR_59 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|408100835");
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
        [0] = self.f_box_MultipleOR_59_Out,
    });
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|413561612");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box_NoWeaponMode_v3_125 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|414565409");
    l0:SetConnections({
    });
    self.box_MultipleOR_99 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|427667349");
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
        [0] = self.f_box_MultipleOR_99_Out,
    });
    self.box_MultipleOR_51 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|432767611");
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
        [0] = self.f_box_MultipleOR_51_Out,
    });
    self.box_MultipleOR_199 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|434634712");
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
        [0] = self.f_box_MultipleOR_199_Out,
    });
    self.box_EntityStatusListener_113 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|466540556");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_113_Loaded,
    });
    self.box_TeleportPawns_224 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_224;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|467615370");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_224_Out,
    });
    self.box_OnceOnly_v3_195 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|521253777");
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
                [0] = self.f_box_OnceOnly_v3_195_Out_0,
            },
            count = 2,
        },
    });
    self.box_BaseMissionBlock_v2_207 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|539332977");
    l0:SetConnections({
    });
    self.box_Delay_v5_234 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_234;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|540409006");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_234_TimeElapsed,
    });
    self.box_SoundModifier_v2_18 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|551158246");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_158 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|590771730");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_158_Disabled,
    });
    self.box_UniversalInteractionModifier_v2_160 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|595805523");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_160_Enabled,
    });
    self.box_Brick_Revive_Target_v2_19 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Heal_Target.Brick_Revive_Target_v2.debug.lua");
    l0 = self.box_Brick_Revive_Target_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Revive_Target_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|596518250");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Brick_Revive_Target_v2_19_Success,
    });
    self.box_Bind_v4_165 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|600789561");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_165_Bound,
    });
    self.box_Delay_v5_194 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|654273842");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_194_TimeElapsed,
    });
    self.box_EntityStatusListener_136 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|677705521");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_136_Loaded,
    });
    self.box_SoundModifier_v2_225 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|688573250");
    l0:SetConnections({
    });
    self.box_Delay_v5_206 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|701310733");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_206_TimeElapsed,
    });
    self.box_MultipleAND_v2_145 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|712343178");
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
        [0] = self.f_box_MultipleAND_v2_145_Out,
    });
    self.box_Delay_v5_183 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|762565250");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_183_TimeElapsed,
    });
    self.box_TeleportPawns_174 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_174;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|763059372");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_174_Out,
    });
    self.box_PlayerSpeedModifier_v3_127 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|812147438");
    l0:SetConnections({
        -- ApplySpeedFactorOut,
        [0] = self.f_box_PlayerSpeedModifier_v3_127_ApplySpeedFactorOut,
    });
    self.box_Delay_v5_132 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|816472794");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_132_TimeElapsed,
    });
    self.box_SoundModifier_v2_142 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|819406689");
    l0:SetConnections({
    });
    self.box_OverrideMenuAccessibility_203 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility.lua");
    l0 = self.box_OverrideMenuAccessibility_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|825130364");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_203_Out,
    });
    self.box_EntityStatusListener_152 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|831438396");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_152_Loaded,
    });
    self.box_TeleportPawns_35 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|856295566");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_35_Out,
    });
    self.box_UIMode_101 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
    l0 = self.box_UIMode_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIMode_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|890144796");
    l0:SetConnections({
    });
    self.box_Delay_v5_214 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|892969034");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_214_TimeElapsed,
    });
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|894219281");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
    self.box_SoundModifier_v2_200 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|904948748");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_58 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|915380983");
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
                [0] = self.f_box_OnceOnly_v3_58_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_41 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|925128360");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_41_Unloaded,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|933654360");
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
    self.box_Delay_v5_176 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|938438898");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_176_TimeElapsed,
    });
    self.box_MultipleAND_v2_72 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|963213175");
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
        [0] = self.f_box_MultipleAND_v2_72_Out,
    });
    self.box_NarrativeSceneCleanUp_223 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1003231933");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_223_Out,
    });
    self.box_ProximityRadiusListener_v3_66 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1023625797");
    l0:SetConnections({
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_66_AllNear,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_66_Enabled,
    });
    self.box_PostFx_v3_139 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1030371296");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_139_Disabled,
    });
    self.box_PlaySimpleAnimation_v2_189 = cbox:CreateBox("Domino/System/PlaySimpleAnimation_v2.lua");
    l0 = self.box_PlaySimpleAnimation_v2_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySimpleAnimation_v2_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1059631983");
    l0:SetConnections({
    });
    self.box_Delay_v5_137 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1061911232");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_137_TimeElapsed,
    });
    self.box_PostFx_v3_133 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1085837892");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_133_Disabled,
    });
    self.box_PlayerSpeedModifier_v3_146 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1238079390");
    l0:SetConnections({
        -- ApplySpeedFactorOut,
        [0] = self.f_box_PlayerSpeedModifier_v3_146_ApplySpeedFactorOut,
    });
    self.box_RemoveEntity_v2_181 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1264819437");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_181_Out,
    });
    self.box_OnceOnly_v3_104 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1275635725");
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
                [0] = self.f_box_OnceOnly_v3_104_Out_0,
            },
            count = 2,
        },
    });
    self.box_PostFx_v3_192 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1295516240");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_192_Disabled,
    });
    self.box_EntityStatusListener_148 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1296405310");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_148_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_148_Unloaded,
    });
    self.box_MetaBreakableModifier_v2_108 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1308541067");
    l0:SetConnections({
    });
    self.box_PostFx_v3_191 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1316173037");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_191_Enabled,
    });
    self.box_Gate_v3_182 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1324819598");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_182_Out,
    });
    self.box_NoWeaponMode_v3_121 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1335667591");
    l0:SetConnections({
        -- OnEnter,
        [0] = self.f_box_NoWeaponMode_v3_121_OnEnter,
    });
    self.box_SoundModifier_v2_171 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_171;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1387388965");
    l0:SetConnections({
    });
    self.box_NarrativeSceneSetup_222 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1413513601");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_222_Holstered,
    });
    self.box_UniversalInteractionModifier_v2_155 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1424886874");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_155_Enabled,
    });
    self.box_PostFx_v3_103 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1427073567");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_103_Enabled,
    });
    self.box_StaticBreakableListener_22 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1453370848");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_22_OnBreak,
    });
    self.box_Gate_v3_151 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1475922268");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_151_Out,
    });
    self.box_MetaBreakableModifier_v2_47 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1495877925");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_38 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1507675112");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_38_Downed,
    });
    self.box_Brick_Interact_With_Object_V5_24 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1553887325");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_Brick_Interact_With_Object_V5_24_Disabled,
        -- Started,
        [1] = self.f_box_Brick_Interact_With_Object_V5_24_Started,
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_24_Success,
    });
    self.box_PostFx_v3_190 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_190;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1580535663");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_190_Enabled,
    });
    self.box_Delay_v5_170 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1581855663");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_170_TimeElapsed,
    });
    self.box_HealthListener_v6_180 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_180;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1582423817");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_180_Killed,
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1586479987");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_PlayerSpeedModifier_v3_50 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1614871339");
    l0:SetConnections({
    });
    self.box_PostFx_v3_193 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1644375496");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_193_Disabled,
    });
    self.box_RemoveEntity_v2_166 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1678976279");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_166_Out,
    });
    self.box_EntityStatusListener_118 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1710093979");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_118_Loaded,
    });
    self.box_ProximityRadiusListener_v3_218 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1710735183");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_218_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_218_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_218_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_218_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_218_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_218_SomeoneNear,
    });
    self.box_MultipleOR_213 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1714863350");
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
        [0] = self.f_box_MultipleOR_213_Out,
    });
    self.box_EntityStatusListener_178 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_178;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1746503028");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_178_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_178_Unloaded,
    });
    self.box_Delay_v5_25 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1751985450");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_25_TimeElapsed,
    });
    self.box_EntityStatusListener_114 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1753136469");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_114_Loaded,
    });
    self.box_MultipleOR_106 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1770945383");
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
        [0] = self.f_box_MultipleOR_106_Out,
    });
    self.box_MultipleOR_39 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1802081673");
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
    self.box_ProximityRadiusListener_v3_48 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1804941998");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_48_SomeoneNear,
    });
    self.box_PostFx_v3_20 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1809246815");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_20_Enabled,
    });
    self.box_PostFx_v3_129 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1820668349");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_129_Enabled,
    });
    self.box_EntityStatusListener_153 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1829119630");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_153_Loaded,
    });
    self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1841341547");
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
        [0] = self.f_box_MultipleOR_42_Out,
    });
    self.box_OnceOnly_v3_97 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1843728854");
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
                [0] = self.f_box_OnceOnly_v3_97_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_43 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1858381334");
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
    self.box_Delay_v5_149 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1858595574");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_149_TimeElapsed,
    });
    self.box_Brick_NarrativeQuickCinema_V4_21 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V4.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V4_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V4_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1871069859");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V4_21_Finished,
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1892327456");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_OnceOnly_v3_12 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1894573484");
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
                [0] = self.f_box_OnceOnly_v3_12_Out_0,
            },
            count = 2,
        },
    });
    self.box_SoundModifier_v2_168 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1895905083");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_144 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1922823187");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_6 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1941275463");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_6_Started,
    });
    self.box_NavLinkModifier_111 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1991178653");
    l0:SetConnections({
    });
    self.box_TeleportPawns_31 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2027461322");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_31_Out,
    });
    self.box_ProximityRadiusListener_v3_55 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2035425205");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_55_AllFar,
    });
    self.box_Delay_v5_10 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2046226604");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_10_TimeElapsed,
    });
    self.box_StartCelebration_107 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2056062118");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_107_Ended,
    });
    self.box_OnceOnly_v3_188 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2068942588");
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
                [0] = self.f_box_OnceOnly_v3_188_Out_0,
            },
            count = 2,
        },
    });
    self.box_Switch_226 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_226;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2073626158");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 2,
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
                [0] = self.f_box_Switch_226_Output_0,
                [1] = self.f_box_Switch_226_Output_1,
            },
            count = 2,
        },
    });
    self.box_OverrideMenuAccessibility_216 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility.lua");
    l0 = self.box_OverrideMenuAccessibility_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2089285756");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_216_Out,
    });
    self.box_RemoveEntity_v2_138 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2102256964");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_138_Out,
    });
    self.box_NavLinkModifier_112 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2103785943");
    l0:SetConnections({
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2142404443");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1158732083", "1158732083", "UNI04_020_DEBRIEF", "In", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1046153", "1046153", "UNI04_020_DEBRIEF", "OnLeaveZone", "box_ActivityRetry_8.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_130_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideMenuAccessibility_216();
    l0 = self.box_OverrideMenuAccessibility_216;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|55576595", "55576595", "UNI04_020_DEBRIEF", "box_Simple_Node_130.Out", "box_OverrideMenuAccessibility_216.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    params = self:OnEnter_box_MissionBlockLayer_202();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|138978896", "138978896", "UNI04_020_DEBRIEF", "box_Simple_Node_130.Out", "box_MissionBlockLayer_202.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_82_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|56728944", "56728944", "UNI04_020_DEBRIEF", "box_Simple_Node_82.Out", "box_MultipleOR_59.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|42617773", "42617773", "UNI04_020_DEBRIEF", "box_Simple_Node_82.Out", "box_MultipleOR_106.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_80_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_24();
    l0 = self.box_Brick_Interact_With_Object_V5_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1215964841", "1215964841", "UNI04_020_DEBRIEF", "box_Simple_Node_80.Out", "box_Brick_Interact_With_Object_V5_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1907420742", "1907420742", "UNI04_020_DEBRIEF", "box_Simple_Node_80.Out", "box_MultipleOR_106.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_MultipleAND_v2_72();
    l0 = self.box_MultipleAND_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|330109161", "330109161", "UNI04_020_DEBRIEF", "box_Simple_Node_80.Out", "box_MultipleAND_v2_72.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_78_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|696685719", "696685719", "UNI04_020_DEBRIEF", "box_Simple_Node_78.Out", "box_OnceOnly_v3_95.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_79_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnInvincibleState_v2_169();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|355288862", "355288862", "UNI04_020_DEBRIEF", "box_Simple_Node_79.Out", "box_PawnInvincibleState_v2_169.SetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetInvincible
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_64();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|166179200", "166179200", "UNI04_020_DEBRIEF", "box_Simple_Node_79.Out", "box_OutputOrder_v2_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_186_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_145();
    l0 = self.box_MultipleAND_v2_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|766502655", "766502655", "UNI04_020_DEBRIEF", "box_Simple_Node_186.Out", "box_MultipleAND_v2_145.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_215_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1667546691", "1667546691", "UNI04_020_DEBRIEF", "box_Simple_Node_215.Out", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_131_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_218();
    l0 = self.box_ProximityRadiusListener_v3_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2041674893", "2041674893", "UNI04_020_DEBRIEF", "box_Simple_Node_131.Out", "box_ProximityRadiusListener_v3_218.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_TaggingModifier_v3_204();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|814378329", "814378329", "UNI04_020_DEBRIEF", "box_Simple_Node_131.Out", "box_TaggingModifier_v3_204.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_236_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExtinguishAllFires_147();
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1525962349", "1525962349", "UNI04_020_DEBRIEF", "box_Simple_Node_236.Out", "box_ExtinguishAllFires_147.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_229_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_142();
    l0 = self.box_SoundModifier_v2_142;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|50392733", "50392733", "UNI04_020_DEBRIEF", "box_Simple_Node_229.Out", "box_SoundModifier_v2_142.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_231_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_225();
    l0 = self.box_SoundModifier_v2_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|615570255", "615570255", "UNI04_020_DEBRIEF", "box_Simple_Node_231.Out", "box_SoundModifier_v2_225.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_230_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_171();
    l0 = self.box_SoundModifier_v2_171;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|764865649", "764865649", "UNI04_020_DEBRIEF", "box_Simple_Node_230.Out", "box_SoundModifier_v2_171.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_232_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_200();
    l0 = self.box_SoundModifier_v2_200;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|334721893", "334721893", "UNI04_020_DEBRIEF", "box_Simple_Node_232.Out", "box_SoundModifier_v2_200.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_77_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_77_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_92();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1439760109", "1439760109", "UNI04_020_DEBRIEF", "box_SetBoolean_v2_77.Out", "box_OutputOrder_v2_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BaseMissionBlock_v2_11_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_BaseMissionBlock_v2_11;
    l1 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|651600373", "651600373", "UNI04_020_DEBRIEF", "box_BaseMissionBlock_v2_11.Activated", "box_Delay_v5_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_157_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_158();
    l0 = self.box_EntityStatusListener_157;
    l1 = self.box_UniversalInteractionModifier_v2_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|454006022", "454006022", "UNI04_020_DEBRIEF", "box_EntityStatusListener_157.Loaded", "box_UniversalInteractionModifier_v2_158.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PostFx_v3_26_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_190();
    l0 = self.box_PostFx_v3_26;
    l1 = self.box_PostFx_v3_190;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1340719252", "1340719252", "UNI04_020_DEBRIEF", "box_PostFx_v3_26.Disabled", "box_PostFx_v3_190.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_95_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_208();
    l0 = self.box_OnceOnly_v3_95;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|795288657", "795288657", "UNI04_020_DEBRIEF", "box_OnceOnly_v3_95.Out", "box_OutputOrder_v2_208.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = self.box_ActivityInitialized_44;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|572814311", "572814311", "UNI04_020_DEBRIEF", "box_ActivityInitialized_44.Out", "box_OutputOrder_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_29_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_123();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|542042292", "542042292", "UNI04_020_DEBRIEF", "box_IsValueNil_v3_29.No", "box_IsValueNil_v3_123.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_29_Yes()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|73754063", "73754063", "UNI04_020_DEBRIEF", "box_IsValueNil_v3_29.Yes", "box_MultipleOR_39.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_196_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_197();
    l0 = self.box_Gate_v3_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|509310261", "509310261", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_196.Out", "box_Gate_v3_197.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_196_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1866525603", "1866525603", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_196.Out", "box_OnceOnly_v3_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TaggingModifier_v3_204_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_35();
    l0 = self.box_TeleportPawns_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1441910806", "1441910806", "UNI04_020_DEBRIEF", "box_TaggingModifier_v3_204.Disabled", "box_TeleportPawns_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1355185571", "1355185571", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_33.Out", "box_OnceOnly_v3_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_38();
    l0 = self.box_HealthListener_v6_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|252442045", "252442045", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_33.Out", "box_HealthListener_v6_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_197_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_48();
    l0 = self.box_Gate_v3_197;
    l1 = self.box_ProximityRadiusListener_v3_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1377766347", "1377766347", "UNI04_020_DEBRIEF", "box_Gate_v3_197.Closed", "box_ProximityRadiusListener_v3_48.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_197_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_48();
    l0 = self.box_Gate_v3_197;
    l1 = self.box_ProximityRadiusListener_v3_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1504176775", "1504176775", "UNI04_020_DEBRIEF", "box_Gate_v3_197.Out", "box_ProximityRadiusListener_v3_48.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_BaseMissionBlock_v2_5_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_145();
    l0 = self.box_BaseMissionBlock_v2_5;
    l1 = self.box_MultipleAND_v2_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|279173388", "279173388", "UNI04_020_DEBRIEF", "box_BaseMissionBlock_v2_5.Disabled", "box_MultipleAND_v2_145.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Delay_v5_233_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_236();
    l0 = self.box_Delay_v5_233;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1173264942", "1173264942", "UNI04_020_DEBRIEF", "box_Delay_v5_233.TimeElapsed", "box_Simple_Node_236.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_57_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_57;
    l1 = self.box_MultipleOR_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1198195277", "1198195277", "UNI04_020_DEBRIEF", "box_HealthListener_v6_57.Downed", "box_MultipleOR_99.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_57_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_98();
    l0 = self.box_HealthListener_v6_57;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1698862562", "1698862562", "UNI04_020_DEBRIEF", "box_HealthListener_v6_57.Enabled", "box_GetHealthState_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_110_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_117();
    l0 = self.box_EntityStatusListener_110;
    l1 = self.box_NavLinkModifier_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1690576026", "1690576026", "UNI04_020_DEBRIEF", "box_EntityStatusListener_110.Loaded", "box_NavLinkModifier_117.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_30_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_30;
    l1 = self.box_MultipleOR_199;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|853790749", "853790749", "UNI04_020_DEBRIEF", "box_ProximityTrigger_v2_30.Enter", "box_MultipleOR_199.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_30_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_30;
    l1 = self.box_MultipleOR_199;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|166787102", "166787102", "UNI04_020_DEBRIEF", "box_ProximityTrigger_v2_30.OnOccupied", "box_MultipleOR_199.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_73_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = self.box_MultipleOR_73;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|67209774", "67209774", "UNI04_020_DEBRIEF", "box_MultipleOR_73.Out", "box_Simple_Node_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetHealthState_98_Down()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1783381420", "1783381420", "UNI04_020_DEBRIEF", "box_GetHealthState_98.Down", "box_MultipleOR_99.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_87_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_54();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1177451794", "1177451794", "UNI04_020_DEBRIEF", "box_ActivityObjectiveMarkerModifier_v3_87.Disabled", "box_EndActivityObjective_v2_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_119_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_186();
    l0 = self.box_PostFx_v3_119;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1730343795", "1730343795", "UNI04_020_DEBRIEF", "box_PostFx_v3_119.Disabled", "box_Simple_Node_186.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_156_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_47();
    l0 = self.box_UniversalInteractionModifier_v2_156;
    l1 = self.box_MetaBreakableModifier_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1444962741", "1444962741", "UNI04_020_DEBRIEF", "box_UniversalInteractionModifier_v2_156.Enabled", "box_MetaBreakableModifier_v2_47.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_ParticleSystem_v3_15_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_10();
    l0 = self.box_Delay_v5_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|124613948", "124613948", "UNI04_020_DEBRIEF", "box_ParticleSystem_v3_15.Started", "box_Delay_v5_10.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_TeleportPawns_109_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_206();
    l0 = self.box_TeleportPawns_109;
    l1 = self.box_Delay_v5_206;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|480818998", "480818998", "UNI04_020_DEBRIEF", "box_TeleportPawns_109.Out", "box_Delay_v5_206.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GetContextualAction_172_Out()
    local params, l0;
    self:OnExit_box_GetContextualAction_172_Out();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_175();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1510094596", "1510094596", "UNI04_020_DEBRIEF", "box_GetContextualAction_172.Out", "box_UseContextualActionModifier_v3_175.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetOasis_53_Out()
    local params, l0;
    self:OnExit_box_SetOasis_53_Out();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_78();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|301368719", "301368719", "UNI04_020_DEBRIEF", "box_SetOasis_53.Out", "box_Simple_Node_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_90_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_87();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|190637526", "190637526", "UNI04_020_DEBRIEF", "box_AddActivityObjective_v2_90.Out", "box_ActivityObjectiveMarkerModifier_v3_87.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_134_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_227();
    l0 = self.box_PostFx_v3_134;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2023200370", "2023200370", "UNI04_020_DEBRIEF", "box_PostFx_v3_134.Enabled", "box_OutputOrder_v2_227.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_46_Enabled()
    local l0, l1;
    l0 = self.box_CharacterLoadedIdListener_46;
    l1 = self.box_ActivityInitialized_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1247654284", "1247654284", "UNI04_020_DEBRIEF", "box_CharacterLoadedIdListener_46.Enabled", "box_ActivityInitialized_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_CharacterLoadedIdListener_46_LoadedIdReceived()
    self:OnExit_box_CharacterLoadedIdListener_46_LoadedIdReceived();
end;

function export:f_box_EntityStatusListener_179_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_129();
    l0 = self.box_EntityStatusListener_179;
    l1 = self.box_PostFx_v3_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|656564888", "656564888", "UNI04_020_DEBRIEF", "box_EntityStatusListener_179.Loaded", "box_PostFx_v3_129.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_22();
    l0 = self.box_StaticBreakableListener_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|345850674", "345850674", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_32.Out", "box_StaticBreakableListener_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_41();
    l0 = self.box_EntityStatusListener_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|915093095", "915093095", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_32.Out", "box_EntityStatusListener_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_9();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|12487038", "12487038", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_32.Out", "box_GetPlayerGroup_v2_9.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BaseMissionBlock_v2_219_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_207();
    l0 = self.box_BaseMissionBlock_v2_219;
    l1 = self.box_BaseMissionBlock_v2_207;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|702624929", "702624929", "UNI04_020_DEBRIEF", "box_BaseMissionBlock_v2_219.Activated", "box_BaseMissionBlock_v2_207.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_59_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_69();
    l0 = self.box_MultipleOR_59;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|135964723", "135964723", "UNI04_020_DEBRIEF", "box_MultipleOR_59.Out", "box_OutputOrder_v2_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_18();
    l0 = self.box_Delay_v5_17;
    l1 = self.box_SoundModifier_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|119936022", "119936022", "UNI04_020_DEBRIEF", "box_Delay_v5_17.TimeElapsed", "box_SoundModifier_v2_18.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_99_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_74();
    l0 = self.box_MultipleOR_99;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2131526454", "2131526454", "UNI04_020_DEBRIEF", "box_MultipleOR_99.Out", "box_OutputOrder_v2_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_55();
    l0 = self.box_MultipleOR_51;
    l1 = self.box_ProximityRadiusListener_v3_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|721534788", "721534788", "UNI04_020_DEBRIEF", "box_MultipleOR_51.Out", "box_ProximityRadiusListener_v3_55.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_199_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_198();
    l0 = self.box_MultipleOR_199;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|623339583", "623339583", "UNI04_020_DEBRIEF", "box_MultipleOR_199.Out", "box_VehicleModifier_v2_198.SetExplosion", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetExplosion
    l1:Exec(17, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_175_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_181();
    l0 = self.box_RemoveEntity_v2_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1065937087", "1065937087", "UNI04_020_DEBRIEF", "box_UseContextualActionModifier_v3_175.Disabled", "box_RemoveEntity_v2_181.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_113_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_116();
    l0 = self.box_EntityStatusListener_113;
    l1 = self.box_NavLinkModifier_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1145009561", "1145009561", "UNI04_020_DEBRIEF", "box_EntityStatusListener_113.Loaded", "box_NavLinkModifier_116.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_TeleportPawns_224_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_234();
    l0 = self.box_TeleportPawns_224;
    l1 = self.box_Delay_v5_234;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|581682880", "581682880", "UNI04_020_DEBRIEF", "box_TeleportPawns_224.Out", "box_Delay_v5_234.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetOasis_210_Out()
    local params, l0;
    self:OnExit_box_SetOasis_210_Out();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_78();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1176761975", "1176761975", "UNI04_020_DEBRIEF", "box_SetOasis_210.Out", "box_Simple_Node_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_195_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetOasis_210();
    l0 = self.box_OnceOnly_v3_195;
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|685973577", "685973577", "UNI04_020_DEBRIEF", "box_OnceOnly_v3_195.Out", "box_SetOasis_210.FromOasis", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromOasis
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_234_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_191();
    l0 = self.box_Delay_v5_234;
    l1 = self.box_PostFx_v3_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1644956417", "1644956417", "UNI04_020_DEBRIEF", "box_Delay_v5_234.TimeElapsed", "box_PostFx_v3_191.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_94_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_140();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2046415837", "2046415837", "UNI04_020_DEBRIEF", "box_EndActivityObjective_v2_94.Out", "box_Simple_Node_140.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_115_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_118();
    l0 = self.box_EntityStatusListener_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1299227270", "1299227270", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_115.Out", "box_EntityStatusListener_118.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_115_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_110();
    l0 = self.box_EntityStatusListener_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|555260198", "555260198", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_115.Out", "box_EntityStatusListener_110.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_115_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_113();
    l0 = self.box_EntityStatusListener_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|900820234", "900820234", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_115.Out", "box_EntityStatusListener_113.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_115_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_114();
    l0 = self.box_EntityStatusListener_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|579254016", "579254016", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_115.Out", "box_EntityStatusListener_114.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_235_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_170();
    l0 = self.box_Delay_v5_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1771405621", "1771405621", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_235.Out", "box_Delay_v5_170.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_235_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_233();
    l0 = self.box_Delay_v5_233;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|416750767", "416750767", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_235.Out", "box_Delay_v5_233.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_64_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_55();
    l0 = self.box_ProximityRadiusListener_v3_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1472402965", "1472402965", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_64.Out", "box_ProximityRadiusListener_v3_55.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_64_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_57();
    l0 = self.box_HealthListener_v6_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|648243751", "648243751", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_64.Out", "box_HealthListener_v6_57.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_158_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_108();
    l0 = self.box_UniversalInteractionModifier_v2_158;
    l1 = self.box_MetaBreakableModifier_v2_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1863467042", "1863467042", "UNI04_020_DEBRIEF", "box_UniversalInteractionModifier_v2_158.Disabled", "box_MetaBreakableModifier_v2_108.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_UniversalInteractionModifier_v2_160_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_24();
    l0 = self.box_UniversalInteractionModifier_v2_160;
    l1 = self.box_Brick_Interact_With_Object_V5_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|280994086", "280994086", "UNI04_020_DEBRIEF", "box_UniversalInteractionModifier_v2_160.Enabled", "box_Brick_Interact_With_Object_V5_24.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Brick_Revive_Target_v2_19_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_81();
    l0 = self.box_Brick_Revive_Target_v2_19;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1510860596", "1510860596", "UNI04_020_DEBRIEF", "box_Brick_Revive_Target_v2_19.Success", "box_SetBoolean_v2_81.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_165_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_CreateVector3_143();
    l0 = self.box_Bind_v4_165;
    l1 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|615712842", "615712842", "UNI04_020_DEBRIEF", "box_Bind_v4_165.Bound", "box_CreateVector3_143.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_63_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1293474613", "1293474613", "UNI04_020_DEBRIEF", "box_Simple_Node_63.Out", "box_OnceOnly_v3_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_217_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_224();
    l0 = self.box_TeleportPawns_224;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1805383306", "1805383306", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_217.Out", "box_TeleportPawns_224.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_217_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_231();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|629949223", "629949223", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_217.Out", "box_Simple_Node_231.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_211_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_31();
    l0 = self.box_TeleportPawns_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1276585020", "1276585020", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_211.Out", "box_TeleportPawns_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_211_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySimpleAnimation_v2_189();
    l0 = self.box_PlaySimpleAnimation_v2_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|669381749", "669381749", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_211.Out", "box_PlaySimpleAnimation_v2_189.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_211_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_229();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1447414273", "1447414273", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_211.Out", "box_Simple_Node_229.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_194_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_26();
    l0 = self.box_Delay_v5_194;
    l1 = self.box_PostFx_v3_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2085622831", "2085622831", "UNI04_020_DEBRIEF", "box_Delay_v5_194.TimeElapsed", "box_PostFx_v3_26.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_85_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_130();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1853406907", "1853406907", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_85.Out", "box_Simple_Node_130.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_85_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_212();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|630383648", "630383648", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_85.Out", "box_IsValueNil_v3_212.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_136_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_222();
    l0 = self.box_EntityStatusListener_136;
    l1 = self.box_NarrativeSceneSetup_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1168602645", "1168602645", "UNI04_020_DEBRIEF", "box_EntityStatusListener_136.Loaded", "box_NarrativeSceneSetup_222.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_Simple_Node_161_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_197();
    l0 = self.box_Gate_v3_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|888086781", "888086781", "UNI04_020_DEBRIEF", "box_Simple_Node_161.Out", "box_Gate_v3_197.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_206_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_193();
    l0 = self.box_Delay_v5_206;
    l1 = self.box_PostFx_v3_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|511417774", "511417774", "UNI04_020_DEBRIEF", "box_Delay_v5_206.TimeElapsed", "box_PostFx_v3_193.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_145_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_145;
    l1 = self.box_OnceOnly_v3_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1134650749", "1134650749", "UNI04_020_DEBRIEF", "box_MultipleAND_v2_145.Out", "box_OnceOnly_v3_188.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_123_Yes()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|519720214", "519720214", "UNI04_020_DEBRIEF", "box_IsValueNil_v3_123.Yes", "box_MultipleOR_39.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_183_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetContextualAction_172();
    l0 = self.box_Delay_v5_183;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|263328643", "263328643", "UNI04_020_DEBRIEF", "box_Delay_v5_183.TimeElapsed", "box_GetContextualAction_172.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_174_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_214();
    l0 = self.box_TeleportPawns_174;
    l1 = self.box_Delay_v5_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1462116477", "1462116477", "UNI04_020_DEBRIEF", "box_TeleportPawns_174.Out", "box_Delay_v5_214.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayerSpeedModifier_v3_127_ApplySpeedFactorOut()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_125();
    l0 = self.box_PlayerSpeedModifier_v3_127;
    l1 = self.box_NoWeaponMode_v3_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|871870054", "871870054", "UNI04_020_DEBRIEF", "box_PlayerSpeedModifier_v3_127.ApplySpeedFactorOut", "box_NoWeaponMode_v3_125.On", l0:GetLuaBox(), l1:GetLuaBox());
    -- On
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_132_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_134();
    l0 = self.box_Delay_v5_132;
    l1 = self.box_PostFx_v3_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|873278971", "873278971", "UNI04_020_DEBRIEF", "box_Delay_v5_132.TimeElapsed", "box_PostFx_v3_134.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OverrideMenuAccessibility_203_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_218();
    l0 = self.box_OverrideMenuAccessibility_203;
    l1 = self.box_ProximityRadiusListener_v3_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1800919397", "1800919397", "UNI04_020_DEBRIEF", "box_OverrideMenuAccessibility_203.Out", "box_ProximityRadiusListener_v3_218.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_152_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_155();
    l0 = self.box_EntityStatusListener_152;
    l1 = self.box_UniversalInteractionModifier_v2_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|990233501", "990233501", "UNI04_020_DEBRIEF", "box_EntityStatusListener_152.Loaded", "box_UniversalInteractionModifier_v2_155.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_185_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_141();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|29353872", "29353872", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_185.Out", "box_IsValueNil_v3_141.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_185_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_184();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1071690836", "1071690836", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_185.Out", "box_IsValueNil_v3_184.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_161();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1529178247", "1529178247", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_49.Out", "box_Simple_Node_161.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V4_21();
    l0 = self.box_Brick_NarrativeQuickCinema_V4_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1770570431", "1770570431", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_49.Out", "box_Brick_NarrativeQuickCinema_V4_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_TeleportPawns_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_TeleportPawns_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|868815690", "868815690", "UNI04_020_DEBRIEF", "box_TeleportPawns_35.Out", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_141_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_148();
    l0 = self.box_EntityStatusListener_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2049229337", "2049229337", "UNI04_020_DEBRIEF", "box_IsValueNil_v3_141.No", "box_EntityStatusListener_148.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsValueNil_v3_141_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_186();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|800830104", "800830104", "UNI04_020_DEBRIEF", "box_IsValueNil_v3_141.Yes", "box_Simple_Node_186.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_9_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_46();
    l0 = self.box_CharacterLoadedIdListener_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|397289298", "397289298", "UNI04_020_DEBRIEF", "box_GetPlayerGroup_v2_9.Out", "box_CharacterLoadedIdListener_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_214_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_192();
    l0 = self.box_Delay_v5_214;
    l1 = self.box_PostFx_v3_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1168926150", "1168926150", "UNI04_020_DEBRIEF", "box_Delay_v5_214.TimeElapsed", "box_PostFx_v3_192.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_15();
    l0 = self.box_Delay_v5_13;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1586599534", "1586599534", "UNI04_020_DEBRIEF", "box_Delay_v5_13.TimeElapsed", "box_ParticleSystem_v3_15.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_162_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_120();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1899233246", "1899233246", "UNI04_020_DEBRIEF", "box_UseContextualActionModifier_v3_162.Disabled", "box_UseContextualActionModifier_v3_120.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_58_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = self.box_OnceOnly_v3_58;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|572046923", "572046923", "UNI04_020_DEBRIEF", "box_OnceOnly_v3_58.Out", "box_OutputOrder_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_41_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_41;
    l1 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|992188465", "992188465", "UNI04_020_DEBRIEF", "box_EntityStatusListener_41.Unloaded", "box_MultipleOR_42.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_MultipleOR_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|197039623", "197039623", "UNI04_020_DEBRIEF", "box_MultipleOR_7.Out", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_173_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_179();
    l0 = self.box_EntityStatusListener_179;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1619476587", "1619476587", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_173.Out", "box_EntityStatusListener_179.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_173_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_182();
    l0 = self.box_Gate_v3_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1127122971", "1127122971", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_173.Out", "box_Gate_v3_182.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_176_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_182();
    l0 = self.box_Delay_v5_176;
    l1 = self.box_Gate_v3_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1518648360", "1518648360", "UNI04_020_DEBRIEF", "box_Delay_v5_176.TimeElapsed", "box_Gate_v3_182.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IsValueNil_v3_105_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_50();
    l0 = self.box_PlayerSpeedModifier_v3_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|887175186", "887175186", "UNI04_020_DEBRIEF", "box_IsValueNil_v3_105.No", "box_PlayerSpeedModifier_v3_50.ApplySpeedFactor", clone:GetLuaBox(), l0:GetLuaBox());
    -- ApplySpeedFactor
    l0:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_72_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_63();
    l0 = self.box_MultipleAND_v2_72;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|745471731", "745471731", "UNI04_020_DEBRIEF", "box_MultipleAND_v2_72.Out", "box_Simple_Node_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_96_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_219();
    l0 = self.box_BaseMissionBlock_v2_219;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1420522028", "1420522028", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_96.Out", "box_BaseMissionBlock_v2_219.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_96_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_235();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1385067363", "1385067363", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_96.Out", "box_OutputOrder_v2_235.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_11();
    l0 = self.box_BaseMissionBlock_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|562462295", "562462295", "UNI04_020_DEBRIEF", "box_SetContextualStrategy_14.Out", "box_BaseMissionBlock_v2_11.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_NarrativeSceneCleanUp_223_Out()
    local l0, l1;
    l0 = self.box_NarrativeSceneCleanUp_223;
    l1 = self.box_MultipleOR_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|870298508", "870298508", "UNI04_020_DEBRIEF", "box_NarrativeSceneCleanUp_223.Out", "box_MultipleOR_213.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_66_AllNear()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_83();
    l0 = self.box_ProximityRadiusListener_v3_66;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1674402913", "1674402913", "UNI04_020_DEBRIEF", "box_ProximityRadiusListener_v3_66.AllNear", "box_SetBoolean_v2_83.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_66_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_90();
    l0 = self.box_ProximityRadiusListener_v3_66;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1208231190", "1208231190", "UNI04_020_DEBRIEF", "box_ProximityRadiusListener_v3_66.Enabled", "box_AddActivityObjective_v2_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_139_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_187();
    l0 = self.box_PostFx_v3_139;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1043898385", "1043898385", "UNI04_020_DEBRIEF", "box_PostFx_v3_139.Disabled", "box_Simple_Node_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_137_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_103();
    l0 = self.box_Delay_v5_137;
    l1 = self.box_PostFx_v3_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1933694587", "1933694587", "UNI04_020_DEBRIEF", "box_Delay_v5_137.TimeElapsed", "box_PostFx_v3_103.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_227_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_109();
    l0 = self.box_TeleportPawns_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|115032056", "115032056", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_227.Out", "box_TeleportPawns_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_227_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_232();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1710492946", "1710492946", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_227.Out", "box_Simple_Node_232.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_133_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_132();
    l0 = self.box_PostFx_v3_133;
    l1 = self.box_Delay_v5_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1006443150", "1006443150", "UNI04_020_DEBRIEF", "box_PostFx_v3_133.Disabled", "box_Delay_v5_132.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_92_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|483641558", "483641558", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_92.Out", "box_Simple_Node_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_92_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_66();
    l0 = self.box_ProximityRadiusListener_v3_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|533683027", "533683027", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_92.Out", "box_ProximityRadiusListener_v3_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_CreateVector3_143_Out()
    local params, l0;
    self:OnExit_box_CreateVector3_143_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_144();
    l0 = self.box_PositionModifier_v2_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1881349527", "1881349527", "UNI04_020_DEBRIEF", "box_CreateVector3_143.Out", "box_PositionModifier_v2_144.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_HealthModifier_v2_201_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_126();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1225137649", "1225137649", "UNI04_020_DEBRIEF", "box_HealthModifier_v2_201.Damaged", "box_ActivityRetry_126.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TriggerState_v2_40_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_5();
    l0 = self.box_BaseMissionBlock_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|308907343", "308907343", "UNI04_020_DEBRIEF", "box_TriggerState_v2_40.Disabled", "box_BaseMissionBlock_v2_5.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
end;

function export:f_box_PlayerSpeedModifier_v3_146_ApplySpeedFactorOut()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_121();
    l0 = self.box_PlayerSpeedModifier_v3_146;
    l1 = self.box_NoWeaponMode_v3_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1775854584", "1775854584", "UNI04_020_DEBRIEF", "box_PlayerSpeedModifier_v3_146.ApplySpeedFactorOut", "box_NoWeaponMode_v3_121.On", l0:GetLuaBox(), l1:GetLuaBox());
    -- On
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_164_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_146();
    l0 = self.box_PlayerSpeedModifier_v3_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|748222509", "748222509", "UNI04_020_DEBRIEF", "box_MissionBlockLayer_164.Activated", "box_PlayerSpeedModifier_v3_146.ApplySpeedFactor", clone:GetLuaBox(), l0:GetLuaBox());
    -- ApplySpeedFactor
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_159_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_154();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|805303073", "805303073", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_159.Out", "box_OutputOrder_v2_154.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_159_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_115();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1831223127", "1831223127", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_159.Out", "box_OutputOrder_v2_115.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_181_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_163();
    l0 = self.box_RemoveEntity_v2_181;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|813116231", "813116231", "UNI04_020_DEBRIEF", "box_RemoveEntity_v2_181.Out", "box_GroupAddToGroup_v2_163.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ExtinguishAllFires_147_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_185();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1093764144", "1093764144", "UNI04_020_DEBRIEF", "box_ExtinguishAllFires_147.Out", "box_OutputOrder_v2_185.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_104_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_14();
    l0 = self.box_OnceOnly_v3_104;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1233346591", "1233346591", "UNI04_020_DEBRIEF", "box_OnceOnly_v3_104.Out", "box_SetContextualStrategy_14.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_75_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_75_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|368163073", "368163073", "UNI04_020_DEBRIEF", "box_SetBoolean_v2_75.Out", "box_Simple_Node_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_192_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_119();
    l0 = self.box_PostFx_v3_192;
    l1 = self.box_PostFx_v3_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|623359685", "623359685", "UNI04_020_DEBRIEF", "box_PostFx_v3_192.Disabled", "box_PostFx_v3_119.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_148_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_150();
    l0 = self.box_EntityStatusListener_148;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1809189910", "1809189910", "UNI04_020_DEBRIEF", "box_EntityStatusListener_148.Loaded", "box_OutputOrder_v2_150.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_148_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_149();
    l0 = self.box_EntityStatusListener_148;
    l1 = self.box_Delay_v5_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|125748301", "125748301", "UNI04_020_DEBRIEF", "box_EntityStatusListener_148.Unloaded", "box_Delay_v5_149.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_150_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_136();
    l0 = self.box_EntityStatusListener_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|523201117", "523201117", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_150.Out", "box_EntityStatusListener_136.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_150_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_151();
    l0 = self.box_Gate_v3_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1375422840", "1375422840", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_150.Out", "box_Gate_v3_151.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|794512975", "794512975", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_4.Out", "box_Print_v2_2.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|846902326", "846902326", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_4.Out", "box_ActivityAcknowledgeGate_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_159();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|584271368", "584271368", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_4.Out", "box_OutputOrder_v2_159.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_191_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_133();
    l0 = self.box_PostFx_v3_191;
    l1 = self.box_PostFx_v3_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1368166201", "1368166201", "UNI04_020_DEBRIEF", "box_PostFx_v3_191.Enabled", "box_PostFx_v3_133.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_182_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_187();
    l0 = self.box_Gate_v3_182;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1615841224", "1615841224", "UNI04_020_DEBRIEF", "box_Gate_v3_182.Out", "box_Simple_Node_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_228_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_174();
    l0 = self.box_TeleportPawns_174;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1752360003", "1752360003", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_228.Out", "box_TeleportPawns_174.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_228_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|185258386", "185258386", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_228.Out", "box_Simple_Node_230.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NoWeaponMode_v3_121_OnEnter()
    local l0, l1;
    l0 = self.box_NoWeaponMode_v3_121;
    l1 = self.box_UIMode_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2032080742", "2032080742", "UNI04_020_DEBRIEF", "box_NoWeaponMode_v3_121.OnEnter", "box_UIMode_101.CinematicMode", l0:GetLuaBox(), l1:GetLuaBox());
    -- CinematicMode
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1039658456", "1039658456", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_16.Out", "box_Delay_v5_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|253847632", "253847632", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_16.Out", "box_Delay_v5_13.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_16_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_6();
    l0 = self.box_SoundModifier_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1248590548", "1248590548", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_16.Out", "box_SoundModifier_v2_6.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_74_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_75();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|492002231", "492002231", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_74.Out", "box_SetBoolean_v2_75.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_74_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Revive_Target_v2_19();
    l0 = self.box_Brick_Revive_Target_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|661976791", "661976791", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_74.Out", "box_Brick_Revive_Target_v2_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_25();
    l0 = self.box_Delay_v5_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1150483937", "1150483937", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_36.Out", "box_Delay_v5_25.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_NarrativeSceneSetup_222_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_20();
    l0 = self.box_NarrativeSceneSetup_222;
    l1 = self.box_PostFx_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1966499928", "1966499928", "UNI04_020_DEBRIEF", "box_NarrativeSceneSetup_222.Holstered", "box_PostFx_v3_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_155_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_45();
    l0 = self.box_UniversalInteractionModifier_v2_155;
    l1 = self.box_MetaBreakableModifier_v2_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2046416105", "2046416105", "UNI04_020_DEBRIEF", "box_UniversalInteractionModifier_v2_155.Enabled", "box_MetaBreakableModifier_v2_45.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_PostFx_v3_103_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_228();
    l0 = self.box_PostFx_v3_103;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1971833134", "1971833134", "UNI04_020_DEBRIEF", "box_PostFx_v3_103.Enabled", "box_OutputOrder_v2_228.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_22_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_22;
    l1 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|464385828", "464385828", "UNI04_020_DEBRIEF", "box_StaticBreakableListener_22.OnBreak", "box_MultipleOR_42.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_151_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_186();
    l0 = self.box_Gate_v3_151;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1510367369", "1510367369", "UNI04_020_DEBRIEF", "box_Gate_v3_151.Out", "box_Simple_Node_186.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_38_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_37();
    l0 = self.box_HealthListener_v6_38;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|704768128", "704768128", "UNI04_020_DEBRIEF", "box_HealthListener_v6_38.Downed", "box_HealthModifier_v2_37.RemoveCritical", l0:GetLuaBox(), l1:GetLuaBox());
    -- RemoveCritical
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PawnInvincibleState_v2_169_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideMenuAccessibility_203();
    l0 = self.box_OverrideMenuAccessibility_203;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1645203804", "1645203804", "UNI04_020_DEBRIEF", "box_PawnInvincibleState_v2_169.OnSet", "box_OverrideMenuAccessibility_203.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_168();
    l0 = self.box_SoundModifier_v2_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|753962749", "753962749", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_61.Out", "box_SoundModifier_v2_168.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_79();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|386173948", "386173948", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_61.Out", "box_Simple_Node_79.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_183();
    l0 = self.box_Delay_v5_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|69920496", "69920496", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_61.Out", "box_Delay_v5_183.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_61_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerExtinguishFire_v2_177();
    l0 = Boxes[GetPathID("Domino/System/Player/PlayerExtinguishFire_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|364890505", "364890505", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_61.Out", "box_PlayerExtinguishFire_v2_177.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_61_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_180();
    l0 = self.box_HealthListener_v6_180;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1128637457", "1128637457", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_61.Out", "box_HealthListener_v6_180.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_Interact_With_Object_V5_24_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_94();
    l0 = self.box_Brick_Interact_With_Object_V5_24;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|28852146", "28852146", "UNI04_020_DEBRIEF", "box_Brick_Interact_With_Object_V5_24.Disabled", "box_EndActivityObjective_v2_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V5_24_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_165();
    l0 = self.box_Brick_Interact_With_Object_V5_24;
    l1 = self.box_Bind_v4_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|564535713", "564535713", "UNI04_020_DEBRIEF", "box_Brick_Interact_With_Object_V5_24.Started", "box_Bind_v4_165.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Brick_Interact_With_Object_V5_24_Success()
    local params, l0, l1;
    params = self:OnEnter_box_PawnInvincibleState_v2_135();
    l0 = self.box_Brick_Interact_With_Object_V5_24;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2000715358", "2000715358", "UNI04_020_DEBRIEF", "box_Brick_Interact_With_Object_V5_24.Success", "box_PawnInvincibleState_v2_135.SetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetInvincible
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupAddToGroup_v2_163_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_122();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1857246484", "1857246484", "UNI04_020_DEBRIEF", "box_GroupAddToGroup_v2_163.Out", "box_UseContextualActionModifier_v3_122.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_190_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_137();
    l0 = self.box_PostFx_v3_190;
    l1 = self.box_Delay_v5_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|294030738", "294030738", "UNI04_020_DEBRIEF", "box_PostFx_v3_190.Enabled", "box_Delay_v5_137.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_170_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_131();
    l0 = self.box_Delay_v5_170;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1708888968", "1708888968", "UNI04_020_DEBRIEF", "box_Delay_v5_170.TimeElapsed", "box_Simple_Node_131.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_180_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_180;
    l1 = self.box_OnceOnly_v3_195;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|924780680", "924780680", "UNI04_020_DEBRIEF", "box_HealthListener_v6_180.Killed", "box_OnceOnly_v3_195.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_96();
    l0 = self.box_Delay_v5_34;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|222024391", "222024391", "UNI04_020_DEBRIEF", "box_Delay_v5_34.TimeElapsed", "box_OutputOrder_v2_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_154_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_152();
    l0 = self.box_EntityStatusListener_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|480478068", "480478068", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_154.Out", "box_EntityStatusListener_152.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_154_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_153();
    l0 = self.box_EntityStatusListener_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1768544955", "1768544955", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_154.Out", "box_EntityStatusListener_153.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_154_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_157();
    l0 = self.box_EntityStatusListener_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|213759787", "213759787", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_154.Out", "box_EntityStatusListener_157.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsValueNil_v3_184_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_178();
    l0 = self.box_EntityStatusListener_178;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1049515269", "1049515269", "UNI04_020_DEBRIEF", "box_IsValueNil_v3_184.No", "box_EntityStatusListener_178.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsValueNil_v3_184_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_187();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|709538115", "709538115", "UNI04_020_DEBRIEF", "box_IsValueNil_v3_184.Yes", "box_Simple_Node_187.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PawnInvincibleState_v2_124_OnUnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_201();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|57636011", "57636011", "UNI04_020_DEBRIEF", "box_PawnInvincibleState_v2_124.OnUnSet", "box_HealthModifier_v2_201.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|851923648", "851923648", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_56.Out", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_56_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_57();
    l0 = self.box_HealthListener_v6_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|695259437", "695259437", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_56.Out", "box_HealthListener_v6_57.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PostFx_v3_193_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_139();
    l0 = self.box_PostFx_v3_193;
    l1 = self.box_PostFx_v3_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|132186490", "132186490", "UNI04_020_DEBRIEF", "box_PostFx_v3_193.Disabled", "box_PostFx_v3_139.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_166_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_1();
    l0 = self.box_RemoveEntity_v2_166;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1983563125", "1983563125", "UNI04_020_DEBRIEF", "box_RemoveEntity_v2_166.Out", "box_ActivityEnd_1.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_212_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneCleanUp_223();
    l0 = self.box_NarrativeSceneCleanUp_223;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|621149618", "621149618", "UNI04_020_DEBRIEF", "box_IsValueNil_v3_212.No", "box_NarrativeSceneCleanUp_223.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_IsValueNil_v3_212_Yes()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2134019387", "2134019387", "UNI04_020_DEBRIEF", "box_IsValueNil_v3_212.Yes", "box_MultipleOR_213.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_65_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1994381298", "1994381298", "UNI04_020_DEBRIEF", "box_Compare_Boolean_65.A_is_False", "box_MultipleOR_73.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_65_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_72();
    l0 = self.box_MultipleAND_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1487843067", "1487843067", "UNI04_020_DEBRIEF", "box_Compare_Boolean_65.A_is_True", "box_MultipleAND_v2_72.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_VehicleModifier_v2_198_OnSetExplosion()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnInvincibleState_v2_124();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1448605483", "1448605483", "UNI04_020_DEBRIEF", "box_VehicleModifier_v2_198.OnSetExplosion", "box_PawnInvincibleState_v2_124.UnsetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- UnsetInvincible
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_118_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_111();
    l0 = self.box_EntityStatusListener_118;
    l1 = self.box_NavLinkModifier_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1128592651", "1128592651", "UNI04_020_DEBRIEF", "box_EntityStatusListener_118.Loaded", "box_NavLinkModifier_111.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_218_AllFar()
    self:OnExit_box_ProximityRadiusListener_v3_218_AllFar();
end;

function export:f_box_ProximityRadiusListener_v3_218_AllNear()
    self:OnExit_box_ProximityRadiusListener_v3_218_AllNear();
end;

function export:f_box_ProximityRadiusListener_v3_218_SomeoneFar()
    self:OnExit_box_ProximityRadiusListener_v3_218_SomeoneFar();
end;

function export:f_box_ProximityRadiusListener_v3_218_SomeoneNear()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_218_SomeoneNear();
    params = self:OnEnter_box_IsValueNil_v3_29();
    l0 = self.box_ProximityRadiusListener_v3_218;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|27777242", "27777242", "UNI04_020_DEBRIEF", "box_ProximityRadiusListener_v3_218.SomeoneNear", "box_IsValueNil_v3_29.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_213_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StartCelebration_107();
    l0 = self.box_MultipleOR_213;
    l1 = self.box_StartCelebration_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2018623093", "2018623093", "UNI04_020_DEBRIEF", "box_MultipleOR_213.Out", "box_StartCelebration_107.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_178_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_173();
    l0 = self.box_EntityStatusListener_178;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1534371351", "1534371351", "UNI04_020_DEBRIEF", "box_EntityStatusListener_178.Loaded", "box_OutputOrder_v2_173.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_178_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_176();
    l0 = self.box_EntityStatusListener_178;
    l1 = self.box_Delay_v5_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|169876898", "169876898", "UNI04_020_DEBRIEF", "box_EntityStatusListener_178.Unloaded", "box_Delay_v5_176.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_25_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_25;
    l1 = self.box_OnceOnly_v3_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1819484861", "1819484861", "UNI04_020_DEBRIEF", "box_Delay_v5_25.TimeElapsed", "box_OnceOnly_v3_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_114_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_112();
    l0 = self.box_EntityStatusListener_114;
    l1 = self.box_NavLinkModifier_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1437755170", "1437755170", "UNI04_020_DEBRIEF", "box_EntityStatusListener_114.Loaded", "box_NavLinkModifier_112.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_SetEntity_v2_128_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_128_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_164();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|761212390", "761212390", "UNI04_020_DEBRIEF", "box_SetEntity_v2_128.Out", "box_MissionBlockLayer_164.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_81_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_81_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_82();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2071421705", "2071421705", "UNI04_020_DEBRIEF", "box_SetBoolean_v2_81.Out", "box_Simple_Node_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_106_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_106;
    l1 = self.box_OnceOnly_v3_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1777724639", "1777724639", "UNI04_020_DEBRIEF", "box_MultipleOR_106.Out", "box_OnceOnly_v3_97.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_MultipleOR_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_226();
    l0 = self.box_MultipleOR_39;
    l1 = self.box_Switch_226;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|116903439", "116903439", "UNI04_020_DEBRIEF", "box_MultipleOR_39.Out", "box_Switch_226.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_48_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_162();
    l0 = self.box_ProximityRadiusListener_v3_48;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1915306718", "1915306718", "UNI04_020_DEBRIEF", "box_ProximityRadiusListener_v3_48.SomeoneNear", "box_UseContextualActionModifier_v3_162.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_20_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_211();
    l0 = self.box_PostFx_v3_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|135073141", "135073141", "UNI04_020_DEBRIEF", "box_PostFx_v3_20.Enabled", "box_OutputOrder_v2_211.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_129_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_217();
    l0 = self.box_PostFx_v3_129;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1514894880", "1514894880", "UNI04_020_DEBRIEF", "box_PostFx_v3_129.Enabled", "box_OutputOrder_v2_217.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_153_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_156();
    l0 = self.box_EntityStatusListener_153;
    l1 = self.box_UniversalInteractionModifier_v2_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1857195958", "1857195958", "UNI04_020_DEBRIEF", "box_EntityStatusListener_153.Loaded", "box_UniversalInteractionModifier_v2_156.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_88_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_87();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1078833504", "1078833504", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_88.Out", "box_ActivityObjectiveMarkerModifier_v3_87.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_88_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_82();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2104585445", "2104585445", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_88.Out", "box_Simple_Node_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_88_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_215();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|563697702", "563697702", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_88.Out", "box_Simple_Node_215.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_220_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_220_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_127();
    l0 = self.box_PlayerSpeedModifier_v3_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2030689612", "2030689612", "UNI04_020_DEBRIEF", "box_SetEntity_v2_220.Out", "box_PlayerSpeedModifier_v3_127.ApplySpeedFactor", clone:GetLuaBox(), l0:GetLuaBox());
    -- ApplySpeedFactor
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_42_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_42;
    l1 = self.box_OnceOnly_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2113773460", "2113773460", "UNI04_020_DEBRIEF", "box_MultipleOR_42.Out", "box_OnceOnly_v3_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_97_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_160();
    l0 = self.box_OnceOnly_v3_97;
    l1 = self.box_UniversalInteractionModifier_v2_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|742441569", "742441569", "UNI04_020_DEBRIEF", "box_OnceOnly_v3_97.Out", "box_UniversalInteractionModifier_v2_160.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_43_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetOasis_53();
    l0 = self.box_OnceOnly_v3_43;
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1914105507", "1914105507", "UNI04_020_DEBRIEF", "box_OnceOnly_v3_43.Out", "box_SetOasis_53.FromOasis", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromOasis
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_149_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_151();
    l0 = self.box_Delay_v5_149;
    l1 = self.box_Gate_v3_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1658842472", "1658842472", "UNI04_020_DEBRIEF", "box_Delay_v5_149.TimeElapsed", "box_Gate_v3_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_NarrativeQuickCinema_V4_21_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_196();
    l0 = self.box_Brick_NarrativeQuickCinema_V4_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|840798255", "840798255", "UNI04_020_DEBRIEF", "box_Brick_NarrativeQuickCinema_V4_21.Finished", "box_OutputOrder_v2_196.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PawnInvincibleState_v2_135_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExtinguishAllFires_205();
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1891073824", "1891073824", "UNI04_020_DEBRIEF", "box_PawnInvincibleState_v2_135.OnSet", "box_ExtinguishAllFires_205.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_208_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_130();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|152503663", "152503663", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_208.Out", "box_Simple_Node_130.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_208_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_52();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|859898180", "859898180", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_208.Out", "box_ActivityRetry_52.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|271819682", "271819682", "UNI04_020_DEBRIEF", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1121306319", "1121306319", "UNI04_020_DEBRIEF", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_12_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_40();
    l0 = self.box_OnceOnly_v3_12;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|726684120", "726684120", "UNI04_020_DEBRIEF", "box_OnceOnly_v3_12.Out", "box_TriggerState_v2_40.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_6_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_SoundModifier_v2_6;
    l1 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1380620996", "1380620996", "UNI04_020_DEBRIEF", "box_SoundModifier_v2_6.Started", "box_Delay_v5_17.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1199471837", "1199471837", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_62.Out", "box_MultipleOR_59.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1604782234", "1604782234", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_62.Out", "box_OutputOrder_v2_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_83_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_83_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_88();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1397270717", "1397270717", "UNI04_020_DEBRIEF", "box_SetBoolean_v2_83.Out", "box_OutputOrder_v2_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_65();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|643933689", "643933689", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_69.Out", "box_Compare_Boolean_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_69_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_71();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1220385581", "1220385581", "UNI04_020_DEBRIEF", "box_OutputOrder_v2_69.Out", "box_Compare_Boolean_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_194();
    l0 = self.box_TeleportPawns_31;
    l1 = self.box_Delay_v5_194;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1141382138", "1141382138", "UNI04_020_DEBRIEF", "box_TeleportPawns_31.Out", "box_Delay_v5_194.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityRadiusListener_v3_55_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_77();
    l0 = self.box_ProximityRadiusListener_v3_55;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1116890128", "1116890128", "UNI04_020_DEBRIEF", "box_ProximityRadiusListener_v3_55.AllFar", "box_SetBoolean_v2_77.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_10_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_30();
    l0 = self.box_Delay_v5_10;
    l1 = self.box_ProximityTrigger_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2005262986", "2005262986", "UNI04_020_DEBRIEF", "box_Delay_v5_10.TimeElapsed", "box_ProximityTrigger_v2_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StartCelebration_107_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_138();
    l0 = self.box_StartCelebration_107;
    l1 = self.box_RemoveEntity_v2_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1711754089", "1711754089", "UNI04_020_DEBRIEF", "box_StartCelebration_107.Ended", "box_RemoveEntity_v2_138.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_188_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_85();
    l0 = self.box_OnceOnly_v3_188;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1158158592", "1158158592", "UNI04_020_DEBRIEF", "box_OnceOnly_v3_188.Out", "box_OutputOrder_v2_85.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_226_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_128();
    l0 = self.box_Switch_226;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|655001483", "655001483", "UNI04_020_DEBRIEF", "box_Switch_226.Output", "box_SetEntity_v2_128.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_226_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_220();
    l0 = self.box_Switch_226;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|250040176", "250040176", "UNI04_020_DEBRIEF", "box_Switch_226.Output", "box_SetEntity_v2_220.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OverrideMenuAccessibility_216_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_105();
    l0 = self.box_OverrideMenuAccessibility_216;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|473811693", "473811693", "UNI04_020_DEBRIEF", "box_OverrideMenuAccessibility_216.Out", "box_IsValueNil_v3_105.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerExtinguishFire_v2_177_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/PlayerExtinguishFire_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|545239439", "545239439", "UNI04_020_DEBRIEF", "box_PlayerExtinguishFire_v2_177.Out", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_138_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_166();
    l0 = self.box_RemoveEntity_v2_138;
    l1 = self.box_RemoveEntity_v2_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|169509568", "169509568", "UNI04_020_DEBRIEF", "box_RemoveEntity_v2_138.Out", "box_RemoveEntity_v2_166.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_71_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1727714802", "1727714802", "UNI04_020_DEBRIEF", "box_Compare_Boolean_71.A_is_False", "box_MultipleOR_73.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Boolean_71_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_72();
    l0 = self.box_MultipleAND_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|471298088", "471298088", "UNI04_020_DEBRIEF", "box_Compare_Boolean_71.A_is_True", "box_MultipleAND_v2_72.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_ExtinguishAllFires_205_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1652266721", "1652266721", "UNI04_020_DEBRIEF", "box_ExtinguishAllFires_205.Out", "box_OutputOrder_v2_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_Delay_v5_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1173330391", "1173330391", "UNI04_020_DEBRIEF", "box_Delay_v5_28.TimeElapsed", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|@n_CleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_130_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|@n_ConditionCheck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_82_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|@n_ConditionNotMet");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_80_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|@n_Failed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_78_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|@n_Interacted");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_79_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|@n_P1_Back");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_186_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|@n_P2_Back");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|@n_ReEnable_LarryCheck");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_215_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|@n_TeleportNOW");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_131_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_236()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|@n_TeleportPlayers");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_236_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_229()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_229");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|@Start_Cave_Sound_With_Creature");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_229_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_231()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_231");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|@Start_Cave_Sound_With_Creature_CoopPlayer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_231_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_230()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_230");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|@Stop_Cave_Sound_With_Creature");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_230_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_232()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_232");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|@Stop_Cave_Sound_With_Creature_CoopPlayer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_232_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_117()
    local params;
    params = {
        -- Entity,
        [0] = "2100205894846394716",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|56195841");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_77_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_11()
    local params;
    params = {
        -- missionBlockId,
        [0] = "63189038434544055",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_157()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104577589696805926",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_26()
    local params;
    params = {
        -- Pawns,
        [0] = self.var_PlayerInTeleport_1st,
        -- PostFxName,
        [1] = "fadetowhitetoblack",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|76741321");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_29_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_29_Yes,
    });
    params = {
        -- ent,
        [4] = self.var_PlayerInTeleport_1st,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|90154224");
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
                [0] = self.f_box_OutputOrder_v2_196_Out_0,
                [1] = self.f_box_OutputOrder_v2_196_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_204()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|129258435");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TaggingModifier_v3_204_Disabled,
    });
    params = {
        -- Entity,
        [0] = self.eLarry,
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|130031073");
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

function export:OnEnter_box_Gate_v3_197()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_5()
    local params;
    params = {
        -- missionBlockId,
        [0] = "63189038434544055",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_233()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.75,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_57()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_110()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100205894846394716",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|175260889");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_30()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104370269008227195",
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|199393201");
    l0:SetConnections({
        -- Down,
        [2] = self.f_box_GetHealthState_98_Down,
    });
    params = {
        -- Pawn,
        [0] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|204651279");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_87_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2103194548176953000",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI04_020_B30_GOAL",
            id = "592519",
        },
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|208481729");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104923470956603719",
        -- Entity,
        [1] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_119()
    local params;
    params = {
        -- Pawns,
        [0] = self.var_PlayerInTeleport_1st,
        -- PostFxName,
        [1] = "fadetowhite",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_156()
    local params;
    params = {
        -- state,
        [3] = true,
        -- usableEntity,
        [4] = "2104577579391400990",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|255288120");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_15_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2097472864859988972",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_109()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2104066379293419621",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.var_PlayerInTeleport_2nd,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_GetContextualAction_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetContextualAction_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|300967687");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetContextualAction_172_Out,
    });
    params = {
        -- pawnId,
        [0] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_SetOasis_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetOasis_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|309785168");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetOasis_53_Out,
    });
    params = {
        -- Oasis,
        [0] = {
            section = "Objectives",
            item = "UNI04_020_DEBRIEF_FAIL",
            id = "777525",
        },
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|316593190");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_90_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI04_020_B30_GOAL",
            id = "592519",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_134()
    local params;
    params = {
        -- Pawns,
        [0] = self.var_PlayerInTeleport_2nd,
        -- PostFxName,
        [1] = "fadetowhite",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_46()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015184709204329",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_45()
    local params;
    params = {
        -- targets,
        [0] = "2104577585296981024",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_116()
    local params;
    params = {
        -- Entity,
        [0] = "2100206128618015679",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_179()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103985356937436557",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|401785459");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
                [2] = self.f_box_OutputOrder_v2_32_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_219()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160227984711137",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_17()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_125()
    local params;
    params = {
        -- pawns,
        [0] = self.var_PlayerInTeleport_2nd,
        -- useAnims,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|439302053");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104342382848786210",
        -- Entity,
        [1] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|460834812");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_175_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = self._sld_contextualActionId_box_GetContextualAction_172,
        -- Entity,
        [1] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_113()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100206128618015679",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_224()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2104066360481966166",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.var_PlayerInTeleport_2nd,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|496714656");
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

function export:OnEnter_box_SetOasis_210()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetOasis_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|520747228");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetOasis_210_Out,
    });
    params = {
        -- Oasis,
        [0] = {
            section = "IGE_Notifications",
            item = "NOTIF_PLAYER_DEAD",
            id = "245653",
        },
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_207()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160238320262338",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_234()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|543305176");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_94_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI04_020_DEBRIEF_OBJ2",
            id = "563890",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_18()
    local params;
    params = {
        -- Pawns,
        [0] = "2097661480819237019",
        -- SoundId,
        [1] = "2650774855",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|553586538");
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

function export:OnEnter_box_OutputOrder_v2_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|581721656");
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

function export:OnEnter_box_OutputOrder_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|589281996");
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
                [0] = self.f_box_OutputOrder_v2_64_Out_0,
                [2] = self.f_box_OutputOrder_v2_64_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_158()
    local params;
    params = {
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = "2104577589696805926",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_160()
    local params;
    params = {
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = "2104577589696805926",
    };
    return params;
end;

function export:OnEnter_box_Brick_Revive_Target_v2_19()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsCharacterPersistent,
        [1] = true,
        -- bMultipleTargets,
        [2] = false,
        -- bObjectiveProgress,
        [3] = false,
        -- e_Target,
        [4] = self.eLarry,
        -- o_TargetName,
        [5] = {
            section = "IGE_Wheel",
            item = "WHEEL_TARGET",
            id = "372756",
        },
        -- opt_Objective,
        [7] = {
            section = "Objectives",
            item = "UNI04_020_B40_OBJ_Transformers",
            id = "682767",
        },
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_165()
    local params;
    params = {
        -- EntityA,
        [1] = "2104577589696805926",
        -- EntityB,
        [2] = "2100688921800214621",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|601377114");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "UNI04_020_B30_GOAL",
            id = "592519",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_63()
    local params, l0;
    DrawTextToScreen("Comment: ALL CONDITIONS MET", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: ALL CONDITIONS MET");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|609567213");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_63_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_217()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|615699341");
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
                [0] = self.f_box_OutputOrder_v2_217_Out_0,
                [1] = self.f_box_OutputOrder_v2_217_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|641585450");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = self.eLarry,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|648873711");
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
                [0] = self.f_box_OutputOrder_v2_211_Out_0,
                [1] = self.f_box_OutputOrder_v2_211_Out_1,
                [2] = self.f_box_OutputOrder_v2_211_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_194()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|663722942");
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
                [0] = self.f_box_OutputOrder_v2_85_Out_0,
                [1] = self.f_box_OutputOrder_v2_85_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_136()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103985356937436557",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_225()
    local params;
    params = {
        -- Pawns,
        [0] = self.var_PlayerInTeleport_2nd,
        -- SoundId,
        [1] = "1894408153",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|697788993");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_161_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_206()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_145()
    local params;
    DrawTextToScreen("Comment: Once 1 player is back, we'll assume both are so the script can't get stuck here", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MultipleAND_v2')-- Comment: Once 1 player is back, we'll assume both are so the script can't get stuck here");
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|714845529");
    l0:SetConnections({
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_123_Yes,
    });
    params = {
        -- ent,
        [4] = self.var_PlayerInTeleport_2nd,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_183()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.25,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_174()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2104049477468821574",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.var_PlayerInTeleport_1st,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_127()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0.1,
        -- Players,
        [2] = self.var_PlayerInTeleport_2nd,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_132()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_142()
    local params;
    params = {
        -- Pawns,
        [0] = self.var_PlayerInTeleport_1st,
        -- SoundId,
        [1] = "1894408153",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_203()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = false,
        -- AvatarCreationMenuEnabled,
        [1] = false,
        -- AvatarCustomizationMenuEnabled,
        [2] = false,
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

function export:OnEnter_box_EntityStatusListener_152()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104577585296981024",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_202()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|834380537");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160245617464261",
        -- missionLayerId,
        [1] = "36167444872205253",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|834732163");
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
                [0] = self.f_box_OutputOrder_v2_185_Out_0,
                [1] = self.f_box_OutputOrder_v2_185_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|845025810");
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
                [0] = self.f_box_OutputOrder_v2_49_Out_0,
                [1] = self.f_box_OutputOrder_v2_49_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_35()
    local params;
    DrawTextToScreen("Comment: Teleporting instead of PosMod", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TeleportPawns')-- Comment: Teleporting instead of PosMod");
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2100113007272029132",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.eLarry,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|861119265");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_141_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_141_Yes,
    });
    params = {
        -- ent,
        [4] = self.var_PlayerInTeleport_1st,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|865707408");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_214()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_200()
    local params;
    params = {
        -- Pawns,
        [0] = self.var_PlayerInTeleport_2nd,
        -- SoundId,
        [1] = "1894408153",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|911523216");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_162_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103497458016330709",
        -- Entity,
        [1] = self.eLarry,
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
        [2] = "2104577589696805926",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|936979766");
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
                [0] = self.f_box_OutputOrder_v2_173_Out_0,
                [1] = self.f_box_OutputOrder_v2_173_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_176()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|946139954");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|955708491");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_105_No,
    });
    params = {
        -- ent,
        [4] = self.var_PlayerInTeleport_1st,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_72()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|966506226");
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
                [0] = self.f_box_OutputOrder_v2_96_Out_0,
                [1] = self.f_box_OutputOrder_v2_96_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1001645377");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_14_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105791760388097201",
        -- Group,
        [1] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_223()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGodMode,
        [1] = false,
        -- KeepHUDMode,
        [2] = false,
        -- KeepWeaponHolstered,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_66()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.eLarry,
        -- id2,
        [3] = "2104355703329136019",
        -- nearZone,
        [4] = 3.5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_139()
    local params;
    params = {
        -- Pawns,
        [0] = self.var_PlayerInTeleport_2nd,
        -- PostFxName,
        [1] = "fadetowhite",
    };
    return params;
end;

function export:OnEnter_box_PlaySimpleAnimation_v2_189()
    local params;
    params = {
        -- animation,
        [0] = [[animations\animals\dlc_mars_arachnid_worker\dlc_mars_arachnid_worker_fulb_combat_idle_intimidatebark.mab]],
        -- animPlayMode,
        [1] = 0,
        -- blendDuration,
        [2] = 0,
        -- loopAnim,
        [3] = true,
        -- speedScale,
        [4] = 1,
        -- target,
        [5] = "2103985356937436557",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_137()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_227");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1072831738");
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
                [0] = self.f_box_OutputOrder_v2_227_Out_0,
                [1] = self.f_box_OutputOrder_v2_227_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_133()
    local params;
    params = {
        -- Pawns,
        [0] = self.var_PlayerInTeleport_2nd,
        -- PostFxName,
        [1] = "fadetowhitetoblack",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1090069349");
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
                [0] = self.f_box_OutputOrder_v2_92_Out_0,
                [1] = self.f_box_OutputOrder_v2_92_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CreateVector3_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateVector3_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1104785749");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateVector3_143_Out,
    });
    params = {
        -- x,
        [0] = 0,
        -- y,
        [1] = 0,
        -- z,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1124312794");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_201_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = self.eLarry,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1157114527");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_40_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2101563012040101905",
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_146()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0.1,
        -- Players,
        [2] = self.var_PlayerInTeleport_1st,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1245950586");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_164_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160245617464261",
        -- missionLayerId,
        [1] = "36167444872205253",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1257006279");
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

function export:OnEnter_box_RemoveEntity_v2_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_ExtinguishAllFires_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1266567381");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ExtinguishAllFires_147_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1294454451");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_75_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_192()
    local params;
    params = {
        -- Pawns,
        [0] = self.var_PlayerInTeleport_2nd,
        -- PostFxName,
        [1] = "alteredvision",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_148()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103985318674898285",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1304444547");
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
                [0] = self.f_box_OutputOrder_v2_150_Out_0,
                [1] = self.f_box_OutputOrder_v2_150_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1308067088");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
                [2] = self.f_box_OutputOrder_v2_4_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_108()
    local params;
    params = {
        -- targets,
        [0] = "2104577589696805926",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_191()
    local params;
    params = {
        -- Pawns,
        [0] = self.var_PlayerInTeleport_2nd,
        -- PostFxName,
        [1] = "alteredvision",
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

function export:OnEnter_box_OutputOrder_v2_228()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_228");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1333203966");
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
                [0] = self.f_box_OutputOrder_v2_228_Out_0,
                [1] = self.f_box_OutputOrder_v2_228_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_121()
    local params;
    params = {
        -- pawns,
        [0] = self.var_PlayerInTeleport_1st,
        -- useAnims,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1349664772");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
                [2] = self.f_box_OutputOrder_v2_16_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_171()
    local params;
    params = {
        -- Pawns,
        [0] = self.var_PlayerInTeleport_1st,
        -- SoundId,
        [1] = "1894408153",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1388901811");
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
                [0] = self.f_box_OutputOrder_v2_74_Out_0,
                [1] = self.f_box_OutputOrder_v2_74_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1402632341");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_222()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_155()
    local params;
    params = {
        -- state,
        [3] = true,
        -- usableEntity,
        [4] = "2104577585296981024",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_103()
    local params;
    params = {
        -- Pawns,
        [0] = self.var_PlayerInTeleport_1st,
        -- PostFxName,
        [1] = "fadetowhite",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_22()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2104577589696805926",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_151()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_47()
    local params;
    params = {
        -- targets,
        [0] = "2104577579391400990",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_38()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1525653769");
    l0:SetConnections({
        -- OnSet,
        [0] = self.f_box_PawnInvincibleState_v2_169_OnSet,
    });
    params = {
        -- Pawn,
        [0] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1543068564");
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
                [0] = self.f_box_OutputOrder_v2_61_Out_0,
                [1] = self.f_box_OutputOrder_v2_61_Out_1,
                [2] = self.f_box_OutputOrder_v2_61_Out_2,
                [3] = self.f_box_OutputOrder_v2_61_Out_3,
                [4] = self.f_box_OutputOrder_v2_61_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V5_24()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = true,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- b_SkipObjectiveFlow,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2104577589696805926",
        -- e_ObjectiveMarker,
        [4] = "2100688921800214621",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objectives",
            item = "UNI04_020_DEBRIEF_OBJ2",
            id = "563890",
        },
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1554097257");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_163_Out,
    });
    params = {
        -- FromGroup,
        [0] = self.eLarry,
        -- ToGroup,
        [1] = "#E9F1BD0C",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_190()
    local params;
    DrawTextToScreen("Comment: alteredvision FX", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PostFx_v3')-- Comment: alteredvision FX");
    params = {
        -- Pawns,
        [0] = self.var_PlayerInTeleport_1st,
        -- PostFxName,
        [1] = "alteredvision",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_170()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_180()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 7,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1613652257");
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
                [0] = self.f_box_OutputOrder_v2_154_Out_0,
                [1] = self.f_box_OutputOrder_v2_154_Out_1,
                [2] = self.f_box_OutputOrder_v2_154_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_50()
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

function export:OnEnter_box_IsValueNil_v3_184()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1619106634");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_184_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_184_Yes,
    });
    params = {
        -- ent,
        [4] = self.var_PlayerInTeleport_2nd,
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1622379187");
    l0:SetConnections({
        -- OnUnSet,
        [1] = self.f_box_PawnInvincibleState_v2_124_OnUnSet,
    });
    params = {
        -- Pawn,
        [0] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1636321955");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [2] = self.f_box_OutputOrder_v2_56_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_193()
    local params;
    params = {
        -- Pawns,
        [0] = self.var_PlayerInTeleport_1st,
        -- PostFxName,
        [1] = "alteredvision",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_166()
    local params;
    params = {
        -- Group,
        [0] = "2100885512303685572",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1681861149");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_212_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_212_Yes,
    });
    params = {
        -- ent,
        [4] = self.var_PlayerInTeleport_1st,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1686024988");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_65_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_65_A_is_True,
    });
    params = {
        -- A,
        [0] = self.var_LarryInCage,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1696167722");
    l0:SetConnections({
        -- OnSetExplosion,
        [17] = self.f_box_VehicleModifier_v2_198_OnSetExplosion,
    });
    l0 = self.box_ProximityTrigger_v2_30;
    params = {
        -- targets,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_118()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100205888850637144",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_218()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayerGroup,
        -- id2,
        [3] = "2104355703329136019",
        -- nearZone,
        [4] = 3.5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_178()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103985318674898285",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_25()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_114()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100206128620112835",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_128()
    local params, l0;
    DrawTextToScreen("Comment: 1st palyer in teleport", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetEntity_v2')-- Comment: 1st palyer in teleport");
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1762032602");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_128_Out,
    });
    params = {
        -- Entity,
        [0] = self.var_CurrentEntity,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1768288309");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_81_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_48()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayerGroup,
        -- id2,
        [3] = self.eLarry,
        -- nearZone,
        [4] = 6,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_20()
    local params;
    params = {
        -- Pawns,
        [0] = self.var_PlayerInTeleport_1st,
        -- PostFxName,
        [1] = "fadetowhitetoblack",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_129()
    local params;
    params = {
        -- Pawns,
        [0] = self.var_PlayerInTeleport_2nd,
        -- PostFxName,
        [1] = "fadetowhitetoblack",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_153()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104577579391400990",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1831479372");
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

function export:OnEnter_box_SetEntity_v2_220()
    local params, l0;
    DrawTextToScreen("Comment: 2nd player in teleport", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetEntity_v2')-- Comment: 2nd player in teleport");
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1833195265");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_220_Out,
    });
    params = {
        -- Entity,
        [0] = self.var_CurrentEntity,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_149()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V4_21()
    local params;
    params = {
        -- eNPC,
        [0] = self.eLarry,
        -- Interrupt STP on Talk,
        [1] = true,
        -- oObjective,
        [2] = {
            section = "Objectives",
            item = "UNI04_020_DEBRIEF_OBJ_TalkLarry",
            id = "405437",
        },
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1880822372");
    l0:SetConnections({
        -- OnSet,
        [0] = self.f_box_PawnInvincibleState_v2_135_OnSet,
    });
    params = {
        -- Pawn,
        [0] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1880831273");
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

function export:OnEnter_box_ActivityRetry_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1882765316");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = self.var_FailReason,
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_168()
    local params;
    params = {
        -- Pawns,
        [0] = "2105257546177610360",
        -- SoundId,
        [1] = "2762287898",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    params = {
        -- blendTime,
        [1] = 0,
        -- endPos,
        [2] = l0:GetDataOutValue(0),
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100688921800214621",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_6()
    local params;
    params = {
        -- Pawns,
        [0] = "2097661480819237019",
        -- SoundId,
        [1] = "3044447121",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1977147882");
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

function export:OnEnter_box_SetBoolean_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|1981519019");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_83_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_111()
    local params;
    params = {
        -- Entity,
        [0] = "2100205888850637144",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2020889408");
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
                [0] = self.f_box_OutputOrder_v2_69_Out_0,
                [2] = self.f_box_OutputOrder_v2_69_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_31()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2104049485536565322",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.var_PlayerInTeleport_1st,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_55()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.eLarry,
        -- id2,
        [3] = "2104355703329136019",
        -- nearZone,
        [4] = 3.5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2045684920");
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
        [8] = "--- UNI04_020_DEBRIEF - SCRIPT IS RUNNING ---",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_10()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_107()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_Switch_226()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_216()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = true,
        -- AvatarCustomizationMenuEnabled,
        [2] = true,
        -- ChallengeMenuEnabled,
        [3] = true,
        -- LootMenuEnabled,
        [4] = true,
        -- OnlineMenuEnabled,
        [5] = true,
        -- PerksMenuEnabled,
        [6] = true,
        -- ResistanceMenuEnabled,
        [7] = true,
        -- SquadMenuEnabled,
        [8] = true,
        -- WorldmapMenuEnabled,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayerExtinguishFire_v2_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/PlayerExtinguishFire_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerExtinguishFire_v2_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2097737778");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_PlayerExtinguishFire_v2_177_Out,
    });
    params = {
        -- pawns,
        [0] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_138()
    local params;
    params = {
        -- Group,
        [0] = "2103304824127771505",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_112()
    local params;
    params = {
        -- Entity,
        [0] = "2100206128620112835",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2118973947");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_71_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_71_A_is_True,
    });
    params = {
        -- A,
        [0] = self.var_LarryHealthy,
    };
    return params;
end;

function export:OnEnter_box_ExtinguishAllFires_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2124451736");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ExtinguishAllFires_205_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_DEBRIEF.domino|@UNI04_020_DEBRIEF|2132097976");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI04_INTRO_FAIL_LarryExit",
            id = "825407",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_28()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_77_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.var_LarryInCage = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetContextualAction_172_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    self._sld_contextualActionId_box_GetContextualAction_172 = l0:GetDataOutValue(0);
    l1 = self.box_RemoveEntity_v2_181;
    l1:GetLuaBox().Group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetOasis_53_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.var_FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_46_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_46;
    self.eLarry = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetOasis_210_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.var_FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CreateVector3_143_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/CreateVector3.lua")];
    l1 = self.box_PositionModifier_v2_144;
    l1:GetLuaBox().endPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_75_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.var_LarryHealthy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_218_AllFar()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_218;
    self.var_CurrentEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_218_AllNear()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_218;
    self.var_CurrentEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_218_SomeoneFar()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_218;
    self.var_CurrentEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_218_SomeoneNear()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_218;
    self.var_CurrentEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_128_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.var_PlayerInTeleport_1st = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_81_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.var_LarryHealthy = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_220_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.var_PlayerInTeleport_2nd = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_83_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.var_LarryInCage = l0:GetDataOutValue(0);
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
