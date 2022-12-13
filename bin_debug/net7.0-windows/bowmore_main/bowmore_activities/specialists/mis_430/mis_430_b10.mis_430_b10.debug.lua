LUAC!z -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_430/mis_430_b10.domino
-- User graph: MIS_430_B10
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup_Outpost.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V7.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundPointModifier.lua");
        cboxRes:RegisterBox("Domino/System/SoundShapeModifier.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.globals.lua");
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_BRIEF.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[4237224638.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2822432204.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3545581574.bnk]], "CSoundResource");
        cboxRes:LoadResource([[715981971.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1997813975.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3000558061.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3923390781.bnk]], "CSoundResource");
        cboxRes:LoadResource([[586203534.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3911445983.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2516831206.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_430_B10 = nil;
    Globals.MIS_430_B10 = {
        b_TurbineA_Destroyed = false,
        b_TurbineB_Destroyed = false,
        b_TurbineC_Destroyed = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup_Outpost.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V7.debug.lua")] = {
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
                name = "LineStarted",
                delayed = true,
            },
            [4] = {
                name = "OasisLineStarted",
                delayed = true,
            },
            [5] = {
                name = "Paused",
                delayed = true,
            },
            [6] = {
                name = "Resumed",
                delayed = true,
            },
            [7] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "b_IsNPCPersistentCharacter",
                type = "bool",
            },
            [1] = {
                name = "b_WaitForConvoEndOnSkip",
                type = "bool",
            },
            [2] = {
                name = "CheckedOasisID",
                type = "int",
            },
            [3] = {
                name = "e_MobileObjectiveMarker",
                type = "entity",
            },
            [4] = {
                name = "eNPC",
                type = "entity",
            },
            [5] = {
                name = "Interrupt_STP_on_Talk",
                type = "bool",
            },
            [6] = {
                name = "oObjective",
                type = "oasis",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "TriggeredLineId",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")] = {
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
                name = "MarkerTypeId",
                type = "database",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "ProgressDisplayType",
                type = "int",
            },
            [3] = {
                name = "TotalProgress",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")] = {
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
                name = "Progress",
                type = "int",
            },
            [2] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/IntegerArithmetics_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Abs",
            },
            [1] = {
                name = "Add",
            },
            [2] = {
                name = "Div",
            },
            [3] = {
                name = "Exp",
            },
            [4] = {
                name = "Max",
            },
            [5] = {
                name = "Min",
            },
            [6] = {
                name = "Mod",
            },
            [7] = {
                name = "Mul",
            },
            [8] = {
                name = "Sub",
            },
        },
        controlInCount = 9,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
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
            [0] = {
                name = "Result",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Random.lua")] = {
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
            [1] = {
                name = "Probability",
                type = "float",
                dynamicType = 1,
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/ShimmerModifier_v2.lua")] = {
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "B",
                type = "float",
            },
            [1] = {
                name = "G",
                type = "float",
            },
            [2] = {
                name = "R",
                type = "float",
            },
            [3] = {
                name = "Speed",
                type = "float",
            },
            [4] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/SoundPointModifier.lua")] = {
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
                name = "soundPoint",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua")] = {
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
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Active",
                delayed = false,
            },
            [2] = {
                name = "Inactive",
                delayed = false,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "e_Stim",
                type = "entity",
            },
            [1] = {
                name = "e_TrapActivator",
                type = "entity",
            },
            [2] = {
                name = "e_Trigger",
                type = "entity",
            },
            [3] = {
                name = "e_VFX",
                type = "entity",
            },
            [4] = {
                name = "e_VFX_ActiveTrap",
                type = "entity",
            },
        },
        dataInCount = 5,
        dataOut = {
            [0] = {
                name = "e_WhoWalkedonTrap",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_430_B10";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10";
    self.gPlayers = nil;
    self.l_angle = {
    };
    self.player1 = nil;
    self.impulse = {
    };
    self.i_attackersLeft = 0;
    self.iProgressID = 0;
    self.i_TotalTrapsInstalled = 0;
    self.f_intoxAmount = 100;
    self.e_Sharky = nil;
    self.e_TrapUser = nil;
    self.retry = 0;
    self.box_Delay_v5_60 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|12109737");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_60_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_60_TimeElapsed,
    });
    self.box_SoundModifier_v2_148 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|14655724");
    l0:SetConnections({
    });
    self.box_MultipleOR_234 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_234;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_234");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|17283423");
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
        [0] = self.f_box_MultipleOR_234_Out,
    });
    self.box_UniversalInteractionModifier_v2_89 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_89");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|21499048");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_89_Enabled,
    });
    self.box_UniversalInteractionModifier_v2_216 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_216;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_216");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|47836531");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_216_Enabled,
    });
    self.box_MultipleAND_v2_10 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|64887138");
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
        [0] = self.f_box_MultipleAND_v2_10_Out,
    });
    self.box_Delay_v5_140 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|83699247");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_140_TimeElapsed,
    });
    self.box_PlayDialog_v6_8 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|97443922");
    l0:SetConnections({
    });
    self.box_MultipleOR_201 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_201");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|153391876");
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
        [0] = self.f_box_MultipleOR_201_Out,
    });
    self.box_MIS_430_SteamTrap_169 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_169");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|176942838");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_169_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_169_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_169_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_169_Out,
    });
    self.box_Delay_v5_92 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_92");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|182895921");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_92_TimeElapsed,
    });
    self.box_UniversalInteractionListener_45 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|197114647");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_45_Interacted,
    });
    self.box_MultipleOR_232 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_232;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_232");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|201009836");
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
    self.box_Delay_v5_119 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|290101906");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_119_TimeElapsed,
    });
    self.box_MultipleOR_242 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_242;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_242");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|314502317");
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
        [0] = self.f_box_MultipleOR_242_Out,
    });
    self.box_Brick_Interact_With_Object_V6_138 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V6_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V6_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|334583694");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V6_138_Success,
    });
    self.box_MultipleOR_177 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_177;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_177");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|354513567");
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
        [0] = self.f_box_MultipleOR_177_Out,
    });
    self.box_MIS_430_SteamTrap_172 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_172");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|376306371");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_172_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_172_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_172_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_172_Out,
    });
    self.box_SoundModifier_v2_113 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_113");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|428058038");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_11 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|510913599");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_79 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|526943193");
    l0:SetConnections({
    });
    self.box_MIS_430_SteamTrap_170 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_170");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|538070475");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_170_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_170_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_170_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_170_Out,
    });
    self.box_Delay_v5_229 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_229;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_229");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|566772692");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_229_TimeElapsed,
    });
    self.box_UniversalInteractionListener_48 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|568447062");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_48_Interacted,
    });
    self.box_UniversalInteractionListener_17 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|587222157");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_17_Interacted,
    });
    self.box_PlaySequence_v8_235 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_235;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_235");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|629275149");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_235_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_235_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_235_SPOut__FadeIn_,
                },
                [1] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_235_SPOut__FadeOut_,
                },
            },
            count = 2,
        },
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|655252130");
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_Delay_v5_236 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_236");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|714228419");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_236_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_236_TimeElapsed,
    });
    self.box_PlayDialog_v6_211 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_211");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|749756678");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_211_Finished,
    });
    self.box_UniversalInteractionModifier_v2_13 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|758604173");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_13_Enabled,
    });
    self.box_Gate_v3_93 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_93");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|763159531");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_93_Out,
    });
    self.box_MIS_430_SteamTrap_173 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_173");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|801908993");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_173_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_173_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_173_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_173_Out,
    });
    self.box_Gate_v3_167 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_167");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|802149210");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_167_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_167_Out,
    });
    self.box_Delay_v5_58 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|808122330");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_58_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_58_TimeElapsed,
    });
    self.box_CharacterLoadedIdListener_v2_91 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|901439679");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_91_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_91_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_91_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_91_LoadedIdReceived,
    });
    self.box_PlayDialog_v6_202 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_202");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|941359283");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_217 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_217");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|996248678");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_217_Enabled,
    });
    self.box_ActivityAcknowledgeGate_1 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1012528901");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_1_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_1_Reloaded,
    });
    self.box_MultipleOR_187 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_187");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1014699451");
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
        [0] = self.f_box_MultipleOR_187_Out,
    });
    self.box_StaticBreakableListener_142 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1061516940");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_142_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_142_OnBreak,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_142_OnDamage,
    });
    self.box_Delay_v5_57 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1074952727");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_57_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_57_TimeElapsed,
    });
    self.box_SoundModifier_v2_127 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_127");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1081194208");
    l0:SetConnections({
    });
    self.box_Gate_v3_115 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_115");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1085439505");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_115_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_115_Out,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1166216201");
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
        [0] = self.f_box_MultipleOR_6_Out,
    });
    self.box_Brick_NarrativeQuickCinema_V7_104 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V7.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V7_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V7_104");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1179848337");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V7_104_Finished,
    });
    self.box_Delay_v5_239 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_239;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_239");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1190465324");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_239_TimeElapsed,
    });
    self.box_PlayDialog_v6_248 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_248;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_248");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1201404517");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_215 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_215");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1208067140");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_215_Enabled,
    });
    self.box_PlayDialog_v6_209 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_209;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_209");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1209203941");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_209_Finished,
    });
    self.box_Delay_v5_233 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_233;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_233");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1253038334");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_233_TimeElapsed,
    });
    self.box_DisplayCustomUIMsg_v5_143 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1347020881");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayCustomUIMsg_v5_143_OnDisplay,
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v5_143_OnHide,
    });
    self.box_MultipleOR_184 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_184");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1348369902");
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
        [0] = self.f_box_MultipleOR_184_Out,
    });
    self.box_Delay_v5_59 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1352780328");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_59_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_59_TimeElapsed,
    });
    self.box_Delay_v5_204 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_204");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1387502103");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_204_TimeElapsed,
    });
    self.box_Delay_v5_132 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1402925748");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_132_TimeElapsed,
    });
    self.box_SoundModifier_v2_116 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1409338582");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_118 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1455281546");
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
                [0] = self.f_box_OnceOnly_v3_118_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_61 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1460131351");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_61_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_61_TimeElapsed,
    });
    self.box_NarrativeFade_237 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_237;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_237");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1468122659");
    l0:SetConnections({
    });
    self.box_Random_206 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_206");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1515465634");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_206_Output_0,
                [1] = self.f_box_Random_206_Output_1,
                [2] = self.f_box_Random_206_Output_2,
            },
            count = 3,
        },
    });
    self.box_MIS_430_SteamTrap_107 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_430/MIS_430_B10.MIS_430_SteamTrap.debug.lua");
    l0 = self.box_MIS_430_SteamTrap_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_430_SteamTrap_107");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1553658368");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MIS_430_SteamTrap_107_Activated,
        -- Active,
        [1] = self.f_box_MIS_430_SteamTrap_107_Active,
        -- Inactive,
        [2] = self.f_box_MIS_430_SteamTrap_107_Inactive,
        -- Out,
        [3] = self.f_box_MIS_430_SteamTrap_107_Out,
    });
    self.box_StaticBreakableListener_120 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1570254002");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_120_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_120_OnBreak,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_120_OnDamage,
    });
    self.box_UniversalInteractionListener_35 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1582167204");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_35_Interacted,
    });
    self.box_Delay_v5_86 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_86");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1591849417");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_86_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_90 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_90");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1631288076");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_90_Enabled,
    });
    self.box_MultipleOR_198 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_198");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1688801776");
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
    self.box_ActivityInitialized_7 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1796497413");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_7_Out,
    });
    self.box_SoundModifier_v2_80 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1801183308");
    l0:SetConnections({
    });
    self.box_NarrativeFade_244 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_244;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_244");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1804946598");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_244_FadedOut,
    });
    self.box_SoundModifier_v2_134 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_134");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1849623301");
    l0:SetConnections({
    });
    self.box_MultipleOR_200 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_200");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1858683381");
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
        [0] = self.f_box_MultipleOR_200_Out,
    });
    self.box_UniversalInteractionListener_41 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1862000730");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_41_Interacted,
    });
    self.box_NarrativeSceneSetup_Outpost_96 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup_Outpost.debug.lua");
    l0 = self.box_NarrativeSceneSetup_Outpost_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_Outpost_96");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1937287085");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_Outpost_96_Out,
    });
    self.box_PlayDialog_v6_210 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_210");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2004235672");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_210_Finished,
    });
    self.box_MultipleOR_199 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_199");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2011107296");
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
    self.box_ShimmerModifier_v2_95 = cbox:CreateBox("Domino/System/ShimmerModifier_v2.lua");
    l0 = self.box_ShimmerModifier_v2_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_95");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2048566902");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_95_Disabled,
    });
    self.box_Brick_Interact_With_Object_V6_50 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V6.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V6_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V6_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2049083961");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V6_50_Success,
    });
    self.box_PlayDialog_v6_20 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2105897823");
    l0:SetConnections({
    });
    self.box_Delay_v5_49 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2123316506");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_49_TimeElapsed,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|800233245", "800233245", "MIS_430_B10", "In", "box_ActivityAcknowledgeGate_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_19();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1161482088", "1161482088", "MIS_430_B10", "OnLeaveZone", "box_ActivityRetry_v2_19.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_166_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_115();
    l0 = self.box_Gate_v3_115;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1601366046", "1601366046", "MIS_430_B10", "box_Simple_Node_166.Out", "box_Gate_v3_115.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_167();
    l0 = self.box_Gate_v3_167;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|464088182", "464088182", "MIS_430_B10", "box_Simple_Node_166.Out", "box_Gate_v3_167.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_192_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_199;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|622540981", "622540981", "MIS_430_B10", "box_Simple_Node_192.Out", "box_MultipleOR_199.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_MIS_430_SteamTrap_172();
    l0 = self.box_MIS_430_SteamTrap_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|620804774", "620804774", "MIS_430_B10", "box_Simple_Node_192.Out", "box_MIS_430_SteamTrap_172.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|225815146", "225815146", "MIS_430_B10", "box_Simple_Node_192.Out", "box_MultipleOR_198.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_200;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1248450310", "1248450310", "MIS_430_B10", "box_Simple_Node_192.Out", "box_MultipleOR_200.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_MIS_430_SteamTrap_170();
    l0 = self.box_MIS_430_SteamTrap_170;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1943326424", "1943326424", "MIS_430_B10", "box_Simple_Node_192.Out", "box_MIS_430_SteamTrap_170.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_107();
    l0 = self.box_MIS_430_SteamTrap_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|938833027", "938833027", "MIS_430_B10", "box_Simple_Node_192.Out", "box_MIS_430_SteamTrap_107.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_180_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|63286008", "63286008", "MIS_430_B10", "box_Simple_Node_180.Out", "box_MultipleOR_177.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_201;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1207693763", "1207693763", "MIS_430_B10", "box_Simple_Node_180.Out", "box_MultipleOR_201.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    params = self:OnEnter_box_MIS_430_SteamTrap_173();
    l0 = self.box_MIS_430_SteamTrap_173;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|680869631", "680869631", "MIS_430_B10", "box_Simple_Node_180.Out", "box_MIS_430_SteamTrap_173.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_169();
    l0 = self.box_MIS_430_SteamTrap_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|534174957", "534174957", "MIS_430_B10", "box_Simple_Node_180.Out", "box_MIS_430_SteamTrap_169.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_164_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1598342724", "1598342724", "MIS_430_B10", "box_Simple_Node_164.Out", "box_OnceOnly_v3_118.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_178_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_SteamTrap_172();
    l0 = self.box_MIS_430_SteamTrap_172;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1401783145", "1401783145", "MIS_430_B10", "box_Simple_Node_178.Out", "box_MIS_430_SteamTrap_172.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MultipleAND_v2_10();
    l0 = self.box_MultipleAND_v2_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|949725683", "949725683", "MIS_430_B10", "box_Simple_Node_178.Out", "box_MultipleAND_v2_10.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
    params = self:OnEnter_box_MIS_430_SteamTrap_107();
    l0 = self.box_MIS_430_SteamTrap_107;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|386175629", "386175629", "MIS_430_B10", "box_Simple_Node_178.Out", "box_MIS_430_SteamTrap_107.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_170();
    l0 = self.box_MIS_430_SteamTrap_170;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|638308200", "638308200", "MIS_430_B10", "box_Simple_Node_178.Out", "box_MIS_430_SteamTrap_170.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_182_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_430_SteamTrap_169();
    l0 = self.box_MIS_430_SteamTrap_169;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|381422829", "381422829", "MIS_430_B10", "box_Simple_Node_182.Out", "box_MIS_430_SteamTrap_169.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_430_SteamTrap_173();
    l0 = self.box_MIS_430_SteamTrap_173;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|142394099", "142394099", "MIS_430_B10", "box_Simple_Node_182.Out", "box_MIS_430_SteamTrap_173.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MultipleAND_v2_10();
    l0 = self.box_MultipleAND_v2_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2064366456", "2064366456", "MIS_430_B10", "box_Simple_Node_182.Out", "box_MultipleAND_v2_10.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_161_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_142();
    l0 = self.box_StaticBreakableListener_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1240606347", "1240606347", "MIS_430_B10", "box_Simple_Node_161.Out", "box_StaticBreakableListener_142.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_162_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_120();
    l0 = self.box_StaticBreakableListener_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|437725130", "437725130", "MIS_430_B10", "box_Simple_Node_162.Out", "box_StaticBreakableListener_120.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_213_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_94();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|970945691", "970945691", "MIS_430_B10", "box_Simple_Node_213.Out", "box_OutputOrder_v2_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_214_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_93();
    l0 = self.box_Gate_v3_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|379408584", "379408584", "MIS_430_B10", "box_Simple_Node_214.Out", "box_Gate_v3_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_133_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_112();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1617319885", "1617319885", "MIS_430_B10", "box_Simple_Node_133.Out", "box_OutputOrder_v2_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_70_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_210();
    l0 = self.box_PlayDialog_v6_210;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|202553457", "202553457", "MIS_430_B10", "box_Simple_Node_70.Out", "box_PlayDialog_v6_210.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_209();
    l0 = self.box_PlayDialog_v6_209;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1079296655", "1079296655", "MIS_430_B10", "box_Simple_Node_70.Out", "box_PlayDialog_v6_209.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_211();
    l0 = self.box_PlayDialog_v6_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|43141096", "43141096", "MIS_430_B10", "box_Simple_Node_70.Out", "box_PlayDialog_v6_211.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_87_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_67();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|748267774", "748267774", "MIS_430_B10", "box_Simple_Node_87.Out", "box_OutputOrder_v2_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_83();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|37736543", "37736543", "MIS_430_B10", "box_Simple_Node_87.Out", "box_OutputOrder_v2_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_219();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1968802660", "1968802660", "MIS_430_B10", "box_Simple_Node_87.Out", "box_OutputOrder_v2_219.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_84();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|849839687", "849839687", "MIS_430_B10", "box_Simple_Node_87.Out", "box_OutputOrder_v2_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_81();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2003422489", "2003422489", "MIS_430_B10", "box_Simple_Node_87.Out", "box_OutputOrder_v2_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_191_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_148();
    l0 = self.box_SoundModifier_v2_148;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2049386333", "2049386333", "MIS_430_B10", "box_Simple_Node_191.Out", "box_SoundModifier_v2_148.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_189_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_116();
    l0 = self.box_SoundModifier_v2_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1990096620", "1990096620", "MIS_430_B10", "box_Simple_Node_189.Out", "box_SoundModifier_v2_116.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_165_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_134();
    l0 = self.box_SoundModifier_v2_134;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|14207047", "14207047", "MIS_430_B10", "box_Simple_Node_165.Out", "box_SoundModifier_v2_134.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_176_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_127();
    l0 = self.box_SoundModifier_v2_127;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|264497473", "264497473", "MIS_430_B10", "box_Simple_Node_176.Out", "box_SoundModifier_v2_127.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_190_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_113();
    l0 = self.box_SoundModifier_v2_113;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1114380739", "1114380739", "MIS_430_B10", "box_Simple_Node_190.Out", "box_SoundModifier_v2_113.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_60_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_60;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1794477622", "1794477622", "MIS_430_B10", "box_Delay_v5_60.Started", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Delay_v5_60_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_54();
    l0 = self.box_Delay_v5_60;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2054389411", "2054389411", "MIS_430_B10", "box_Delay_v5_60.TimeElapsed", "box_ParticleSystem_v3_54.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_234_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_8();
    l0 = self.box_MultipleOR_234;
    l1 = self.box_PlayDialog_v6_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1467928984", "1467928984", "MIS_430_B10", "box_MultipleOR_234.Out", "box_PlayDialog_v6_8.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_205_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_50();
    l0 = self.box_Brick_Interact_With_Object_V6_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1132081361", "1132081361", "MIS_430_B10", "box_OutputOrder_v2_205.Out", "box_Brick_Interact_With_Object_V6_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_205_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_214();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1961067458", "1961067458", "MIS_430_B10", "box_OutputOrder_v2_205.Out", "box_Simple_Node_214.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_89_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_22();
    l0 = self.box_UniversalInteractionModifier_v2_89;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1423782388", "1423782388", "MIS_430_B10", "box_UniversalInteractionModifier_v2_89.Enabled", "box_ActivityObjectiveMarkerModifier_v3_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_112_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_142();
    l0 = self.box_StaticBreakableListener_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1667152977", "1667152977", "MIS_430_B10", "box_OutputOrder_v2_112.Out", "box_StaticBreakableListener_142.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_112_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_120();
    l0 = self.box_StaticBreakableListener_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1233983187", "1233983187", "MIS_430_B10", "box_OutputOrder_v2_112.Out", "box_StaticBreakableListener_120.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UniversalInteractionModifier_v2_216_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_30();
    l0 = self.box_UniversalInteractionModifier_v2_216;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1607196132", "1607196132", "MIS_430_B10", "box_UniversalInteractionModifier_v2_216.Enabled", "box_ActivityObjectiveMarkerModifier_v3_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_212_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_213();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1245227779", "1245227779", "MIS_430_B10", "box_OutputOrder_v2_212.Out", "box_Simple_Node_213.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_212_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_244();
    l0 = self.box_NarrativeFade_244;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1196055090", "1196055090", "MIS_430_B10", "box_OutputOrder_v2_212.Out", "box_NarrativeFade_244.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_212_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_251();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|704532313", "704532313", "MIS_430_B10", "box_OutputOrder_v2_212.Out", "box_EndActivityObjective_v2_251.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_9();
    l0 = self.box_MultipleAND_v2_10;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1243696452", "1243696452", "MIS_430_B10", "box_MultipleAND_v2_10.Out", "box_ActivityRetry_v2_9.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_23();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|382820468", "382820468", "MIS_430_B10", "box_OutputOrder_v2_21.Out", "box_IntegerArithmetics_v2_23.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_22();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|524917856", "524917856", "MIS_430_B10", "box_OutputOrder_v2_21.Out", "box_ActivityObjectiveMarkerModifier_v3_22.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_191();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|888391959", "888391959", "MIS_430_B10", "box_OutputOrder_v2_21.Out", "box_Simple_Node_191.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_140_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_131();
    l0 = self.box_Delay_v5_140;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|330219919", "330219919", "MIS_430_B10", "box_Delay_v5_140.TimeElapsed", "box_ParticleSystem_v3_131.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_114_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_192();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|353261476", "353261476", "MIS_430_B10", "box_MissionBlockLayer_114.Activated", "box_Simple_Node_192.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_77();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1823900489", "1823900489", "MIS_430_B10", "box_OutputOrder_v2_81.Out", "box_SoundShapeModifier_77.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_74();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1974251811", "1974251811", "MIS_430_B10", "box_OutputOrder_v2_81.Out", "box_SoundShapeModifier_74.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_221();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1951647187", "1951647187", "MIS_430_B10", "box_OutputOrder_v2_81.Out", "box_SoundShapeModifier_221.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_224();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|821136500", "821136500", "MIS_430_B10", "box_OutputOrder_v2_81.Out", "box_SoundShapeModifier_224.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_85();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1159292913", "1159292913", "MIS_430_B10", "box_OutputOrder_v2_81.Out", "box_SoundShapeModifier_85.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_223();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1760166564", "1760166564", "MIS_430_B10", "box_OutputOrder_v2_81.Out", "box_SoundShapeModifier_223.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_81_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_78();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1156566053", "1156566053", "MIS_430_B10", "box_OutputOrder_v2_81.Out", "box_SoundShapeModifier_78.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_159();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1331120765", "1331120765", "MIS_430_B10", "box_OutputOrder_v2_18.Out", "box_SetBoolean_v2_159.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_182();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1281431036", "1281431036", "MIS_430_B10", "box_OutputOrder_v2_18.Out", "box_Simple_Node_182.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_23_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_23_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_26();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1844768233", "1844768233", "MIS_430_B10", "box_IntegerArithmetics_v2_23.Out", "box_SetActivityObjectiveProgress_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_201_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_197();
    l0 = self.box_MultipleOR_201;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|418632419", "418632419", "MIS_430_B10", "box_MultipleOR_201.Out", "box_ParticleSystem_v3_197.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_2_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_98();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|689219389", "689219389", "MIS_430_B10", "box_GetPlayerGroup_v2_2.Out", "box_OutputOrder_v2_98.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_149_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_124();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1710310653", "1710310653", "MIS_430_B10", "box_OutputOrder_v2_149.Out", "box_SetBoolean_v2_124.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_149_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_161();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1272985403", "1272985403", "MIS_430_B10", "box_OutputOrder_v2_149.Out", "box_Simple_Node_161.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_149_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_178();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|875949770", "875949770", "MIS_430_B10", "box_OutputOrder_v2_149.Out", "box_Simple_Node_178.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_169_Activated()
    self:OnExit_box_MIS_430_SteamTrap_169_Activated();
end;

function export:f_box_MIS_430_SteamTrap_169_Active()
    local l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_169_Active();
    l0 = self.box_MIS_430_SteamTrap_169;
    l1 = self.box_MultipleOR_201;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2062590860", "2062590860", "MIS_430_B10", "box_MIS_430_SteamTrap_169.Active", "box_MultipleOR_201.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MIS_430_SteamTrap_169_Inactive()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_169_Inactive();
    params = self:OnEnter_box_ParticleSystem_v3_197();
    l0 = self.box_MIS_430_SteamTrap_169;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1959520162", "1959520162", "MIS_430_B10", "box_MIS_430_SteamTrap_169.Inactive", "box_ParticleSystem_v3_197.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_169_Out()
    self:OnExit_box_MIS_430_SteamTrap_169_Out();
end;

function export:f_box_Delay_v5_92_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_88();
    l0 = self.box_Delay_v5_92;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|444824626", "444824626", "MIS_430_B10", "box_Delay_v5_92.TimeElapsed", "box_ActivityEnd_88.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_45_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = self.box_UniversalInteractionListener_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|317054129", "317054129", "MIS_430_B10", "box_UniversalInteractionListener_45.Interacted", "box_OutputOrder_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_232_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_229();
    l0 = self.box_MultipleOR_232;
    l1 = self.box_Delay_v5_229;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2060357578", "2060357578", "MIS_430_B10", "box_MultipleOR_232.Out", "box_Delay_v5_229.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_105_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V6_138();
    l0 = self.box_Brick_Interact_With_Object_V6_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|819008324", "819008324", "MIS_430_B10", "box_OutputOrder_v2_105.Out", "box_Brick_Interact_With_Object_V6_138.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_105_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_20();
    l0 = self.box_PlayDialog_v6_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|557002363", "557002363", "MIS_430_B10", "box_OutputOrder_v2_105.Out", "box_PlayDialog_v6_20.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_84_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_225();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1904586992", "1904586992", "MIS_430_B10", "box_OutputOrder_v2_84.Out", "box_SoundShapeModifier_225.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_84_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_73();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1559253675", "1559253675", "MIS_430_B10", "box_OutputOrder_v2_84.Out", "box_SoundShapeModifier_73.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_84_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_75();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1679495364", "1679495364", "MIS_430_B10", "box_OutputOrder_v2_84.Out", "box_SoundShapeModifier_75.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_84_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_226();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1549875506", "1549875506", "MIS_430_B10", "box_OutputOrder_v2_84.Out", "box_SoundShapeModifier_226.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_84_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_218();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|787739114", "787739114", "MIS_430_B10", "box_OutputOrder_v2_84.Out", "box_SoundShapeModifier_218.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|455639844", "455639844", "MIS_430_B10", "box_OutputOrder_v2_3.Out", "box_Print_v2_5.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_91();
    l0 = self.box_CharacterLoadedIdListener_v2_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|102044589", "102044589", "MIS_430_B10", "box_OutputOrder_v2_3.Out", "box_CharacterLoadedIdListener_v2_91.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_2();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1181735036", "1181735036", "MIS_430_B10", "box_OutputOrder_v2_3.Out", "box_GetPlayerGroup_v2_2.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_11();
    l0 = self.box_UniversalInteractionModifier_v2_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1680256504", "1680256504", "MIS_430_B10", "box_OutputOrder_v2_3.Out", "box_UniversalInteractionModifier_v2_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_119_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_143();
    l0 = self.box_Delay_v5_119;
    l1 = self.box_DisplayCustomUIMsg_v5_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1286259293", "1286259293", "MIS_430_B10", "box_Delay_v5_119.TimeElapsed", "box_DisplayCustomUIMsg_v5_143.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_183_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_114();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1244869405", "1244869405", "MIS_430_B10", "box_Compare_Boolean_183.A_is_False", "box_MissionBlockLayer_114.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_183_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_111();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|639606602", "639606602", "MIS_430_B10", "box_Compare_Boolean_183.A_is_True", "box_MissionBlockLayer_111.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_242_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_239();
    l0 = self.box_MultipleOR_242;
    l1 = self.box_Delay_v5_239;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1732040220", "1732040220", "MIS_430_B10", "box_MultipleOR_242.Out", "box_Delay_v5_239.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_Interact_With_Object_V6_138_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_137();
    l0 = self.box_Brick_Interact_With_Object_V6_138;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|197589673", "197589673", "MIS_430_B10", "box_Brick_Interact_With_Object_V6_138.Success", "box_OutputOrder_v2_137.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_177_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_196();
    l0 = self.box_MultipleOR_177;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|361758440", "361758440", "MIS_430_B10", "box_MultipleOR_177.Out", "box_ParticleSystem_v3_196.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_105();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|93020917", "93020917", "MIS_430_B10", "box_EndActivityObjective_v2_14.Out", "box_OutputOrder_v2_105.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_172_Activated()
    self:OnExit_box_MIS_430_SteamTrap_172_Activated();
end;

function export:f_box_MIS_430_SteamTrap_172_Active()
    local l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_172_Active();
    l0 = self.box_MIS_430_SteamTrap_172;
    l1 = self.box_MultipleOR_198;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|382656237", "382656237", "MIS_430_B10", "box_MIS_430_SteamTrap_172.Active", "box_MultipleOR_198.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MIS_430_SteamTrap_172_Inactive()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_172_Inactive();
    params = self:OnEnter_box_ParticleSystem_v3_175();
    l0 = self.box_MIS_430_SteamTrap_172;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1765625248", "1765625248", "MIS_430_B10", "box_MIS_430_SteamTrap_172.Inactive", "box_ParticleSystem_v3_175.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_172_Out()
    self:OnExit_box_MIS_430_SteamTrap_172_Out();
end;

function export:f_box_SetActivityObjectiveProgress_v2_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_55();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|490306494", "490306494", "MIS_430_B10", "box_SetActivityObjectiveProgress_v2_42.Out", "box_ParticleSystem_v3_55.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_89();
    l0 = self.box_UniversalInteractionModifier_v2_89;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1662589491", "1662589491", "MIS_430_B10", "box_OutputOrder_v2_31.Out", "box_UniversalInteractionModifier_v2_89.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_90();
    l0 = self.box_UniversalInteractionModifier_v2_90;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|929167171", "929167171", "MIS_430_B10", "box_OutputOrder_v2_31.Out", "box_UniversalInteractionModifier_v2_90.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_215();
    l0 = self.box_UniversalInteractionModifier_v2_215;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|908685362", "908685362", "MIS_430_B10", "box_OutputOrder_v2_31.Out", "box_UniversalInteractionModifier_v2_215.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_216();
    l0 = self.box_UniversalInteractionModifier_v2_216;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1965490843", "1965490843", "MIS_430_B10", "box_OutputOrder_v2_31.Out", "box_UniversalInteractionModifier_v2_216.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_217();
    l0 = self.box_UniversalInteractionModifier_v2_217;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1781077010", "1781077010", "MIS_430_B10", "box_OutputOrder_v2_31.Out", "box_UniversalInteractionModifier_v2_217.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_25();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|389717521", "389717521", "MIS_430_B10", "box_OutputOrder_v2_31.Out", "box_AddActivityObjectiveProgress_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_230();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|39194318", "39194318", "MIS_430_B10", "box_OutputOrder_v2_31.Out", "box_IsValueNil_v3_230.Boolean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Boolean
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjectiveProgress_v2_25_Out()
    self:OnExit_box_AddActivityObjectiveProgress_v2_25_Out();
end;

function export:f_box_ParticleSystem_v3_53_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_59();
    l0 = self.box_Delay_v5_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1435273383", "1435273383", "MIS_430_B10", "box_ParticleSystem_v3_53.Started", "box_Delay_v5_59.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MIS_430_SteamTrap_170_Activated()
    self:OnExit_box_MIS_430_SteamTrap_170_Activated();
end;

function export:f_box_MIS_430_SteamTrap_170_Active()
    local l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_170_Active();
    l0 = self.box_MIS_430_SteamTrap_170;
    l1 = self.box_MultipleOR_199;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2046512386", "2046512386", "MIS_430_B10", "box_MIS_430_SteamTrap_170.Active", "box_MultipleOR_199.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MIS_430_SteamTrap_170_Inactive()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_170_Inactive();
    params = self:OnEnter_box_ParticleSystem_v3_194();
    l0 = self.box_MIS_430_SteamTrap_170;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1271464795", "1271464795", "MIS_430_B10", "box_MIS_430_SteamTrap_170.Inactive", "box_ParticleSystem_v3_194.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_170_Out()
    self:OnExit_box_MIS_430_SteamTrap_170_Out();
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_28_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_35();
    l0 = self.box_UniversalInteractionListener_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|719997484", "719997484", "MIS_430_B10", "box_ActivityObjectiveMarkerModifier_v3_28.Enabled", "box_UniversalInteractionListener_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_229_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_229;
    l1 = self.box_MultipleOR_234;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1206967388", "1206967388", "MIS_430_B10", "box_Delay_v5_229.TimeElapsed", "box_MultipleOR_234.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UniversalInteractionListener_48_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = self.box_UniversalInteractionListener_48;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|66226604", "66226604", "MIS_430_B10", "box_UniversalInteractionListener_48.Interacted", "box_OutputOrder_v2_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_159_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_159_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_115();
    l0 = self.box_Gate_v3_115;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1990374845", "1990374845", "MIS_430_B10", "box_SetBoolean_v2_159.Out", "box_Gate_v3_115.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_UniversalInteractionListener_17_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_UniversalInteractionListener_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1613138332", "1613138332", "MIS_430_B10", "box_UniversalInteractionListener_17.Interacted", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_235_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_235;
    l1 = self.box_MultipleOR_242;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|897758491", "897758491", "MIS_430_B10", "box_PlaySequence_v8_235.Finished", "box_MultipleOR_242.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_235_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_235;
    l1 = self.box_MultipleOR_242;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1543200307", "1543200307", "MIS_430_B10", "box_PlaySequence_v8_235.Skipped", "box_MultipleOR_242.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_235_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_237();
    l0 = self.box_PlaySequence_v8_235;
    l1 = self.box_NarrativeFade_237;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|539386228", "539386228", "MIS_430_B10", "box_PlaySequence_v8_235.SPOut", "box_NarrativeFade_237.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_235_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_237();
    l0 = self.box_PlaySequence_v8_235;
    l1 = self.box_NarrativeFade_237;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|879217537", "879217537", "MIS_430_B10", "box_PlaySequence_v8_235.SPOut", "box_NarrativeFade_237.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_228_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_228();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|237941256", "237941256", "MIS_430_B10", "box_UseContextualActionModifier_v3_228.Enabled", "box_UseContextualActionModifier_v3_228.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_228_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V7_104();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_104;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1105610527", "1105610527", "MIS_430_B10", "box_UseContextualActionModifier_v3_228.UseCalled", "box_Brick_NarrativeQuickCinema_V7_104.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_185_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_188();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1599375020", "1599375020", "MIS_430_B10", "box_MissionBlockLayer_185.Disabled", "box_MissionBlockLayer_188.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_15();
    l0 = self.box_MultipleOR_16;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|904630964", "904630964", "MIS_430_B10", "box_MultipleOR_16.Out", "box_Compare_Integers_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_24_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1531402957", "1531402957", "MIS_430_B10", "box_AddActivityObjective_v2_24.Out", "box_OutputOrder_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_230_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_231();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1524195162", "1524195162", "MIS_430_B10", "box_IsValueNil_v3_230.No", "box_Compare_Boolean_231.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_230_Yes()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_232;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1390693801", "1390693801", "MIS_430_B10", "box_IsValueNil_v3_230.Yes", "box_MultipleOR_232.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_236_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = self.box_Delay_v5_236;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1885953", "1885953", "MIS_430_B10", "box_Delay_v5_236.Started", "box_OutputOrder_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_236_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_235();
    l0 = self.box_Delay_v5_236;
    l1 = self.box_PlaySequence_v8_235;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1670227274", "1670227274", "MIS_430_B10", "box_Delay_v5_236.TimeElapsed", "box_PlaySequence_v8_235.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_46();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|85688132", "85688132", "MIS_430_B10", "box_OutputOrder_v2_47.Out", "box_IntegerArithmetics_v2_46.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_47_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_32();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1428625221", "1428625221", "MIS_430_B10", "box_OutputOrder_v2_47.Out", "box_ActivityObjectiveMarkerModifier_v3_32.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_47_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_190();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1552368391", "1552368391", "MIS_430_B10", "box_OutputOrder_v2_47.Out", "box_Simple_Node_190.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_122_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_149();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1580271906", "1580271906", "MIS_430_B10", "box_IsEntityLoaded_v3_122.False", "box_OutputOrder_v2_149.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_122_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_124();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|289016298", "289016298", "MIS_430_B10", "box_IsEntityLoaded_v3_122.True", "box_SetBoolean_v2_124.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_211_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_214();
    l0 = self.box_PlayDialog_v6_211;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|623163269", "623163269", "MIS_430_B10", "box_PlayDialog_v6_211.Finished", "box_Simple_Node_214.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_13_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_205();
    l0 = self.box_UniversalInteractionModifier_v2_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|763681849", "763681849", "MIS_430_B10", "box_UniversalInteractionModifier_v2_13.Enabled", "box_OutputOrder_v2_205.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_93_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_204();
    l0 = self.box_Gate_v3_93;
    l1 = self.box_Delay_v5_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|164109324", "164109324", "MIS_430_B10", "box_Gate_v3_93.Out", "box_Delay_v5_204.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MIS_430_SteamTrap_173_Activated()
    self:OnExit_box_MIS_430_SteamTrap_173_Activated();
end;

function export:f_box_MIS_430_SteamTrap_173_Active()
    local l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_173_Active();
    l0 = self.box_MIS_430_SteamTrap_173;
    l1 = self.box_MultipleOR_177;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|52882572", "52882572", "MIS_430_B10", "box_MIS_430_SteamTrap_173.Active", "box_MultipleOR_177.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MIS_430_SteamTrap_173_Inactive()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_173_Inactive();
    params = self:OnEnter_box_ParticleSystem_v3_196();
    l0 = self.box_MIS_430_SteamTrap_173;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1715661080", "1715661080", "MIS_430_B10", "box_MIS_430_SteamTrap_173.Inactive", "box_ParticleSystem_v3_196.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_173_Out()
    self:OnExit_box_MIS_430_SteamTrap_173_Out();
end;

function export:f_box_Gate_v3_167_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_167;
    l1 = self.box_MultipleOR_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1562319802", "1562319802", "MIS_430_B10", "box_Gate_v3_167.Opened", "box_MultipleOR_184.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_167_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_167;
    l1 = self.box_MultipleOR_184;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|741942111", "741942111", "MIS_430_B10", "box_Gate_v3_167.Out", "box_MultipleOR_184.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_58_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_58;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2139758669", "2139758669", "MIS_430_B10", "box_Delay_v5_58.Started", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_58_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_52();
    l0 = self.box_Delay_v5_58;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1535734035", "1535734035", "MIS_430_B10", "box_Delay_v5_58.TimeElapsed", "box_ParticleSystem_v3_52.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_168_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_180();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|719556648", "719556648", "MIS_430_B10", "box_MissionBlockLayer_168.Activated", "box_Simple_Node_180.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_39();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|43509532", "43509532", "MIS_430_B10", "box_OutputOrder_v2_40.Out", "box_IntegerArithmetics_v2_39.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_29();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1334593849", "1334593849", "MIS_430_B10", "box_OutputOrder_v2_40.Out", "box_ActivityObjectiveMarkerModifier_v3_29.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_165();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1803240854", "1803240854", "MIS_430_B10", "box_OutputOrder_v2_40.Out", "box_Simple_Node_165.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_91_LoadedIdReceived()
    self:OnExit_box_CharacterLoadedIdListener_v2_91_LoadedIdReceived();
end;

function export:f_box_OutputOrder_v2_94_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_93();
    l0 = self.box_Gate_v3_93;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|307559539", "307559539", "MIS_430_B10", "box_OutputOrder_v2_94.Out", "box_Gate_v3_93.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_94_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_204();
    l0 = self.box_Delay_v5_204;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|476335696", "476335696", "MIS_430_B10", "box_OutputOrder_v2_94.Out", "box_Delay_v5_204.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Compare_Boolean_186_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_168();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|470483467", "470483467", "MIS_430_B10", "box_Compare_Boolean_186.A_is_False", "box_MissionBlockLayer_168.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_186_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_185();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1671846942", "1671846942", "MIS_430_B10", "box_Compare_Boolean_186.A_is_True", "box_MissionBlockLayer_185.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_238_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_238();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1701363360", "1701363360", "MIS_430_B10", "box_UseContextualActionModifier_v3_238.Enabled", "box_UseContextualActionModifier_v3_238.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_238_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_13();
    l0 = self.box_UniversalInteractionModifier_v2_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|51197487", "51197487", "MIS_430_B10", "box_UseContextualActionModifier_v3_238.UseCalled", "box_UniversalInteractionModifier_v2_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_111_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_174();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|379694813", "379694813", "MIS_430_B10", "box_MissionBlockLayer_111.Disabled", "box_MissionBlockLayer_174.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_217_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_32();
    l0 = self.box_UniversalInteractionModifier_v2_217;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1654666582", "1654666582", "MIS_430_B10", "box_UniversalInteractionModifier_v2_217.Enabled", "box_ActivityObjectiveMarkerModifier_v3_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_1_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|10545547", "10545547", "MIS_430_B10", "box_ActivityAcknowledgeGate_1.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_1_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_1;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|160301706", "160301706", "MIS_430_B10", "box_ActivityAcknowledgeGate_1.Reloaded", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_187_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_186();
    l0 = self.box_MultipleOR_187;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|411848065", "411848065", "MIS_430_B10", "box_MultipleOR_187.Out", "box_Compare_Boolean_186.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_142_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_122();
    l0 = self.box_StaticBreakableListener_142;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2013927653", "2013927653", "MIS_430_B10", "box_StaticBreakableListener_142.Enabled", "box_IsEntityLoaded_v3_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_142_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_StaticBreakableListener_142;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|594735879", "594735879", "MIS_430_B10", "box_StaticBreakableListener_142.OnBreak", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_142_OnDamage()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_164();
    l0 = self.box_StaticBreakableListener_142;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|173071570", "173071570", "MIS_430_B10", "box_StaticBreakableListener_142.OnDamage", "box_Simple_Node_164.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_219_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_76();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1032837855", "1032837855", "MIS_430_B10", "box_OutputOrder_v2_219.Out", "box_SoundPointModifier_76.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_219_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_227();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1030225434", "1030225434", "MIS_430_B10", "box_OutputOrder_v2_219.Out", "box_SoundPointModifier_227.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_219_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_65();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1108629239", "1108629239", "MIS_430_B10", "box_OutputOrder_v2_219.Out", "box_SoundPointModifier_65.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_219_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_82();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|149390607", "149390607", "MIS_430_B10", "box_OutputOrder_v2_219.Out", "box_SoundPointModifier_82.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_219_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_72();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1926957038", "1926957038", "MIS_430_B10", "box_OutputOrder_v2_219.Out", "box_SoundPointModifier_72.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_57_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_57;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|24199314", "24199314", "MIS_430_B10", "box_Delay_v5_57.Started", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_57_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_51();
    l0 = self.box_Delay_v5_57;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|63837416", "63837416", "MIS_430_B10", "box_Delay_v5_57.TimeElapsed", "box_ParticleSystem_v3_51.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_103_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_228();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|965160579", "965160579", "MIS_430_B10", "box_UseContextualActionModifier_v3_103.Disabled", "box_UseContextualActionModifier_v3_228.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_115_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_115;
    l1 = self.box_MultipleOR_187;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1827930309", "1827930309", "MIS_430_B10", "box_Gate_v3_115.Opened", "box_MultipleOR_187.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_115_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_115;
    l1 = self.box_MultipleOR_187;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1433855488", "1433855488", "MIS_430_B10", "box_Gate_v3_115.Out", "box_MultipleOR_187.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_231_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_232;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2122180477", "2122180477", "MIS_430_B10", "box_Compare_Boolean_231.A_is_False", "box_MultipleOR_232.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_231_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_233();
    l0 = self.box_Delay_v5_233;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1438228794", "1438228794", "MIS_430_B10", "box_Compare_Boolean_231.A_is_True", "box_Delay_v5_233.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_54_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_60();
    l0 = self.box_Delay_v5_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|965204874", "965204874", "MIS_430_B10", "box_ParticleSystem_v3_54.Started", "box_Delay_v5_60.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1266978244", "1266978244", "MIS_430_B10", "box_MultipleOR_6.Out", "box_ActivityInitialized_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Brick_NarrativeQuickCinema_V7_104_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_241();
    l0 = self.box_Brick_NarrativeQuickCinema_V7_104;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1144131961", "1144131961", "MIS_430_B10", "box_Brick_NarrativeQuickCinema_V7_104.Finished", "box_UseContextualActionModifier_v3_241.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_239_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_250();
    l0 = self.box_Delay_v5_239;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|531150164", "531150164", "MIS_430_B10", "box_Delay_v5_239.TimeElapsed", "box_OutputOrder_v2_250.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_79();
    l0 = self.box_SoundModifier_v2_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1104959660", "1104959660", "MIS_430_B10", "box_OutputOrder_v2_83.Out", "box_SoundModifier_v2_79.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_83_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_80();
    l0 = self.box_SoundModifier_v2_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|835870677", "835870677", "MIS_430_B10", "box_OutputOrder_v2_83.Out", "box_SoundModifier_v2_80.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_215_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_29();
    l0 = self.box_UniversalInteractionModifier_v2_215;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|595003180", "595003180", "MIS_430_B10", "box_UniversalInteractionModifier_v2_215.Enabled", "box_ActivityObjectiveMarkerModifier_v3_29.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_209_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_214();
    l0 = self.box_PlayDialog_v6_209;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|628305809", "628305809", "MIS_430_B10", "box_PlayDialog_v6_209.Finished", "box_Simple_Node_214.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_145();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|252469183", "252469183", "MIS_430_B10", "box_OutputOrder_v2_4.Out", "box_SetBoolean_v2_145.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_178();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2122661767", "2122661767", "MIS_430_B10", "box_OutputOrder_v2_4.Out", "box_Simple_Node_178.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_29_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_41();
    l0 = self.box_UniversalInteractionListener_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|942113784", "942113784", "MIS_430_B10", "box_ActivityObjectiveMarkerModifier_v3_29.Enabled", "box_UniversalInteractionListener_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_160_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_123();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1889269277", "1889269277", "MIS_430_B10", "box_OutputOrder_v2_160.Out", "box_SetBoolean_v2_123.True", clone:GetLuaBox(), l0:GetLuaBox());
    -- True
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_160_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_162();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1308584373", "1308584373", "MIS_430_B10", "box_OutputOrder_v2_160.Out", "box_Simple_Node_162.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_160_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_182();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1834204216", "1834204216", "MIS_430_B10", "box_OutputOrder_v2_160.Out", "box_Simple_Node_182.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_34_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_52();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1485173008", "1485173008", "MIS_430_B10", "box_SetActivityObjectiveProgress_v2_34.Out", "box_ParticleSystem_v3_52.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_233_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_233;
    l1 = self.box_MultipleOR_234;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|88319982", "88319982", "MIS_430_B10", "box_Delay_v5_233.TimeElapsed", "box_MultipleOR_234.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_98_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_24();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1787195864", "1787195864", "MIS_430_B10", "box_OutputOrder_v2_98.Out", "box_AddActivityObjective_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_98_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_133();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2124554002", "2124554002", "MIS_430_B10", "box_OutputOrder_v2_98.Out", "box_Simple_Node_133.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_124_Out()
    self:OnExit_box_SetBoolean_v2_124_Out();
end;

function export:f_box_SetActivityObjectiveProgress_v2_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_51();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|26421851", "26421851", "MIS_430_B10", "box_SetActivityObjectiveProgress_v2_26.Out", "box_ParticleSystem_v3_51.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_241_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_238();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1280526860", "1280526860", "MIS_430_B10", "box_UseContextualActionModifier_v3_241.Disabled", "box_UseContextualActionModifier_v3_238.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DisplayCustomUIMsg_v5_143_OnDisplay()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_119();
    l0 = self.box_DisplayCustomUIMsg_v5_143;
    l1 = self.box_Delay_v5_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|124178748", "124178748", "MIS_430_B10", "box_DisplayCustomUIMsg_v5_143.OnDisplay", "box_Delay_v5_119.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_DisplayCustomUIMsg_v5_143_OnHide()
    local l0, l1;
    l0 = self.box_DisplayCustomUIMsg_v5_143;
    l1 = self.box_OnceOnly_v3_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|716585978", "716585978", "MIS_430_B10", "box_DisplayCustomUIMsg_v5_143.OnHide", "box_OnceOnly_v3_118.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, {
    });
end;

function export:f_box_MultipleOR_184_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_183();
    l0 = self.box_MultipleOR_184;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|163310545", "163310545", "MIS_430_B10", "box_MultipleOR_184.Out", "box_Compare_Boolean_183.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_137_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_49();
    l0 = self.box_Delay_v5_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1876332084", "1876332084", "MIS_430_B10", "box_OutputOrder_v2_137.Out", "box_Delay_v5_49.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_137_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_166();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1650097720", "1650097720", "MIS_430_B10", "box_OutputOrder_v2_137.Out", "box_Simple_Node_166.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_137_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_140();
    l0 = self.box_Delay_v5_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1786002238", "1786002238", "MIS_430_B10", "box_OutputOrder_v2_137.Out", "box_Delay_v5_140.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_137_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_86();
    l0 = self.box_Delay_v5_86;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1015342420", "1015342420", "MIS_430_B10", "box_OutputOrder_v2_137.Out", "box_Delay_v5_86.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_59_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_59;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1213051303", "1213051303", "MIS_430_B10", "box_Delay_v5_59.Started", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_59_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_53();
    l0 = self.box_Delay_v5_59;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|105165237", "105165237", "MIS_430_B10", "box_Delay_v5_59.TimeElapsed", "box_ParticleSystem_v3_53.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_204_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Random_206();
    l0 = self.box_Delay_v5_204;
    l1 = self.box_Random_206;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|731169618", "731169618", "MIS_430_B10", "box_Delay_v5_204.TimeElapsed", "box_Random_206.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_132_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_129();
    l0 = self.box_Delay_v5_132;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|942626473", "942626473", "MIS_430_B10", "box_Delay_v5_132.TimeElapsed", "box_ParticleSystem_v3_129.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_66();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|365998198", "365998198", "MIS_430_B10", "box_OutputOrder_v2_67.Out", "box_SoundPointModifier_66.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_220();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1052657575", "1052657575", "MIS_430_B10", "box_OutputOrder_v2_67.Out", "box_SoundPointModifier_220.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_63();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1819412053", "1819412053", "MIS_430_B10", "box_OutputOrder_v2_67.Out", "box_SoundPointModifier_63.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_71();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1585096096", "1585096096", "MIS_430_B10", "box_OutputOrder_v2_67.Out", "box_SoundPointModifier_71.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_64();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1211559331", "1211559331", "MIS_430_B10", "box_OutputOrder_v2_67.Out", "box_SoundPointModifier_64.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_123_Out()
    self:OnExit_box_SetBoolean_v2_123_Out();
end;

function export:f_box_ParticleSystem_v3_55_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_61();
    l0 = self.box_Delay_v5_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|340530318", "340530318", "MIS_430_B10", "box_ParticleSystem_v3_55.Started", "box_Delay_v5_61.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_118_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_143();
    l0 = self.box_OnceOnly_v3_118;
    l1 = self.box_DisplayCustomUIMsg_v5_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|614962030", "614962030", "MIS_430_B10", "box_OnceOnly_v3_118.Out", "box_DisplayCustomUIMsg_v5_143.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_61_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_61;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1877066511", "1877066511", "MIS_430_B10", "box_Delay_v5_61.Started", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Delay_v5_61_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_55();
    l0 = self.box_Delay_v5_61;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1307824090", "1307824090", "MIS_430_B10", "box_Delay_v5_61.TimeElapsed", "box_ParticleSystem_v3_55.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_37_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_53();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1166803050", "1166803050", "MIS_430_B10", "box_SetActivityObjectiveProgress_v2_37.Out", "box_ParticleSystem_v3_53.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_206_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_211();
    l0 = self.box_Random_206;
    l1 = self.box_PlayDialog_v6_211;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1670358332", "1670358332", "MIS_430_B10", "box_Random_206.Output", "box_PlayDialog_v6_211.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_206_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_210();
    l0 = self.box_Random_206;
    l1 = self.box_PlayDialog_v6_210;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1021889282", "1021889282", "MIS_430_B10", "box_Random_206.Output", "box_PlayDialog_v6_210.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_206_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_209();
    l0 = self.box_Random_206;
    l1 = self.box_PlayDialog_v6_209;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1347636824", "1347636824", "MIS_430_B10", "box_Random_206.Output", "box_PlayDialog_v6_209.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_IntegerArithmetics_v2_43_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_43_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_38();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|856524879", "856524879", "MIS_430_B10", "box_IntegerArithmetics_v2_43.Out", "box_SetActivityObjectiveProgress_v2_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_107_Activated()
    self:OnExit_box_MIS_430_SteamTrap_107_Activated();
end;

function export:f_box_MIS_430_SteamTrap_107_Active()
    local l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_107_Active();
    l0 = self.box_MIS_430_SteamTrap_107;
    l1 = self.box_MultipleOR_200;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|16970933", "16970933", "MIS_430_B10", "box_MIS_430_SteamTrap_107.Active", "box_MultipleOR_200.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MIS_430_SteamTrap_107_Inactive()
    local params, l0, l1;
    self:OnExit_box_MIS_430_SteamTrap_107_Inactive();
    params = self:OnEnter_box_ParticleSystem_v3_195();
    l0 = self.box_MIS_430_SteamTrap_107;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1141105796", "1141105796", "MIS_430_B10", "box_MIS_430_SteamTrap_107.Inactive", "box_ParticleSystem_v3_195.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_430_SteamTrap_107_Out()
    self:OnExit_box_MIS_430_SteamTrap_107_Out();
end;

function export:f_box_IntegerArithmetics_v2_39_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_39_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_37();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|973441217", "973441217", "MIS_430_B10", "box_IntegerArithmetics_v2_39.Out", "box_SetActivityObjectiveProgress_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_120_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_117();
    l0 = self.box_StaticBreakableListener_120;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1960676567", "1960676567", "MIS_430_B10", "box_StaticBreakableListener_120.Enabled", "box_IsEntityLoaded_v3_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_120_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_StaticBreakableListener_120;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1426455273", "1426455273", "MIS_430_B10", "box_StaticBreakableListener_120.OnBreak", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_120_OnDamage()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_164();
    l0 = self.box_StaticBreakableListener_120;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|56155232", "56155232", "MIS_430_B10", "box_StaticBreakableListener_120.OnDamage", "box_Simple_Node_164.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_33_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_33_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_34();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1326048702", "1326048702", "MIS_430_B10", "box_IntegerArithmetics_v2_33.Out", "box_SetActivityObjectiveProgress_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_35_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_UniversalInteractionListener_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|711643936", "711643936", "MIS_430_B10", "box_UniversalInteractionListener_35.Interacted", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_145_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_145_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_167();
    l0 = self.box_Gate_v3_167;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|713750441", "713750441", "MIS_430_B10", "box_SetBoolean_v2_145.Out", "box_Gate_v3_167.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_86_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_106();
    l0 = self.box_Delay_v5_86;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|38410483", "38410483", "MIS_430_B10", "box_Delay_v5_86.TimeElapsed", "box_OutputOrder_v2_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_33();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1483121905", "1483121905", "MIS_430_B10", "box_OutputOrder_v2_36.Out", "box_IntegerArithmetics_v2_33.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_28();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|814028856", "814028856", "MIS_430_B10", "box_OutputOrder_v2_36.Out", "box_ActivityObjectiveMarkerModifier_v3_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_189();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|203894942", "203894942", "MIS_430_B10", "box_OutputOrder_v2_36.Out", "box_Simple_Node_189.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_90_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_28();
    l0 = self.box_UniversalInteractionModifier_v2_90;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1341400388", "1341400388", "MIS_430_B10", "box_UniversalInteractionModifier_v2_90.Enabled", "box_ActivityObjectiveMarkerModifier_v3_28.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_52_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_58();
    l0 = self.box_Delay_v5_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1984865971", "1984865971", "MIS_430_B10", "box_ParticleSystem_v3_52.Started", "box_Delay_v5_58.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_203_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_101();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2051907532", "2051907532", "MIS_430_B10", "box_OutputOrder_v2_203.Out", "box_UseContextualActionModifier_v3_101.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_203_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_202();
    l0 = self.box_PlayDialog_v6_202;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|94063023", "94063023", "MIS_430_B10", "box_OutputOrder_v2_203.Out", "box_PlayDialog_v6_202.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_130_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_132();
    l0 = self.box_Delay_v5_132;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1546902291", "1546902291", "MIS_430_B10", "box_ParticleSystem_v3_130.Started", "box_Delay_v5_132.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_198_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_175();
    l0 = self.box_MultipleOR_198;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1888071040", "1888071040", "MIS_430_B10", "box_MultipleOR_198.Out", "box_ParticleSystem_v3_175.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_22_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_17();
    l0 = self.box_UniversalInteractionListener_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1805766017", "1805766017", "MIS_430_B10", "box_ActivityObjectiveMarkerModifier_v3_22.Enabled", "box_UniversalInteractionListener_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_250_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_92();
    l0 = self.box_Delay_v5_92;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1209096384", "1209096384", "MIS_430_B10", "box_OutputOrder_v2_250.Out", "box_Delay_v5_92.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_250_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_249();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|732605473", "732605473", "MIS_430_B10", "box_OutputOrder_v2_250.Out", "box_SetTimeOfDay_249.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_51_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_57();
    l0 = self.box_Delay_v5_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|972050142", "972050142", "MIS_430_B10", "box_ParticleSystem_v3_51.Started", "box_Delay_v5_57.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_106_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_87();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1857245878", "1857245878", "MIS_430_B10", "box_OutputOrder_v2_106.Out", "box_Simple_Node_87.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_ActivityInitialized_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|441322164", "441322164", "MIS_430_B10", "box_ActivityInitialized_7.Out", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_244_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_Outpost_96();
    l0 = self.box_NarrativeFade_244;
    l1 = self.box_NarrativeSceneSetup_Outpost_96;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|986410223", "986410223", "MIS_430_B10", "box_NarrativeFade_244.FadedOut", "box_NarrativeSceneSetup_Outpost_96.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_SetActivityObjectiveProgress_v2_38_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_54();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|61656367", "61656367", "MIS_430_B10", "box_SetActivityObjectiveProgress_v2_38.Out", "box_ParticleSystem_v3_54.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_117_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_160();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1971067176", "1971067176", "MIS_430_B10", "box_IsEntityLoaded_v3_117.False", "box_OutputOrder_v2_160.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_117_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_123();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1242957970", "1242957970", "MIS_430_B10", "box_IsEntityLoaded_v3_117.True", "box_SetBoolean_v2_123.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_200_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_195();
    l0 = self.box_MultipleOR_200;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|82520035", "82520035", "MIS_430_B10", "box_MultipleOR_200.Out", "box_ParticleSystem_v3_195.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_41_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_UniversalInteractionListener_41;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|305039437", "305039437", "MIS_430_B10", "box_UniversalInteractionListener_41.Interacted", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_32_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_48();
    l0 = self.box_UniversalInteractionListener_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1576569081", "1576569081", "MIS_430_B10", "box_ActivityObjectiveMarkerModifier_v3_32.Enabled", "box_UniversalInteractionListener_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IntegerArithmetics_v2_46_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_46_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_42();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|432681066", "432681066", "MIS_430_B10", "box_IntegerArithmetics_v2_46.Out", "box_SetActivityObjectiveProgress_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_Outpost_96_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_236();
    l0 = self.box_NarrativeSceneSetup_Outpost_96;
    l1 = self.box_Delay_v5_236;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1269829855", "1269829855", "MIS_430_B10", "box_NarrativeSceneSetup_Outpost_96.Out", "box_Delay_v5_236.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_131_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_130();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1394347212", "1394347212", "MIS_430_B10", "box_ParticleSystem_v3_131.Started", "box_ParticleSystem_v3_130.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_101_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_103();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|979174332", "979174332", "MIS_430_B10", "box_UseContextualActionModifier_v3_101.Enabled", "box_UseContextualActionModifier_v3_103.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_210_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_214();
    l0 = self.box_PlayDialog_v6_210;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1845849167", "1845849167", "MIS_430_B10", "box_PlayDialog_v6_210.Finished", "box_Simple_Node_214.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_199_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_194();
    l0 = self.box_MultipleOR_199;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1070179288", "1070179288", "MIS_430_B10", "box_MultipleOR_199.Out", "box_ParticleSystem_v3_194.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_43();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1436242411", "1436242411", "MIS_430_B10", "box_OutputOrder_v2_44.Out", "box_IntegerArithmetics_v2_43.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_30();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|611081607", "611081607", "MIS_430_B10", "box_OutputOrder_v2_44.Out", "box_ActivityObjectiveMarkerModifier_v3_30.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_176();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1074754185", "1074754185", "MIS_430_B10", "box_OutputOrder_v2_44.Out", "box_Simple_Node_176.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_95_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_212();
    l0 = self.box_ShimmerModifier_v2_95;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|909834185", "909834185", "MIS_430_B10", "box_ShimmerModifier_v2_95.Disabled", "box_OutputOrder_v2_212.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V6_50_Success()
    local params, l0, l1;
    params = self:OnEnter_box_ShimmerModifier_v2_95();
    l0 = self.box_Brick_Interact_With_Object_V6_50;
    l1 = self.box_ShimmerModifier_v2_95;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|197932539", "197932539", "MIS_430_B10", "box_Brick_Interact_With_Object_V6_50.Success", "box_ShimmerModifier_v2_95.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_15_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_14();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|320620366", "320620366", "MIS_430_B10", "box_Compare_Integers_15.A_eq_B", "box_EndActivityObjective_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_70();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1150820273", "1150820273", "MIS_430_B10", "box_OutputOrder_v2_62.Out", "box_Simple_Node_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_248();
    l0 = self.box_PlayDialog_v6_248;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|60339399", "60339399", "MIS_430_B10", "box_OutputOrder_v2_62.Out", "box_PlayDialog_v6_248.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_49_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_203();
    l0 = self.box_Delay_v5_49;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1045649497", "1045649497", "MIS_430_B10", "box_Delay_v5_49.TimeElapsed", "box_OutputOrder_v2_203.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_30_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_45();
    l0 = self.box_UniversalInteractionListener_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1869314690", "1869314690", "MIS_430_B10", "box_ActivityObjectiveMarkerModifier_v3_30.Enabled", "box_UniversalInteractionListener_45.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_166");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|@n_ActivateDynamicLights");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_166_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_192");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|@n_ActivateTrapsTurbine_A");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_192_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_180");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|@n_ActivateTrapsTurbine_B");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_180_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|@n_ActivateWarning");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_164_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_178");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|@n_DeactivateTrapsTurbine_A");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_178_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_182()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_182");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|@n_DeactivateTrapsTurbine_B");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_182_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|@n_DisableListener_A");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_161_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_162");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|@n_DisableListener_B");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_162_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_213()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_213");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|@n_PlayerDrank");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_213_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_214()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_214");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|@n_PlayerIsNotDrinking");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_214_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|@n_SetGlobalVariables");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_133_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|@n_StopOtherDialogs");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_70_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_87");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|@Start_Overload_sounds");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_87_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_191");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|@Trap_Sound_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_191_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_189");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|@Trap_Sound_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_189_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|@Trap_Sound_3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_165_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_176()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_176");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|@Trap_Sound_4");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_176_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_190");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|@Trap_Sound_5");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_190_Out,
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
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_148()
    local params;
    params = {
        -- Pawns,
        [0] = "2109842714716568434",
        -- SoundId,
        [1] = "3000558061",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_205()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_205");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|18092081");
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
                [0] = self.f_box_OutputOrder_v2_205_Out_0,
                [1] = self.f_box_OutputOrder_v2_205_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_89()
    local params;
    params = {
        -- usableEntity,
        [4] = "2109079107387015179",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|34869926");
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
                [0] = self.f_box_OutputOrder_v2_112_Out_0,
                [1] = self.f_box_OutputOrder_v2_112_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_218()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_218");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|38127727");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2108983574817431911",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_216()
    local params;
    params = {
        -- usableEntity,
        [4] = "2109079481927876632",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|53599417");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2108983470104535388",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_212");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|55543814");
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
                [0] = self.f_box_OutputOrder_v2_212_Out_0,
                [1] = self.f_box_OutputOrder_v2_212_Out_1,
                [2] = self.f_box_OutputOrder_v2_212_Out_2,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_10()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|69944495");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
                [2] = self.f_box_OutputOrder_v2_21_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_140()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_114");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|86430228");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_114_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "27160309022500288",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_8()
    local params;
    params = {
        -- Group,
        [0] = self.e_Sharky,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3911445983",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|99216631");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 7,
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
                [0] = self.f_box_OutputOrder_v2_81_Out_0,
                [1] = self.f_box_OutputOrder_v2_81_Out_1,
                [2] = self.f_box_OutputOrder_v2_81_Out_2,
                [3] = self.f_box_OutputOrder_v2_81_Out_3,
                [4] = self.f_box_OutputOrder_v2_81_Out_4,
                [5] = self.f_box_OutputOrder_v2_81_Out_5,
                [6] = self.f_box_OutputOrder_v2_81_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|141436800");
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

function export:OnEnter_box_IntegerArithmetics_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|146832510");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_23_Out,
    });
    params = {
        -- A,
        [0] = self.i_TotalTrapsInstalled,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|166736027");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|169254797");
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
                [0] = self.f_box_OutputOrder_v2_149_Out_0,
                [1] = self.f_box_OutputOrder_v2_149_Out_1,
                [2] = self.f_box_OutputOrder_v2_149_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_169()
    local params;
    params = {
        -- e_Stim,
        [0] = "2106843523748745504",
        -- e_TrapActivator,
        [1] = "2106649748548098372",
        -- e_Trigger,
        [2] = "2106664761186861020",
        -- e_VFX,
        [3] = "2108914562850897418",
        -- e_VFX_ActiveTrap,
        [4] = "2108927228719931619",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_92()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_45()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2109079481927876632",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_105");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|212767437");
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
                [0] = self.f_box_OutputOrder_v2_105_Out_0,
                [1] = self.f_box_OutputOrder_v2_105_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|231615826");
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
                [0] = self.f_box_OutputOrder_v2_84_Out_0,
                [1] = self.f_box_OutputOrder_v2_84_Out_1,
                [2] = self.f_box_OutputOrder_v2_84_Out_2,
                [3] = self.f_box_OutputOrder_v2_84_Out_3,
                [4] = self.f_box_OutputOrder_v2_84_Out_4,
            },
            count = 6,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|264824192");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
                [3] = self.f_box_OutputOrder_v2_3_Out_3,
            },
            count = 6,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|266887610");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Fail",
            item = "MIS_430_DestroyedTurbines",
            id = "1028894",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_119()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_183");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|310681938");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_183_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_183_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.MIS_430_B10.b_TurbineA_Destroyed,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|312896290");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2107079202829247153",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_197()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_197");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|320448801");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108927228719931619",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V6_138()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = true,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = true,
        -- e_EntityToInteractWith,
        [3] = "2106649498286558316",
        -- e_ObjectiveMarker,
        [4] = "2106649515319626861",
        -- o_ObjectiveText,
        [6] = {
            section = "Objectives",
            item = "MIS_430_B10_GOAL_Increase",
            id = "960693",
        },
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_175");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|335046655");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108927236015923431",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|355570692");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_14_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_430_B10_OBJ_Arm_1",
            id = "960694",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_172()
    local params;
    params = {
        -- e_Stim,
        [0] = "2106802855183652413",
        -- e_TrapActivator,
        [1] = "2106663202673672012",
        -- e_Trigger,
        [2] = "2106661740958721684",
        -- e_VFX,
        [3] = "2108914538763009542",
        -- e_VFX_ActiveTrap,
        [4] = "2108927236015923431",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|411030278");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_42_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_430_B10_OBJ_Arm_1",
            id = "960694",
        },
        -- Progress,
        [1] = self.i_TotalTrapsInstalled,
        -- ProgressId,
        [2] = self.iProgressID,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|416606769");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2108292956325694448",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|424044970");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 7,
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
                [2] = self.f_box_OutputOrder_v2_31_Out_2,
                [3] = self.f_box_OutputOrder_v2_31_Out_3,
                [4] = self.f_box_OutputOrder_v2_31_Out_4,
                [5] = self.f_box_OutputOrder_v2_31_Out_5,
                [6] = self.f_box_OutputOrder_v2_31_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_113()
    local params;
    params = {
        -- Pawns,
        [0] = "2109842743869078394",
        -- SoundId,
        [1] = "3000558061",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_88");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|433179901");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|479983746");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_25_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_430_B10_OBJ_Arm_1",
            id = "960694",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 5,
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_220");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|481033052");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2108294835707333765",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|506436753");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_53_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108927240514314473",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_251()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_251");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|507321170");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_430_B10_OBJ_Arm_2",
            id = "964203",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_11()
    local params;
    params = {
        -- usableEntity,
        [4] = "2109121891590487498",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_79()
    local params;
    params = {
        -- Pawns,
        [0] = "2108292837907909614",
        -- SoundId,
        [1] = "3545581574",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_170()
    local params;
    params = {
        -- e_Stim,
        [0] = "2106843519122428188",
        -- e_TrapActivator,
        [1] = "2106663202673672012",
        -- e_Trigger,
        [2] = "2106663293459382121",
        -- e_VFX,
        [3] = "2108914553034128904",
        -- e_VFX_ActiveTrap,
        [4] = "2108927232352198885",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|540866164");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_28_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2107078431794531153",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_430_B10_OBJ_Arm_1",
            id = "960694",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_229()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_48()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2109079437742981141",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_159");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|572416778");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_159_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_17()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2109079107387015179",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|604372175");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2108307195320880413",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|623525535");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2108983495039672672",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_235()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- SceneEntity,
        [3] = "2109400708917766410",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/MIS_430/mis_430_pass_out.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_228()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_228");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|639228242");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_228_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_228_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109688942948260490",
        -- Entity,
        [2] = self.e_Sharky,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_185()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_185");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|653487952");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_185_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "54181906786865724",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|656706892");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2109067367746146881",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|664118639");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2108293068202462198",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|666287831");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_24_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_430_B10_OBJ_Arm_1",
            id = "960694",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_225");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|672916409");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2108307163546930460",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_230()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_230");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|685260211");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_230_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_230_Yes,
    });
    params = {
        -- bool,
        [2] = Globals.MIS_430_BRIEF.bRightAfterBrief,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_236()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|735601612");
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
                [0] = self.f_box_OutputOrder_v2_47_Out_0,
                [1] = self.f_box_OutputOrder_v2_47_Out_1,
                [2] = self.f_box_OutputOrder_v2_47_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|745917493");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "Cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "E5_Proto_GeoSource_B10 Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_122");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|746187722");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_122_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_122_True,
    });
    params = {
        -- entityId,
        [0] = "2106663202673672012",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_211()
    local params;
    params = {
        -- Group,
        [0] = self.e_Sharky,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "4237224638",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_13()
    local params;
    params = {
        -- usableEntity,
        [4] = "2109594463725691950",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_93()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_249()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_249");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|765167282");
    l0:SetConnections({
    });
    params = {
        -- Hour,
        [0] = 1,
        -- Minute,
        [1] = 20,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_173()
    local params;
    params = {
        -- e_Stim,
        [0] = "2106843529683685668",
        -- e_TrapActivator,
        [1] = "2106652274521545100",
        -- e_Trigger,
        [2] = "2106665024033406950",
        -- e_VFX,
        [3] = "2108914567223459340",
        -- e_VFX_ActiveTrap,
        [4] = "2108927183014600929",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_167()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_58()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_168");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|835134435");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_168_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "54181906786865724",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_174");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|841492558");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "36167508277255094",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_226");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|850924573");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2108307218706222367",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_196");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|866015266");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108927183014600929",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|899221278");
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

function export:OnEnter_box_CharacterLoadedIdListener_v2_91()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015196386540318",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_94");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|913987330");
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
                [0] = self.f_box_OutputOrder_v2_94_Out_0,
                [1] = self.f_box_OutputOrder_v2_94_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_202()
    local params;
    params = {
        -- Group,
        [0] = self.e_Sharky,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1997813975",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_186");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|957734911");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_186_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_186_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.MIS_430_B10.b_TurbineB_Destroyed,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_238()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_238");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|984632094");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_238_Enabled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_238_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109592555531288508",
        -- Entity,
        [2] = self.e_Sharky,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_111");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|985048177");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_111_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "27160309022500288",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_217()
    local params;
    params = {
        -- usableEntity,
        [4] = "2109079437742981141",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_142()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2106663202673672012",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_219");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1070712792");
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
                [0] = self.f_box_OutputOrder_v2_219_Out_0,
                [1] = self.f_box_OutputOrder_v2_219_Out_1,
                [2] = self.f_box_OutputOrder_v2_219_Out_2,
                [3] = self.f_box_OutputOrder_v2_219_Out_3,
                [4] = self.f_box_OutputOrder_v2_219_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_57()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_127()
    local params;
    params = {
        -- Pawns,
        [0] = "2109842741086157688",
        -- SoundId,
        [1] = "3000558061",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_103");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1081315718");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_103_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108310189840019831",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_115()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_231()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_231");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1092519001");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_231_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_231_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.MIS_430_BRIEF.bRightAfterBrief,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1104864099");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_54_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108927183014600929",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_221");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1118284609");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2108293034056633330",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_194");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1118836122");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108927232352198885",
    };
    return params;
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V7_104()
    local params;
    params = {
        -- b_IsNPCPersistentCharacter,
        [0] = true,
        -- b_WaitForConvoEndOnSkip,
        [1] = true,
        -- eNPC,
        [4] = self.e_Sharky,
        -- Interrupt STP on Talk,
        [5] = false,
        -- oObjective,
        [6] = {
            section = "Objectives",
            item = "MIS_430_B10_OBJ_Reach",
            id = "962626",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_239()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1199541848");
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
                [0] = self.f_box_OutputOrder_v2_83_Out_0,
                [1] = self.f_box_OutputOrder_v2_83_Out_1,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_248()
    local params;
    params = {
        -- Group,
        [0] = self.e_Sharky,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "586203534",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_215()
    local params;
    params = {
        -- usableEntity,
        [4] = "2109079506867208219",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_209()
    local params;
    params = {
        -- Group,
        [0] = self.e_Sharky,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "715981971",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1210268865");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1211490579");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_29_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2108209638357867807",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_430_B10_OBJ_Arm_1",
            id = "960694",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1229785279");
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
                [0] = self.f_box_OutputOrder_v2_160_Out_0,
                [1] = self.f_box_OutputOrder_v2_160_Out_1,
                [2] = self.f_box_OutputOrder_v2_160_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1245547745");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_34_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_430_B10_OBJ_Arm_1",
            id = "960694",
        },
        -- Progress,
        [1] = self.i_TotalTrapsInstalled,
        -- ProgressId,
        [2] = self.iProgressID,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_233()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_98");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1272295363");
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
                [0] = self.f_box_OutputOrder_v2_98_Out_0,
                [1] = self.f_box_OutputOrder_v2_98_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_124");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1309024177");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_124_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1311618414");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_26_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_430_B10_OBJ_Arm_1",
            id = "960694",
        },
        -- Progress,
        [1] = self.i_TotalTrapsInstalled,
        -- ProgressId,
        [2] = self.iProgressID,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_241()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_241");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1312324803");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_241_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109688942948260490",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1324544990");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2108307207851363614",
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_143()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "Warnings",
            item = "MIS_430_B10_WARN_TurbinesStart",
            id = "1027640",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1350699387");
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
                [0] = self.f_box_OutputOrder_v2_137_Out_0,
                [1] = self.f_box_OutputOrder_v2_137_Out_1,
                [2] = self.f_box_OutputOrder_v2_137_Out_2,
                [3] = self.f_box_OutputOrder_v2_137_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_59()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_204()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_132()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_116()
    local params;
    params = {
        -- Pawns,
        [0] = "2109842733494467444",
        -- SoundId,
        [1] = "3000558061",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1428290964");
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
                [0] = self.f_box_OutputOrder_v2_67_Out_0,
                [1] = self.f_box_OutputOrder_v2_67_Out_1,
                [2] = self.f_box_OutputOrder_v2_67_Out_2,
                [3] = self.f_box_OutputOrder_v2_67_Out_3,
                [4] = self.f_box_OutputOrder_v2_67_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_123");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1435574358");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_123_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1442198345");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_55_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108927228719931619",
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

function export:OnEnter_box_NarrativeFade_237()
    local params;
    params = {
        -- PostFX,
        [1] = "cinematicfade60to30frames",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1471696218");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_37_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_430_B10_OBJ_Arm_1",
            id = "960694",
        },
        -- Progress,
        [1] = self.i_TotalTrapsInstalled,
        -- ProgressId,
        [2] = self.iProgressID,
    };
    return params;
end;

function export:OnEnter_box_Random_206()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1527730717");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2109067377235759685",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_188");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1540533728");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160305420344217",
        -- missionLayerId,
        [1] = "45174707532116349",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1548473259");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_43_Out,
    });
    params = {
        -- A,
        [0] = self.i_TotalTrapsInstalled,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_MIS_430_SteamTrap_107()
    local params;
    params = {
        -- e_Stim,
        [0] = "2106843534330974504",
        -- e_TrapActivator,
        [1] = "2106652274521545100",
        -- e_Trigger,
        [2] = "2106677013904375719",
        -- e_VFX,
        [3] = "2108914572388744718",
        -- e_VFX_ActiveTrap,
        [4] = "2108927240514314473",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1556782814");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_39_Out,
    });
    params = {
        -- A,
        [0] = self.i_TotalTrapsInstalled,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_120()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "2106649748548098372",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1573657591");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_33_Out,
    });
    params = {
        -- A,
        [0] = self.i_TotalTrapsInstalled,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_35()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2109079306392059922",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1584975539");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_145_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_86()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1618884764");
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

function export:OnEnter_box_SoundPointModifier_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1627833575");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2108294800049458307",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_90()
    local params;
    params = {
        -- usableEntity,
        [4] = "2109079306392059922",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1632520009");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_52_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108927236015923431",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_203()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_203");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1632751495");
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
                [0] = self.f_box_OutputOrder_v2_203_Out_0,
                [1] = self.f_box_OutputOrder_v2_203_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_223");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1635214896");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2108983490044256607",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1648899614");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_130_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2107079205819785907",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1700513766");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2108295307145006222",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_224");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1705796731");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2108983473889894750",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1715318854");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_22_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2107615691325591498",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_430_B10_OBJ_Arm_1",
            id = "960694",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_250()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_250");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1747740029");
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
                [0] = self.f_box_OutputOrder_v2_250_Out_0,
                [1] = self.f_box_OutputOrder_v2_250_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1763920547");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_51_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2108927232352198885",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_106");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1789461732");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_80()
    local params;
    params = {
        -- Pawns,
        [0] = "2108292837907909614",
        -- SoundId,
        [1] = "3923390781",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_244()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1808960979");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_38_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_430_B10_OBJ_Arm_1",
            id = "960694",
        },
        -- Progress,
        [1] = self.i_TotalTrapsInstalled,
        -- ProgressId,
        [2] = self.iProgressID,
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1812906122");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2109067425289900615",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_117");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1827329512");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_117_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_117_True,
    });
    params = {
        -- entityId,
        [0] = "2106649748548098372",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_227()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_227");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1838124633");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2108295293142322316",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_134()
    local params;
    params = {
        -- Pawns,
        [0] = "2109842738586352502",
        -- SoundId,
        [1] = "3000558061",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_41()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2109079506867208219",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1864818668");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_32_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2108209702421667115",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_430_B10_OBJ_Arm_1",
            id = "960694",
        },
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_195");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1882441230");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2108927240514314473",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1885252472");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_46_Out,
    });
    params = {
        -- A,
        [0] = self.i_TotalTrapsInstalled,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1934429495");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2108293054168321012",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_Outpost_96()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1937715797");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_131_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2107079200050520751",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1974412980");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2108983467202077018",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_101");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|1981716456");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_101_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108583419823792603",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_210()
    local params;
    params = {
        -- Group,
        [0] = self.e_Sharky,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2822432204",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2043513267");
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
                [0] = self.f_box_OutputOrder_v2_44_Out_0,
                [1] = self.f_box_OutputOrder_v2_44_Out_1,
                [2] = self.f_box_OutputOrder_v2_44_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_95()
    local params;
    DrawTextToScreen("Comment: In the \"brick_interact_with_obj\" the shimmer is suppposed to be disabled BOW-77029", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ShimmerModifier_v2')-- Comment: In the \"brick_interact_with_obj\" the shimmer is suppposed to be disabled BOW-77029");
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = "2109594463725691950",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V6_50()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = true,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = true,
        -- e_EntityToInteractWith,
        [3] = "2109594463725691950",
        -- e_ObjectiveMarker,
        [4] = "2109122265235862152",
        -- o_ObjectiveText,
        [6] = {
            section = "Objectives",
            item = "MIS_430_B10_OBJ_Arm_2",
            id = "964203",
        },
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2070807086");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_15_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.i_TotalTrapsInstalled,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_20()
    local params;
    params = {
        -- Group,
        [0] = self.e_Sharky,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2516831206",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2108619955");
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

function export:OnEnter_box_Delay_v5_49()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2127477316");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2109067369560183363",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2140386456");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_430\\MIS_430_B10.domino|@MIS_430_B10|2142211770");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_30_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2108209674498088227",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_430_B10_OBJ_Arm_1",
            id = "960694",
        },
    };
    return params;
end;

function export:OnExit_box_IntegerArithmetics_v2_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.i_TotalTrapsInstalled = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_169_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_169;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_169_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_169;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_169_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_169;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_169_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_169;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_172_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_172;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_172_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_172;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_172_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_172;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_172_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_172;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_25_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.iProgressID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_170_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_170;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_170_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_170;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_170_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_170;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_170_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_170;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_159_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_430_B10.b_TurbineB_Destroyed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_173_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_173;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_173_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_173;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_173_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_173;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_173_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_173;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_91_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_91;
    self.e_Sharky = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_124_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_430_B10.b_TurbineA_Destroyed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_123_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_430_B10.b_TurbineB_Destroyed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_43_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.i_TotalTrapsInstalled = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_107_Activated()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_107;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_107_Active()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_107;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_107_Inactive()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_107;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_MIS_430_SteamTrap_107_Out()
    local l0;
    l0 = self.box_MIS_430_SteamTrap_107;
    self.e_TrapUser = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_39_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.i_TotalTrapsInstalled = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_33_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.i_TotalTrapsInstalled = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_145_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_430_B10.b_TurbineA_Destroyed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_46_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.i_TotalTrapsInstalled = l0:GetDataOutValue(0);
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
